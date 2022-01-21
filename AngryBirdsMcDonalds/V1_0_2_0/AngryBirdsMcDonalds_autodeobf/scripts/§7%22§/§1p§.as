package §7"§
{
   import §`c§.§`Z§;
   
   public class §1p§
   {
      
      public static const SAFARI:String = "SAFARI";
      
      public static const FIREFOX:String = "FIREFOX";
      
      public static const CHROME:String = "CHROME";
      
      public static const IE:String = "IE";
      
      public static const OPERA:String = "OPERA";
      
      public static const NULL:String = "NULL";
       
      
      public function §1p§()
      {
         super();
      }
      
      public static function §#!Q§() : String
      {
         var _loc1_:String = §`Z§.§?D§("window.navigator.userAgent.toString");
         var _loc2_:String = §1p§.NULL;
         if(_loc1_.indexOf("Safari") != -1)
         {
            _loc2_ = §1p§.SAFARI;
         }
         if(_loc1_.indexOf("Firefox") != -1)
         {
            _loc2_ = §1p§.FIREFOX;
         }
         if(_loc1_.indexOf("Chrome") != -1)
         {
            _loc2_ = §1p§.CHROME;
         }
         if(_loc1_.indexOf("MSIE") != -1)
         {
            _loc2_ = §1p§.IE;
         }
         if(_loc1_.indexOf("Opera") != -1)
         {
            _loc2_ = §1p§.OPERA;
         }
         return _loc2_;
      }
   }
}
