/***
 * This example expects the serial port has a loopback on it.
 *
 * Alternatively, you could use an Arduino:
 *
 * <pre>
 *  void setup() {
 *    Serial.begin(<insert your baudrate here>);
 *  }
 *
 *  void loop() {
 *    if (Serial.available()) {
 *      Serial.write(Serial.read());
 *    }
 *  }
 * </pre>
 */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <sys/signal.h>
#include <sys/types.h>
#include <string.h>
#include <cctype>
#include <errno.h>

#include <ros/ros.h>
#include <serial/serial.h>
#include <std_msgs/String.h>
#include <string.h>
#include <iostream>
#include <sstream>
#include <std_msgs/UInt8MultiArray.h>
#include <std_msgs/Empty.h>
#include "uart.h"

//int fd;
using namespace std;
string ACK_CCmd;
//const char *send_sink = "AT+SCAST:";
serial::Serial ser;
void Cmd_Handler(string command)
{
	int id = command[0] - '0';
	switch(id){
	case 0:
		ACK_CCmd = "A0";
		break;
	case 1:
		if (command[1] - '0' == 0) {
			string status_str;
			status_str = "A10 + Battery Level: 79%, Maintenance: Ready\n";
			ACK_CCmd = status_str;
		}
		else if (command[1] - '1' == 0)  ACK_CCmd = "A11";
		else  ACK_CCmd = "A1";
		break;
	case 2:
		ACK_CCmd = "A2";
		break;
	case 3:
		ACK_CCmd = "A3";
		break;
	case 4:
		ACK_CCmd = "A4";
		break;
	case 5:
		ACK_CCmd = "A5";
		break;
	case 6:
		ACK_CCmd = "A6";
		break;
	case 7:
		ACK_CCmd = "A7";
		break;
	case 8:
		char posit[15];
		sprintf(posit, "A8 + %03d,%03d", rand() % 1000, rand() % 1000);
		ACK_CCmd = posit;
		break;
	case 9:
		char batt_lv[8];
		sprintf(batt_lv, "A9 + %d%c", rand() % 100 + 1, 37);
		ACK_CCmd = batt_lv;
		break;
	default:
		printf("[ERROR]: Please check your typing command \n");
		break;
	}
}

void write_callback(const std_msgs::UInt8MultiArray::ConstPtr& msg){
	std::stringstream ssend;
	char sdata[2*14 + 1];
   	for (unsigned int i = 0; i < 14; i++)
   		sprintf(&sdata[i*2], "%02X", msg->data[i]);
   	sdata[2*14] = '\0';
//   	ssend << sdata;
	ROS_INFO("Write to serial on topic: %s", sdata);
//	std::cout << "Write to serial on topic: " << ssend.str() << std::endl;
	ssend << "AT+SCAST:" << sdata << "\r";
	ser.write(ssend.str());
	ssend.str("");
    }
int main (int argc, char** argv){
    stringstream ACK_send;
    ros::init(argc, argv, "serial_example_node");
    ros::NodeHandle nh;

    ros::Subscriber write_sub = nh.subscribe("/was_rfid/movement/rfid", 1000, write_callback);
    ros::Publisher read_pub = nh.advertise<std_msgs::String>("read", 1000);
    /* Open port */
    try
    {
        ser.setPort(DEVICE);
        ser.setBaudrate(BAUDRATE);
        serial::Timeout to = serial::Timeout::simpleTimeout(1000);
        ser.setTimeout(to);
        ser.open();
    }
    catch (serial::IOException& e)
    {
        ROS_ERROR_STREAM("Unable to open port ");
        return -1;
    }

    if(ser.isOpen()){
        ROS_INFO_STREAM("Serial Port initialized");
    }else{
        return -1;
    }

    ros::Rate loop_rate(1);
    while(ros::ok()){

        ros::spinOnce();
        if(ser.available()){
            //ROS_INFO_STREAM("Reading from serial port");
            std_msgs::String result;
            result.data = ser.read(ser.available());
            ROS_INFO_STREAM("Recv: " << result.data);

            std::size_t found = result.data.find("@C");
            if (found != std::string::npos)
            {
              Cmd_Handler(result.data.substr(found + 2));
              ACK_send << "AT+SCAST:" << ACK_CCmd << "\r";
          	  ser.write(ACK_send.str());
          	  ACK_send.str("");
            }

            read_pub.publish(result);
        }
        loop_rate.sleep();
    }
}

