package com.rovio.assets
{
   public class §-_§
   {
      
      public static const §9E§:Boolean = false;
      
      private static var §]!D§:Array;
       
      
      public function §-_§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §]!D§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §]!D§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §5!A§(param1:String) : String
      {
         if(§9E§ && §]!D§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §]!D§[param1];
      }
   }
}
