
package text;


import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class EncryptText {
    public static String getEncrypted(String s,String type){
        try {
            MessageDigest md = MessageDigest.getInstance(type);
            
            byte mess[] = md.digest(s.getBytes());
            
            BigInteger num = new BigInteger(1,mess);
            String result = num.toString(16);
            
            while(result.length()<32){
                result = "0" + result;
            }
           
            return result;
        } catch (NoSuchAlgorithmException ex) {
          return null;
        }
        
    }
   //getEncrypted(getEncrypted(getEncrypted("12345","MD5"),"SHA-1"),"MD5")
}