package §#'§
{
   import §"!&§.§#!,§;
   import §"!&§.§#p§;
   import §"!&§.§7§;
   import §"!&§.§=F§;
   import §#M§.SWFWheel;
   import §+!"§.§5!<§;
   import §+!"§.§@P§;
   import §+?§.§03§;
   import §<!G§.§!I§;
   import §@D§.§6I§;
   import §`F§.§,B§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §0X§ extends §7§ implements IEventDispatcher
   {
      
      public static var §>p§:Number;
      
      public static var §76§:Number;
       
      
      public var § C§:Number;
      
      private var §[#§:EventDispatcher;
      
      public function §0X§(param1:§'Q§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§pop().§§slot[1] = param1;
            if(_loc6_ || this)
            {
               §§push(§§newactivation());
               if(!_loc7_)
               {
                  §§pop().§§slot[2] = param2;
                  §§push(§§newactivation());
                  if(!_loc7_)
                  {
                     addr40:
                     §§pop().§§slot[3] = param3;
                     §§push(§§newactivation());
                  }
               }
               §§pop().§§slot[4] = param4;
               if(!(_loc7_ && param3))
               {
                  this.§[#§ = new EventDispatcher();
               }
               super(canvas);
               if(!(_loc7_ && param3))
               {
                  if(§7P§.stage)
                  {
                     if(!(_loc7_ && param1))
                     {
                        this.init(loadingScreen,uiData,assetData);
                        if(_loc6_ || param1)
                        {
                           addr112:
                        }
                     }
                  }
                  else
                  {
                     §7P§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
                     {
                        §7P§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
                        init(loadingScreen,uiData,assetData);
                     });
                  }
               }
               return;
            }
            §§goto(addr112);
         }
         §§goto(addr40);
      }
      
      protected function initSoundEngine() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §6I§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            SWFWheel.initialize(stage);
            SWFWheel.§27§ = true;
            if(!_loc6_)
            {
               §5!<§.§3!9§(this.getVersionInfo());
               if(!_loc6_)
               {
                  §#!,§.§+!!§ = §7P§.stage.loaderInfo.parameters;
                  this.initSoundEngine();
               }
            }
         }
         §^'§(new §#p§());
         var _loc4_:§=F§ = this.initStateLoad();
         if(!_loc6_)
         {
            §^'§(_loc4_);
            _loc4_.setLoadingScreen(param1);
            _loc4_.§&!C§(param3);
            if(!_loc6_)
            {
               addr81:
               §!I§.init(param2);
               if(§03§.§&;§())
               {
                  §§goto(addr87);
               }
               §§goto(addr92);
            }
            addr87:
            §03§.§7j§("serverConnectionError");
            if(_loc5_)
            {
               addr92:
               §'<§(§=F§.§?x§);
               this.§-d§();
            }
            return;
         }
         §§goto(addr81);
      }
      
      protected function initStateLoad() : §=F§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§=F§));
         §§push(true);
         §§push(§=F§.§?x§);
         §§push(this.getMinLoadingScreenTime());
         if(_loc2_ || _loc1_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!_loc1_)
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr63:
                        §§pop();
                        addr65:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(_loc2_ || _loc2_)
                        {
                           return new §§pop().§=F§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                           addr77:
                        }
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr65);
               }
               §§goto(addr77);
            }
         }
         §§goto(addr63);
      }
      
      public function §-d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7P§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(!_loc1_)
            {
               §7P§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               if(!(_loc1_ && this))
               {
                  §7P§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
                  §§goto(addr51);
               }
            }
            §§goto(addr75);
         }
         addr51:
         if(!(_loc1_ && _loc2_))
         {
            addr75:
            §7P§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
            if(!(_loc1_ && this))
            {
               this.§ C§ = getTimer();
            }
         }
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§8y§())
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr29:
                  §8y§().mouseLeave();
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(§8y§())
            {
               if(!_loc2_)
               {
                  §8y§().keyDown(param1);
                  if(!_loc2_)
                  {
                     addr45:
                     §5!<§.keyDown(param1);
                  }
                  return;
               }
            }
         }
         §§goto(addr45);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(§8y§())
            {
               if(!_loc2_)
               {
                  §8y§().keyUp(param1);
               }
            }
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(getTimer() - this.§ C§);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         this.§ C§ = getTimer();
         if(!_loc3_)
         {
            §,B§.§^n§.update(_loc2_);
            if(!_loc3_)
            {
               this.§[#§.dispatchEvent(param1);
               if(_loc4_ || _loc2_)
               {
                  §@P§.§`H§(§7P§.mouseX,§7P§.mouseY);
                  if(§'K§())
                  {
                     if(!(_loc3_ && this))
                     {
                        return;
                     }
                  }
                  else if(this.updateState(_loc2_) == §#!,§.STATE_STATUS_COMPLETED)
                  {
                     addr92:
                     §'K§();
                  }
               }
            }
            return;
         }
         §§goto(addr92);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.updateState(param1));
         if(!(_loc4_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            if(§8y§().isGenericState())
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop() == §#!,§.STATE_STATUS_COMPLETED)
                     {
                        if(!_loc4_)
                        {
                           addr74:
                           §7P§.addChild(§@P§.activate());
                           if(_loc4_ && _loc2_)
                           {
                           }
                           addr88:
                           return _loc2_;
                           addr87:
                        }
                        this.setFirstGameState();
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr88);
               }
            }
            §§goto(addr88);
         }
         §§goto(addr74);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §,B§.§^n§.§-8§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'<§(§#p§.§?x§);
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
            this.§[#§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§[#§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§[#§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§[#§.willTrigger(param1);
      }
   }
}
