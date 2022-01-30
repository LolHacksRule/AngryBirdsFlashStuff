package com.rovio.assets
{
   public class §"I§
   {
      
      public static const §#!h§:Boolean = false;
      
      private static var §-5§:Array;
       
      
      public function §"I§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §-5§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §-5§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function getText(param1:String) : String
      {
         if(§#!h§ && §-5§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §-5§[param1];
      }
   }
}
