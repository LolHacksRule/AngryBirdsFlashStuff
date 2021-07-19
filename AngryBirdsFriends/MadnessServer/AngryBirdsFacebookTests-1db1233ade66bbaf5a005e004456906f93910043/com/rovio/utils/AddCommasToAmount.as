package com.rovio.utils
{
   public class AddCommasToAmount
   {
       
      
      public function AddCommasToAmount()
      {
         super();
      }
      
      public static function addCommasToAmount(number:*, maxDecimals:int = 2, forceDecimals:Boolean = false, siStyle:Boolean = false) : String
      {
         var j:int = 0;
         var i:int = 0;
         var inc:Number = Math.pow(10,maxDecimals);
         var str:String = String(Math.round(inc * Number(number)) / inc);
         var hasSeparator:* = str.indexOf(".") == -1;
         var separator:int = !!hasSeparator ? int(str.length) : int(str.indexOf("."));
         var ret:* = (hasSeparator && !forceDecimals ? "" : (!!siStyle ? "," : ".")) + str.substr(separator + 1);
         if(forceDecimals)
         {
            for(j = 0; j <= maxDecimals - (str.length - (!!hasSeparator ? separator - 1 : separator)); j++)
            {
               ret += "0";
            }
         }
         while(i + 3 < (str.substr(0,1) == "-" ? separator - 1 : separator))
         {
            ret = (!!siStyle ? "." : ",") + str.substr(separator - (i = i + 3),3) + ret;
         }
         return str.substr(0,separator - i) + ret;
      }
   }
}
