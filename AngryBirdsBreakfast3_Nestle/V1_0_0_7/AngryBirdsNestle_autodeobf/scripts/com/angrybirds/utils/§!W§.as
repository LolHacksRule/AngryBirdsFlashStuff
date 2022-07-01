package com.angrybirds.utils
{
   import §'!'§.§0!p§;
   
   public class §!W§
   {
      
      public static const SAFARI:String = "SAFARI";
      
      public static const FIREFOX:String = "FIREFOX";
      
      public static const CHROME:String = "CHROME";
      
      public static const IE:String = "IE";
      
      public static const OPERA:String = "OPERA";
      
      public static const NULL:String = "NULL";
       
      
      public function §!W§()
      {
         super();
      }
      
      public static function §#!C§() : String
      {
         var _loc1_:String = §0!p§.§`_§("window.navigator.userAgent.toString");
         var _loc2_:String = §!W§.NULL;
         if(_loc1_.indexOf("Safari") != -1)
         {
            _loc2_ = §!W§.SAFARI;
         }
         if(_loc1_.indexOf("Firefox") != -1)
         {
            _loc2_ = §!W§.FIREFOX;
         }
         if(_loc1_.indexOf("Chrome") != -1)
         {
            _loc2_ = §!W§.CHROME;
         }
         if(_loc1_.indexOf("MSIE") != -1)
         {
            _loc2_ = §!W§.IE;
         }
         if(_loc1_.indexOf("Opera") != -1)
         {
            _loc2_ = §!W§.OPERA;
         }
         return _loc2_;
      }
   }
}
