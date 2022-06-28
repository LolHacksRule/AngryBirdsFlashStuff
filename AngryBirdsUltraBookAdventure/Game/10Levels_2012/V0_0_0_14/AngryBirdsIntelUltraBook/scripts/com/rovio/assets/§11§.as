package com.rovio.assets
{
   public class §11§
   {
      
      public static const §@l§:Boolean = false;
      
      private static var §`!d§:Array;
       
      
      public function §11§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §`!d§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §`!d§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §%!i§(param1:String) : String
      {
         if(§@l§ && §`!d§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §`!d§[param1];
      }
   }
}
