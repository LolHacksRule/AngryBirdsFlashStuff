package com.rovio.assets
{
   public class §%!T§
   {
      
      public static const §^!5§:Boolean = false;
      
      private static var §`!B§:Array;
       
      
      public function §%!T§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §`!B§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §`!B§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §]H§(param1:String) : String
      {
         if(§^!5§ && §`!B§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §`!B§[param1];
      }
   }
}
