package §,!'§
{
   import §!""§.§1=§;
   import §,M§.§+f§;
   import §,M§.§8"&§;
   import §1`§.§7I§;
   import §2!&§.§+h§;
   import §24§.;
   import §24§.§=!L§;
   import §37§.§4=§;
   import §37§.§9!c§;
   import §37§.§>n§;
   import §37§.§?!r§;
   import §;g§.§0!o§;
   import §@!^§.§<!?§;
   import §[!Z§.§>D§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §5O§ extends §>n§ implements IEventDispatcher
   {
      
      public static var §5!k§:Number;
      
      public static var §!O§:Number;
       
      
      public var §@J§:Number;
      
      private var §=%§:EventDispatcher;
      
      private var §8&§:§+f§;
      
      public function §5O§(param1:§6!L§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = param1;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  addr144:
                  while(!_loc6_)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[3] = param3;
                        addr129:
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(_loc7_ || param2)
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop4;
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function get §,$§() : §+f§
      {
         return this.§8&§;
      }
      
      protected function §2!`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §>D§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            this.§8&§ = new §+f§(new §8"&§("en"));
            loop0:
            while(true)
            {
               §<!?§.initialize(stage);
               addr106:
               while(true)
               {
                  §<!?§.§;!G§ = false;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §#7§.§>j§(this.getVersionInfo());
            loop4:
            while(true)
            {
               §#7§.§=d§ = this.getVersionInfo();
               loop5:
               while(true)
               {
                  §9!c§.§^!y§ = §-!x§.stage.loaderInfo.parameters;
                  loop6:
                  while(true)
                  {
                     if(_loc6_ || param2)
                     {
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              if(_loc6_)
                              {
                                 loop7:
                                 do
                                 {
                                    this.§2!`§();
                                    while(!_loc5_)
                                    {
                                       §1""§(new §?!r§(this.§,$§));
                                       if(!(_loc5_ && param2))
                                       {
                                          continue loop7;
                                       }
                                    }
                                    continue loop6;
                                 }
                                 while(false);
                                 
                                 var _loc4_:§4=§ = this.initStateLoad();
                                 if(!_loc5_)
                                 {
                                    §1""§(_loc4_);
                                    _loc4_.setLoadingScreen(param1);
                                    _loc4_.§^'§(param3);
                                    §7I§.init(param2);
                                    if(§+h§.§#",§())
                                    {
                                       if(_loc6_)
                                       {
                                          §+h§.§2!W§("serverConnectionError");
                                       }
                                       addr172:
                                    }
                                    §7"6§(§4=§.§8"%§);
                                    addr177:
                                    addr201:
                                    addr197:
                                    if(!(_loc5_ && param3))
                                    {
                                       if(!_loc5_)
                                       {
                                          if(!(_loc5_ && param2))
                                          {
                                             this.§`"%§();
                                             if(_loc6_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc5_ && param1)
                                                   {
                                                      §§goto(addr177);
                                                   }
                                                   return;
                                                   addr140:
                                                }
                                                §§goto(addr172);
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr201);
                                       }
                                       §§goto(addr197);
                                    }
                                    addr192:
                                    §§goto(addr192);
                                 }
                                 §§goto(addr140);
                              }
                              else
                              {
                                 §§goto(addr106);
                              }
                           }
                           break;
                        }
                        continue loop4;
                     }
                     continue loop5;
                  }
                  §§goto(addr84);
               }
            }
         }
      }
      
      protected function initStateLoad() : §4=§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§4=§));
         §§push(this.§,$§);
         §§push(true);
         §§push(§4=§.§8"%§);
         §§push(this.getMinLoadingScreenTime());
         if(!(_loc2_ && this))
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc1_ || _loc2_)
            {
               §§push(§§pop());
               if(!(_loc2_ && this))
               {
                  if(!§§pop())
                  {
                     §§goto(addr91);
                  }
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(_loc1_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        addr90:
                        §§pop();
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr90);
            }
            addr91:
            if(_loc1_)
            {
               §§pop();
               addr65:
               §§push("");
            }
            return new §§pop().§4=§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),"");
         }
         §§goto(addr65);
      }
      
      public function §`"%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!x§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            while(true)
            {
               §-!x§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               loop1:
               for(; !(_loc1_ && _loc2_); while(_loc2_ || _loc2_)
               {
                  §-!x§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
                  while(!_loc1_)
                  {
                     this.§@J§ = getTimer();
                     if(!(_loc1_ && this))
                     {
                        return;
                     }
                  }
               })
               {
                  while(true)
                  {
                     §-!x§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§-!w§())
            {
               if(!_loc2_)
               {
                  §-!w§().mouseLeave();
               }
            }
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§-!w§())
            {
               if(_loc2_)
               {
                  §-!w§().keyDown(param1);
               }
               while(true)
               {
                  §§goto(addr33);
               }
            }
            addr33:
            §§goto(addr44);
         }
         addr44:
         while(true)
         {
            §#7§.keyDown(param1);
            if(!(_loc3_ && param1))
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§-!w§())
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr48:
                  §-!w§().keyUp(param1);
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(getTimer() - this.§@J§);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§@J§ = getTimer();
            if(_loc4_ || param1)
            {
               §0!o§.§,2§.update(_loc2_);
            }
         }
         var _loc3_:§1=§ = new §1=§(§1=§.§]!l§,_loc2_,param1.bubbles,param1.cancelable);
         if(_loc4_ || param1)
         {
            this.§=%§.dispatchEvent(_loc3_);
            loop0:
            while(true)
            {
               §=!L§.mouseMove(§-!x§.mouseX,§-!x§.mouseY);
               loop1:
               do
               {
                  if(!§6!;§())
                  {
                     loop2:
                     while(this.updateState(_loc2_) == §9!c§.§6+§)
                     {
                        if(_loc4_)
                        {
                           if(!(_loc4_ || this))
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              §6!;§();
                           }
                        }
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              break loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
                  continue;
                  return;
               }
               while(_loc5_);
               
               return;
            }
         }
         §§goto(addr91);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.updateState(param1));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            if(§-!w§().isGenericState())
            {
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  addr72:
                  while(true)
                  {
                     if(§§pop() == §9!c§.§6+§)
                     {
                        if(!(_loc4_ || _loc3_))
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           §-!x§.addChild(§=!L§.activate());
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§push(_loc2_);
               if(_loc4_ || this)
               {
                  break;
               }
               §§goto(addr72);
            }
            return §§pop();
         }
         §§goto(addr92);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0!o§.§,2§.§<!q§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §7"6§(§?!r§.§8"%§);
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
         if(!_loc6_)
         {
            this.§=%§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§=%§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§=%§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§=%§.willTrigger(param1);
      }
   }
}
