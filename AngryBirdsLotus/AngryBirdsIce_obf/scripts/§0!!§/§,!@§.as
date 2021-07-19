package §0!!§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §,!@§
   {
      
      protected static const §=!§:String = "flash";
      
      public static const § E§:String = "initialized";
      
      public static const §`!9§:String = "loaded";
      
      public static const §<K§:String = "level-started";
      
      public static const §^=§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §#4§:String = "crash-log";
      
      public static const §3%§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §[b§:AnalyticsTracker;
      
      private static var §-e§:Vector.<§0U§>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            § E§ = §+i§.§ E§;
            §`!9§ = §+i§.§`!9§;
            while(true)
            {
               §<K§ = §+i§.§<K§;
               if(!_loc1_)
               {
                  break;
               }
               §^=§ = §+i§.§^=§;
               ACTION_GPU_FPS_REPORT = §+i§.ACTION_GPU_FPS_REPORT;
               do
               {
                  ACTION_CPU_FPS_REPORT = §+i§.ACTION_CPU_FPS_REPORT;
               }
               while(_loc2_ && _loc2_);
               
               ACTION_APPLICATION_CRASH = §+i§.ACTION_APPLICATION_CRASH;
               §#4§ = §+i§.§#4§;
               §3%§ = §+i§.§3%§;
               enabled = false;
               §-e§ = new Vector.<§0U§>();
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §,!@§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §4g§(param1:DisplayObject, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(!§[b§)
            {
               try
               {
                  addr21:
                  §[b§ = new GATracker(param1,param2);
                  if(_loc5_)
                  {
                     §§push(§[b§);
                     if(!(_loc4_ && param1))
                     {
                        if(!§§pop().isReady())
                        {
                           if(_loc5_ || param2)
                           {
                              addr67:
                              §[b§.addEventListener(AnalyticsEvent.READY,onReady);
                              addr71:
                           }
                           §§goto(addr71);
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
         if(_loc2_ || _loc3_)
         {
            §[b§.removeEventListener(AnalyticsEvent.READY,onReady);
         }
         do
         {
            §&Z§();
         }
         while(_loc3_ && param1);
         
      }
      
      private static function §&Z§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§0U§ = null;
         while(§-e§.length > 0)
         {
            _loc1_ = §-e§.shift();
            if(!(_loc2_ && _loc3_))
            {
               trackEvent(_loc1_.category,_loc1_.action,_loc1_.§^#§,_loc1_.value);
            }
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(enabled);
         if(!_loc5_)
         {
            if(§§pop())
            {
               if(_loc6_)
               {
                  §§push(§[b§);
                  if(_loc6_ || param1)
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || §,!@§)
                        {
                           §§push(§[b§);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop().isReady());
                              addr104:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §-e§.push(new §0U§(param1,param2,param3,param4));
                                    if(_loc6_)
                                    {
                                       if(_loc6_ || §,!@§)
                                       {
                                          §§goto(addr18);
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(!(_loc6_ || §,!@§))
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr18);
                                       }
                                       addr62:
                                    }
                                    §§goto(addr18);
                                 }
                              }
                           }
                           addr103:
                        }
                        while(true)
                        {
                           §&Z§();
                           §§goto(addr107);
                        }
                     }
                     §§goto(addr18);
                  }
                  §§goto(addr103);
               }
               §§goto(addr107);
            }
            addr18:
            return;
         }
         §§goto(addr104);
      }
   }
}
