package §]2§
{
   import §"x§.§-8§;
   import §"x§.§?8§;
   import §+0§.§%!Z§;
   import §+0§.§,!E§;
   import §+0§.§3!B§;
   import §+0§.§;!>§;
   import §2!H§.§-!,§;
   import §4l§.SWFWheel;
   import §5!c§.§9'§;
   import §7X§.§^"§;
   import §[!+§.§ !I§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §[!O§ extends §3!B§ implements IEventDispatcher
   {
      
      public static var §]!<§:Number;
      
      public static var §4!j§:Number;
       
      
      public var §!V§:Number;
      
      private var §0v§:EventDispatcher;
      
      public function §[!O§(param1:§-9§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[1] = param1;
            addr150:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  addr146:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop2;
                  }
               }
            }
            if(!(_loc7_ || param3))
            {
               continue;
            }
            §§pop().§§slot[4] = param4;
            do
            {
               if(_loc7_)
               {
                  this.§0v§ = new EventDispatcher();
                  loop7:
                  do
                  {
                     super(canvas);
                     do
                     {
                        if(!(_loc6_ && param1))
                        {
                           if(§ !j§.stage)
                           {
                              continue;
                           }
                           § !j§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
                           {
                              § !j§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
                              init(loadingScreen,uiData,assetData);
                           });
                           if(_loc6_)
                           {
                              continue loop7;
                           }
                           if(!_loc7_)
                           {
                              continue;
                           }
                        }
                        else
                        {
                           §§goto(addr150);
                        }
                        §§goto(addr22);
                     }
                     while(!(_loc7_ || param2));
                     
                     this.init(loadingScreen,uiData,assetData);
                  }
                  while(_loc6_ && this);
                  
                  continue;
               }
               §§goto(addr146);
            }
            while(!(_loc7_ || param3));
            
            §§goto(addr82);
         }
      }
      
      protected function §#0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9'§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            SWFWheel.initialize(stage);
            while(true)
            {
               SWFWheel.§5!d§ = false;
               while(true)
               {
                  §-8§.§%?§(this.getVersionInfo());
                  loop2:
                  while(_loc6_)
                  {
                     §,!E§.§4!k§ = § !j§.stage.loaderInfo.parameters;
                     loop3:
                     while(true)
                     {
                        addr48:
                        while(true)
                        {
                           this.§#0§();
                           while(!_loc5_)
                           {
                              §!]§(new §%!Z§());
                              if(_loc6_ || param1)
                              {
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(_loc5_ && this)
               {
                  continue;
               }
               while(false)
               {
                  §§goto(addr48);
               }
               var _loc4_:§;!>§ = this.initStateLoad();
               if(!(_loc5_ && param1))
               {
                  §!]§(_loc4_);
                  loop7:
                  while(true)
                  {
                     _loc4_.setLoadingScreen(param1);
                     loop8:
                     while(true)
                     {
                        _loc4_.§"!_§(param3);
                        loop9:
                        while(true)
                        {
                           § !I§.init(param2);
                           loop10:
                           while(true)
                           {
                              if(§^"§.§]!x§())
                              {
                                 if(_loc6_)
                                 {
                                    §^"§.§^!J§("serverConnectionError");
                                 }
                                 while(true)
                                 {
                                    addr122:
                                    loop13:
                                    while(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          while(true)
                                          {
                                             this.§1!g§();
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop9;
                                             }
                                             continue loop13;
                                          }
                                          return;
                                          continue;
                                       }
                                       continue loop10;
                                    }
                                 }
                                 addr146:
                              }
                              while(true)
                              {
                                 §@!n§(§;!>§.§"!s§);
                                 §§goto(addr122);
                                 §§goto(addr146);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr136);
               addr46:
            }
         }
         §§goto(addr46);
      }
      
      protected function initStateLoad() : §;!>§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§;!>§));
         §§push(true);
         §§push(§;!>§.§"!s§);
         §§push(this.getMinLoadingScreenTime());
         if(!_loc2_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc1_ || _loc1_)
            {
               §§push(§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     §§goto(addr84);
                  }
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(!(_loc2_ && this))
                  {
                     if(!§§pop())
                     {
                        addr83:
                        §§pop();
                     }
                     §§goto(addr84);
                  }
               }
               §§goto(addr83);
            }
            addr84:
            if(!_loc2_)
            {
               §§pop();
               addr68:
               §§push("");
            }
            return new §§pop().§;!>§(§§pop(),§§pop(),§§pop(),§§pop(),"");
         }
         §§goto(addr68);
      }
      
      public function §1!g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § !j§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         loop0:
         while(true)
         {
            § !j§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
            do
            {
               § !j§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
               continue loop0;
            }
            while(!_loc1_);
            
            return;
         }
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(§0@§())
            {
               if(!_loc2_)
               {
                  §0@§().mouseLeave();
               }
            }
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§0@§())
            {
               if(_loc3_ || param1)
               {
                  addr56:
                  §0@§().keyDown(param1);
               }
               while(true)
               {
                  §§goto(addr34);
               }
            }
            addr34:
            while(true)
            {
               §-8§.keyDown(param1);
               if(!(_loc2_ && _loc3_))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(§0@§())
            {
               if(!(_loc3_ && this))
               {
                  §0@§().keyUp(param1);
               }
            }
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(getTimer() - this.§!V§);
         if(_loc4_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            this.§!V§ = getTimer();
            while(true)
            {
               §-!,§.§7!j§.update(_loc2_);
            }
            addr127:
         }
         loop1:
         while(true)
         {
            this.§0v§.dispatchEvent(param1);
            addr116:
            while(true)
            {
               §?8§.§^!#§(§ !j§.mouseX,§ !j§.mouseY);
               continue loop1;
            }
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.updateState(param1));
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(§0@§().isGenericState())
            {
               loop4:
               while(true)
               {
                  §§push(_loc2_);
                  addr83:
                  while(§§pop() == §,!E§.STATE_STATUS_COMPLETED)
                  {
                     do
                     {
                        § !j§.addChild(§?8§.activate());
                        do
                        {
                           this.setFirstGameState();
                        }
                        while(!(_loc3_ || param1));
                        
                     }
                     while(!_loc3_);
                     
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop4;
                  }
               }
               addr82:
            }
            while(true)
            {
               §§push(_loc2_);
               if(_loc3_ || _loc2_)
               {
                  break;
               }
               §§goto(addr83);
            }
            return §§pop();
         }
         §§goto(addr82);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-!,§.§7!j§.§#!p§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@!n§(§%!Z§.§"!s§);
         }
      }
      
      public function getMinLoadingScreenTime() : Number
      {
         return 1000;
      }
      
      public function getVersionInfo() : String
      {
         return "unknown";
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            this.§0v§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            this.§0v§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§0v§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§0v§.willTrigger(param1);
      }
   }
}
