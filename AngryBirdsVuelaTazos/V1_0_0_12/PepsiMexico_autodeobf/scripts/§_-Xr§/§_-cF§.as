package §_-Xr§
{
   import §_-g2§.§_-DR§;
   
   public class §_-cF§
   {
      
      private static const §_-oc§:String = "trackEvent";
      
      private static const §_-MH§:String = "flash";
      
      public static const §_-NE§:String = "initialized";
      
      public static const §_-ci§:String = "loaded";
      
      public static const §_-Di§:String = "level-selection";
      
      public static const §_-D0§:String = "level-started";
      
      public static const §_-ZF§:String = "level-completed";
      
      public static const §_-nx§:String = "gpu-rendering";
      
      public static const §_-5P§:String = "cpu-rendering";
      
      public static const §_-El§:String = "registration-success";
      
      public static const §_-bP§:String = "registration-failure";
      
      public static const §_-ab§:String = "crashed";
      
      public static const §_-KZ§:String = "crash-log";
      
      public static const §_-0P§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
       
      
      public function §_-cF§()
      {
         super();
      }
      
      public static function §_-Wt§(param1:String, param2:String = null, param3:int = 0) : void
      {
         if(enabled)
         {
            §_-DR§.§_-Df§(§_-oc§,§_-MH§,param1,param2,param3);
         }
      }
   }
}
