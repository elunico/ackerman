public class Main {
    public static int Ackermann(int x, int y) {
        if (x == 0) return y + 1;
        else if (y == 0) return Ackermann(x - 1, 1);
        else return Ackermann(x - 1, Ackermann(x, y - 1));
    }
    public static void main(String[] args) {
        for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 5; j++) {
                if (i == 4 && j == 1) break; // Java Stack limit
                int answer = Ackermann(i, j);
                System.out.println("The answer for " + i + " and " + j + " is " + answer);
            }
        }
    }
}