package com.rovio.assets
{
   public class TextManager
   {
      
      public static const DEBUG_MODE:Boolean = false;
      
      private static var §92§:Array;
       
      
      public function TextManager()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §92§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §92§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §+b§(param1:String) : String
      {
         if(DEBUG_MODE && §92§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §92§[param1];
      }
   }
}
