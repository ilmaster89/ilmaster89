public class AudioCollage {

	public static double[] amplify(double[] a, double alpha) {
		double[] amp = new double[a.length];
		for (int i = 0; i < a.length; i++) {
			amp[i] = (a[i] * alpha);
		}

		return amp;

	}

	public static double[] reverse(double[] a) {
		double[] rev = new double[a.length];
		for (int i = a.length - 1, j = 0; i >= 0; i--, j++) {
			rev[i] = a[j];
		}

		return rev;

	}

	public static double[] merge(double[] a, double[] b) {
		double[] mer = new double[(a.length + b.length)];
		for (int i = 0; i < a.length; i++) {
			mer[i] = a[i];
		}

		for (int i = a.length, j = 0; i < mer.length; i++, j++) {
			mer[i] = b[j];
		}

		return mer;

	}

	public static double[] mix(double[] a, double[] b) {
		double[] sho = null;
		int shoL = 0;
		double[] lon = null;
		int lonL = 0;

		if (a.length > b.length) {
			lonL = a.length;
			lon = new double[lonL];
			for (int i = 0; i < lonL; i++) {
				lon[i] = a[i];
			}

			shoL = a.length;
			sho = new double[shoL];
			for (int i = 0; i < b.length; i++) {
				sho[i] = b[i];
			}

		}

		if (b.length > a.length) {
			lonL = b.length;
			lon = new double[lonL];
			for (int i = 0; i < lonL; i++) {
				lon[i] = b[i];
			}

			shoL = b.length;
			sho = new double[shoL];
			for (int i = 0; i < a.length; i++) {
				sho[i] = a[i];

			}

		}

		if (a.length == b.length) {

			sho = a;
			lon = b;
		}

		double[] mix = new double[lonL];

		for (int i = 0; i < lonL; i++) {
			mix[i] = sho[i] + lon[i];
		}

		return mix;
	}

	public static double[] changeSpeed(double[] a, double alpha) {
		if (alpha <= 0) {
			StdOut.println("Not valid.");
		}

		double[] spe = new double[(int) ((int) a.length / alpha)];
		for (int i = 0; i < spe.length; i++) {
			spe[i] = a[(int) ((int) i * alpha)];

		}
		return spe;

	}

	public static void main(String[] args) {

		double[] a = StdAudio.read("singer.wav");
		double[] b = StdAudio.read("piano.wav");
		double[] c = StdAudio.read("chimes.wav");
		double[] d = StdAudio.read("buzzer.wav");
		double[] e = StdAudio.read("beatbox.wav");

		StdAudio.play(merge(mix(a, merge(d, reverse(b))), mix(e, changeSpeed(amplify(c, 1.5), 0.6))));

	}

}
