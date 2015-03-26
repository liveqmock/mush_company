package com.szmw.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import javax.imageio.ImageIO;
import java.io.File;
import java.io.OutputStream;
import java.io.IOException;
import java.util.Hashtable;
import java.awt.image.BufferedImage;

/**
 * 
 * @author Administrator qrcode 生成
 */
public final class MatrixToImageWriter {

	private static final int BLACK = 0xFF000000;
	private static final int WHITE = 0xFFFFFFFF;

	private MatrixToImageWriter() {
	}

	public static BufferedImage toBufferedImage(BitMatrix matrix) {
		int width = matrix.getWidth();
		int height = matrix.getHeight();
		BufferedImage image = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		for (int x = 0; x < width; x++) {
			for (int y = 0; y < height; y++) {
				image.setRGB(x, y, matrix.get(x, y) ? BLACK : WHITE);
			}
		}
		return image;
	}

	public static void writeToFile(BitMatrix matrix, String format, File file)
			throws IOException {
		BufferedImage image = toBufferedImage(matrix);
		if (!ImageIO.write(image, format, file)) {
			throw new IOException("Could not write an image of format "
					+ format + " to " + file);
		}
	}

	public static void writeToStream(BitMatrix matrix, String format,
			OutputStream stream) throws IOException {
		BufferedImage image = toBufferedImage(matrix);
		if (!ImageIO.write(image, format, stream)) {
			throw new IOException("Could not write an image of format "
					+ format);
		}
	}

	/**
	 * 
	 * @param qrcode 要生成的网址
	 * @param path 保存的路径
	 * @return 是否生成成功
	 */
	@SuppressWarnings("unchecked")
	public static boolean saveQRCodeToPath(String qrcode, String path) {
		String text = qrcode;
		int width = 300;
		int height = 300;
		// 二维码的图片格式
		String format = "gif";
		@SuppressWarnings("rawtypes")
		Hashtable hints = new Hashtable();
		// 内容所使用编码
		hints.put(EncodeHintType.CHARACTER_SET, "utf-8");
		BitMatrix bitMatrix;
		boolean bOK = true;
		try {
			bitMatrix = new MultiFormatWriter().encode(text,
					BarcodeFormat.QR_CODE, width, height, hints);
			File outputFile = new File(path);
			MatrixToImageWriter.writeToFile(bitMatrix, format, outputFile);
		} catch (WriterException e) {
			bOK = false;
		}
		// 生成二维码
		catch (IOException e) {
			bOK = false;
		}
		return bOK;
	}
}