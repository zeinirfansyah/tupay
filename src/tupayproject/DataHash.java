package tupayproject;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class DataHash {
	// Function untuk SHA-256.
	private static String bytesToHex(byte[] hash) {
		StringBuilder hexString = new StringBuilder(2 * hash.length);
		for (int i = 0; i < hash.length; i++) {
			String hex = Integer.toHexString(0xff & hash[i]);
			if(hex.length() == 1) {
				hexString.append('0');
			}
			hexString.append(hex);
		}
		return hexString.toString();
	}

	public static String SHA256Text (String text) {
		// Algoritma untuk SHA-256.
		final MessageDigest digest;
		try {
			digest = MessageDigest.getInstance("SHA-256");
			final byte[] hashbytes = digest.digest(text.getBytes(StandardCharsets.UTF_8));

			// Mengembalikan hasil.
			return bytesToHex(hashbytes);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return null;
	}
}
