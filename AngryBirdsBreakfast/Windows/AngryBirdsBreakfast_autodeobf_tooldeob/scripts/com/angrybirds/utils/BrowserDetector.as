package com.angrybirds.utils
{
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   
   public class BrowserDetector
   {
      
      public static const SAFARI:String = "SAFARI";
      
      public static const FIREFOX:String = "FIREFOX";
      
      public static const CHROME:String = "CHROME";
      
      public static const IE:String = "IE";
      
      public static const OPERA:String = "OPERA";
      
      public static const NULL:String = "NULL";
       
      
      public function BrowserDetector()
      {
         super();
      }
      
      public static function getBrowser() : String
      {
         var _loc1_:String = ExternalInterfaceHandler.performCall("window.navigator.userAgent.toString");
         var _loc2_:String = BrowserDetector.NULL;
         if(_loc1_.indexOf("Safari") != -1)
         {
            _loc2_ = BrowserDetector.SAFARI;
         }
         if(_loc1_.indexOf("Firefox") != -1)
         {
            _loc2_ = BrowserDetector.FIREFOX;
         }
         if(_loc1_.indexOf("Chrome") != -1)
         {
            _loc2_ = BrowserDetector.CHROME;
         }
         if(_loc1_.indexOf("MSIE") != -1)
         {
            _loc2_ = BrowserDetector.IE;
         }
         if(_loc1_.indexOf("Opera") != -1)
         {
            _loc2_ = BrowserDetector.OPERA;
         }
         return _loc2_;
      }
   }
}
