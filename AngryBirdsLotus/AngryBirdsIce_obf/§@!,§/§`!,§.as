package §@!,§
{
   import §&N§.§[-§;
   import §2!5§.§";§;
   import §2]§.§set §;
   import §3O§.§@6§;
   import §8#§.SWFWheel;
   import §;8§.§!$§;
   import §;8§.§3f§;
   import §]4§.§ !G§;
   import §]4§.§&"§;
   import §]4§.§-§;
   import §]4§.§4!1§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §`!,§ extends §&"§ implements IEventDispatcher
   {
      
      public static var §'F§:Number;
      
      public static var §=b§:Number;
       
      
      public var §^&§:Number;
      
      private var §6a§:EventDispatcher;
      
      public function §`!,§(param1:§8!6§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[1] = param1;
            §§push(§§newactivation());
            loop1:
            for(; _loc6_ || this; if(_loc6_ || this)
            {
               §§pop().§§slot[4] = param4;
               do
               {
                  this.§6a§ = new EventDispatcher();
               }
               while(!_loc6_);
               
               super(canvas);
               while(true)
               {
                  if(!§5A§.stage)
                  {
                     §5A§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
                     {
                        §5A§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
                        init(loadingScreen,uiData,assetData);
                     });
                  }
                  if(!(_loc6_ || this))
                  {
                     break;
                  }
                  addr72:
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  if(_loc6_)
                  {
                     this.init(loadingScreen,uiData,assetData);
                     §§goto(addr72);
                  }
                  else
                  {
                     §§goto(addr115);
                  }
               }
               return;
            })
            {
               §§pop().§§slot[2] = param2;
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[3] = param3;
                  addr115:
                  while(true)
                  {
                     §§push(§§newactivation());
                     if(!_loc7_)
                     {
                        continue loop1;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      protected function initSoundEngine() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §@6§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            SWFWheel.initialize(stage);
            SWFWheel.§14§ = true;
            §3f§.§'! §(this.getVersionInfo());
         }
         while(true)
         {
            §-§.§"!G§ = §5A§.stage.loaderInfo.parameters;
            while(!_loc5_)
            {
               while(true)
               {
                  this.initSoundEngine();
                  if(!(_loc6_ || param2))
                  {
                     break;
                  }
                  §9!2§(new §4!1§());
                  if(false)
                  {
                     continue;
                  }
                  var _loc4_:§ !G§ = this.initStateLoad();
                  §9!2§(_loc4_);
                  _loc4_.setLoadingScreen(param1);
                  loop3:
                  while(true)
                  {
                     _loc4_.§=T§(param3);
                     §set §.init(param2);
                     if(!§[-§.§4!=§())
                     {
                        while(true)
                        {
                           §&K§(§ !G§.§?B§);
                           if(!(_loc5_ && param3))
                           {
                              break;
                           }
                           continue loop3;
                        }
                        this.§,!H§();
                     }
                     else
                     {
                        addr86:
                     }
                     continue;
                     return;
                  }
               }
            }
         }
      }
      
      protected function initStateLoad() : § !G§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§ !G§));
         §§push(true);
         §§push(§ !G§.§?B§);
         §§push(this.getMinLoadingScreenTime());
         if(_loc2_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc2_ || this)
            {
               §§push(§§pop());
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc1_ && this))
                     {
                        addr68:
                        §§pop();
                        addr70:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(!(_loc1_ && _loc2_))
                        {
                           return new §§pop().§ !G§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                           addr82:
                        }
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr70);
               }
               §§goto(addr82);
            }
         }
         §§goto(addr68);
      }
      
      public function §,!H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §5A§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            loop0:
            while(true)
            {
               §5A§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               while(true)
               {
                  §5A§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
                  addr64:
                  if(_loc2_ || this)
                  {
                     this.§^&§ = getTimer();
                     addr81:
                     if(_loc2_ || this)
                     {
                        continue loop0;
                     }
                     loop3:
                     while(true)
                     {
                        if(_loc1_)
                        {
                           while(true)
                           {
                              §5A§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
                              continue loop3;
                           }
                           return;
                           addr53:
                           addr90:
                        }
                        §§goto(addr64);
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§"! §())
            {
               if(!(_loc3_ && _loc2_))
               {
                  §"! §().mouseLeave();
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
            if(§"! §())
            {
               if(_loc2_ || this)
               {
                  §"! §().keyDown(param1);
               }
               while(true)
               {
               }
               addr54:
            }
            while(true)
            {
               §3f§.keyDown(param1);
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr54);
            }
         }
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§"! §())
            {
               if(!_loc2_)
               {
                  addr24:
                  §"! §().keyUp(param1);
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(getTimer() - this.§^&§);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.§^&§ = getTimer();
            loop0:
            while(true)
            {
               §";§.§[8§.update(_loc2_);
               this.§6a§.dispatchEvent(param1);
               §!$§.§`u§(§5A§.mouseX,§5A§.mouseY);
               addr86:
               addr28:
               while(true)
               {
                  if(§,!>§())
                  {
                     if(_loc3_)
                     {
                        §§goto(addr77);
                     }
                  }
                  if(this.updateState(_loc2_) != §-§.STATE_STATUS_COMPLETED)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         addr77:
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
            if(§"! §().isGenericState())
            {
               if(!_loc3_)
               {
                  §§push(_loc2_);
                  while(true)
                  {
                     if(§§pop() == §-§.STATE_STATUS_COMPLETED)
                     {
                        if(!_loc3_)
                        {
                           addr82:
                           while(true)
                           {
                              §5A§.addChild(§!$§.activate());
                           }
                           addr82:
                        }
                        do
                        {
                           this.setFirstGameState();
                        }
                        while(!(_loc4_ || _loc3_));
                        
                     }
                  }
                  addr77:
               }
               §§goto(addr82);
            }
            while(true)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr77);
            }
            return §§pop();
         }
         §§goto(addr82);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §";§.§[8§.§1N§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §&K§(§4!1§.§?B§);
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
            this.§6a§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§6a§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§6a§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§6a§.willTrigger(param1);
      }
   }
}
