package §0!E§
{
   import §@B§.§8V§;
   import flash.display.DisplayObject;
   
   public class §3"§
   {
      
      protected static const §=Z§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §`0§:String = "flash";
      
      public static const §8`§:String = "initialized";
      
      public static const §1!'§:String = "loaded";
      
      public static const §0a§:String = "level-started";
      
      public static const §,!M§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §>-§:String = "crash-log";
      
      public static const §]#§:String = "crash-trace";
      
      public static const §=!B§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §!^§:Vector.<§!a§>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §8`§ = "initialized";
            loop1:
            while(true)
            {
               §1!'§ = "loaded";
               while(true)
               {
                  §0a§ = "level-started";
                  while(true)
                  {
                     §,!M§ = "level-completed";
                     while(!_loc2_)
                     {
                        ACTION_GPU_FPS_REPORT = "gpu-rendering";
                        do
                        {
                           ACTION_CPU_FPS_REPORT = "cpu-rendering";
                        }
                        while(!(_loc1_ || _loc2_));
                        
                        ACTION_APPLICATION_CRASH = "crashed";
                        §>-§ = "crash-log";
                        §]#§ = "crash-trace";
                        while(!(_loc2_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                           §!^§ = new Vector.<§!a§>();
                           if(!_loc2_)
                           {
                              return;
                           }
                        }
                     }
                  }
                  addr54:
                  enabled = false;
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr42);
               }
            }
         }
      }
      
      public function §3"§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §7&§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §>v§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            trackEvent(§`0§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            trackSampledEvent(§=Z§,param1,param2,param3,param4);
         }
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            if(enabled)
            {
               if(_loc6_ || param2)
               {
                  §8V§.§^^§(param1,param2,param3,param4,param5);
               }
            }
         }
      }
   }
}
