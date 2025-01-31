// UDPServer.java: A simple UDP server program.

import java.net.*;
import java.io.*;
import java.util.*;

public class RTTServer {
    final static int PORT = 12345;
    final static int BUFSIZE = 1024;
    
    
    public static void main(String args[]) {

        while (!Thread.interrupted())
        try (DatagramSocket aSocket = new DatagramSocket(PORT);) {
            byte[] bufferRecieve = new byte[BUFSIZE];          
            DatagramPacket recievePacket = new DatagramPacket(bufferRecieve, BUFSIZE);
			
			aSocket.receive(recievePacket);
			DatagramPacket replyPacket = new DatagramPacket(
                    recievePacket.getData(), recievePacket.getLength(), 
                    recievePacket.getAddress(), recievePacket.getPort());

            aSocket.send(replyPacket);           
        } catch (Exception e) {            
            System.out.println("Socket: " + e.getMessage());            
        } 
    }
}
