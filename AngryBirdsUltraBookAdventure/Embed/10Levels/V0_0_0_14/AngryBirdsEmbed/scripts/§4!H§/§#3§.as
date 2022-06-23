package §4!H§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §#3§
   {
      
      protected static const §+2§:String = "flash";
      
      public static const §?i§:String = "initialized";
      
      public static const §&! §:String = "loaded";
      
      public static const §<J§:String = "level-started";
      
      public static const §break§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §]W§:String = "crash-log";
      
      public static const §"1§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §8-§:AnalyticsTracker;
      
      private static var §'&§:Vector.<§+D§>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §+2§ = "flash";
            if(_loc2_)
            {
               §?i§ = §[v§.§?i§;
               if(_loc2_)
               {
                  §&! § = §[v§.§&! §;
                  §<J§ = §[v§.§<J§;
                  §break§ = §[v§.§break§;
                  addr52:
                  ACTION_GPU_FPS_REPORT = §[v§.ACTION_GPU_FPS_REPORT;
                  if(!(_loc1_ && §#3§))
                  {
                     ACTION_CPU_FPS_REPORT = §[v§.ACTION_CPU_FPS_REPORT;
                     if(_loc2_ || _loc2_)
                     {
                        ACTION_APPLICATION_CRASH = §[v§.ACTION_APPLICATION_CRASH;
                        §]W§ = §[v§.§]W§;
                        addr74:
                        if(_loc2_ || §#3§)
                        {
                           §"1§ = §[v§.§"1§;
                           if(!_loc2_)
                           {
                           }
                           §§goto(addr114);
                        }
                     }
                     §§goto(addr114);
                  }
                  enabled = false;
                  §'&§ = new Vector.<§+D§>();
                  §§goto(addr114);
               }
               §§goto(addr74);
            }
            addr114:
            return;
         }
         §§goto(addr52);
      }
      
      public function §#3§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §97§(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            if(!§8-§)
            {
               try
               {
                  addr26:
                  §8-§ = new GATracker(param1,param2);
                  if(!(_loc4_ && param2))
                  {
                     §§push(§8-§);
                     if(!(_loc4_ && param2))
                     {
                        if(!§§pop().isReady())
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              addr77:
                              §8-§.addEventListener(AnalyticsEvent.READY,onReady);
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
            §8-§.removeEventListener(AnalyticsEvent.READY,onReady);
            if(_loc2_)
            {
               §5l§();
            }
         }
      }
      
      private static function §5l§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§+D§ = null;
         while(§'&§.length > 0)
         {
            _loc1_ = §'&§.shift();
            if(!(_loc3_ && _loc2_))
            {
               trackEvent(_loc1_.category,_loc1_.action,_loc1_.§^P§,_loc1_.value);
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
                     §§push(§8-§);
                     if(_loc5_ || param2)
                     {
                        if(§§pop())
                        {
                           §§push(§8-§);
                           if(!_loc6_)
                           {
                              addr56:
                              if(§§pop().isReady())
                              {
                                 addr58:
                                 §5l§();
                                 if(_loc5_)
                                 {
                                    addr63:
                                    §8-§.trackEvent(param1,param2,param3,param4);
                                 }
                              }
                              else
                              {
                                 §'&§.push(new §+D§(param1,param2,param3,param4));
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
