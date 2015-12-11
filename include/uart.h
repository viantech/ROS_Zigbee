/*
 * uart.h
 *
 *  Created on: Jul 21, 2016
 *      Author: quangdo
 */

#ifndef UART_H_
#define UART_H_

#define FALSE 0
#define TRUE 1
#define DEVICE "/dev/ttyS1"
#define CHMOD_C "sudo chmod a+rw "
#define FW_SEND "/home/ubuntu/demo.hex"
#define COM_UART CHMOD_C DEVICE
#define BAUDRATE 115200
//#define FILE_MODE 1
//#define COMM_MODE 0
//#define MODE_APP 1
void Init_UART();
void Write_Uart (const void *mess, int port);
void sendFile();
void Command_Handler(char *command);
int readKeyboard(char *buffer);
extern int fd;

#endif /* UART_H_ */
