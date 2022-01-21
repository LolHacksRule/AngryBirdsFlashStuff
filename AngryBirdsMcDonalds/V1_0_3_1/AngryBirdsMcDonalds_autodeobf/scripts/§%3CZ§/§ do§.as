package §<Z§
{
   import §7,§.§=d§;
   
   public class § do§
   {
      
      public static const SAFARI:String = "SAFARI";
      
      public static const FIREFOX:String = "FIREFOX";
      
      public static const CHROME:String = "CHROME";
      
      public static const IE:String = "IE";
      
      public static const OPERA:String = "OPERA";
      
      public static const NULL:String = "NULL";
       
      
      public function § do§()
      {
         super();
      }
      
      public static function §-6§() : String
      {
         var _loc1_:String = §=d§.§2!l§("window.navigator.userAgent.toString");
         var _loc2_:String = § do§.NULL;
         if(_loc1_.indexOf("Safari") != -1)
         {
            _loc2_ = § do§.SAFARI;
         }
         if(_loc1_.indexOf("Firefox") != -1)
         {
            _loc2_ = § do§.FIREFOX;
         }
         if(_loc1_.indexOf("Chrome") != -1)
         {
            _loc2_ = § do§.CHROME;
         }
         if(_loc1_.indexOf("MSIE") != -1)
         {
            _loc2_ = § do§.IE;
         }
         if(_loc1_.indexOf("Opera") != -1)
         {
            _loc2_ = § do§.OPERA;
         }
         return _loc2_;
      }
   }
}
