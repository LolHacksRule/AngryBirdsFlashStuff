package §_-4R§
{
   import §_-QN§.§_-7D§;
   
   public class §_-dZ§
   {
      
      private static const §_-vx§:String = "trackEvent";
      
      private static const §_-tt§:String = "flash";
      
      public static const §_-uF§:String = "initialized";
      
      public static const §_-vv§:String = "loaded";
      
      public static const §_-QL§:String = "level-selection";
      
      public static const §_-DW§:String = "level-started";
      
      public static const §_-Ly§:String = "level-completed";
      
      public static const §_-VW§:String = "gpu-rendering";
      
      public static const §_-K3§:String = "cpu-rendering";
      
      public static const §_-Ad§:String = "registration-success";
      
      public static const §_-4Z§:String = "registration-failure";
      
      public static const §_-g4§:String = "crashed";
      
      public static const §_-jd§:String = "crash-log";
      
      public static const §_-MK§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
       
      
      public function §_-dZ§()
      {
         super();
      }
      
      public static function §_-H3§(param1:String, param2:String = null, param3:int = 0) : void
      {
         if(enabled)
         {
            §_-7D§.§_-fx§(§_-vx§,§_-tt§,param1,param2,param3);
         }
      }
   }
}
