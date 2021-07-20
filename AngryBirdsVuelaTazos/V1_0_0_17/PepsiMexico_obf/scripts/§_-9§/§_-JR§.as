package §_-9§
{
   import §_-Ur§.§_-BN§;
   import §_-bz§.§_-uC§;
   import §_-e3§.§_-54§;
   import §_-e3§.§_-9Y§;
   import §_-fv§.§_-eO§;
   import §_-rQ§.§_-Ou§;
   import §_-y7§.§_-M4§;
   import §_-y7§.§_-VA§;
   import §_-y7§.§_-YQ§;
   import §_-y7§.§_-vT§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §_-JR§ extends §_-vT§
   {
      
      public static var §_-j1§:Number;
      
      public static var §_-iZ§:Number;
       
      
      public var §_-Vh§:Number;
      
      public function §_-JR§(param1:§_-0W§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         if(_loc6_ || this)
         {
            §§pop().§§slot[1] = param1;
            §§push(§§newactivation());
            if(!(_loc7_ && param3))
            {
               §§pop().§§slot[2] = param2;
               if(_loc6_)
               {
                  §§push(§§newactivation());
                  if(_loc6_ || param2)
                  {
                     §§pop().§§slot[3] = param3;
                  }
                  §§goto(addr57);
               }
               §§goto(addr70);
            }
         }
         addr57:
         var assetData:XML = param4;
         super(canvas);
         if(!(_loc7_ && param1))
         {
            addr70:
            if(§_-XX§.stage)
            {
               this.init(loadingScreen,uiData,assetData);
               if(_loc7_ && param2)
               {
               }
            }
            else
            {
               §_-XX§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
               {
                  §_-XX§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
                  init(loadingScreen,uiData,assetData);
               });
            }
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            §_-eO§.§_-oA§(stage);
            if(!(_loc6_ && param2))
            {
               §_-eO§.§_-Ay§ = true;
            }
            §_-54§.§_-9o§(this.getVersionInfo());
            if(!(_loc6_ && this))
            {
               §_-VA§.§_-nP§ = §_-XX§.stage.loaderInfo.parameters;
               if(_loc5_ || param2)
               {
                  §_-Ou§.init();
                  §_-13§(new §_-M4§());
               }
            }
         }
         §§push(§§findproperty(§_-YQ§));
         §§push(true);
         §§push(§_-YQ§.§_-Az§);
         §§push(this.getMinLoadingScreenTime());
         if(_loc5_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!_loc6_)
            {
               §§push(§§pop());
               if(!_loc6_)
               {
                  if(!§§pop())
                  {
                     if(!_loc6_)
                     {
                        addr91:
                        §§pop();
                        addr93:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(_loc5_)
                        {
                           var _loc4_:§_-YQ§ = new §§pop().§_-YQ§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                           §_-13§(_loc4_);
                           if(!_loc6_)
                           {
                              _loc4_.§_-rT§(param1);
                              _loc4_.§_-Mc§(param3);
                           }
                           §_-BN§.init(param2);
                           if(!_loc6_)
                           {
                              if(§_-uC§.§_-cn§())
                              {
                                 if(_loc5_)
                                 {
                                    §_-uC§.§_-RY§("serverConnectionError");
                                    if(_loc5_ || param3)
                                    {
                                    }
                                    §§goto(addr151);
                                 }
                              }
                              §_-Ld§(§_-YQ§.§_-Az§);
                              this.§_-Hn§();
                           }
                           addr151:
                           return;
                        }
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr93);
               }
               §§goto(addr102);
            }
         }
         §§goto(addr91);
      }
      
      public function §_-Hn§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §_-XX§.addEventListener(Event.ENTER_FRAME,this.§_-Oe§);
            if(_loc2_)
            {
               §_-XX§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               addr29:
               if(_loc2_)
               {
                  §_-XX§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr80);
            }
            addr59:
            §_-XX§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
            if(_loc2_ || _loc2_)
            {
               addr80:
               this.§_-Vh§ = getTimer();
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(§_-cO§())
            {
               if(_loc3_ || _loc3_)
               {
                  §_-cO§().mouseLeave();
               }
            }
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(§_-cO§())
            {
               if(_loc2_)
               {
                  addr32:
                  §_-cO§().keyDown(param1);
                  if(_loc2_ || this)
                  {
                     addr50:
                     §_-54§.keyDown(param1);
                  }
               }
               return;
            }
            §§goto(addr50);
         }
         §§goto(addr32);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(§_-cO§())
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr44:
                  §_-cO§().keyUp(param1);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §_-Oe§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(getTimer() - this.§_-Vh§);
         if(!(_loc3_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.§_-Vh§ = getTimer();
            if(!_loc3_)
            {
               §§goto(addr48);
            }
            §§goto(addr81);
         }
         addr48:
         §_-9Y§.§_-1L§(§_-XX§.mouseX,§_-XX§.mouseY);
         if(!_loc3_)
         {
            if(§_-wg§())
            {
               if(_loc4_ || param1)
               {
                  §§goto(addr66);
               }
            }
            else
            {
               addr81:
               this.updateState(_loc2_);
            }
            return;
         }
         addr66:
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.updateState(param1));
         if(_loc4_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            if(§_-cO§().isGenericState())
            {
               if(_loc4_)
               {
                  §§push(_loc2_);
                  if(!_loc3_)
                  {
                     if(§§pop() == §_-VA§.STATE_STATUS_COMPLETED)
                     {
                        if(_loc4_)
                        {
                           addr61:
                           §_-XX§.addChild(§_-9Y§.activate());
                           if(_loc4_)
                           {
                              this.setFirstGameState();
                              addr69:
                              §§push(_loc2_);
                           }
                        }
                     }
                     §§goto(addr69);
                  }
                  return §§pop();
               }
               §§goto(addr61);
            }
         }
         §§goto(addr69);
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-Ld§(§_-M4§.§_-Az§);
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
   }
}
