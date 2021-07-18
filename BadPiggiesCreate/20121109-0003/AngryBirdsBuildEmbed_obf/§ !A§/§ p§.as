package § !A§
{
   import § !r§.§%s§;
   import § !r§.§`![§;
   import §!y§.§=!Z§;
   import §&!0§.§%!`§;
   import §1?§.§+!§;
   import §9!n§.§@!T§;
   import §=!3§.§;!!§;
   import §=!3§.§;w§;
   import §=!3§.§<!=§;
   import §=!3§.§=!p§;
   import §^!B§.SWFWheel;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class § p§ extends §=!p§ implements IEventDispatcher
   {
      
      public static var §,!3§:Number;
      
      public static var §-h§:Number;
       
      
      public var §"4§:Number;
      
      private var §?9§:EventDispatcher;
      
      public function § p§(param1:§"!8§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§pop().§§slot[1] = param1;
            if(!_loc7_)
            {
               §§push(§§newactivation());
               if(_loc6_ || this)
               {
                  §§pop().§§slot[2] = param2;
                  §§push(§§newactivation());
                  if(!(_loc7_ && this))
                  {
                     addr55:
                     §§pop().§§slot[3] = param3;
                     §§push(§§newactivation());
                  }
                  §§pop().§§slot[4] = param4;
                  if(!_loc7_)
                  {
                     addr72:
                     this.§?9§ = new EventDispatcher();
                     super(canvas);
                  }
                  if(§4a§.stage)
                  {
                     if(_loc6_)
                     {
                        this.init(loadingScreen,uiData,assetData);
                     }
                  }
                  else
                  {
                     §4a§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
                     {
                        §4a§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
                        init(loadingScreen,uiData,assetData);
                     });
                  }
                  return;
               }
               §§goto(addr55);
            }
            §§goto(addr72);
         }
         §§goto(addr55);
      }
      
      protected function initSoundEngine() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §+!§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         SWFWheel.initialize(stage);
         SWFWheel.§8!6§ = true;
         §`![§.§!!w§(this.getVersionInfo());
         if(_loc6_)
         {
            §;!!§.§[e§ = §4a§.stage.loaderInfo.parameters;
            if(_loc6_ || this)
            {
               addr42:
               this.initSoundEngine();
               if(_loc6_)
               {
                  § Y§(new §;w§());
                  addr46:
               }
               var _loc4_:§<!=§ = this.initStateLoad();
               § Y§(_loc4_);
               _loc4_.setLoadingScreen(param1);
               if(!(_loc5_ && param1))
               {
                  _loc4_.§4f§(param3);
                  if(!(_loc5_ && param3))
                  {
                     §=!Z§.init(param2);
                     if(!(_loc5_ && param1))
                     {
                        if(§%!`§.§ N§())
                        {
                           if(!_loc6_)
                           {
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr115);
                     }
                     §%!`§.§7!E§("serverConnectionError");
                     addr115:
                     §8!W§(§<!=§.STATE_NAME);
                     if(!_loc5_)
                     {
                        this.§3!I§();
                     }
                     §§goto(addr123);
                  }
                  addr123:
                  return;
               }
               §§goto(addr115);
            }
            §§goto(addr46);
         }
         §§goto(addr42);
      }
      
      protected function initStateLoad() : §<!=§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§<!=§));
         §§push(true);
         §§push(§<!=§.STATE_NAME);
         §§push(this.getMinLoadingScreenTime());
         if(!_loc1_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc2_ || this)
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr85);
                  }
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(_loc2_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        addr84:
                        §§pop();
                     }
                     §§goto(addr85);
                  }
               }
               §§goto(addr84);
            }
            addr85:
            if(!(_loc1_ && _loc2_))
            {
               §§pop();
               addr69:
               §§push("");
            }
            return new §§pop().§<!=§(§§pop(),§§pop(),§§pop(),§§pop(),"");
         }
         §§goto(addr69);
      }
      
      public function §3!I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §4a§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr46);
            }
            §§goto(addr88);
         }
         addr46:
         §4a§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         if(!_loc2_)
         {
            §4a§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
            if(_loc1_ || _loc2_)
            {
               §4a§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
               if(_loc1_)
               {
                  addr88:
                  this.§"4§ = getTimer();
               }
            }
         }
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(§?8§())
            {
               if(_loc3_ || this)
               {
                  §?8§().mouseLeave();
               }
            }
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§?8§())
            {
               if(_loc2_ || this)
               {
                  §?8§().keyDown(param1);
                  if(!_loc3_)
                  {
                     addr44:
                     §`![§.keyDown(param1);
                  }
               }
               return;
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
            if(§?8§())
            {
               if(_loc2_ || param1)
               {
                  §?8§().keyUp(param1);
               }
            }
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(getTimer() - this.§"4§);
         if(!(_loc3_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.§"4§ = getTimer();
            if(_loc4_ || _loc2_)
            {
               addr59:
               §@!T§.§`!t§.update(_loc2_);
            }
            this.§?9§.dispatchEvent(param1);
            if(!(_loc3_ && _loc3_))
            {
               §%s§.§6!!§(§4a§.mouseX,§4a§.mouseY);
               if(!(_loc3_ && param1))
               {
                  addr97:
                  if(!§0!v§())
                  {
                     if(this.updateState(_loc2_) == §;!!§.STATE_STATUS_COMPLETED)
                     {
                        §0!v§();
                     }
                     return;
                  }
               }
               return;
            }
            §§goto(addr97);
         }
         §§goto(addr59);
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
         if(_loc4_ || param1)
         {
            if(§?8§().isGenericState())
            {
               if(_loc4_ || param1)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && param1))
                  {
                     if(§§pop() == §;!!§.STATE_STATUS_COMPLETED)
                     {
                        if(!_loc3_)
                        {
                           addr75:
                           §4a§.addChild(§%s§.activate());
                           if(_loc3_)
                           {
                           }
                           addr84:
                           return _loc2_;
                           addr83:
                        }
                        this.setFirstGameState();
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr84);
               }
            }
            §§goto(addr84);
         }
         §§goto(addr75);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §@!T§.§`!t§.§%!4§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §8!W§(§;w§.STATE_NAME);
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
            this.§?9§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§?9§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§?9§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§?9§.willTrigger(param1);
      }
   }
}
