import 'dart:math';


class CalculatorBrain{

  CalculatorBrain({required this.monthlyElectricityBill,required this.monthlyGasBill,required this.monthlyOilBill,required this.Mileage,required this.flightsIn4hrsLess,required this.flightsIn4hrsMore });
late final double monthlyElectricityBill;
late final double monthlyGasBill;
late final double monthlyOilBill;
late final double Mileage;
late final double flightsIn4hrsLess;
late final double flightsIn4hrsMore;
  late double _CfootprintResult;
   double CalculateGHGFootprint(){

     _CfootprintResult = (monthlyElectricityBill*105)+(monthlyGasBill*105)+(monthlyOilBill*113)+(Mileage*79)+(flightsIn4hrsLess*1100)+(flightsIn4hrsMore*4400);

     return _CfootprintResult ;
   }
   String getResult(){
     if(_CfootprintResult >6000 && _CfootprintResult<16000)
       {
         return "Ideal or Low Carbon Footprint";
       }
     else if(_CfootprintResult>=16000 && _CfootprintResult<22000)
       {
           return "Average Carbon Footprint";
       }
     else if(_CfootprintResult>=22000)
       {
          return "High Carbon Footprint";
       }
     else
       {
         return "Very Low Carbon Footprint";
       }
   }
  String getSuggestion(){
    if(_CfootprintResult >6000 && _CfootprintResult<16000)
    {
      return '''
1. If you are using renewable energy sources such as solar panels or wind turbines, make sure you continue to use them. If you don't have these options, consider switching to a renewable energy supplier for your home or business.
2. Continue to reduce your energy consumption by using energy-efficient appliances, turning off lights and electronics when not in use, and insulating your home to reduce heat loss.
3. Continue to reduce transportation emissions by using public transport, cycling or walking instead of driving alone, carpooling, or purchasing an electric or hybrid vehicle.
4. Continue to reduce waste by recycling, composting, and reducing your use of single-use plastics.
5. Continue to eat a plant-based diet or reduce your meat consumption to reduce the carbon footprint of your diet.
      ''';
    }
    else if(_CfootprintResult>=16000 && _CfootprintResult<22000)
    {
      return '''
1. Make small changes like turning off lights and unplugging electronics when they're not in use. Also, consider upgrading to energy-efficient appliances and using a programmable thermostat to reduce heating and cooling costs.
2. Choose public transportation, walking, biking, or carpooling to reduce your carbon footprint. If you must drive, consider purchasing a fuel-efficient vehicle or carpooling.
3. Animal agriculture is a significant contributor to greenhouse gas emissions. Consider reducing your meat consumption, or try a plant-based diet.
4. Reduce, reuse, and recycle whenever possible. Buy products with minimal packaging, and compost food scraps and yard waste.
5. Look for products that are made from sustainable materials, like bamboo or recycled plastic. Also, consider buying second-hand products or repairing items rather than buying new. 
      ''';
    }
    else if(_CfootprintResult>=22000)
    {
      return '''
1. The first step to reducing your carbon footprint is to understand how much carbon you are currently emitting.
2. One of the biggest contributors to carbon emissions is energy use. Reduce your energy consumption by turning off lights and electronics when not in use, using energy-efficient appliances, and adjusting your thermostat.
3. Transportation is another significant source of carbon emissions. Consider walking, biking, or using public transportation instead of driving alone. If you must drive, choose a fuel-efficient vehicle or consider carpooling.
4. Landfills are a major source of methane emissions, a potent greenhouse gas. Reduce your waste by recycling, composting, and buying products with minimal packaging.
5. Support renewable energy by using solar panels, wind turbines, or investing in renewable energy projects.
6. Advocate for change by supporting policies that address climate change, contacting your elected representatives, and encouraging others to take action. 
      ''';
    }
    else
    {
      return '''
1. If you are using renewable energy sources such as solar panels or wind turbines, make sure you continue to use them. If you don't have these options, consider switching to a renewable energy supplier for your home or business.
2. Continue to reduce your energy consumption by using energy-efficient appliances, turning off lights and electronics when not in use, and insulating your home to reduce heat loss.
3. Continue to reduce transportation emissions by using public transport, cycling or walking instead of driving alone, carpooling, or purchasing an electric or hybrid vehicle.
4. Continue to reduce waste by recycling, composting, and reducing your use of single-use plastics.
5. Continue to eat a plant-based diet or reduce your meat consumption to reduce the carbon footprint of your diet.
      ''';
    }
  }
}