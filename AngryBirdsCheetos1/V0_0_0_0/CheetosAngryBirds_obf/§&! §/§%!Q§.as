package §&! §
{
   import §4!6§.§,Y§;
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
      
      private static var §,<§:Vector.<§1s§>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § !P§ = "trackEvent";
            while(true)
            {
               TRACKING_FUNCTION_10_PERCENT = "trackEvent10Percent";
               while(true)
               {
                  TRACKING_FUNCTION_1_PERCENT = "trackEvent1Percent";
                  loop2:
                  while(true)
                  {
                     §`!M§ = "flash";
                     while(true)
                     {
                        §-!D§ = "initialized";
                        addr144:
                        while(_loc1_ || _loc1_)
                        {
                           continue loop2;
                        }
                     }
                  }
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  §5!C§ = "crash-trace";
                  §§goto(addr60);
               }
            }
         }
         while(true)
         {
            §6!?§ = "gpu-rendering";
            §§goto(addr122);
         }
      }
      
      public function §%!Q§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §]#§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §4$§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            trackEvent(§`!M§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            §2!"§(§ !P§,param1,param2,param3,param4);
         }
      }
      
      protected static function §2!"§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            if(enabled)
            {
               if(!(_loc7_ && param1))
               {
                  addr52:
                  §,Y§.§[[§(param1,param2,param3,param4,param5);
               }
            }
            return;
         }
         §§goto(addr52);
      }
   }
}
