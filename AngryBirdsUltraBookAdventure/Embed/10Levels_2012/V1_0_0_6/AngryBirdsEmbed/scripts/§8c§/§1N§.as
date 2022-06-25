package §8c§
{
   import §#h§.§ !H§;
   import §0w§.§06§;
   import §5m§.§2!&§;
   import §6H§.§5S§;
   import §6H§.§>3§;
   import §6H§.§?i§;
   import §6H§.§`h§;
   import §8!E§.SWFWheel;
   import §>K§.§7R§;
   import §>K§.§9X§;
   import §?!+§.§,!G§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §1N§ extends §5S§ implements IEventDispatcher
   {
      
      public static var §1§:Number;
      
      public static var §2Q§:Number;
       
      
      public var §8!-§:Number;
      
      private var §5!#§:EventDispatcher;
      
      public function §1N§(param1:§ p§, param2:DisplayObjectContainer, param3:XML, param4:XML)
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
                  this.§5!#§ = new EventDispatcher();
               }
               super(canvas);
               if(!(_loc7_ && param3))
               {
                  if(§6#§.stage)
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
                     §6#§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
                     {
                        §6#§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
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
            § !H§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            SWFWheel.initialize(stage);
            SWFWheel.§=g§ = false;
            if(!_loc6_)
            {
               §9X§.§8y§(this.getVersionInfo());
               if(!_loc6_)
               {
                  §>3§.§,n§ = §6#§.stage.loaderInfo.parameters;
                  this.initSoundEngine();
               }
            }
         }
         §5!%§(new §`h§());
         var _loc4_:§?i§ = this.initStateLoad();
         if(!_loc6_)
         {
            §5!%§(_loc4_);
            _loc4_.setLoadingScreen(param1);
            _loc4_.§`8§(param3);
            if(!_loc6_)
            {
               addr81:
               §06§.init(param2);
               if(§2!&§.§^U§())
               {
                  §§goto(addr87);
               }
               §§goto(addr92);
            }
            addr87:
            §2!&§.§]K§("serverConnectionError");
            if(_loc5_)
            {
               addr92:
               each(§?i§.§-!A§);
               this.§#%§();
            }
            return;
         }
         §§goto(addr81);
      }
      
      protected function initStateLoad() : §?i§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§?i§));
         §§push(true);
         §§push(§?i§.§-!A§);
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
                           return new §§pop().§?i§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
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
      
      public function §#%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §6#§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(!_loc1_)
            {
               §6#§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               if(!(_loc1_ && this))
               {
                  §6#§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
                  §§goto(addr51);
               }
            }
            §§goto(addr75);
         }
         addr51:
         if(!(_loc1_ && _loc2_))
         {
            addr75:
            §6#§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
            if(!(_loc1_ && this))
            {
               this.§8!-§ = getTimer();
            }
         }
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§>A§())
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr29:
                  §>A§().mouseLeave();
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
            if(§>A§())
            {
               if(!_loc2_)
               {
                  §>A§().keyDown(param1);
                  if(!_loc2_)
                  {
                     addr45:
                     §9X§.keyDown(param1);
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
            if(§>A§())
            {
               if(!_loc2_)
               {
                  §>A§().keyUp(param1);
               }
            }
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(getTimer() - this.§8!-§);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         this.§8!-§ = getTimer();
         if(!_loc3_)
         {
            §,!G§.§@j§.update(_loc2_);
            if(!_loc3_)
            {
               this.§5!#§.dispatchEvent(param1);
               if(_loc4_ || _loc2_)
               {
                  §7R§.§]E§(§6#§.mouseX,§6#§.mouseY);
                  if(§0$§())
                  {
                     if(!(_loc3_ && this))
                     {
                        return;
                     }
                  }
                  else if(this.updateState(_loc2_) == §>3§.STATE_STATUS_COMPLETED)
                  {
                     addr92:
                     §0$§();
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
            if(§>A§().isGenericState())
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop() == §>3§.STATE_STATUS_COMPLETED)
                     {
                        if(!_loc4_)
                        {
                           addr74:
                           §6#§.addChild(§7R§.activate());
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
            §,!G§.§@j§.§3u§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            each(§`h§.§-!A§);
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
            this.§5!#§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§5!#§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§5!#§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§5!#§.willTrigger(param1);
      }
   }
}
