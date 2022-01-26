package §_-XI§
{
   import §_-rz§.§_-KN§;
   
   public class §_-mk§
   {
      
      private static const §_-Fc§:String = "trackEvent";
      
      private static const §_-Dp§:String = "flash";
      
      public static const §_-XL§:String = "initialized";
      
      public static const §_-V-§:String = "loaded";
      
      public static const §_-EQ§:String = "level-selection";
      
      public static const §_-Ri§:String = "level-started";
      
      public static const §_-6u§:String = "level-completed";
      
      public static const §_-QQ§:String = "gpu-rendering";
      
      public static const §_-33§:String = "cpu-rendering";
      
      public static const §_-mO§:String = "registration-success";
      
      public static const §_-Jd§:String = "registration-failure";
      
      public static const §_-ys§:String = "crashed";
      
      public static const §_-Gx§:String = "crash-log";
      
      public static const §_-R2§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
       
      
      public function §_-mk§()
      {
         super();
      }
      
      public static function §_-6h§(param1:String, param2:String = null, param3:int = 0) : void
      {
         if(enabled)
         {
            §_-KN§.§_-Th§(§_-Fc§,§_-Dp§,param1,param2,param3);
         }
      }
   }
}
