package com.rovio.assets
{
   public class §5;§
   {
      
      public static const §89§:Boolean = false;
      
      private static var §0d§:Array;
       
      
      public function §5;§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §0d§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §0d§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §"<§(param1:String) : String
      {
         if(§89§ && §0d§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §0d§[param1];
      }
   }
}
