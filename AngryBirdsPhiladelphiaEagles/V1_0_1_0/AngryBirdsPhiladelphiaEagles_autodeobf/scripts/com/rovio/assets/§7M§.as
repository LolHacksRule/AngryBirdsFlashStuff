package com.rovio.assets
{
   public class §7M§
   {
      
      public static const §-!§:Boolean = false;
      
      private static var §!!6§:Array;
       
      
      public function §7M§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §!!6§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §!!6§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §[X§(param1:String) : String
      {
         if(§-!§ && §!!6§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §!!6§[param1];
      }
   }
}
