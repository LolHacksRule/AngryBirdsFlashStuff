package §8!Q§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class § ^§
   {
      
      protected static const §[N§:String = "flash";
      
      public static const §%!H§:String = §4§.§%!H§;
      
      public static const §9!c§:String = "loaded";
      
      public static const §#!e§:String = "level-started";
      
      public static const §1!k§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §[!D§:String = "crash-log";
      
      public static const §--§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §45§:AnalyticsTracker;
      
      private static var §9!"§:Vector.<§0!&§>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §[N§ = "flash";
         }
         if(!(_loc1_ && _loc1_))
         {
            §9!c§ = §4§.§9!c§;
            if(_loc2_ || _loc1_)
            {
               §#!e§ = §4§.§#!e§;
               §1!k§ = §4§.§1!k§;
               if(!_loc1_)
               {
                  ACTION_GPU_FPS_REPORT = §4§.ACTION_GPU_FPS_REPORT;
                  if(_loc2_ || _loc1_)
                  {
                     ACTION_CPU_FPS_REPORT = §4§.ACTION_CPU_FPS_REPORT;
                     ACTION_APPLICATION_CRASH = §4§.ACTION_APPLICATION_CRASH;
                     addr98:
                     §[!D§ = §4§.§[!D§;
                     if(!_loc1_)
                     {
                        addr104:
                        §--§ = §4§.§--§;
                     }
                     enabled = false;
                     if(!(_loc1_ && _loc1_))
                     {
                        §9!"§ = new Vector.<§0!&§>();
                     }
                     return;
                     addr84:
                  }
                  §§goto(addr104);
               }
               §§goto(addr84);
            }
         }
         §§goto(addr98);
      }
      
      public function § ^§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §,!S§(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(!§45§)
            {
               try
               {
                  addr21:
                  §45§ = new GATracker(param1,param2);
                  if(_loc5_ || param1)
                  {
                     §§push(§45§);
                     if(!_loc4_)
                     {
                        if(!§§pop().isReady())
                        {
                           if(_loc5_ || param2)
                           {
                              addr67:
                              §45§.addEventListener(AnalyticsEvent.READY,onReady);
                           }
                        }
                        §§goto(addr84);
                     }
                  }
                  §§goto(addr67);
               }
               catch(e:Error)
               {
               }
            }
            addr84:
            return;
         }
         §§goto(addr21);
      }
      
      private static function onReady(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §45§.removeEventListener(AnalyticsEvent.READY,onReady);
            if(!(_loc3_ && param1))
            {
               §!_§();
            }
         }
      }
      
      private static function §!_§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§0!&§ = null;
         while(§9!"§.length > 0)
         {
            _loc1_ = §9!"§.shift();
            if(_loc2_ || _loc3_)
            {
               trackEvent(_loc1_.category,_loc1_.action,_loc1_.§?r§,_loc1_.value);
            }
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            §§push(enabled);
            if(_loc6_)
            {
               if(§§pop())
               {
                  §§push(§45§);
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        §§push(§45§);
                        if(!(_loc5_ && param1))
                        {
                           addr51:
                           if(§§pop().isReady())
                           {
                              if(!(_loc5_ && param3))
                              {
                                 §!_§();
                                 if(!(_loc5_ && param1))
                                 {
                                    addr79:
                                    §45§.trackEvent(param1,param2,param3,param4);
                                 }
                              }
                           }
                           else
                           {
                              §9!"§.push(new §0!&§(param1,param2,param3,param4));
                           }
                           §§goto(addr93);
                        }
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr79);
               }
               addr93:
               return;
            }
            §§goto(addr51);
         }
         §§goto(addr79);
      }
   }
}
