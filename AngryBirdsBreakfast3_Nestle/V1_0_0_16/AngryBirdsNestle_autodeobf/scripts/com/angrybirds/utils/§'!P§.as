package com.angrybirds.utils
{
   import §;V§.§%c§;
   
   public class §'!P§
   {
      
      public static const SAFARI:String = "SAFARI";
      
      public static const FIREFOX:String = "FIREFOX";
      
      public static const CHROME:String = "CHROME";
      
      public static const IE:String = "IE";
      
      public static const OPERA:String = "OPERA";
      
      public static const NULL:String = "NULL";
       
      
      public function §'!P§()
      {
         super();
      }
      
      public static function §7R§() : String
      {
         var _loc1_:String = §%c§.§6"§("window.navigator.userAgent.toString");
         var _loc2_:String = §'!P§.NULL;
         if(_loc1_.indexOf("Safari") != -1)
         {
            _loc2_ = §'!P§.SAFARI;
         }
         if(_loc1_.indexOf("Firefox") != -1)
         {
            _loc2_ = §'!P§.FIREFOX;
         }
         if(_loc1_.indexOf("Chrome") != -1)
         {
            _loc2_ = §'!P§.CHROME;
         }
         if(_loc1_.indexOf("MSIE") != -1)
         {
            _loc2_ = §'!P§.IE;
         }
         if(_loc1_.indexOf("Opera") != -1)
         {
            _loc2_ = §'!P§.OPERA;
         }
         return _loc2_;
      }
   }
}
