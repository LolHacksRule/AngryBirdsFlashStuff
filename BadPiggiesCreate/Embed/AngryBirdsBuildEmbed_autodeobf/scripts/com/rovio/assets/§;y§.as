package com.rovio.assets
{
   public class §;y§
   {
      
      public static const §`!&§:Boolean = false;
      
      private static var §!!W§:Array;
       
      
      public function §;y§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §!!W§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §!!W§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function §,!v§(param1:String) : String
      {
         if(§`!&§ && §!!W§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §!!W§[param1];
      }
   }
}
