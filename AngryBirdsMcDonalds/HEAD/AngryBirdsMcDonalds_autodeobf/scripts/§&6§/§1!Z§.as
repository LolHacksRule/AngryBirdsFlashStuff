package §&6§
{
   import §%e§.§4§;
   
   public class §1!Z§
   {
      
      public static const SAFARI:String = "SAFARI";
      
      public static const FIREFOX:String = "FIREFOX";
      
      public static const CHROME:String = "CHROME";
      
      public static const IE:String = "IE";
      
      public static const OPERA:String = "OPERA";
      
      public static const NULL:String = "NULL";
       
      
      public function §1!Z§()
      {
         super();
      }
      
      public static function § z§() : String
      {
         var _loc1_:String = §4§.§>A§("window.navigator.userAgent.toString");
         var _loc2_:String = §1!Z§.NULL;
         if(_loc1_.indexOf("Safari") != -1)
         {
            _loc2_ = §1!Z§.SAFARI;
         }
         if(_loc1_.indexOf("Firefox") != -1)
         {
            _loc2_ = §1!Z§.FIREFOX;
         }
         if(_loc1_.indexOf("Chrome") != -1)
         {
            _loc2_ = §1!Z§.CHROME;
         }
         if(_loc1_.indexOf("MSIE") != -1)
         {
            _loc2_ = §1!Z§.IE;
         }
         if(_loc1_.indexOf("Opera") != -1)
         {
            _loc2_ = §1!Z§.OPERA;
         }
         return _loc2_;
      }
   }
}
