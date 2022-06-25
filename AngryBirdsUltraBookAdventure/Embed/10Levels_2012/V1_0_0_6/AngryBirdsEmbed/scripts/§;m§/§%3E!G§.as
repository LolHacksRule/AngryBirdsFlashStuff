package §;m§
{
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §4C§.§1!=§;
   import §6H§.§>3§;
   import §=E§.§;S§;
   import §>K§.§9X§;
   import §`!0§.§"?§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §>!G§ extends §>3§
   {
      
      public static const §-!A§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!A§ = "CreditsState";
         }
      }
      
      protected var §1w§:§;S§ = null;
      
      private var §`O§:Boolean;
      
      private var §5s§:Number;
      
      private var §;t§:Number;
      
      private var §`!;§:Number;
      
      private var §?C§:Number;
      
      private var §"C§:Number;
      
      public function §>!G§(param1:Boolean = false, param2:String = "CreditsState")
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
               §-f§ = new §0#§(this);
               if(_loc2_ || _loc2_)
               {
                  §-f§.init(§06§.§-`§.Views.View_Credits[0]);
                  if(_loc2_ || _loc2_)
                  {
                     this.§1w§ = new §;S§(§"h§.§1C§);
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
               this.§"C§ = (§-f§.getItemByName("Container_Credits") as §1!=§).height + §"h§.§0!$§ * §"h§.§for§;
               if(!(_loc3_ && this))
               {
                  §§push(this);
                  §§push(this.§"C§);
                  if(!_loc3_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§?C§ = §§pop();
                  addr51:
                  §"h§.§1C§.§]!!§(true);
                  §"h§.resume();
                  §"h§.§;j§(this.§1w§);
                  if(!_loc3_)
                  {
                     this.§1w§.init();
                     addr66:
                     AngryBirdsFP11.§'!!§();
                     §-f§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
                     §-f§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§7]§);
                     if(!(_loc3_ && this))
                     {
                        §-f§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§5o§);
                        addr106:
                        §-f§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     }
                     §-f§.stage.addEventListener(Event.MOUSE_LEAVE,this.§5t§);
                  }
                  this.§5s§ = 0;
                  if(_loc4_ || this)
                  {
                     this.§;t§ = 0;
                  }
                  §§push(§9X§.§ G§);
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
                        §-f§.setText(_loc1_,"TextField_Version_Number");
                        if(!(_loc3_ && _loc3_))
                        {
                           §-f§.setText(_loc2_,"TextField_Version_Number_Server");
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
      
      private function §29§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(§-f§.stage.mouseX < §-f§.stage.width - 180)
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
         §§push(this.§`O§);
         if(_loc2_)
         {
            if(§§pop())
            {
               addr24:
               if(!this.§29§(param1))
               {
                  this.§`O§ = false;
                  return;
               }
               §§push(this.§`!;§);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() - §-f§.stage.mouseY);
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
                              §§push(this.§`!;§);
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(§§pop() - §-f§.stage.mouseY);
                              }
                              §§pop().§5s§ = §§pop();
                              if(_loc2_ || param1)
                              {
                                 this.§`!;§ = §-f§.stage.mouseY;
                              }
                              else
                              {
                                 addr132:
                                 this.§`!;§ = §-f§.stage.mouseY;
                              }
                           }
                           §§goto(addr137);
                        }
                        else
                        {
                           §§push(this.§`!;§);
                           if(_loc2_)
                           {
                              addr111:
                              §§push(§§pop() - §-f§.stage.mouseY);
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
                           §§push(this.§`!;§);
                           if(_loc2_)
                           {
                              §§push(§§pop() - §-f§.stage.mouseY);
                           }
                           §§pop().§5s§ = §§pop();
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
      
      private function §7]§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§29§(param1));
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_ || param1)
                  {
                     addr58:
                     if(!§"h§.isPaused)
                     {
                        if(!_loc2_)
                        {
                        }
                     }
                     §§goto(addr71);
                  }
                  this.§`O§ = true;
                  if(_loc2_)
                  {
                     this.§`!;§ = §-f§.stage.mouseY;
                  }
               }
               addr71:
               return;
            }
         }
         §§goto(addr58);
      }
      
      private function §5o§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`O§ = false;
         }
      }
      
      private function §5t§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§`O§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§29§(param1))
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
                        this.§;t§ = -16;
                     }
                  }
                  §§goto(addr80);
               }
               this.§;t§ = 16;
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
               if(§§pop() != §>3§.STATE_STATUS_RUNNING)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr35);
                  }
               }
               if(!§"h§.isPaused)
               {
                  if(!_loc3_)
                  {
                     §"h§.controller.update(param1);
                     if(!_loc3_)
                     {
                        (§-f§.getItemByName("Container_Credits") as §1!=§).setVisibility(true);
                        addr64:
                        this.§`P§();
                     }
                     (§-f§.getItemByName("Container_Credits") as §1!=§).y = Math.floor(-this.§?C§);
                     if(_loc4_ || this)
                     {
                        this.§3!8§(param1);
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
                        return §>3§.STATE_STATUS_RUNNING;
                     }
                     addr115:
                     return §>3§.STATE_STATUS_COMPLETED;
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
      
      protected function §`P§() : void
      {
      }
      
      private function §3!8§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§?C§);
            if(!_loc3_)
            {
               §§push(§§pop() + this.§5s§);
            }
            §§pop().§?C§ = §§pop();
            §§push(this);
            §§push(this.§?C§);
            if(_loc2_)
            {
               §§push(§§pop() + this.§;t§);
            }
            §§pop().§?C§ = §§pop();
            §§push(this.§`O§);
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
                           §§push(Math.abs(this.§;t§) < param1 / 15);
                           if(_loc2_)
                           {
                              addr65:
                              if(§§pop())
                              {
                                 §§push(this);
                                 §§push(this.§?C§);
                                 if(_loc2_)
                                 {
                                    §§push(param1);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() / 15);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§?C§ = §§pop();
                                 if(_loc2_)
                                 {
                                    addr90:
                                    §§push(this.§?C§);
                                    if(_loc2_ || param1)
                                    {
                                       §§push(-AngryBirdsFP11.screenHeight);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(§§pop() * §"h§.§for§);
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr119:
                                             if(§§pop() < §§pop())
                                             {
                                                if(_loc2_)
                                                {
                                                   addr122:
                                                   this.§?C§ = this.§"C§;
                                                   addr159:
                                                   addr161:
                                                   if(!this.§`O§)
                                                   {
                                                      addr162:
                                                      §§push(this);
                                                      §§push(this.§5s§);
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§push(§§pop() * 0.9);
                                                      }
                                                      §§pop().§5s§ = §§pop();
                                                      if(_loc2_)
                                                      {
                                                         addr177:
                                                         §§push(this);
                                                         §§push(this.§;t§);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop() * 0.9);
                                                         }
                                                         §§pop().§;t§ = §§pop();
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
                                                if(this.§?C§ > this.§"C§)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      addr134:
                                                      §§push(this);
                                                      §§push(-AngryBirdsFP11.screenHeight);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * §"h§.§for§);
                                                      }
                                                      §§pop().§?C§ = §§pop();
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
         §-f§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         if(_loc2_)
         {
            §-f§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7]§);
            if(!(_loc1_ && this))
            {
               §-f§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§5o§);
               if(!_loc1_)
               {
                  §-f§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(_loc2_ || this)
                  {
                     §-f§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§5t§);
                     addr73:
                     if(_loc2_ || _loc2_)
                     {
                        (§-f§.getItemByName("Container_Credits") as §1!=§).visible = false;
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
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
                     mNextState = §1!§.§-!A§;
                     if(_loc5_)
                     {
                        break;
                     }
                     addr36:
                     break;
                  case 1:
                     AngryBirdsFP11.§0P§.§<h§();
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
