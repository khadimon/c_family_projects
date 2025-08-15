#
# Khadi Valieva (w10118633)
# Dr. Sengupta
# CSC 408
# Classwork 17
#

import socket

class ClientSocket:
    def __init__(self):
        self.client_socket = None
        self.host = None
        self.port = None
        print("\033[92mClient socket object created\033[91m")

    def createSocket(self):
        """Creates a TCP socket"""
        try:
            self.client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            print("\033[92mSocket created successfully!\033[0m")
        except socket.error as err:
            print(f"\033[91mSocket creation failed with error: {err}\033[0m")
            exit()

    def inputHostPort(self):
        try:
            self.host = input("Enter the host IP address: ")
            self.port = int(input("Enter the port number: "))
            print(f"Host set to: {self.host}")
            print(f"Port set to: {self.port}")
        except ValueError:
            print("\033[91mInvalid port number. Please enter a valid integer.\033[91m")
            exit()

    def connect(self):
        try:
            self.client_socket.connect((self.host, self.port))
            print(f"\033[92mSuccessfully connected to {self.host}:{self.port}\033[0m")
        except socket.error as err:
            print(f"\033[91mConnection failed with error: {err}\033[91m")
            exit()

# Example usage:
if __name__ == "__main__":
    client = ClientSocket()
    client.createSocket()
    client.inputHostPort()
    client.connect()
