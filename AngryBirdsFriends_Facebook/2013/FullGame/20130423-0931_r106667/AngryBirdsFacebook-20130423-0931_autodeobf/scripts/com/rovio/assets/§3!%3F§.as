package com.rovio.assets
{
   public class §3!?§
   {
      
      public static const §@!y§:Boolean = false;
      
      private static var §""7§:Array;
       
      
      public function §3!?§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §""7§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §""7§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function § do§(param1:String) : String
      {
         if(§@!y§ && §""7§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §""7§[param1];
      }
   }
}
