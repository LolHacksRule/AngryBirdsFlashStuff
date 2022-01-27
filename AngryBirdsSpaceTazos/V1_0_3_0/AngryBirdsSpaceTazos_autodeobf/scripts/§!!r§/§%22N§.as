package §!!r§
{
   import §4!Z§.§%^§;
   
   public class §"N§
   {
      
      public static const SAFARI:String = "SAFARI";
      
      public static const FIREFOX:String = "FIREFOX";
      
      public static const CHROME:String = "CHROME";
      
      public static const IE:String = "IE";
      
      public static const OPERA:String = "OPERA";
      
      public static const NULL:String = "NULL";
       
      
      public function §"N§()
      {
         super();
      }
      
      public static function §0&§() : String
      {
         var _loc1_:String = §%^§.§]"3§("window.navigator.userAgent.toString");
         var _loc2_:String = §"N§.NULL;
         if(_loc1_.indexOf("Safari") != -1)
         {
            _loc2_ = §"N§.SAFARI;
         }
         if(_loc1_.indexOf("Firefox") != -1)
         {
            _loc2_ = §"N§.FIREFOX;
         }
         if(_loc1_.indexOf("Chrome") != -1)
         {
            _loc2_ = §"N§.CHROME;
         }
         if(_loc1_.indexOf("MSIE") != -1)
         {
            _loc2_ = §"N§.IE;
         }
         if(_loc1_.indexOf("Opera") != -1)
         {
            _loc2_ = §"N§.OPERA;
         }
         return _loc2_;
      }
   }
}
