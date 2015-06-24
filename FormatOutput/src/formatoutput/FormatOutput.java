/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package formatoutput;

import java.util.*;
import java.io.*;

/**
 *
 * @author singha
 */
public class FormatOutput {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner keyboard = new Scanner(System.in);
        System.out.println("When inputting, press enter between inputs,");
        System.out.println("and make the last input 'done'.");
        System.out.println("Please enter words to put in an html file (below):");
        String in = keyboard.nextLine().trim(); //takes the fist input
        ArrayList<String> inputs = new ArrayList<String>();
        while (!in.equals("done")) {//Only stops when done is entered
            inputs.add(in);//puts inputs into the array list
            in = keyboard.nextLine().trim();//reads the next input and trims
        }
        //System.out.println(rectangularFormatter(inputs));
        fileHTMLWriter(inputs);
        
    }
    
    private static String rectangularFormatter(ArrayList<String> a) {
        String s = "";
        int width = 0;
        for (int i = 0; i < a.size(); i++) {
            String x = a.get(i);
            if (x.length() > width) {
                width = x.length();
            }
        } // this for loop finds the length of the longest word
        width = width + 4; // Adds 4 because '* ' and ' *' are appended to each
        //word and we need the total width
        s = s + lineOfStars(width); //adds the inital line of stars
        s = s + "\n"; //break line
        for (int i = 0; i < a.size(); i++) {
            String y = a.get(i);
            s = s + "* " + y; // adds front of word
            int numOfSpaces = width - 3 - y.length();
            for (int j = 0; j < numOfSpaces; j++) {
                s = s + " ";
            } //this for loop includes the required number of spaces 
            //necessary to make a rectangular array
            s = s + "*\n";//last star and line break
            
        }
        s = s + lineOfStars(width); // last line of stars added
        return s;
    }
    
    private static String lineOfStars(int w) {
        String a = "";
        for (int i = 0; i < w; i++) {
            a = a + "*"; //This makes a line of stars with length w
        }
        return a;
    }
    
    private static void fileHTMLWriter(ArrayList<String> a) {
        try {
            
            FileWriter fTyper = new FileWriter("format.html.erb"); 
            //The above makes a file writer for 'typer'
            BufferedWriter typer = new BufferedWriter(fTyper); //creates 'typer'
            //which will write to format.html via fTyper
            typer.write("<html>"); //header html
            typer.newLine();
            typer.write("<body>"); //lead body tag
            typer.newLine();
            for (int i = 0; i < a.size(); i++) {
                typer.write("<p>");
                typer.write(a.get(i));
                typer.write("</p>");
                typer.newLine();
            }// this for loop goes through and prints all of the words into the file
            typer.write("</body>");
            typer.newLine();
            typer.write("</html>");
            typer.newLine();
            typer.close();
        }
        catch (Exception e) {
            System.out.println("Problem occurred with making or writing to the file");
        }
    }
}
