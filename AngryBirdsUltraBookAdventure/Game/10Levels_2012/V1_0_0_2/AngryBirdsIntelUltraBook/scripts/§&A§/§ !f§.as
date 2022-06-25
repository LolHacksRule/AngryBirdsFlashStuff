package §&A§
{
   import §"R§.§ !Q§;
   import §2h§.§[!'§;
   import §57§.§,!b§;
   import §;!5§.§5>§;
   import §<!>§.§#i§;
   import §<!>§.§,?§;
   import §<!>§.§>!C§;
   import §<!>§.§?Y§;
   import §=5§.SWFWheel;
   import §^_§.§!>§;
   import §^_§.§=H§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class § !f§ extends §>!C§ implements IEventDispatcher
   {
      
      public static var §%#§:Number;
      
      public static var §="§:Number;
       
      
      public var §%![§:Number;
      
      private var §+B§:EventDispatcher;
      
      public function § !f§(param1:§,6§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[1] = param1;
            addr150:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  addr146:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop2;
                  }
               }
            }
            if(!(_loc7_ || param3))
            {
               continue;
            }
            §§pop().§§slot[4] = param4;
            do
            {
               if(_loc7_)
               {
                  this.§+B§ = new EventDispatcher();
                  loop7:
                  do
                  {
                     super(canvas);
                     do
                     {
                        if(!(_loc6_ && param1))
                        {
                           if(§8!0§.stage)
                           {
                              continue;
                           }
                           §8!0§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
                           {
                              §8!0§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
                              init(loadingScreen,uiData,assetData);
                           });
                           if(_loc6_)
                           {
                              continue loop7;
                           }
                           if(!_loc7_)
                           {
                              continue;
                           }
                        }
                        else
                        {
                           §§goto(addr150);
                        }
                        §§goto(addr22);
                     }
                     while(!(_loc7_ || param2));
                     
                     this.init(loadingScreen,uiData,assetData);
                  }
                  while(_loc6_ && this);
                  
                  continue;
               }
               §§goto(addr146);
            }
            while(!(_loc7_ || param3));
            
            §§goto(addr82);
         }
      }
      
      protected function §5!y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            § !Q§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            SWFWheel.initialize(stage);
            while(true)
            {
               SWFWheel.§&!k§ = true;
               while(true)
               {
                  §!>§.§,!P§(this.getVersionInfo());
                  loop2:
                  while(_loc6_)
                  {
                     §?Y§.§'!;§ = §8!0§.stage.loaderInfo.parameters;
                     loop3:
                     while(true)
                     {
                        addr48:
                        while(true)
                        {
                           this.§5!y§();
                           while(!_loc5_)
                           {
                              §9!`§(new §#i§());
                              if(_loc6_ || param1)
                              {
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(_loc5_ && this)
               {
                  continue;
               }
               while(false)
               {
                  §§goto(addr48);
               }
               var _loc4_:§,?§ = this.initStateLoad();
               if(!(_loc5_ && param1))
               {
                  §9!`§(_loc4_);
                  loop7:
                  while(true)
                  {
                     _loc4_.setLoadingScreen(param1);
                     loop8:
                     while(true)
                     {
                        _loc4_.§;w§(param3);
                        loop9:
                        while(true)
                        {
                           §[!'§.init(param2);
                           loop10:
                           while(true)
                           {
                              if(§5>§.§"1§())
                              {
                                 if(_loc6_)
                                 {
                                    §5>§.§7Y§("serverConnectionError");
                                 }
                                 while(true)
                                 {
                                    addr122:
                                    loop13:
                                    while(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          while(true)
                                          {
                                             this.§>!-§();
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop9;
                                             }
                                             continue loop13;
                                          }
                                          return;
                                          continue;
                                       }
                                       continue loop10;
                                    }
                                 }
                                 addr146:
                              }
                              while(true)
                              {
                                 §,!6§(§,?§.§?h§);
                                 §§goto(addr122);
                                 §§goto(addr146);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr136);
               addr46:
            }
         }
         §§goto(addr46);
      }
      
      protected function initStateLoad() : §,?§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§,?§));
         §§push(true);
         §§push(§,?§.§?h§);
         §§push(this.getMinLoadingScreenTime());
         if(!_loc2_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc1_ || _loc1_)
            {
               §§push(§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     §§goto(addr84);
                  }
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(!(_loc2_ && this))
                  {
                     if(!§§pop())
                     {
                        addr83:
                        §§pop();
                     }
                     §§goto(addr84);
                  }
               }
               §§goto(addr83);
            }
            addr84:
            if(!_loc2_)
            {
               §§pop();
               addr68:
               §§push("");
            }
            return new §§pop().§,?§(§§pop(),§§pop(),§§pop(),§§pop(),"");
         }
         §§goto(addr68);
      }
      
      public function §>!-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §8!0§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         loop0:
         while(true)
         {
            §8!0§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
            do
            {
               §8!0§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
               continue loop0;
            }
            while(!_loc1_);
            
            return;
         }
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(§4C§())
            {
               if(!_loc2_)
               {
                  §4C§().mouseLeave();
               }
            }
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§4C§())
            {
               if(_loc3_ || param1)
               {
                  addr56:
                  §4C§().keyDown(param1);
               }
               while(true)
               {
                  §§goto(addr34);
               }
            }
            addr34:
            while(true)
            {
               §!>§.keyDown(param1);
               if(!(_loc2_ && _loc3_))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(§4C§())
            {
               if(!(_loc3_ && this))
               {
                  §4C§().keyUp(param1);
               }
            }
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(getTimer() - this.§%![§);
         if(_loc4_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            this.§%![§ = getTimer();
            while(true)
            {
               §,!b§.§<d§.update(_loc2_);
            }
            addr127:
         }
         loop1:
         while(true)
         {
            this.§+B§.dispatchEvent(param1);
            addr116:
            while(true)
            {
               §=H§.§9!x§(§8!0§.mouseX,§8!0§.mouseY);
               continue loop1;
            }
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.updateState(param1));
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(§4C§().isGenericState())
            {
               loop4:
               while(true)
               {
                  §§push(_loc2_);
                  addr83:
                  while(§§pop() == §?Y§.STATE_STATUS_COMPLETED)
                  {
                     do
                     {
                        §8!0§.addChild(§=H§.activate());
                        do
                        {
                           this.setFirstGameState();
                        }
                        while(!(_loc3_ || param1));
                        
                     }
                     while(!_loc3_);
                     
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop4;
                  }
               }
               addr82:
            }
            while(true)
            {
               §§push(_loc2_);
               if(_loc3_ || _loc2_)
               {
                  break;
               }
               §§goto(addr83);
            }
            return §§pop();
         }
         §§goto(addr82);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,!b§.§<d§.§ if§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,!6§(§#i§.§?h§);
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
         if(!(_loc6_ && this))
         {
            this.§+B§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            this.§+B§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§+B§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§+B§.willTrigger(param1);
      }
   }
}
