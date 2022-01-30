package com.angrybirds.utils
{
   import § !H§.§0!m§;
   
   public class §8$§
   {
      
      public static const SAFARI:String = "SAFARI";
      
      public static const FIREFOX:String = "FIREFOX";
      
      public static const CHROME:String = "CHROME";
      
      public static const IE:String = "IE";
      
      public static const OPERA:String = "OPERA";
      
      public static const NULL:String = "NULL";
       
      
      public function §8$§()
      {
         super();
      }
      
      public static function §6!y§() : String
      {
         var _loc1_:String = §0!m§.§<Q§("window.navigator.userAgent.toString");
         var _loc2_:String = §8$§.NULL;
         if(_loc1_.indexOf("Safari") != -1)
         {
            _loc2_ = §8$§.SAFARI;
         }
         if(_loc1_.indexOf("Firefox") != -1)
         {
            _loc2_ = §8$§.FIREFOX;
         }
         if(_loc1_.indexOf("Chrome") != -1)
         {
            _loc2_ = §8$§.CHROME;
         }
         if(_loc1_.indexOf("MSIE") != -1)
         {
            _loc2_ = §8$§.IE;
         }
         if(_loc1_.indexOf("Opera") != -1)
         {
            _loc2_ = §8$§.OPERA;
         }
         return _loc2_;
      }
   }
}
