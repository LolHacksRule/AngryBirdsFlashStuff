package com.rovio.assets
{
   public class §1!l§
   {
      
      public static const §#T§:Boolean = false;
      
      private static var §2J§:Array;
       
      
      public function §1!l§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §2J§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §2J§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §5!m§(param1:String) : String
      {
         if(§#T§ && §2J§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §2J§[param1];
      }
   }
}
