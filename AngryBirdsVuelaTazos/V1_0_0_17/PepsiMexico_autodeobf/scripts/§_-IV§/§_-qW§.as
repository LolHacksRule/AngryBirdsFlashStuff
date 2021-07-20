package §_-IV§
{
   import §_-O7§.§_-zR§;
   
   public class §_-qW§
   {
      
      private static const §_-qo§:String = "trackEvent";
      
      private static const §_-zX§:String = "flash";
      
      public static const §_-cZ§:String = "initialized";
      
      public static const §_-wV§:String = "loaded";
      
      public static const §_-Wp§:String = "level-selection";
      
      public static const §_-2Y§:String = "level-started";
      
      public static const §_-5S§:String = "level-completed";
      
      public static const §_-Qz§:String = "gpu-rendering";
      
      public static const §_-X§:String = "cpu-rendering";
      
      public static const §_-8g§:String = "registration-success";
      
      public static const §_-Uy§:String = "registration-failure";
      
      public static const §_-Ub§:String = "crashed";
      
      public static const §_-bn§:String = "crash-log";
      
      public static const §_-ZT§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
       
      
      public function §_-qW§()
      {
         super();
      }
      
      public static function §_-6h§(param1:String, param2:String = null, param3:int = 0) : void
      {
         if(enabled)
         {
            §_-zR§.§_-6c§(§_-qo§,§_-zX§,param1,param2,param3);
         }
      }
   }
}
