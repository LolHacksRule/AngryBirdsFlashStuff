package §_-jn§
{
   import §_-0AB§.§_-cx§;
   import §_-0BH§.§_-FK§;
   import §_-0BH§.§_-Hy§;
   import §_-4g§.§_-pX§;
   import §_-Hb§.§_-ok§;
   import §_-Ya§.SWFWheel;
   import §_-Yl§.§_-vB§;
   import §_-x8§.§_-It§;
   import §_-x8§.§_-RM§;
   import §_-x8§.§_-Ue§;
   import §_-x8§.§_-nG§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §_-G2§ extends §_-Ue§ implements IEventDispatcher
   {
      
      public static var §_-Jg§:Number;
      
      public static var §_-4a§:Number;
       
      
      public var §_-09Y§:Number;
      
      private var §_-Rr§:EventDispatcher;
      
      public function §_-G2§(param1:§_-hS§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = param1;
            addr150:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
      
      protected function §_-do§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-pX§.init();
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            SWFWheel.initialize(stage);
         }
         loop0:
         while(true)
         {
            SWFWheel.§_-ue§ = true;
            loop1:
            while(true)
            {
               §_-FK§.§_-Xk§(this.getVersionInfo());
               loop2:
               for(; _loc5_; if(!(_loc6_ && this))
               {
                  continue loop1;
               })
               {
                  §_-nG§.§_-lH§ = §_-t8§.stage.loaderInfo.parameters;
                  loop3:
                  while(true)
                  {
                     addr33:
                     addr88:
                     while(true)
                     {
                        this.§_-do§();
                        addr36:
                        while(true)
                        {
                           if(_loc5_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                     var _loc4_:§_-RM§ = this.initStateLoad();
                     if(_loc5_)
                     {
                        §_-pP§(_loc4_);
                        _loc4_.setLoadingScreen(param1);
                        _loc4_.§_-kU§(param3);
                        §_-vB§.init(param2);
                        addr175:
                        addr184:
                        addr180:
                        addr170:
                        if(§_-ok§.§_-UZ§())
                        {
                           addr136:
                           if(_loc5_ || param1)
                           {
                              if(_loc5_)
                              {
                                 §_-ok§.§_-0-r§("serverConnectionError");
                                 addr158:
                                 if(_loc5_ || param3)
                                 {
                                    addr119:
                                    §_-Sk§(§_-RM§.§_-pk§);
                                    addr124:
                                    if(!(_loc6_ && param1))
                                    {
                                       this.§_-AI§();
                                       if(!(_loc6_ && param3))
                                       {
                                          if(!_loc6_)
                                          {
                                             if(_loc6_ && param3)
                                             {
                                                §§goto(addr175);
                                             }
                                             return;
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr124);
                                       addr131:
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr170);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr131);
                  }
               }
               continue loop0;
               if(_loc6_ && param3)
               {
                  continue;
               }
               §_-pP§(new §_-It§());
               if(!(_loc6_ && this))
               {
                  if(false)
                  {
                     §§goto(addr33);
                  }
                  §§goto(addr88);
               }
               §§goto(addr36);
            }
         }
      }
      
      protected function initStateLoad() : §_-RM§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§_-RM§));
         §§push(true);
         §§push(§_-RM§.§_-pk§);
         §§push(this.getMinLoadingScreenTime());
         if(_loc2_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop());
               if(_loc2_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc1_ && this))
                     {
                        addr73:
                        §§pop();
                        addr75:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(!_loc1_)
                        {
                           return new §§pop().§_-RM§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                           addr82:
                        }
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr75);
               }
               §§goto(addr82);
            }
         }
         §§goto(addr73);
      }
      
      public function §_-AI§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-t8§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            loop0:
            while(true)
            {
               §_-t8§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
               loop1:
               while(true)
               {
                  §_-t8§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
                  while(!_loc1_)
                  {
                     §_-t8§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
                     while(!(_loc1_ && _loc1_))
                     {
                        if(!_loc1_)
                        {
                           this.§_-09Y§ = getTimer();
                           if(!(_loc1_ && _loc2_))
                           {
                              return;
                              addr51:
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr51);
      }
      
      public function mouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(§_-053§())
            {
               if(_loc2_ || this)
               {
                  §_-053§().mouseLeave();
               }
            }
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(§_-053§())
            {
               if(!(_loc2_ && this))
               {
                  addr56:
                  §_-053§().keyDown(param1);
               }
               while(true)
               {
               }
               addr60:
            }
            while(true)
            {
               §_-FK§.keyDown(param1);
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr60);
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§_-053§())
            {
               if(!_loc2_)
               {
                  addr24:
                  §_-053§().keyUp(param1);
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
         §§push(getTimer() - this.§_-09Y§);
         if(_loc4_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            this.§_-09Y§ = getTimer();
         }
         loop0:
         while(true)
         {
            §_-cx§.§_-3S§.update(_loc2_);
            loop1:
            while(true)
            {
               this.§_-Rr§.dispatchEvent(param1);
               loop2:
               while(true)
               {
                  §_-Hy§.§_-wP§(§_-t8§.mouseX,§_-t8§.mouseY);
                  loop3:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        if(!§_-rl§())
                        {
                           while(this.updateState(_loc2_) == §_-nG§.STATE_STATUS_COMPLETED)
                           {
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    if(!(_loc4_ || _loc2_))
                                    {
                                       break loop3;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                                 continue;
                              }
                              addr77:
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                        }
                        break;
                     }
                     continue loop2;
                  }
                  return;
               }
            }
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.updateState(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            if(§_-053§().isGenericState())
            {
               loop4:
               while(true)
               {
                  §§push(_loc2_);
                  addr88:
                  while(§§pop() == §_-nG§.STATE_STATUS_COMPLETED)
                  {
                     do
                     {
                        §_-t8§.addChild(§_-Hy§.activate());
                        do
                        {
                           this.setFirstGameState();
                        }
                        while(_loc4_ && param1);
                        
                     }
                     while(!(_loc3_ || param1));
                     
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop4;
                  }
               }
               addr87:
            }
            while(true)
            {
               §§push(_loc2_);
               if(!(_loc4_ && this))
               {
                  break;
               }
               §§goto(addr88);
            }
            return §§pop();
         }
         §§goto(addr87);
      }
      
      override protected function previousStateDeactivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-cx§.§_-3S§.§_-Pm§();
         }
      }
      
      public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §_-Sk§(§_-It§.§_-pk§);
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
         if(_loc7_)
         {
            this.§_-Rr§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            this.§_-Rr§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§_-Rr§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§_-Rr§.willTrigger(param1);
      }
   }
}
