package com.rovio.assets
{
   public class §'!-§
   {
      
      public static const §1!D§:Boolean = false;
      
      private static var §<V§:Array;
       
      
      public function §'!-§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §<V§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §<V§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §67§(param1:String) : String
      {
         if(§1!D§ && §<V§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §<V§[param1];
      }
   }
}
