package §7!0§
{
   import §<"8§.§6!c§;
   
   public class §`!_§
   {
      
      public static const SAFARI:String = "SAFARI";
      
      public static const FIREFOX:String = "FIREFOX";
      
      public static const CHROME:String = "CHROME";
      
      public static const IE:String = "IE";
      
      public static const OPERA:String = "OPERA";
      
      public static const NULL:String = "NULL";
       
      
      public function §`!_§()
      {
         super();
      }
      
      public static function §@e§() : String
      {
         var _loc1_:String = §6!c§.§?!6§("window.navigator.userAgent.toString");
         var _loc2_:String = §`!_§.NULL;
         if(_loc1_.indexOf("Safari") != -1)
         {
            _loc2_ = §`!_§.SAFARI;
         }
         if(_loc1_.indexOf("Firefox") != -1)
         {
            _loc2_ = §`!_§.FIREFOX;
         }
         if(_loc1_.indexOf("Chrome") != -1)
         {
            _loc2_ = §`!_§.CHROME;
         }
         if(_loc1_.indexOf("MSIE") != -1)
         {
            _loc2_ = §`!_§.IE;
         }
         if(_loc1_.indexOf("Opera") != -1)
         {
            _loc2_ = §`!_§.OPERA;
         }
         return _loc2_;
      }
   }
}
