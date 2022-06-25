package §<!7§
{
   import §"!&§.§%!>§;
   import §'X§.§%y§;
   import §'X§.§8s§;
   import §'X§.§9[§;
   import §'X§.§@P§;
   import §-i§.SWFWheel;
   import §0!<§.§#y§;
   import §0!<§.§%r§;
   import §1;§.§0!&§;
   import §?!?§.§3!E§;
   import §[H§.§7P§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §5i§ extends §%y§ implements IEventDispatcher
   {
      
      public static var §,B§:Number;
      
      public static var §"D§:Number;
       
      
      public var §1!G§:Number;
      
      private var §`F§:EventDispatcher;
      
      public function §5i§(param1:§2+§, param2:DisplayObjectContainer, param3:XML, param4:XML)
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
                  this.§`F§ = new EventDispatcher();
               }
               super(canvas);
               if(!(_loc7_ && param3))
               {
                  if(§<P§.stage)
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
                     §<P§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
                     {
                        §<P§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
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
            §3!E§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            SWFWheel.initialize(stage);
            SWFWheel.§7n§ = true;
            if(!_loc6_)
            {
               §#y§.§=h§(this.getVersionInfo());
               if(!_loc6_)
               {
                  §9[§.§=l§ = §<P§.stage.loaderInfo.parameters;
                  this.initSoundEngine();
               }
            }
         }
         §0!5§(new §@P§());
         var _loc4_:§8s§ = this.initStateLoad();
         if(!_loc6_)
         {
            §0!5§(_loc4_);
            _loc4_.setLoadingScreen(param1);
            _loc4_.§@c§(param3);
            if(!_loc6_)
            {
               addr81:
               §0!&§.init(param2);
               if(§7P§.§]F§())
               {
                  §§goto(addr87);
               }
               §§goto(addr92);
            }
            addr87:
            §7P§.§?!4§("serverConnectionError");
            if(_loc5_)
            {
               addr92:
               §,t§(§8s§.§0!7§);
               this.§6D§();
            }
            return;
         }
         §§goto(addr81);
      }
      
      protected function initStateLoad() : §8s§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§8s§));
         §§push(true);
         §§push(§8s§.§0!7§);
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
                           return new §§pop().§8s§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
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
      
      public function §6D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<P§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(!_loc1_)
            {
               §<P§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               if(!(_loc1_ && this))
               {
                  §<P§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
                  §§goto(addr51);
               }
            }
            §§goto(addr75);
         }
         addr51:
         if(!(_loc1_ && _loc2_))
         {
            addr75:
            §<P§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
            if(!(_loc1_ && this))
            {
               this.§1!G§ = getTimer();
            }
         }
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§0!H§())
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr29:
                  §0!H§().mouseLeave();
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
            if(§0!H§())
            {
               if(!_loc2_)
               {
                  §0!H§().keyDown(param1);
                  if(!_loc2_)
                  {
                     addr45:
                     §#y§.keyDown(param1);
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
            if(§0!H§())
            {
               if(!_loc2_)
               {
                  §0!H§().keyUp(param1);
               }
            }
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(getTimer() - this.§1!G§);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         this.§1!G§ = getTimer();
         if(!_loc3_)
         {
            §%!>§.§-]§.update(_loc2_);
            if(!_loc3_)
            {
               this.§`F§.dispatchEvent(param1);
               if(_loc4_ || _loc2_)
               {
                  §%r§.§06§(§<P§.mouseX,§<P§.mouseY);
                  if(§`!9§())
                  {
                     if(!(_loc3_ && this))
                     {
                        return;
                     }
                  }
                  else if(this.updateState(_loc2_) == §9[§.STATE_STATUS_COMPLETED)
                  {
                     addr92:
                     §`!9§();
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
            if(§0!H§().isGenericState())
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop() == §9[§.STATE_STATUS_COMPLETED)
                     {
                        if(!_loc4_)
                        {
                           addr74:
                           §<P§.addChild(§%r§.activate());
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
            §%!>§.§-]§.§-5§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,t§(§@P§.§0!7§);
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
            this.§`F§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§`F§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`F§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`F§.willTrigger(param1);
      }
   }
}
