package com.rovio.assets
{
   public class §1R§
   {
      
      public static const §5#`§:Boolean = false;
      
      private static var §"!_§:Array;
       
      
      public function §1R§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §"!_§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §"!_§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §7$!§(param1:String) : String
      {
         if(§5#`§ && §"!_§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §"!_§[param1];
      }
   }
}
