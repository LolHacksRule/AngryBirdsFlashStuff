package com.rovio.utils
{
   public class CurrencyMappingUtil
   {
      
      private static var sCurrencySignHashMap:Object = {
         "EUR":"€",
         "USD":"$",
         "GBP":"£",
         "BRL":"R$",
         "JPY":"¥"
      };
       
      
      public function CurrencyMappingUtil()
      {
         super();
      }
      
      public static function getCurrencySymbolByISOCode(currencyID:String) : String
      {
         var sign:String = sCurrencySignHashMap[currencyID] || currencyID;
         return sign == null ? "" : sign;
      }
   }
}
