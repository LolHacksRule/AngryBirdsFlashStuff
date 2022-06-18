package com.rovio.assets
{
   public class §3#u§
   {
      
      public static const §]!b§:Boolean = false;
      
      private static var §%r§:Array;
       
      
      public function §3#u§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §%r§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §%r§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §9!c§(param1:String) : String
      {
         if(§]!b§ && §%r§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §%r§[param1];
      }
   }
}
