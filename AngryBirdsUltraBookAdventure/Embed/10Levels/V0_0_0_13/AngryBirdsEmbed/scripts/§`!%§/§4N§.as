package §`!%§
{
   import §"!5§.§,!!§;
   import §'X§.§9[§;
   import §0!<§.§#y§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=^§.§`f§;
   import §?!D§.§6s§;
   import §@s§.§'!0§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §4N§ extends §9[§
   {
      
      public static const §0!7§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0!7§ = "CreditsState";
         }
      }
      
      protected var §2U§:§6s§ = null;
      
      private var §@!=§:Boolean;
      
      private var §^!F§:Number;
      
      private var §[! §:Number;
      
      private var §+_§:Number;
      
      private var §]!@§:Number;
      
      private var §?!G§:Number;
      
      public function §4N§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
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
            if(!(_loc1_ && _loc1_))
            {
               §#!4§ = new §!!1§(this);
               if(_loc2_ || _loc2_)
               {
                  §#!4§.init(§0!&§.§'^§.Views.View_Credits[0]);
                  if(_loc2_ || _loc2_)
                  {
                     this.§2U§ = new §6s§(§,!!§.§;4§);
                  }
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.activate();
            if(_loc4_)
            {
               this.§?!G§ = (§#!4§.getItemByName("Container_Credits") as §`f§).height + §,!!§.§3L§ * §,!!§.§,`§;
               if(!(_loc3_ && this))
               {
                  §§push(this);
                  §§push(this.§?!G§);
                  if(!_loc3_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§]!@§ = §§pop();
                  addr51:
                  §,!!§.§;4§.§69§(true);
                  §,!!§.resume();
                  §,!!§.§ ]§(this.§2U§);
                  if(!_loc3_)
                  {
                     this.§2U§.init();
                     addr66:
                     AngryBirdsFP11.§'!F§();
                     §#!4§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
                     §#!4§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§42§);
                     if(!(_loc3_ && this))
                     {
                        §#!4§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§5!9§);
                        addr106:
                        §#!4§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     }
                     §#!4§.stage.addEventListener(Event.MOUSE_LEAVE,this.§?2§);
                  }
                  this.§^!F§ = 0;
                  if(_loc4_ || this)
                  {
                     this.§[! § = 0;
                  }
                  §§push(§#y§.§?[§);
                  if(_loc4_ || this)
                  {
                     §§push(§§pop());
                  }
                  var _loc1_:* = §§pop();
                  §§push(_loc1_);
                  if(_loc4_)
                  {
                     §§push(§§pop().slice(_loc1_.search("Server:"),_loc1_.length));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_ || _loc3_)
                  {
                     §§push(_loc1_);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(§§pop().slice(0,_loc1_.search("Server:")));
                     }
                     _loc1_ = §§pop();
                     if(_loc4_)
                     {
                        addr189:
                        §#!4§.setText(_loc1_,"TextField_Version_Number");
                        if(!(_loc3_ && _loc3_))
                        {
                           §#!4§.setText(_loc2_,"TextField_Version_Number_Server");
                        }
                     }
                     return;
                  }
                  §§goto(addr189);
               }
               §§goto(addr66);
            }
            §§goto(addr106);
         }
         §§goto(addr51);
      }
      
      private function §,Z§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(§#!4§.stage.mouseX < §#!4§.stage.width - 180)
            {
               if(_loc2_ || _loc3_)
               {
                  addr49:
                  §§push(true);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  §§push(false);
               }
               return §§pop();
            }
            §§goto(addr53);
         }
         §§goto(addr49);
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§@!=§);
         if(_loc2_)
         {
            if(§§pop())
            {
               addr24:
               if(!this.§,Z§(param1))
               {
                  this.§@!=§ = false;
                  return;
               }
               §§push(this.§+_§);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() - §#!4§.stage.mouseY);
                  if(_loc2_)
                  {
                     §§push(0);
                     if(!(_loc3_ && _loc2_))
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc2_)
                           {
                              §§push(this);
                              §§push(this.§+_§);
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(§§pop() - §#!4§.stage.mouseY);
                              }
                              §§pop().§^!F§ = §§pop();
                              if(_loc2_ || param1)
                              {
                                 this.§+_§ = §#!4§.stage.mouseY;
                              }
                              else
                              {
                                 addr132:
                                 this.§+_§ = §#!4§.stage.mouseY;
                              }
                           }
                           §§goto(addr137);
                        }
                        else
                        {
                           §§push(this.§+_§);
                           if(_loc2_)
                           {
                              addr111:
                              §§push(§§pop() - §#!4§.stage.mouseY);
                              §§push(0);
                           }
                           §§goto(addr111);
                        }
                     }
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(this);
                           §§push(this.§+_§);
                           if(_loc2_)
                           {
                              §§push(§§pop() - §#!4§.stage.mouseY);
                           }
                           §§pop().§^!F§ = §§pop();
                           if(!_loc3_)
                           {
                              §§goto(addr132);
                           }
                        }
                     }
                     §§goto(addr137);
                  }
               }
               §§goto(addr111);
            }
            addr137:
            return;
         }
         §§goto(addr24);
      }
      
      private function §42§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§,Z§(param1));
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_ || param1)
                  {
                     addr58:
                     if(!§,!!§.isPaused)
                     {
                        if(!_loc2_)
                        {
                        }
                     }
                     §§goto(addr71);
                  }
                  this.§@!=§ = true;
                  if(_loc2_)
                  {
                     this.§+_§ = §#!4§.stage.mouseY;
                  }
               }
               addr71:
               return;
            }
         }
         §§goto(addr58);
      }
      
      private function §5!9§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@!=§ = false;
         }
      }
      
      private function §?2§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§@!=§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§,Z§(param1))
            {
               if(_loc2_)
               {
                  if(param1.delta < 0)
                  {
                     if(_loc2_ || this)
                     {
                     }
                  }
                  else if(param1.delta > 0)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        this.§[! § = -16;
                     }
                  }
                  §§goto(addr80);
               }
               this.§[! § = 16;
               if(_loc3_ && this)
               {
               }
            }
         }
         addr80:
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() != §9[§.STATE_STATUS_RUNNING)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr35);
                  }
               }
               if(!§,!!§.isPaused)
               {
                  if(!_loc3_)
                  {
                     §,!!§.controller.update(param1);
                     if(!_loc3_)
                     {
                        (§#!4§.getItemByName("Container_Credits") as §`f§).setVisibility(true);
                        addr64:
                        this.§]! §();
                     }
                     (§#!4§.getItemByName("Container_Credits") as §`f§).y = Math.floor(-this.§]!@§);
                     if(_loc4_ || this)
                     {
                        this.§^5§(param1);
                        if(_loc4_ || param1)
                        {
                           addr104:
                           if(mNextState.length > 0)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 §§goto(addr115);
                              }
                           }
                        }
                        return §9[§.STATE_STATUS_RUNNING;
                     }
                     addr115:
                     return §9[§.STATE_STATUS_COMPLETED;
                  }
                  §§goto(addr64);
               }
               §§goto(addr104);
            }
            §§goto(addr35);
         }
         addr35:
         return _loc2_;
      }
      
      protected function §]! §() : void
      {
      }
      
      private function §^5§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§]!@§);
            if(!_loc3_)
            {
               §§push(§§pop() + this.§^!F§);
            }
            §§pop().§]!@§ = §§pop();
            §§push(this);
            §§push(this.§]!@§);
            if(_loc2_)
            {
               §§push(§§pop() + this.§[! §);
            }
            §§pop().§]!@§ = §§pop();
            §§push(this.§@!=§);
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§pop();
                        if(_loc2_)
                        {
                           §§push(Math.abs(this.§[! §) < param1 / 15);
                           if(_loc2_)
                           {
                              addr65:
                              if(§§pop())
                              {
                                 §§push(this);
                                 §§push(this.§]!@§);
                                 if(_loc2_)
                                 {
                                    §§push(param1);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() / 15);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§]!@§ = §§pop();
                                 if(_loc2_)
                                 {
                                    addr90:
                                    §§push(this.§]!@§);
                                    if(_loc2_ || param1)
                                    {
                                       §§push(-AngryBirdsFP11.screenHeight);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(§§pop() * §,!!§.§,`§);
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr119:
                                             if(§§pop() < §§pop())
                                             {
                                                if(_loc2_)
                                                {
                                                   addr122:
                                                   this.§]!@§ = this.§?!G§;
                                                   addr159:
                                                   addr161:
                                                   if(!this.§@!=§)
                                                   {
                                                      addr162:
                                                      §§push(this);
                                                      §§push(this.§^!F§);
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§push(§§pop() * 0.9);
                                                      }
                                                      §§pop().§^!F§ = §§pop();
                                                      if(_loc2_)
                                                      {
                                                         addr177:
                                                         §§push(this);
                                                         §§push(this.§[! §);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop() * 0.9);
                                                         }
                                                         §§pop().§[! § = §§pop();
                                                      }
                                                   }
                                                   return;
                                                   addr126:
                                                }
                                                §§goto(addr162);
                                             }
                                             else
                                             {
                                                addr131:
                                                if(this.§]!@§ > this.§?!G§)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      addr134:
                                                      §§push(this);
                                                      §§push(-AngryBirdsFP11.screenHeight);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * §,!!§.§,`§);
                                                      }
                                                      §§pop().§]!@§ = §§pop();
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr177);
                                                }
                                             }
                                             §§goto(addr159);
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr119);
                                    }
                                    §§goto(addr131);
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr126);
                     }
                  }
               }
            }
            §§goto(addr65);
         }
         §§goto(addr122);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §#!4§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         if(_loc2_)
         {
            §#!4§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§42§);
            if(!(_loc1_ && this))
            {
               §#!4§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§5!9§);
               if(!_loc1_)
               {
                  §#!4§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(_loc2_ || this)
                  {
                     §#!4§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§?2§);
                     addr73:
                     if(_loc2_ || _loc2_)
                     {
                        (§#!4§.getItemByName("Container_Credits") as §`f§).visible = false;
                        if(_loc1_ && _loc1_)
                        {
                        }
                        §§goto(addr113);
                     }
                     super.deActivate();
                  }
               }
               §§goto(addr73);
            }
            addr113:
            return;
         }
         §§goto(addr73);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && this))
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(!(_loc6_ && param2))
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(0);
                        if(_loc6_ && this)
                        {
                           addr102:
                        }
                     }
                     else
                     {
                        addr94:
                        §§push(1);
                        if(!(_loc6_ && param3))
                        {
                           §§goto(addr102);
                        }
                     }
                     §§goto(addr107);
                  }
                  else
                  {
                     addr92:
                     §§push("FULLSCREEN_BUTTON");
                     §§push(_loc4_);
                  }
                  §§goto(addr94);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr94);
               }
               else
               {
                  §§push(2);
               }
               addr107:
               switch(§§pop())
               {
                  case 0:
                     mNextState = §9!@§.§0!7§;
                     if(_loc5_)
                     {
                        break;
                     }
                     addr36:
                     break;
                  case 1:
                     AngryBirdsFP11.§@t§.§"&§();
                     if(_loc5_ || param1)
                     {
                        §§goto(addr36);
                     }
               }
               return;
            }
            §§goto(addr92);
         }
         §§goto(addr94);
      }
   }
}
