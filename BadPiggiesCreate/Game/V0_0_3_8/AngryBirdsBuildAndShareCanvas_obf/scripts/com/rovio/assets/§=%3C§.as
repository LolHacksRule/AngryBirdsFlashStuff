package com.rovio.assets
{
   public class §=<§
   {
      
      public static const §,!x§:Boolean = false;
      
      private static var §"!4§:Array;
       
      
      public function §=<§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §"!4§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §"!4§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §8`§(param1:String) : String
      {
         if(§,!x§ && §"!4§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §"!4§[param1];
      }
   }
}
