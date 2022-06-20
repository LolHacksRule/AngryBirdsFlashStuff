package com.rovio.assets
{
   public class §1!X§
   {
      
      public static const §2"z§:Boolean = false;
      
      private static var §6N§:Array;
       
      
      public function §1!X§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §6N§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §6N§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §3$>§(param1:String) : String
      {
         if(§2"z§ && §6N§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §6N§[param1];
      }
   }
}
