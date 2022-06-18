package com.rovio.assets
{
   public class §#m§
   {
      
      public static const §`p§:Boolean = false;
      
      private static var §3;§:Array;
       
      
      public function §#m§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §3;§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §3;§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §1C§(param1:String) : String
      {
         if(§`p§ && §3;§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §3;§[param1];
      }
   }
}
