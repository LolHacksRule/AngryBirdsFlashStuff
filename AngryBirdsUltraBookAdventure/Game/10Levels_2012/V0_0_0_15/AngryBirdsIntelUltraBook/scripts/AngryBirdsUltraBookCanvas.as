package
{
   import §_-0Ea§.§_-AY§;
   import §_-Ga§.LevelManager;
   import §_-eS§.§_-OY§;
   import §_-eS§.§_-Za§;
   import §_-jn§.§_-hS§;
   import §_-qO§.§ in§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsUltraBookCanvas extends §_-hS§
   {
      
      public static const §_-0E-§:String = "0.0.0.15 r97255)";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || AngryBirdsUltraBookCanvas)
         {
            §_-0E-§ = "0.0.0.15 r97255)";
         }
      }
      
      private var §_-ds§:Boolean = false;
      
      public function AngryBirdsUltraBookCanvas()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         while(true)
         {
            if(stage)
            {
               if(_loc1_)
               {
                  this.init();
                  break;
               }
               break;
            }
            addEventListener(Event.ADDED_TO_STAGE,this.§_-b-§);
            if(_loc2_)
            {
               break;
            }
            if(_loc2_)
            {
               continue;
            }
            §§goto(addr29);
         }
         addr29:
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-Za§.§_-YL§(stage,"UA-23082676-25");
            loop0:
            while(true)
            {
               §_-OY§.§_-Pc§();
               do
               {
                  if(!(_loc2_ && this))
                  {
                     if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
                     {
                        if(_loc1_)
                        {
                           loaderInfo.addEventListener(Event.COMPLETE,this.§_-w7§);
                        }
                     }
                     else
                     {
                        this.§_-3a§();
                        if(_loc1_)
                        {
                           §§goto(addr19);
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
               while(_loc2_);
               
               §§goto(addr67);
            }
         }
         addr67:
         addr19:
      }
      
      private function §_-b-§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.§_-b-§);
         }
         do
         {
            this.init();
         }
         while(_loc3_ && _loc3_);
         
      }
      
      private function §_-w7§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            loaderInfo.removeEventListener(Event.COMPLETE,this.§_-w7§);
         }
         do
         {
            this.§_-3a§();
         }
         while(!_loc3_);
         
      }
      
      private function §_-3a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§_-Lk§);
            do
            {
               new §_-rG§(this);
            }
            while(!_loc2_);
            
         }
      }
      
      private function §_-Lk§(param1:UncaughtErrorEvent) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:String = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         if(!(_loc14_ && this))
         {
            §§push(this.§_-ds§);
            if(_loc13_)
            {
               if(!§§pop())
               {
                  if(!(_loc14_ && this))
                  {
                     this.§_-ds§ = true;
                     if(!(_loc14_ && _loc3_))
                     {
                        §§push(0);
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr106:
                           while(true)
                           {
                              _loc3_ = null;
                              loop53:
                              while(true)
                              {
                                 §§push("");
                                 loop54:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    addr95:
                                    while(!_loc14_)
                                    {
                                       continue loop54;
                                    }
                                    continue loop53;
                                 }
                              }
                           }
                           §§push(int(Math.round(getTimer() / 1000)));
                           if(!_loc13_)
                           {
                              continue;
                           }
                           _loc6_ = §§pop();
                           if(!_loc14_)
                           {
                              if(_loc13_ || this)
                              {
                                 if(false)
                                 {
                                    §§goto(addr77);
                                 }
                                 §§push(param1.error is Error);
                                 if(!_loc14_)
                                 {
                                    addr136:
                                    if(§§pop())
                                    {
                                       if(!(_loc14_ && _loc2_))
                                       {
                                          §§goto(addr144);
                                       }
                                       else
                                       {
                                          addr195:
                                          _loc2_ = int((_loc11_ = param1.error as ErrorEvent).errorID);
                                       }
                                    }
                                    else
                                    {
                                       addr194:
                                       if(param1.error is ErrorEvent)
                                       {
                                          §§goto(addr195);
                                       }
                                    }
                                    §§goto(addr205);
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr144);
                        }
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr144);
               }
               §§goto(addr604);
            }
            §§goto(addr136);
         }
         §§goto(addr106);
      }
   }
}
