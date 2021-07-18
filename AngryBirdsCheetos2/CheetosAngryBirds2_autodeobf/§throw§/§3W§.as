package §throw§
{
   import §"§.§%!$§;
   import §"§.§4K§;
   import §"§.§;!?§;
   import §"§.§]!&§;
   import §-!Q§.§,!7§;
   import §2!B§.§>!^§;
   import §3@§.§>#§;
   import §<!0§.§%g§;
   import §>P§.§>!;§;
   import §>^§.§!6§;
   import §>^§.§;!P§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §3W§ extends §]!&§ implements IEventDispatcher
   {
      
      public static var §'9§:Number;
      
      public static var §#!1§:Number;
       
      
      public var §3!V§:Number;
      
      private var §`!#§:EventDispatcher;
      
      public function §3W§(param1:§=! §, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
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
                  addr133:
                  while(_loc6_)
                  {
                     §§push(§§newactivation());
                     continue loop2;
                  }
                  continue loop1;
               }
            }
            if(!(_loc6_ || this))
            {
               continue;
            }
            §§pop().§§slot[4] = param4;
            loop6:
            while(true)
            {
               this.§`!#§ = new EventDispatcher();
               loop7:
               while(true)
               {
                  super(canvas);
                  do
                  {
                     if(_loc7_ && param2)
                     {
                        continue loop7;
                     }
                     if(!_loc6_)
                     {
                        continue loop6;
                     }
                     if(§#Z§.stage)
                     {
                        continue;
                     }
                     §#Z§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
                     {
                        §#Z§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
                        init(loadingScreen,uiData,assetData);
                     });
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           break loop7;
                        }
                        continue;
                     }
                     §§goto(addr56);
                  }
                  while(!_loc6_);
                  
                  §§goto(addr44);
               }
               §§goto(addr21);
            }
         }
      }
      
      protected function §`!P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §,!7§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            §>!^§.§,a§(stage);
            loop0:
            while(true)
            {
               §>!^§.§0!f§ = false;
               while(true)
               {
                  §!6§.§,!;§(this.getVersionInfo());
                  addr51:
                  if(!(_loc6_ || param1))
                  {
                     continue;
                  }
                  §4y§(new §4K§());
                  if(!_loc5_)
                  {
                     addr32:
                     if(false)
                     {
                        loop5:
                        while(true)
                        {
                           this.§`!P§();
                           addr37:
                           while(true)
                           {
                              if(_loc6_ || param3)
                              {
                                 addr44:
                                 if(!(_loc6_ || param2))
                                 {
                                    break;
                                 }
                                 §§goto(addr51);
                              }
                              addr66:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    continue loop5;
                                 }
                                 continue loop0;
                              }
                           }
                           addr74:
                           while(!_loc5_)
                           {
                              §%!$§.§@!'§ = §#Z§.stage.loaderInfo.parameters;
                              §§goto(addr66);
                              §§goto(addr44);
                           }
                           while(true)
                           {
                              §!6§.§+>§ = this.getVersionInfo();
                              §§goto(addr74);
                           }
                        }
                     }
                     var _loc4_:§;!?§ = this.initStateLoad();
                     if(_loc6_)
                     {
                        §4y§(_loc4_);
                        _loc4_.§=c§(param1);
                        _loc4_.§8!-§(param3);
                        addr178:
                        addr174:
                     }
                     §>!;§.init(param2);
                     addr169:
                     addr154:
                     if(§>#§.§`!6§())
                     {
                        addr133:
                        if(_loc6_)
                        {
                           §>#§.§2!g§("serverConnectionError");
                           addr138:
                           if(!_loc5_)
                           {
                              if(_loc6_)
                              {
                                 if(_loc6_ || param3)
                                 {
                                    addr119:
                                    §'A§(§;!?§.§3!?§);
                                    addr124:
                                    if(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          this.§,!M§();
                                          if(!_loc6_)
                                          {
                                             §§goto(addr124);
                                          }
                                          return;
                                       }
                                       §§goto(addr133);
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr37);
               }
            }
         }
         §§goto(addr74);
      }
      
      protected function initStateLoad() : §;!?§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§;!?§));
         §§push(true);
         §§push(§;!?§.§3!?§);
         §§push(this.getMinLoadingScreenTime());
         if(!_loc2_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc1_ || this)
            {
               §§push(§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc1_)
                     {
                        addr52:
                        §§pop();
                        addr54:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(_loc1_ || _loc2_)
                        {
                           return new §§pop().§;!?§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                           addr76:
                        }
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr54);
               }
               §§goto(addr76);
            }
         }
         §§goto(addr52);
      }
      
      public function §,!M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §#Z§.addEventListener(Event.ENTER_FRAME,this.§,,§);
         }
         do
         {
            §#Z§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
            do
            {
               §#Z§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
               do
               {
                  §#Z§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
                  do
                  {
                     this.§3!V§ = getTimer();
                  }
                  while(!_loc1_);
                  
               }
               while(!_loc1_);
               
            }
            while(!(_loc1_ || this));
            
         }
         while(_loc2_);
         
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§!!%§())
            {
               if(!_loc2_)
               {
                  §!!%§().mouseLeave();
               }
            }
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(§!!%§())
            {
               while(true)
               {
                  §!!%§().keyDown(param1);
                  addr65:
                  while(true)
                  {
                  }
               }
               addr61:
            }
            while(true)
            {
               §!6§.keyDown(param1);
               if(_loc2_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr61);
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§!!%§())
            {
               if(_loc3_)
               {
                  §!!%§().keyUp(param1);
               }
            }
         }
      }
      
      public function §,,§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(getTimer() - this.§3!V§);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            this.§3!V§ = getTimer();
            while(true)
            {
               §%g§.§'I§.update(_loc2_);
            }
            addr121:
         }
         while(true)
         {
            this.§`!#§.dispatchEvent(param1);
            loop2:
            while(true)
            {
               §;!P§.§0!?§(§#Z§.mouseX,§#Z§.mouseY);
               loop3:
               while(true)
               {
                  if(_loc4_)
                  {
                     break loop2;
                  }
                  if(!§%n§())
                  {
                     while(this.updateState(_loc2_) == §%!$§.STATE_STATUS_COMPLETED)
                     {
                        if(!_loc4_)
                        {
                           if(_loc3_ || this)
                           {
                              §%n§();
                           }
                           else
                           {
                              addr72:
                              if(_loc3_)
                              {
                                 return;
                              }
                              §§goto(addr121);
                           }
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop3;
                     }
                     return;
                  }
                  §§goto(addr72);
               }
            }
         }
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
            if(§!!%§().isGenericState())
            {
               loop3:
               while(true)
               {
                  §§push(_loc2_);
                  addr71:
                  while(§§pop() == §%!$§.STATE_STATUS_COMPLETED)
                  {
                     if(_loc3_)
                     {
                        §#Z§.addChild(§;!P§.activate());
                     }
                     do
                     {
                        this.setFirstGameState();
                     }
                     while(!_loc3_);
                     
                     if(!(_loc4_ && param1))
                     {
                        break;
                     }
                     continue loop3;
                  }
               }
               addr70:
            }
            while(true)
            {
               §§push(_loc2_);
               if(_loc3_ || _loc3_)
               {
                  break;
               }
               §§goto(addr71);
            }
            return §§pop();
         }
         §§goto(addr70);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%g§.§'I§.§77§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'A§(§4K§.§3!?§);
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
         if(!(_loc6_ && param1))
         {
            this.§`!#§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§`!#§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`!#§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`!#§.willTrigger(param1);
      }
   }
}
