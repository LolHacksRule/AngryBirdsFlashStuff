package com.rovio.assets
{
   public class §8!=§
   {
      
      public static const §+6§:Boolean = false;
      
      private static var §+n§:Array;
       
      
      public function §8!=§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §+n§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §+n§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §&!>§(param1:String) : String
      {
         if(§+6§ && §+n§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §+n§[param1];
      }
   }
}
