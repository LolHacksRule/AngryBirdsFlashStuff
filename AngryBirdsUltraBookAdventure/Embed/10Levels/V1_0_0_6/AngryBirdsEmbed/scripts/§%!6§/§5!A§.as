package §%!6§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §5!A§
   {
      
      protected static const §2`§:String = "flash";
      
      public static const §@C§:String = "initialized";
      
      public static const § m§:String = "loaded";
      
      public static const §]x§:String = "level-started";
      
      public static const §9!C§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §7'§:String = "crash-log";
      
      public static const §'!+§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §`!!§:AnalyticsTracker;
      
      private static var §-!%§:Vector.<§"6§>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §2`§ = "flash";
            if(_loc2_)
            {
               §@C§ = §;!$§.§@C§;
               if(_loc2_)
               {
                  § m§ = §;!$§.§ m§;
                  §]x§ = §;!$§.§]x§;
                  §9!C§ = §;!$§.§9!C§;
                  addr52:
                  ACTION_GPU_FPS_REPORT = §;!$§.ACTION_GPU_FPS_REPORT;
                  if(!(_loc1_ && §5!A§))
                  {
                     ACTION_CPU_FPS_REPORT = §;!$§.ACTION_CPU_FPS_REPORT;
                     if(_loc2_ || _loc2_)
                     {
                        ACTION_APPLICATION_CRASH = §;!$§.ACTION_APPLICATION_CRASH;
                        §7'§ = §;!$§.§7'§;
                        addr74:
                        if(_loc2_ || §5!A§)
                        {
                           §'!+§ = §;!$§.§'!+§;
                           if(!_loc2_)
                           {
                           }
                           §§goto(addr114);
                        }
                     }
                     §§goto(addr114);
                  }
                  enabled = false;
                  §-!%§ = new Vector.<§"6§>();
                  §§goto(addr114);
               }
               §§goto(addr74);
            }
            addr114:
            return;
         }
         §§goto(addr52);
      }
      
      public function §5!A§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §1!I§(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            if(!§`!!§)
            {
               try
               {
                  addr26:
                  §`!!§ = new GATracker(param1,param2);
                  if(!(_loc4_ && param2))
                  {
                     §§push(§`!!§);
                     if(!(_loc4_ && param2))
                     {
                        if(!§§pop().isReady())
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              addr77:
                              §`!!§.addEventListener(AnalyticsEvent.READY,onReady);
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
            §`!!§.removeEventListener(AnalyticsEvent.READY,onReady);
            if(_loc2_)
            {
               §@#§();
            }
         }
      }
      
      private static function §@#§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§"6§ = null;
         while(§-!%§.length > 0)
         {
            _loc1_ = §-!%§.shift();
            if(!(_loc3_ && _loc2_))
            {
               trackEvent(_loc1_.category,_loc1_.action,_loc1_.§`!D§,_loc1_.value);
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
                     §§push(§`!!§);
                     if(_loc5_ || param2)
                     {
                        if(§§pop())
                        {
                           §§push(§`!!§);
                           if(!_loc6_)
                           {
                              addr56:
                              if(§§pop().isReady())
                              {
                                 addr58:
                                 §@#§();
                                 if(_loc5_)
                                 {
                                    addr63:
                                    §`!!§.trackEvent(param1,param2,param3,param4);
                                 }
                              }
                              else
                              {
                                 §-!%§.push(new §"6§(param1,param2,param3,param4));
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
