package §9P§
{
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'!O§.§'3§;
   import §'!O§.§,!?§;
   import §'!O§.§]L§;
   import §'K§.§3C§;
   import §;f§.§7P§;
   import §<p§.SWFWheel;
   import §]!-§.§`Z§;
   import §`K§.§ L§;
   import §`K§.§4N§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §[!4§ extends §,!?§ implements IEventDispatcher
   {
      
      public static var §6!6§:Number;
      
      public static var §3d§:Number;
       
      
      public var §@0§:Number;
      
      private var §=9§:EventDispatcher;
      
      public function §[!4§(param1:§'B§, param2:DisplayObjectContainer, param3:XML, param4:XML)
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
                  addr116:
                  addr22:
                  while(true)
                  {
                     §§push(§§newactivation());
                     while(!_loc6_)
                     {
                        §§pop().§§slot[3] = param3;
                        if(!_loc6_)
                        {
                           §§push(§§newactivation());
                           if(_loc7_)
                           {
                              continue loop0;
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                     continue loop2;
                  }
                  return;
               }
            }
         }
      }
      
      protected function initSoundEngine() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §[!7§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            SWFWheel.initialize(stage);
            SWFWheel.§=!E§ = false;
            § L§.§8;§(this.getVersionInfo());
            while(true)
            {
               § L§.§-g§ = this.getVersionInfo();
               do
               {
                  §'!#§.§#f§ = §#!G§.stage.loaderInfo.parameters;
               }
               while(!_loc5_);
               
               addr35:
               while(true)
               {
                  this.initSoundEngine();
                  do
                  {
                     §#!F§(new §'3§());
                  }
                  while(_loc6_);
                  
                  if(_loc6_)
                  {
                     break;
                  }
                  if(true)
                  {
                     var _loc4_:§]L§ = this.initStateLoad();
                     if(!(_loc6_ && param2))
                     {
                        §#!F§(_loc4_);
                        _loc4_.setLoadingScreen(param1);
                        _loc4_.§#W§(param3);
                        §`Z§.init(param2);
                     }
                     if(§7P§.§3#§())
                     {
                        while(true)
                        {
                           §7P§.§-e§("serverConnectionError");
                           §§goto(addr100);
                        }
                     }
                     addr100:
                  }
                  continue;
                  while(true)
                  {
                     §8n§(§]L§.§-A§);
                     if(_loc5_ || param3)
                     {
                        break;
                     }
                     continue loop5;
                  }
                  this.§<N§();
                  return;
               }
            }
         }
         while(true)
         {
            §§goto(addr35);
         }
      }
      
      protected function initStateLoad() : §]L§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§]L§));
         §§push(true);
         §§push(§]L§.§-A§);
         §§push(this.getMinLoadingScreenTime());
         if(_loc1_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!_loc2_)
            {
               §§push(§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr57:
                        §§pop();
                        addr59:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(!(_loc2_ && this))
                        {
                           return new §§pop().§]L§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                           addr71:
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr59);
               }
               §§goto(addr71);
            }
         }
         §§goto(addr57);
      }
      
      public function §<N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §#!G§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            loop0:
            while(true)
            {
               §#!G§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               loop1:
               while(true)
               {
                  §#!G§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        §#!G§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
                        do
                        {
                           this.§@0§ = getTimer();
                        }
                        while(!(_loc2_ || this));
                        
                        if(_loc2_ || _loc2_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr95);
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(§@!@§())
            {
               if(_loc2_ || this)
               {
                  addr43:
                  §@!@§().mouseLeave();
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§@!@§())
            {
               if(_loc2_)
               {
                  §@!@§().keyDown(param1);
                  addr54:
                  while(true)
                  {
                  }
                  addr54:
               }
               §§goto(addr54);
            }
            while(true)
            {
               § L§.keyDown(param1);
               if(_loc2_ || this)
               {
                  break;
               }
               §§goto(addr54);
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§@!@§())
            {
               if(!_loc2_)
               {
                  addr24:
                  §@!@§().keyUp(param1);
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(getTimer() - this.§@0§);
         if(_loc4_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.§@0§ = getTimer();
            §3C§.§>o§.update(_loc2_);
         }
         loop0:
         while(true)
         {
            this.§=9§.dispatchEvent(param1);
            addr108:
            addr39:
            while(true)
            {
               §4N§.§6!F§(§#!G§.mouseX,§#!G§.mouseY);
               if(§+!H§())
               {
                  if(_loc4_ || _loc2_)
                  {
                     return;
                  }
               }
               if(this.updateState(_loc2_) != §'!#§.STATE_STATUS_COMPLETED)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.updateState(param1));
         if(_loc4_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            if(§@!@§().isGenericState())
            {
               if(!_loc3_)
               {
                  §§push(_loc2_);
                  while(true)
                  {
                     if(§§pop() == §'!#§.STATE_STATUS_COMPLETED)
                     {
                        if(_loc4_)
                        {
                           §#!G§.addChild(§4N§.activate());
                           addr86:
                           while(true)
                           {
                              this.setFirstGameState();
                              if(!(_loc4_ || this))
                              {
                                 continue;
                              }
                           }
                           addr86:
                        }
                        §§goto(addr86);
                     }
                  }
                  addr77:
               }
               §§goto(addr86);
            }
            while(true)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr77);
            }
            return §§pop();
         }
         §§goto(addr86);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §3C§.§>o§.§"!6§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §8n§(§'3§.§-A§);
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
         if(_loc7_ || param2)
         {
            this.§=9§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§=9§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§=9§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§=9§.willTrigger(param1);
      }
   }
}
