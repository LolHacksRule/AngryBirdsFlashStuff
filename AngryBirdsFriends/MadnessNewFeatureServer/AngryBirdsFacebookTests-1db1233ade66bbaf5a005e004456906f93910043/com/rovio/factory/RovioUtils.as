package com.rovio.factory
{
   public class RovioUtils
   {
       
      
      public function RovioUtils()
      {
         super();
      }
      
      public static function exponentialMove(input:Number, fastStart:Boolean = true) : Number
      {
         if(fastStart)
         {
            input = 1 - input;
            input *= input;
            return 1 - input;
         }
         return input * input;
      }
      
      public static function removeUnwantedFraction(input:Number, allowedFractionCount:int, lastDecimalVariary:Number = -1) : Number
      {
         if(lastDecimalVariary > 0 && lastDecimalVariary < 10)
         {
         }
         allowedFractionCount = Math.max(0,allowedFractionCount);
         var coefficient:Number = Math.pow(10,allowedFractionCount);
         input = Math.round(input * coefficient) / coefficient;
         if(lastDecimalVariary > 0 && lastDecimalVariary < 10)
         {
            input = removeUnwantedFraction(input * lastDecimalVariary,allowedFractionCount - 1,-1) / lastDecimalVariary;
            input = removeUnwantedFraction(input,allowedFractionCount,-1);
         }
         return input;
      }
   }
}
