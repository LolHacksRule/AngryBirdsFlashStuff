package com.angrybirds.utils
{
   import §8x§.§]"-§;
   
   public class §#!7§
   {
      
      public static const SAFARI:String = "SAFARI";
      
      public static const FIREFOX:String = "FIREFOX";
      
      public static const CHROME:String = "CHROME";
      
      public static const IE:String = "IE";
      
      public static const OPERA:String = "OPERA";
      
      public static const NULL:String = "NULL";
       
      
      public function §#!7§()
      {
         super();
      }
      
      public static function §;'§() : String
      {
         var _loc1_:String = §]"-§.§6V§("window.navigator.userAgent.toString");
         var _loc2_:String = §#!7§.NULL;
         if(_loc1_.indexOf("Safari") != -1)
         {
            _loc2_ = §#!7§.SAFARI;
         }
         if(_loc1_.indexOf("Firefox") != -1)
         {
            _loc2_ = §#!7§.FIREFOX;
         }
         if(_loc1_.indexOf("Chrome") != -1)
         {
            _loc2_ = §#!7§.CHROME;
         }
         if(_loc1_.indexOf("MSIE") != -1)
         {
            _loc2_ = §#!7§.IE;
         }
         if(_loc1_.indexOf("Opera") != -1)
         {
            _loc2_ = §#!7§.OPERA;
         }
         return _loc2_;
      }
   }
}
