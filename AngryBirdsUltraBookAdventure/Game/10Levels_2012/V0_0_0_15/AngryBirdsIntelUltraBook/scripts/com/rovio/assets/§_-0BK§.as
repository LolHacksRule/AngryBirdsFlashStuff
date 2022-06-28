package com.rovio.assets
{
   public class §_-0BK§
   {
      
      public static const §_-na§:Boolean = false;
      
      private static var §_-0Cs§:Array;
       
      
      public function §_-0BK§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-0Cs§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §_-0Cs§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §_-06e§(param1:String) : String
      {
         if(§_-na§ && §_-0Cs§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §_-0Cs§[param1];
      }
   }
}
