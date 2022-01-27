package §[z§
{
   import §26§.§3v§;
   
   public class §<m§
   {
      
      public static const SAFARI:String = "SAFARI";
      
      public static const FIREFOX:String = "FIREFOX";
      
      public static const CHROME:String = "CHROME";
      
      public static const IE:String = "IE";
      
      public static const OPERA:String = "OPERA";
      
      public static const NULL:String = "NULL";
       
      
      public function §<m§()
      {
         super();
      }
      
      public static function §"&§() : String
      {
         var _loc1_:String = §3v§.§0!Z§("window.navigator.userAgent.toString");
         var _loc2_:String = §<m§.NULL;
         if(_loc1_.indexOf("Safari") != -1)
         {
            _loc2_ = §<m§.SAFARI;
         }
         if(_loc1_.indexOf("Firefox") != -1)
         {
            _loc2_ = §<m§.FIREFOX;
         }
         if(_loc1_.indexOf("Chrome") != -1)
         {
            _loc2_ = §<m§.CHROME;
         }
         if(_loc1_.indexOf("MSIE") != -1)
         {
            _loc2_ = §<m§.IE;
         }
         if(_loc1_.indexOf("Opera") != -1)
         {
            _loc2_ = §<m§.OPERA;
         }
         return _loc2_;
      }
   }
}
