package com.rovio.utils
{
   public class RankSuffixStringUtil
   {
       
      
      public function RankSuffixStringUtil()
      {
         super();
      }
      
      public static function getRankSuffix(number:int) : String
      {
         var rankSuffix:String = null;
         var numberString:String = number.toString();
         numberString = numberString.charAt(numberString.length - 1);
         if(number < 11 || number > 19)
         {
            if(numberString == "1")
            {
               rankSuffix = "st";
            }
            else if(numberString == "2")
            {
               rankSuffix = "nd";
            }
            else if(numberString == "3")
            {
               rankSuffix = "rd";
            }
            else
            {
               rankSuffix = "th";
            }
         }
         else
         {
            rankSuffix = "th";
         }
         return rankSuffix;
      }
   }
}
