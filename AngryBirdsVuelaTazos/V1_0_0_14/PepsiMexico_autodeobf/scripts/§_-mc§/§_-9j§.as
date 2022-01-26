package §_-mc§
{
   import §_-N§.§_-D6§;
   
   public class §_-9j§
   {
      
      private static const §_-No§:String = "trackEvent";
      
      private static const §_-Qq§:String = "flash";
      
      public static const §_-Fe§:String = "initialized";
      
      public static const §_-Nk§:String = "loaded";
      
      public static const §_-8a§:String = "level-selection";
      
      public static const §_-Ie§:String = "level-started";
      
      public static const § each§:String = "level-completed";
      
      public static const §super§:String = "gpu-rendering";
      
      public static const §_-tj§:String = "cpu-rendering";
      
      public static const §_-P3§:String = "registration-success";
      
      public static const §_-AU§:String = "registration-failure";
      
      public static const §_-jd§:String = "crashed";
      
      public static const §_-81§:String = "crash-log";
      
      public static const §_-cQ§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
       
      
      public function §_-9j§()
      {
         super();
      }
      
      public static function §_-Ej§(param1:String, param2:String = null, param3:int = 0) : void
      {
         if(enabled)
         {
            §_-D6§.§_-J5§(§_-No§,§_-Qq§,param1,param2,param3);
         }
      }
   }
}
