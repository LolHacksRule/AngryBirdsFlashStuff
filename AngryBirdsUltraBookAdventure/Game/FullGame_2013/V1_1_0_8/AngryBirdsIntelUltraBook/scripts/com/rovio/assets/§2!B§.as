package com.rovio.assets
{
   public class §2!B§
   {
      
      public static const §,!S§:Boolean = false;
      
      private static var §0!=§:Array;
       
      
      public function §2!B§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §0!=§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §0!=§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §5Q§(param1:String) : String
      {
         if(§,!S§ && §0!=§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §0!=§[param1];
      }
   }
}
