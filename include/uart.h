/*
 * uart.h
 *
 *  Created on: Jul 21, 2016
 *      Author: quangdo
 */

#ifndef UART_H_
#define UART_H_

#include <map>
#define FALSE 0
#define TRUE 1
#define DEVICE "/dev/ttyS1"
#define BAUDRATE 115200

#define CHMOD_C "sudo chmod a+rw "
#define FW_SEND "/home/ubuntu/demo.hex"
#define COM_UART CHMOD_C DEVICE



class ConfigFile {
  std::map<std::string,std::string> content_;

public:
  ConfigFile(std::string const& configFile);

  std::string const& Value(std::string const& section, std::string const& entry) const;
  std::string const& Value(std::string const& section, std::string const& entry, std::string const& value);
};
//#define FILE_MODE 1
//#define COMM_MODE 0
//#define MODE_APP 1
//void Init_UART();
//void Write_Uart (const void *mess, int port);
//void sendFile();
//int readKeyboard(char *buffer);
//extern int fd;

#endif /* UART_H_ */
