package §+!B§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §-Q§
   {
      
      protected static const §;>§:String = "flash";
      
      public static const § 2§:String = "initialized";
      
      public static const §0!4§:String = "loaded";
      
      public static const §'!%§:String = "level-started";
      
      public static const §0Y§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §@! §:String = "crash-log";
      
      public static const §?c§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §`j§:AnalyticsTracker;
      
      private static var §?6§:Vector.<§7`§>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §-Q§)
         {
            §;>§ = "flash";
            if(_loc2_ || _loc2_)
            {
               § 2§ = §[m§.§ 2§;
               if(!(_loc1_ && §-Q§))
               {
                  §0!4§ = §[m§.§0!4§;
                  §'!%§ = §[m§.§'!%§;
                  §0Y§ = §[m§.§0Y§;
                  ACTION_GPU_FPS_REPORT = §[m§.ACTION_GPU_FPS_REPORT;
                  addr45:
               }
               ACTION_CPU_FPS_REPORT = §[m§.ACTION_CPU_FPS_REPORT;
               if(_loc2_ || §-Q§)
               {
                  ACTION_APPLICATION_CRASH = §[m§.ACTION_APPLICATION_CRASH;
                  if(!_loc1_)
                  {
                     §@! § = §[m§.§@! §;
                     if(!_loc1_)
                     {
                        §?c§ = §[m§.§?c§;
                        if(!_loc1_)
                        {
                           enabled = false;
                           if(!(_loc1_ && _loc1_))
                           {
                              addr120:
                              §?6§ = new Vector.<§7`§>();
                           }
                        }
                     }
                  }
                  §§goto(addr120);
               }
               return;
            }
            §§goto(addr45);
         }
         §§goto(addr120);
      }
      
      public function §-Q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §%x§(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(!§`j§)
            {
               try
               {
                  §`j§ = new GATracker(param1,param2);
                  addr21:
                  if(!_loc4_)
                  {
                     §§push(§`j§);
                     if(!_loc4_)
                     {
                        if(!§§pop().isReady())
                        {
                           if(!(_loc4_ && §-Q§))
                           {
                              addr62:
                              §`j§.addEventListener(AnalyticsEvent.READY,onReady);
                              addr66:
                           }
                           §§goto(addr66);
                        }
                        §§goto(addr79);
                     }
                  }
                  §§goto(addr62);
               }
               catch(e:Error)
               {
               }
            }
            addr79:
            return;
         }
         §§goto(addr21);
      }
      
      private static function onReady(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §`j§.removeEventListener(AnalyticsEvent.READY,onReady);
            if(_loc3_ || §-Q§)
            {
               §"n§();
            }
         }
      }
      
      private static function §"n§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§7`§ = null;
         while(§?6§.length > 0)
         {
            _loc1_ = §?6§.shift();
            if(_loc2_ || _loc3_)
            {
               trackEvent(_loc1_.category,_loc1_.action,_loc1_.§6O§,_loc1_.value);
            }
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(enabled);
            if(!(_loc5_ && param3))
            {
               if(§§pop())
               {
                  if(_loc6_ || param3)
                  {
                     §§push(§`j§);
                     if(_loc6_ || param1)
                     {
                        if(§§pop())
                        {
                           if(_loc6_ || param1)
                           {
                              §§push(§`j§);
                              if(_loc6_)
                              {
                                 addr75:
                                 if(!§§pop().isReady())
                                 {
                                    §?6§.push(new §7`§(param1,param2,param3,param4));
                                 }
                                 §§goto(addr102);
                              }
                           }
                           §§goto(addr80);
                        }
                        §§goto(addr102);
                     }
                     §§pop().trackEvent(param1,param2,param3,param4);
                     if(_loc5_ && §-Q§)
                     {
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr80);
               }
               addr102:
               if(!_loc5_)
               {
                  addr78:
                  §"n§();
                  addr80:
                  §§push(§`j§);
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr78);
      }
   }
}
