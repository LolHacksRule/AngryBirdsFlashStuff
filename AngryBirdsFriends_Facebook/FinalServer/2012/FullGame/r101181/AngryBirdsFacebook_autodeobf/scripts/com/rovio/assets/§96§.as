package com.rovio.assets
{
   public class §96§
   {
      
      public static const §`!y§:Boolean = false;
      
      private static var §9!m§:Array;
       
      
      public function §96§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §9!m§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §9!m§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §-W§(param1:String) : String
      {
         if(§`!y§ && §9!m§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §9!m§[param1];
      }
   }
}
