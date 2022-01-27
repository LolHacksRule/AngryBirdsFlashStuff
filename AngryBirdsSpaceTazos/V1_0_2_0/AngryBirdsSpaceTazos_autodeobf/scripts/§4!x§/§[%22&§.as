package §4!x§
{
   import §<l§.§#r§;
   
   public class §["&§
   {
      
      public static const SAFARI:String = "SAFARI";
      
      public static const FIREFOX:String = "FIREFOX";
      
      public static const CHROME:String = "CHROME";
      
      public static const IE:String = "IE";
      
      public static const OPERA:String = "OPERA";
      
      public static const NULL:String = "NULL";
       
      
      public function §["&§()
      {
         super();
      }
      
      public static function §#!?§() : String
      {
         var _loc1_:String = §#r§.§#!2§("window.navigator.userAgent.toString");
         var _loc2_:String = §["&§.NULL;
         if(_loc1_.indexOf("Safari") != -1)
         {
            _loc2_ = §["&§.SAFARI;
         }
         if(_loc1_.indexOf("Firefox") != -1)
         {
            _loc2_ = §["&§.FIREFOX;
         }
         if(_loc1_.indexOf("Chrome") != -1)
         {
            _loc2_ = §["&§.CHROME;
         }
         if(_loc1_.indexOf("MSIE") != -1)
         {
            _loc2_ = §["&§.IE;
         }
         if(_loc1_.indexOf("Opera") != -1)
         {
            _loc2_ = §["&§.OPERA;
         }
         return _loc2_;
      }
   }
}
