package §&! §
{
   import §![§.§4!6§;
   import flash.display.DisplayObject;
   
   public class §%!Q§
   {
      
      protected static const § !P§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §`!M§:String = "flash";
      
      public static const §-!D§:String = "initialized";
      
      public static const §+!9§:String = "loaded";
      
      public static const §@"§:String = "level-started";
      
      public static const §2!?§:String = "level-completed";
      
      public static const §6!?§:String = "gpu-rendering";
      
      public static const §"!O§:String = "cpu-rendering";
      
      public static const §1!W§:String = "crashed";
      
      public static const §<!'§:String = "crash-log";
      
      public static const §5!C§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §,<§:Vector.<§1s§> = new Vector.<§1s§>();
       
      
      public function §%!Q§()
      {
         super();
      }
      
      public static function §]#§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §4$§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§`!M§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §2!"§(§ !P§,param1,param2,param3,param4);
      }
      
      protected static function §2!"§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §4!6§.§]l§(param1,param2,param3,param4,param5);
         }
      }
   }
}
