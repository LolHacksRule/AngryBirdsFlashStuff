package §]0§
{
   import §<G§.§2C§;
   
   public class §9x§
   {
      
      public static const SAFARI:String = "SAFARI";
      
      public static const FIREFOX:String = "FIREFOX";
      
      public static const CHROME:String = "CHROME";
      
      public static const IE:String = "IE";
      
      public static const OPERA:String = "OPERA";
      
      public static const NULL:String = "NULL";
       
      
      public function §9x§()
      {
         super();
      }
      
      public static function §4!2§() : String
      {
         var _loc1_:String = §2C§.§^!A§("window.navigator.userAgent.toString");
         var _loc2_:String = §9x§.NULL;
         if(_loc1_.indexOf("Safari") != -1)
         {
            _loc2_ = §9x§.SAFARI;
         }
         if(_loc1_.indexOf("Firefox") != -1)
         {
            _loc2_ = §9x§.FIREFOX;
         }
         if(_loc1_.indexOf("Chrome") != -1)
         {
            _loc2_ = §9x§.CHROME;
         }
         if(_loc1_.indexOf("MSIE") != -1)
         {
            _loc2_ = §9x§.IE;
         }
         if(_loc1_.indexOf("Opera") != -1)
         {
            _loc2_ = §9x§.OPERA;
         }
         return _loc2_;
      }
   }
}
