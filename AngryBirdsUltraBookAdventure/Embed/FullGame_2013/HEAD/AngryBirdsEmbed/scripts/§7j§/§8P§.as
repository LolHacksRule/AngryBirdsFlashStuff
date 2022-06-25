package §7j§
{
   import §#P§.§@7§;
   import §#X§.§,!F§;
   import §-!D§.§5A§;
   import §1!+§.SWFWheel;
   import §3a§.§'q§;
   import §3a§.§7!+§;
   import §6!F§.§9A§;
   import §7g§.§'!;§;
   import §7g§.§-;§;
   import §7g§.§1Q§;
   import §7g§.§`!8§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §8P§ extends §`!8§ implements IEventDispatcher
   {
      
      public static var §1!N§:Number;
      
      public static var §#o§:Number;
       
      
      public var §6L§:Number;
      
      private var §2!I§:EventDispatcher;
      
      public function §8P§(param1:§5!N§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§pop().§§slot[1] = param1;
            §§push(§§newactivation());
            if(_loc6_ || this)
            {
               §§pop().§§slot[2] = param2;
               if(_loc6_)
               {
                  §§push(§§newactivation());
                  if(!_loc7_)
                  {
                     addr40:
                     §§pop().§§slot[3] = param3;
                     if(!(_loc7_ && param3))
                     {
                        addr60:
                        var assetData:XML = param4;
                        if(!(_loc7_ && param1))
                        {
                           this.§2!I§ = new EventDispatcher();
                           if(_loc6_ || param1)
                           {
                              super(canvas);
                              if(!_loc7_)
                              {
                                 addr96:
                                 if(§"B§.stage)
                                 {
                                    this.init(loadingScreen,uiData,assetData);
                                    if(!_loc6_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §"B§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
                                    {
                                       §"B§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
                                       init(loadingScreen,uiData,assetData);
                                    });
                                 }
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr96);
                  }
               }
            }
            §§goto(addr60);
         }
         §§goto(addr40);
      }
      
      protected function initSoundEngine() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §,!F§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         SWFWheel.initialize(stage);
         SWFWheel.§'Q§ = false;
         if(!(_loc5_ && param1))
         {
            §7!+§.§9!!§(this.getVersionInfo());
            §7!+§.§+M§ = this.getVersionInfo();
            §1Q§.§%!8§ = §"B§.stage.loaderInfo.parameters;
         }
         this.initSoundEngine();
         §8Y§(new §-;§());
         var _loc4_:§'!;§ = this.initStateLoad();
         if(_loc6_)
         {
            §8Y§(_loc4_);
         }
         _loc4_.setLoadingScreen(param1);
         _loc4_.§'!+§(param3);
         if(!_loc5_)
         {
            §5A§.init(param2);
            if(§9A§.§>s§())
            {
               if(_loc6_ || param2)
               {
                  §9A§.§>!M§("serverConnectionError");
               }
            }
            §+N§(§'!;§.§>9§);
         }
         this.§5s§();
      }
      
      protected function initStateLoad() : §'!;§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§'!;§));
         §§push(true);
         §§push(§'!;§.§>9§);
         §§push(this.getMinLoadingScreenTime());
         if(_loc1_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!_loc2_)
            {
               §§push(§§pop());
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr62:
                        §§pop();
                        addr64:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(!_loc2_)
                        {
                           return new §§pop().§'!;§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                           addr71:
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr64);
               }
               §§goto(addr71);
            }
         }
         §§goto(addr62);
      }
      
      public function §5s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §"B§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(_loc1_ || _loc2_)
            {
               §"B§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               if(_loc1_ || this)
               {
                  addr70:
                  §"B§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
                  if(_loc1_)
                  {
                     §"B§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
                     if(_loc2_)
                     {
                     }
                     §§goto(addr92);
                  }
               }
               this.§6L§ = getTimer();
            }
            addr92:
            return;
         }
         §§goto(addr70);
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(§@v§())
            {
               if(!(_loc2_ && this))
               {
                  §@v§().mouseLeave();
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
            if(§@v§())
            {
               if(_loc2_ || _loc3_)
               {
                  §@v§().keyDown(param1);
                  if(!_loc3_)
                  {
                     addr44:
                     §7!+§.keyDown(param1);
                  }
                  return;
               }
            }
         }
         §§goto(addr44);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§@v§())
            {
               if(!_loc3_)
               {
                  §@v§().keyUp(param1);
               }
            }
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(getTimer() - this.§6L§);
         if(!(_loc3_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         this.§6L§ = getTimer();
         if(!(_loc3_ && _loc3_))
         {
            §@7§.§@6§.update(_loc2_);
            if(_loc4_ || this)
            {
               this.§2!I§.dispatchEvent(param1);
               if(_loc4_ || param1)
               {
                  §'q§.§7!G§(§"B§.mouseX,§"B§.mouseY);
                  if(!_loc3_)
                  {
                     if(§=2§())
                     {
                        if(_loc4_)
                        {
                           return;
                        }
                        addr108:
                        §=2§();
                     }
                     else if(this.updateState(_loc2_) == §1Q§.STATE_STATUS_COMPLETED)
                     {
                        if(_loc4_)
                        {
                           §§goto(addr108);
                        }
                     }
                  }
               }
            }
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.updateState(param1));
         if(!(_loc3_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            if(§@v§().isGenericState())
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§push(_loc2_);
                  if(!_loc3_)
                  {
                     if(§§pop() == §1Q§.STATE_STATUS_COMPLETED)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr80:
                           §"B§.addChild(§'q§.activate());
                           if(_loc3_ && _loc2_)
                           {
                           }
                           addr94:
                           return _loc2_;
                           addr93:
                        }
                        this.setFirstGameState();
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr94);
               }
            }
            §§goto(addr94);
         }
         §§goto(addr80);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §@7§.§@6§.§+!E§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §+N§(§-;§.§>9§);
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
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            this.§2!I§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§2!I§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§2!I§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§2!I§.willTrigger(param1);
      }
   }
}
