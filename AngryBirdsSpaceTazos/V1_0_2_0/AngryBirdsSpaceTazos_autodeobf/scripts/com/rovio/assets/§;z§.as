package com.rovio.assets
{
   public class §;z§
   {
      
      public static const §3"9§:Boolean = false;
      
      private static var §+-§:Array;
       
      
      public function §;z§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §+-§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §+-§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §]!`§(param1:String) : String
      {
         if(§3"9§ && §+-§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §+-§[param1];
      }
   }
}
