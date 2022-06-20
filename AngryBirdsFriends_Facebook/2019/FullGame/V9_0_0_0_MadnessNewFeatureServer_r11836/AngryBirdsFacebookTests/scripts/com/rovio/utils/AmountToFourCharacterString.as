package com.rovio.utils
{
   public class AmountToFourCharacterString
   {
       
      
      public function AmountToFourCharacterString()
      {
         super();
      }
      
      public static function amountToString(amt:Number) : String
      {
         var text:* = null;
         amt = Math.min(amt,99000000);
         if(amt >= 100000)
         {
            amt /= 1000000;
            text = amt.toPrecision(2).slice(0,3) + "M";
         }
         else if(amt >= 1000)
         {
            amt /= 1000;
            text = amt.toPrecision(2) + "k";
         }
         else
         {
            text = amt.toString();
         }
         return text;
      }
   }
}
