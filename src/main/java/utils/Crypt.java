package utils;

import org.eclipse.jdt.annotation.NonNull;
import org.mindrot.jbcrypt.BCrypt;

/**
 * Class to encrypt using <code>JBcrypt</code>
 */
public class Crypt {
    
    /**
     * Function to encrypt password using <code>JBcrypt</code>.
     * @param password to encrypt.
     * @return hashed password.
     */
    public static String encryptPassword(@NonNull String password) {
        String salt = BCrypt.gensalt(10);
        String hash = BCrypt.hashpw(password, salt);
        return hash;
    }

    /**
     * Function to compare plain text to hashed password using <code>JBcrypt</code>.
     * @param password to compare to hash.
     * @param encryptedPassword the hash to compare.
     * @return <code>true</code> if matches, otherwise <code>false</code>.
     */
    public static boolean isPasswordMatch(@NonNull String password, @NonNull String encryptedPassword) {
        Boolean isMatch = BCrypt.checkpw(password, encryptedPassword);
        return isMatch;
    }
}
