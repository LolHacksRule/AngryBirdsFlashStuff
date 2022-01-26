package §_-HJ§
{
   import §_-TS§.§_-93§;
   
   public class §_-cL§
   {
      
      private static const §_-lA§:String = "trackEvent";
      
      private static const §_-d4§:String = "flash";
      
      public static const §_-a8§:String = "initialized";
      
      public static const §_-QL§:String = "loaded";
      
      public static const §_-Dx§:String = "level-selection";
      
      public static const §_-Bd§:String = "level-started";
      
      public static const §_-7y§:String = "level-completed";
      
      public static const §_-5d§:String = "gpu-rendering";
      
      public static const §_-Wu§:String = "cpu-rendering";
      
      public static const §_-PA§:String = "registration-success";
      
      public static const §_-rT§:String = "registration-failure";
      
      public static const §_-42§:String = "crashed";
      
      public static const §_-l7§:String = "crash-log";
      
      public static const §_-3s§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
       
      
      public function §_-cL§()
      {
         super();
      }
      
      public static function §_-JT§(param1:String, param2:String = null, param3:int = 0) : void
      {
         if(enabled)
         {
            §_-93§.§_-Dt§(§_-lA§,§_-d4§,param1,param2,param3);
         }
      }
   }
}
