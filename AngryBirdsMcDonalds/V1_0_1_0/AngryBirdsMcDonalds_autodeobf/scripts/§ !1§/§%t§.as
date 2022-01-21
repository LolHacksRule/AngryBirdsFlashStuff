package § !1§
{
   import §<G§.§6n§;
   
   public class §%t§
   {
      
      public static const SAFARI:String = "SAFARI";
      
      public static const FIREFOX:String = "FIREFOX";
      
      public static const CHROME:String = "CHROME";
      
      public static const IE:String = "IE";
      
      public static const OPERA:String = "OPERA";
      
      public static const NULL:String = "NULL";
       
      
      public function §%t§()
      {
         super();
      }
      
      public static function §5]§() : String
      {
         var _loc1_:String = §6n§.§+Z§("window.navigator.userAgent.toString");
         var _loc2_:String = §%t§.NULL;
         if(_loc1_.indexOf("Safari") != -1)
         {
            _loc2_ = §%t§.SAFARI;
         }
         if(_loc1_.indexOf("Firefox") != -1)
         {
            _loc2_ = §%t§.FIREFOX;
         }
         if(_loc1_.indexOf("Chrome") != -1)
         {
            _loc2_ = §%t§.CHROME;
         }
         if(_loc1_.indexOf("MSIE") != -1)
         {
            _loc2_ = §%t§.IE;
         }
         if(_loc1_.indexOf("Opera") != -1)
         {
            _loc2_ = §%t§.OPERA;
         }
         return _loc2_;
      }
   }
}
