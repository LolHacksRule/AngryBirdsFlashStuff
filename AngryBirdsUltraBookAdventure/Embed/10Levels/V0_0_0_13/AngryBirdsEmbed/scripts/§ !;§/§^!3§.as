package § !;§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §^!3§
   {
      
      protected static const §'!6§:String = "flash";
      
      public static const §6!%§:String = "initialized";
      
      public static const §#+§:String = "loaded";
      
      public static const §2!,§:String = "level-started";
      
      public static const §]m§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §4n§:String = "crash-log";
      
      public static const §4§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §^V§:AnalyticsTracker;
      
      private static var §,!F§:Vector.<§6!1§>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'!6§ = "flash";
            if(_loc2_)
            {
               §6!%§ = §^Y§.§6!%§;
               if(_loc2_)
               {
                  §#+§ = §^Y§.§#+§;
                  §2!,§ = §^Y§.§2!,§;
                  §]m§ = §^Y§.§]m§;
                  addr52:
                  ACTION_GPU_FPS_REPORT = §^Y§.ACTION_GPU_FPS_REPORT;
                  if(!(_loc1_ && §^!3§))
                  {
                     ACTION_CPU_FPS_REPORT = §^Y§.ACTION_CPU_FPS_REPORT;
                     if(_loc2_ || _loc2_)
                     {
                        ACTION_APPLICATION_CRASH = §^Y§.ACTION_APPLICATION_CRASH;
                        §4n§ = §^Y§.§4n§;
                        addr74:
                        if(_loc2_ || §^!3§)
                        {
                           §4§ = §^Y§.§4§;
                           if(!_loc2_)
                           {
                           }
                           §§goto(addr114);
                        }
                     }
                     §§goto(addr114);
                  }
                  enabled = false;
                  §,!F§ = new Vector.<§6!1§>();
                  §§goto(addr114);
               }
               §§goto(addr74);
            }
            addr114:
            return;
         }
         §§goto(addr52);
      }
      
      public function §^!3§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §8'§(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            if(!§^V§)
            {
               try
               {
                  addr26:
                  §^V§ = new GATracker(param1,param2);
                  if(!(_loc4_ && param2))
                  {
                     §§push(§^V§);
                     if(!(_loc4_ && param2))
                     {
                        if(!§§pop().isReady())
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              addr77:
                              §^V§.addEventListener(AnalyticsEvent.READY,onReady);
                              addr81:
                           }
                           §§goto(addr81);
                        }
                        §§goto(addr94);
                     }
                  }
                  §§goto(addr77);
               }
               catch(e:Error)
               {
               }
            }
            addr94:
            return;
         }
         §§goto(addr26);
      }
      
      private static function onReady(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §^V§.removeEventListener(AnalyticsEvent.READY,onReady);
            if(_loc2_)
            {
               §--§();
            }
         }
      }
      
      private static function §--§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§6!1§ = null;
         while(§,!F§.length > 0)
         {
            _loc1_ = §,!F§.shift();
            if(!(_loc3_ && _loc2_))
            {
               trackEvent(_loc1_.category,_loc1_.action,_loc1_.§%H§,_loc1_.value);
            }
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(enabled);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     §§push(§^V§);
                     if(_loc5_ || param2)
                     {
                        if(§§pop())
                        {
                           §§push(§^V§);
                           if(!_loc6_)
                           {
                              addr56:
                              if(§§pop().isReady())
                              {
                                 addr58:
                                 §--§();
                                 if(_loc5_)
                                 {
                                    addr63:
                                    §^V§.trackEvent(param1,param2,param3,param4);
                                 }
                              }
                              else
                              {
                                 §,!F§.push(new §6!1§(param1,param2,param3,param4));
                              }
                              §§goto(addr77);
                           }
                           §§goto(addr63);
                        }
                        addr77:
                        return;
                     }
                     §§goto(addr56);
                  }
               }
               §§goto(addr58);
            }
            §§goto(addr56);
         }
         §§goto(addr63);
      }
   }
}
