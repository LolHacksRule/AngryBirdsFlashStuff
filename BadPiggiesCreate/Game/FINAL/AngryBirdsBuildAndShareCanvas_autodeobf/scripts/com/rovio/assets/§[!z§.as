package com.rovio.assets
{
   public class §[!z§
   {
      
      public static const §7F§:Boolean = false;
      
      private static var §`!L§:Array;
       
      
      public function §[!z§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §`!L§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §`!L§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §2! §(param1:String) : String
      {
         if(§7F§ && §`!L§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §`!L§[param1];
      }
   }
}
