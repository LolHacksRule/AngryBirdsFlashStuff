package com.rovio.assets
{
   public class §#!t§
   {
      
      public static const §`M§:Boolean = false;
      
      private static var §="Y§:Array;
       
      
      public function §#!t§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §="Y§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §="Y§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §0!m§(param1:String) : String
      {
         if(§`M§ && §="Y§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §="Y§[param1];
      }
   }
}
