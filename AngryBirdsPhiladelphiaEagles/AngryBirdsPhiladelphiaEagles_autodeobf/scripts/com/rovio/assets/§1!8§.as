package com.rovio.assets
{
   public class §1!8§
   {
      
      public static const §-c§:Boolean = false;
      
      private static var §9!&§:Array;
       
      
      public function §1!8§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §9!&§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §9!&§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §null §(param1:String) : String
      {
         if(§-c§ && §9!&§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §9!&§[param1];
      }
   }
}
