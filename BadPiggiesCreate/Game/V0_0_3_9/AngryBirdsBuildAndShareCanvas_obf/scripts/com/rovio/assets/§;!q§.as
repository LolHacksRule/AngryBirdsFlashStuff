package com.rovio.assets
{
   public class §;!q§
   {
      
      public static const §[6§:Boolean = false;
      
      private static var §;!I§:Array;
       
      
      public function §;!q§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §;!I§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §;!I§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §2!^§(param1:String) : String
      {
         if(§[6§ && §;!I§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §;!I§[param1];
      }
   }
}
