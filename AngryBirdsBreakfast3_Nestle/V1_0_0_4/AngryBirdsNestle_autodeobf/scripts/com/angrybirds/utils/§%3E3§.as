package com.angrybirds.utils
{
   import §?-§.§do §;
   
   public class §>3§
   {
      
      public static const SAFARI:String = "SAFARI";
      
      public static const FIREFOX:String = "FIREFOX";
      
      public static const CHROME:String = "CHROME";
      
      public static const IE:String = "IE";
      
      public static const OPERA:String = "OPERA";
      
      public static const NULL:String = "NULL";
       
      
      public function §>3§()
      {
         super();
      }
      
      public static function §`!7§() : String
      {
         var _loc1_:String = §do §.§>"-§("window.navigator.userAgent.toString");
         var _loc2_:String = §>3§.NULL;
         if(_loc1_.indexOf("Safari") != -1)
         {
            _loc2_ = §>3§.SAFARI;
         }
         if(_loc1_.indexOf("Firefox") != -1)
         {
            _loc2_ = §>3§.FIREFOX;
         }
         if(_loc1_.indexOf("Chrome") != -1)
         {
            _loc2_ = §>3§.CHROME;
         }
         if(_loc1_.indexOf("MSIE") != -1)
         {
            _loc2_ = §>3§.IE;
         }
         if(_loc1_.indexOf("Opera") != -1)
         {
            _loc2_ = §>3§.OPERA;
         }
         return _loc2_;
      }
   }
}
