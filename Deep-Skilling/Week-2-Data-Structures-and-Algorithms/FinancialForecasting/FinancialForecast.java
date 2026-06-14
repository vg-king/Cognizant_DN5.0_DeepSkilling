package FinancialForecasting;

public class FinancialForecast {
    public static double futureValue(double currentValue,double growthRate ,int years){
        if (years==0) return currentValue;
        return futureValue(
                currentValue*(1+growthRate),
                growthRate,
                years-1
        );

    }

    public static void main(String[] args) {
        double currentValue = 1000;
        double growthRate  = 0.10;
        int years = 5;
        double result = futureValue(currentValue,growthRate,years);
        System.out.println("Predicted Future Values: "+result);
    }
}
