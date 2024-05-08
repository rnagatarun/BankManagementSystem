package bank.management.system;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.ResultSet;

public class Login extends JFrame implements ActionListener {

    JLabel label1,label2,label3;
    JTextField textField1;
    JPasswordField passwordField1;
    JButton button1,button2,button3;

    Login(){
        super("Bank Management System");

        //Bank Image
        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("icon/bank.png"));
        Image i2 = i1.getImage().getScaledInstance(100,100,Image.SCALE_DEFAULT);
        ImageIcon i3 = new ImageIcon(i2);
        JLabel image = new JLabel(i3);
        image.setBounds(350,10,100,100);
        add(image);

        //Card Image
        ImageIcon card = new ImageIcon(ClassLoader.getSystemResource("icon/card.png"));
        Image card1 = card.getImage().getScaledInstance(100,100,Image.SCALE_DEFAULT);
        ImageIcon card2 = new ImageIcon(card1);
        JLabel image1 = new JLabel(card2);
        image1.setBounds(630,350,100,100);
        add(image1);
        //WELCOME TO ATM JLabel
        label1 = new JLabel("WELCOME TO ATM");
        label1.setForeground(Color.WHITE);
        label1.setFont(new Font("AvantGarde",Font.BOLD,38));
        label1.setBounds(230,125,450,40);
        add(label1);

        //CardNumber JLabel
        label2 = new JLabel("Card Number:");
        label2.setForeground(Color.WHITE);
        label2.setFont(new Font("Railway",Font.BOLD,28));
        label2.setBounds(150,190,450,40);
        add(label2);

        //PIN JLabel
        label3 = new JLabel("PIN:");
        label3.setForeground(Color.WHITE);
        label3.setFont(new Font("Railway",Font.BOLD,28));
        label3.setBounds(150,250,450,40);
        add(label3);

        //Card Number TextField
        textField1 = new JTextField(15);
        textField1.setBounds(340,194,230,30);
        textField1.setFont(new Font("Arial",Font.BOLD,14));
        add(textField1);

        //PIN JPasswordField
        passwordField1 = new JPasswordField(15);
        passwordField1.setBounds(340,254,230,30);
        passwordField1.setFont(new Font("Arial",Font.BOLD,14));
        add(passwordField1);

        //SIGN IN Button
        button1 = new JButton("SIGN IN");
        button1.setFont(new Font("Arial",Font.BOLD,14));
        button1.setForeground(Color.WHITE);
        button1.setBackground(Color.BLACK);
        button1.setBounds(300,300,100,30);
        button1.addActionListener(this);
        add(button1);

        //Clear Button
        button2 = new JButton("CLEAR");
        button2.setFont(new Font("Arial",Font.BOLD,14));
        button2.setForeground(Color.WHITE);
        button2.setBackground(Color.BLACK);
        button2.setBounds(430,300,100,30);
        button2.addActionListener(this);
        add(button2);

        //SIGN UP Button
        button3 = new JButton("SIGN UP");
        button3.setFont(new Font("Arial",Font.BOLD,14));
        button3.setForeground(Color.WHITE);
        button3.setBackground(Color.BLACK);
        button3.setBounds(300,350,230,30);
        button3.addActionListener(this);
        add(button3);



        //Background Image
        ImageIcon bg = new ImageIcon(ClassLoader.getSystemResource("icon/backbg.png"));
        Image bg1 = bg.getImage().getScaledInstance(850,580,Image.SCALE_DEFAULT);
        ImageIcon bg2 = new ImageIcon(bg1);
        JLabel image2 = new JLabel(bg2);
        image2.setBounds(0,0,850,480);
        add(image2);


        setLayout(null);
        setSize(850,480);
        setLocation(450,200);
        //setUndecorated(true);
        setVisible(true);

    }

    @Override
    public void actionPerformed(ActionEvent e) {
        try{
            if(e.getSource() == button1){
                Conn c = new Conn();
                String cardno = textField1.getText();
                String pin = passwordField1.getText();
                String q = "select * from login where card_number = '"+cardno+"' and  pin = '"+pin+"'";
                ResultSet resultSet = c.statement.executeQuery(q);
                if (resultSet.next()){
                    setVisible(false);
                    new main_Class(pin);
                }else {
                    JOptionPane.showMessageDialog(null,"Incorrect Card Number or PIN");
                }
            }
            else if(e.getSource() == button2){
                textField1.setText("");
                passwordField1.setText("");

            }
            else if(e.getSource() == button3) {
                new Signup();
                setVisible(false);
            }
        }
        catch(Exception E){
            E.printStackTrace();
        }

    }

    public static void main(String[] args) {
        new Login();
    }
}