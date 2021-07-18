package com.rovio.assets
{
   public class §8!o§
   {
      
      public static const §#"'§:Boolean = false;
      
      private static var §-X§:Array;
       
      
      public function §8!o§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §-X§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §-X§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §3!f§(param1:String) : String
      {
         if(§#"'§ && §-X§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §-X§[param1];
      }
   }
}
