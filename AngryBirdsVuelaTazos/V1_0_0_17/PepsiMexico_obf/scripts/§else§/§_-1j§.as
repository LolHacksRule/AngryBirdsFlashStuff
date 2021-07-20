package §else§
{
   import §_-6r§.§_-7P§;
   import §_-AW§.§_-kY§;
   import §_-F1§.§_-k4§;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-e3§.§_-54§;
   import §_-gY§.§_-Vu§;
   import §_-hU§.§_-MB§;
   import §_-y7§.§_-VA§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §_-1j§ extends §_-VA§
   {
      
      public static const §_-Az§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-Az§ = "CreditsState";
         }
      }
      
      private var §_-6L§:§_-kY§ = null;
      
      private var §_-KZ§:Boolean;
      
      private var §_-mA§:Number;
      
      private var §_-OL§:Number;
      
      private var §_-bJ§:Number;
      
      private var §_-n4§:Number;
      
      private var §_-lT§:Number;
      
      public function §_-1j§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            if(_loc2_)
            {
               addr20:
               §_-NY§ = new §_-ru§(this);
               if(_loc2_ || this)
               {
                  §§goto(addr39);
               }
               §§goto(addr61);
            }
            addr39:
            §_-NY§.init(§_-BN§.native.Views.View_Credits[0]);
            if(_loc2_ || _loc1_)
            {
               addr61:
               this.§_-6L§ = new §_-kY§(§_-MB§.§_-A7§);
            }
            return;
         }
         §§goto(addr20);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         super.activate();
         this.§_-62§();
         §_-MB§.§_-A7§.§_-Gf§(true);
         §_-MB§.§_-U0§(this.§_-6L§);
         if(_loc3_)
         {
            this.§_-6L§.init();
            §_-Qu§.§_-os§();
            §_-Vu§.§_-jT§.§_-ra§ = false;
         }
         var _loc1_:§_-k4§ = §_-NY§.container.getItemByName("Container_Credits") as §_-k4§;
         §_-NY§.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-tj§);
         §_-NY§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-2q§);
         §_-NY§.addEventListener(MouseEvent.MOUSE_UP,this.§_-jH§);
         if(_loc3_ || _loc1_)
         {
            §_-NY§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
            §_-NY§.stage.addEventListener(Event.MOUSE_LEAVE,this.§_-o1§);
            this.§_-n4§ = 0;
            this.§_-mA§ = 0;
            if(!_loc2_)
            {
               this.§_-OL§ = 0;
               if(!(_loc2_ && _loc3_))
               {
                  this.§_-lT§ = _loc1_.height + §_-MB§.§_-SP§ * §_-MB§.§_-y3§;
                  addr118:
                  §§push(this);
                  §§push(this.§_-lT§);
                  if(!_loc2_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§_-n4§ = §§pop();
                  §_-NY§.setText(§_-54§.§_-u9§,"TextField_Version_Number");
               }
               return;
            }
         }
         §§goto(addr118);
      }
      
      private function §_-62§(param1:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(760);
         var _loc3_:* = Number(570);
         §§push(param1);
         if(_loc4_)
         {
            if(§§pop())
            {
               §§push(980);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(Number(§§pop()));
                  if(!_loc5_)
                  {
                     _loc2_ = §§pop();
                     addr35:
                     §_-Qu§.§_-1q§ = _loc2_;
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || this)
                        {
                           §§push(980);
                           if(!(_loc5_ && param1))
                           {
                              §§push(§§pop() / §§pop());
                              if(_loc4_)
                              {
                                 addr64:
                                 _loc2_ = Number(§§pop() * §_-Cv§.stage.stageWidth);
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(Number(§_-Cv§.stage.stageHeight));
                                    if(_loc4_ || this)
                                    {
                                       _loc3_ = §§pop();
                                       if(!(_loc5_ && this))
                                       {
                                          addr99:
                                          §§push(_loc3_);
                                          §§push(32);
                                          if(!(_loc5_ && param1))
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                §§push(32);
                                                if(_loc4_ || param1)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc4_)
                                                   {
                                                      addr119:
                                                      _loc3_ = §§pop();
                                                      if(_loc4_)
                                                      {
                                                         addr122:
                                                         §§push(_loc2_);
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            addr131:
                                                            if(§§pop() < 32)
                                                            {
                                                               addr134:
                                                               _loc2_ = Number(32);
                                                               if(_loc4_)
                                                               {
                                                                  addr137:
                                                                  §§push(§_-Vu§.§_-dq§);
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     §§pop().§_-cU§ = new Rectangle(0,0,_loc2_,_loc3_);
                                                                     addr154:
                                                                     if(!param1)
                                                                     {
                                                                        addr155:
                                                                        §§push(§_-Vu§.§_-dq§);
                                                                        if(_loc4_)
                                                                        {
                                                                           addr166:
                                                                           §§pop().§_-rd§();
                                                                           addr173:
                                                                           return;
                                                                           addr167:
                                                                        }
                                                                        §§goto(addr173);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§_-Vu§.§_-dq§);
                                                                     }
                                                                     §§pop().§_-Bq§(_loc2_,_loc3_);
                                                                     §§goto(addr173);
                                                                  }
                                                               }
                                                               §§goto(addr166);
                                                            }
                                                            §§goto(addr137);
                                                         }
                                                      }
                                                      §§goto(addr167);
                                                   }
                                                }
                                                §§goto(addr134);
                                             }
                                             §§goto(addr122);
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr99);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr64);
               }
               §§goto(addr134);
            }
            §§goto(addr35);
         }
         §§goto(addr154);
      }
      
      private function §_-tj§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.§_-KZ§)
         {
            §§push(this.§_-bJ§);
            if(!_loc2_)
            {
               §§push(§§pop() - §_-NY§.mouseY);
               if(_loc3_ || _loc3_)
               {
                  §§push(0);
                  if(!(_loc2_ && _loc3_))
                  {
                     if(§§pop() > §§pop())
                     {
                        if(_loc3_)
                        {
                           §§push(this);
                           §§push(this.§_-bJ§);
                           if(!_loc2_)
                           {
                              §§push(§§pop() - §_-NY§.mouseY);
                           }
                           §§pop().§_-mA§ = §§pop();
                           this.§_-bJ§ = §_-NY§.mouseY;
                        }
                        §§goto(addr106);
                     }
                     else
                     {
                        §§push(this.§_-bJ§);
                        if(!(_loc2_ && param1))
                        {
                           addr75:
                           §§push(§§pop() - §_-NY§.mouseY);
                           §§push(0);
                        }
                        §§goto(addr75);
                     }
                  }
                  if(§§pop() < §§pop())
                  {
                     if(!_loc2_)
                     {
                        §§push(this);
                        §§push(this.§_-bJ§);
                        if(_loc3_)
                        {
                           §§push(§§pop() - §_-NY§.mouseY);
                        }
                        §§pop().§_-mA§ = §§pop();
                        if(_loc3_ || _loc2_)
                        {
                        }
                        §§goto(addr106);
                     }
                     this.§_-bJ§ = §_-NY§.mouseY;
                  }
                  §§goto(addr106);
               }
            }
            §§goto(addr75);
         }
         addr106:
      }
      
      private function §_-2q§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-KZ§ = true;
            if(_loc2_ || this)
            {
               this.§_-bJ§ = §_-NY§.mouseY;
            }
         }
      }
      
      private function §_-jH§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§_-KZ§ = false;
         }
      }
      
      private function §_-o1§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§_-KZ§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.delta < 0)
            {
               if(_loc2_)
               {
                  addr28:
                  this.§_-OL§ = 16;
                  if(_loc2_)
                  {
                     addr33:
                     if(param1.delta > 0)
                     {
                        if(_loc2_ || _loc3_)
                        {
                        }
                     }
                     §§goto(addr54);
                  }
                  this.§_-OL§ = -16;
               }
               addr54:
               return;
            }
            §§goto(addr33);
         }
         §§goto(addr28);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!_loc4_)
         {
            if(§§pop() != §_-VA§.STATE_STATUS_RUNNING)
            {
               if(!(_loc4_ && param1))
               {
                  §§goto(addr34);
               }
            }
            else
            {
               §_-MB§.§_-Gk§.update(param1);
               (§_-NY§.getItemByName("Container_Credits") as §_-k4§).y = Math.floor(-this.§_-n4§);
               if(!(_loc4_ && param1))
               {
                  this.§_-kj§(param1);
               }
               if(mNextState.length <= 0)
               {
                  return §_-VA§.STATE_STATUS_RUNNING;
               }
            }
            return §_-VA§.STATE_STATUS_COMPLETED;
         }
         addr34:
         return _loc2_;
      }
      
      private function §_-kj§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this);
         §§push(this.§_-n4§);
         if(!(_loc3_ && this))
         {
            §§push(§§pop() + this.§_-mA§);
         }
         §§pop().§_-n4§ = §§pop();
         §§push(this);
         §§push(this.§_-n4§);
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop() + this.§_-OL§);
         }
         §§pop().§_-n4§ = §§pop();
         §§push(this.§_-KZ§);
         if(!(_loc3_ && _loc3_))
         {
            §§push(!§§pop());
            if(_loc2_ || _loc2_)
            {
               addr58:
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     if(_loc2_)
                     {
                        §§push(Math.abs(this.§_-OL§) < param1 / 15);
                        if(!_loc3_)
                        {
                           addr75:
                           if(§§pop())
                           {
                              §§push(this);
                              §§push(this.§_-n4§);
                              if(_loc2_)
                              {
                                 §§push(param1);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() / 15);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().§_-n4§ = §§pop();
                           }
                           §§push(this.§_-n4§);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(-§_-Qu§.§_-SP§);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(§§pop() * §_-MB§.§_-y3§);
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       this.§_-n4§ = this.§_-lT§;
                                    }
                                    else
                                    {
                                       addr134:
                                       if(this.§_-n4§ > this.§_-lT§)
                                       {
                                          §§push(this);
                                          §§push(-§_-Qu§.§_-SP§);
                                          if(_loc2_ || param1)
                                          {
                                             §§push(§§pop() * §_-MB§.§_-y3§);
                                          }
                                          §§pop().§_-n4§ = §§pop();
                                       }
                                    }
                                    §§goto(addr152);
                                 }
                              }
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr166);
                  }
               }
               §§goto(addr75);
            }
            addr152:
            if(!this.§_-KZ§)
            {
               §§push(this);
               §§push(this.§_-mA§);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() * 0.9);
               }
               §§pop().§_-mA§ = §§pop();
               addr166:
               §§push(this);
               §§push(this.§_-OL§);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() * 0.9);
               }
               §§pop().§_-OL§ = §§pop();
            }
            return;
         }
         §§goto(addr58);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §_-NY§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-tj§);
         §_-NY§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-2q§);
         if(!_loc1_)
         {
            §_-NY§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-jH§);
            §_-NY§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
            §_-NY§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§_-o1§);
            if(_loc2_)
            {
               this.§_-62§(false);
               addr66:
               super.deActivate();
            }
            return;
         }
         §§goto(addr66);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || this)
         {
            if("CREDITS_CLOSE_BUTTON" === _loc4_)
            {
               addr43:
               §§push(0);
               if(_loc5_ || param2)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  mNextState = §_-pX§.§_-Az§;
                  if(_loc5_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr43);
      }
   }
}
