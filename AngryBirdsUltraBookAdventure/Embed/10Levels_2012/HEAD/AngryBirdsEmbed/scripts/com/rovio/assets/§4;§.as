package com.rovio.assets
{
   public class §4;§
   {
      
      public static const §??§:Boolean = false;
      
      private static var §-!D§:Array;
       
      
      public function §4;§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §-!D§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §-!D§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §6"§(param1:String) : String
      {
         if(§??§ && §-!D§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §-!D§[param1];
      }
   }
}
