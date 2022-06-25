package §<i§
{
   import § !x§.§5+§;
   import §1!T§.§6!H§;
   import §1@§.SWFWheel;
   import §1n§.dynamic;
   import §4!C§.§,!l§;
   import §6z§.§+!D§;
   import §6z§.§[g§;
   import §8,§.§+_§;
   import §8,§.§3!?§;
   import §8,§.§5T§;
   import §8,§.§;T§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §9!M§ extends §3!?§ implements IEventDispatcher
   {
      
      public static var §`!B§:Number;
      
      public static var § !]§:Number;
       
      
      public var §8!I§:Number;
      
      private var §1$§:EventDispatcher;
      
      public function §9!M§(param1:§#!%§, param2:DisplayObjectContainer, param3:XML, param4:XML)
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
                  this.§1$§ = new EventDispatcher();
                  loop7:
                  do
                  {
                     super(canvas);
                     do
                     {
                        if(!(_loc6_ && param1))
                        {
                           if(§>!+§.stage)
                           {
                              continue;
                           }
                           §>!+§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
                           {
                              §>!+§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
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
      
      protected function §9!6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §6!H§.init();
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
               SWFWheel.§&m§ = true;
               while(true)
               {
                  §[g§.§7m§(this.getVersionInfo());
                  loop2:
                  while(_loc6_)
                  {
                     §+_§.§[!Z§ = §>!+§.stage.loaderInfo.parameters;
                     loop3:
                     while(true)
                     {
                        addr48:
                        while(true)
                        {
                           this.§9!6§();
                           while(!_loc5_)
                           {
                              §?!-§(new §;T§());
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
               var _loc4_:§5T§ = this.initStateLoad();
               if(!(_loc5_ && param1))
               {
                  §?!-§(_loc4_);
                  loop7:
                  while(true)
                  {
                     _loc4_.setLoadingScreen(param1);
                     loop8:
                     while(true)
                     {
                        _loc4_.§9l§(param3);
                        loop9:
                        while(true)
                        {
                           dynamic.init(param2);
                           loop10:
                           while(true)
                           {
                              if(§,!l§.§9e§())
                              {
                                 if(_loc6_)
                                 {
                                    §,!l§.§1!,§("serverConnectionError");
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
                                             this.§7!V§();
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
                                 § !,§(§5T§.§3F§);
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
      
      protected function initStateLoad() : §5T§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§5T§));
         §§push(true);
         §§push(§5T§.§3F§);
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
            return new §§pop().§5T§(§§pop(),§§pop(),§§pop(),§§pop(),"");
         }
         §§goto(addr68);
      }
      
      public function §7!V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>!+§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         loop0:
         while(true)
         {
            §>!+§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
            do
            {
               §>!+§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
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
            if(§-#§())
            {
               if(!_loc2_)
               {
                  §-#§().mouseLeave();
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
            if(§-#§())
            {
               if(_loc3_ || param1)
               {
                  addr56:
                  §-#§().keyDown(param1);
               }
               while(true)
               {
                  §§goto(addr34);
               }
            }
            addr34:
            while(true)
            {
               §[g§.keyDown(param1);
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
            if(§-#§())
            {
               if(!(_loc3_ && this))
               {
                  §-#§().keyUp(param1);
               }
            }
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(getTimer() - this.§8!I§);
         if(_loc4_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            this.§8!I§ = getTimer();
            while(true)
            {
               §5+§.§^Z§.update(_loc2_);
            }
            addr127:
         }
         loop1:
         while(true)
         {
            this.§1$§.dispatchEvent(param1);
            addr116:
            while(true)
            {
               §+!D§.§&§(§>!+§.mouseX,§>!+§.mouseY);
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
            if(§-#§().isGenericState())
            {
               loop4:
               while(true)
               {
                  §§push(_loc2_);
                  addr83:
                  while(§§pop() == §+_§.STATE_STATUS_COMPLETED)
                  {
                     do
                     {
                        §>!+§.addChild(§+!D§.activate());
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
            §5+§.§^Z§.§%!8§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § !,§(§;T§.§3F§);
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
            this.§1$§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            this.§1$§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§1$§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§1$§.willTrigger(param1);
      }
   }
}
