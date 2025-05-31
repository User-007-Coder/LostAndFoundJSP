package utils;

import java.util.Base64;

public class JWTUtil {
    public static String generateToken(String email) {
        long timestamp = System.currentTimeMillis();
        String token = email + ":" + timestamp;
        return Base64.getEncoder().encodeToString(token.getBytes());
    }

    public static String decodeToken(String token) {
        byte[] decodedBytes = Base64.getDecoder().decode(token);
        return new String(decodedBytes);
    }
}
