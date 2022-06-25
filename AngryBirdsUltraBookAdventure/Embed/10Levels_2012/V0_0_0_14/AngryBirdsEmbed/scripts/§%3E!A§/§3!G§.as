package §>!A§
{
   import §"!&§.§#!,§;
   import §+!"§.§5!<§;
   import §-!F§.§^h§;
   import §5H§.§[k§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §@!H§.§`L§;
   import §class§.§3C§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §3!G§ extends §#!,§
   {
      
      public static const §?x§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?x§ = "CreditsState";
         }
      }
      
      protected var §6=§:§`L§ = null;
      
      private var §^?§:Boolean;
      
      private var §+!<§:Number;
      
      private var § 0§:Number;
      
      private var §+z§:Number;
      
      private var §^S§:Number;
      
      private var §2!E§:Number;
      
      public function §3!G§(param1:Boolean = false, param2:String = "CreditsState")
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
               §[=§ = new §^3§(this);
               if(_loc2_ || _loc2_)
               {
                  §[=§.init(§!I§.§7y§.Views.View_Credits[0]);
                  if(_loc2_ || _loc2_)
                  {
                     this.§6=§ = new §`L§(§[k§.§&@§);
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
               this.§2!E§ = (§[=§.getItemByName("Container_Credits") as §3C§).height + §[k§.§%i§ * §[k§.§@$§;
               if(!(_loc3_ && this))
               {
                  §§push(this);
                  §§push(this.§2!E§);
                  if(!_loc3_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§^S§ = §§pop();
                  addr51:
                  §[k§.§&@§.§`!G§(true);
                  §[k§.resume();
                  §[k§.§^L§(this.§6=§);
                  if(!_loc3_)
                  {
                     this.§6=§.init();
                     addr66:
                     AngryBirdsFP11.§<!#§();
                     §[=§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
                     §[=§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§%!E§);
                     if(!(_loc3_ && this))
                     {
                        §[=§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§<!F§);
                        addr106:
                        §[=§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     }
                     §[=§.stage.addEventListener(Event.MOUSE_LEAVE,this.§7-§);
                  }
                  this.§+!<§ = 0;
                  if(_loc4_ || this)
                  {
                     this.§ 0§ = 0;
                  }
                  §§push(§5!<§.§!!0§);
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
                        §[=§.setText(_loc1_,"TextField_Version_Number");
                        if(!(_loc3_ && _loc3_))
                        {
                           §[=§.setText(_loc2_,"TextField_Version_Number_Server");
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
      
      private function §,!;§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(§[=§.stage.mouseX < §[=§.stage.width - 180)
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
         §§push(this.§^?§);
         if(_loc2_)
         {
            if(§§pop())
            {
               addr24:
               if(!this.§,!;§(param1))
               {
                  this.§^?§ = false;
                  return;
               }
               §§push(this.§+z§);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() - §[=§.stage.mouseY);
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
                              §§push(this.§+z§);
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(§§pop() - §[=§.stage.mouseY);
                              }
                              §§pop().§+!<§ = §§pop();
                              if(_loc2_ || param1)
                              {
                                 this.§+z§ = §[=§.stage.mouseY;
                              }
                              else
                              {
                                 addr132:
                                 this.§+z§ = §[=§.stage.mouseY;
                              }
                           }
                           §§goto(addr137);
                        }
                        else
                        {
                           §§push(this.§+z§);
                           if(_loc2_)
                           {
                              addr111:
                              §§push(§§pop() - §[=§.stage.mouseY);
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
                           §§push(this.§+z§);
                           if(_loc2_)
                           {
                              §§push(§§pop() - §[=§.stage.mouseY);
                           }
                           §§pop().§+!<§ = §§pop();
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
      
      private function §%!E§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§,!;§(param1));
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_ || param1)
                  {
                     addr58:
                     if(!§[k§.isPaused)
                     {
                        if(!_loc2_)
                        {
                        }
                     }
                     §§goto(addr71);
                  }
                  this.§^?§ = true;
                  if(_loc2_)
                  {
                     this.§+z§ = §[=§.stage.mouseY;
                  }
               }
               addr71:
               return;
            }
         }
         §§goto(addr58);
      }
      
      private function §<!F§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^?§ = false;
         }
      }
      
      private function §7-§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§^?§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§,!;§(param1))
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
                        this.§ 0§ = -16;
                     }
                  }
                  §§goto(addr80);
               }
               this.§ 0§ = 16;
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
               if(§§pop() != §#!,§.STATE_STATUS_RUNNING)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr35);
                  }
               }
               if(!§[k§.isPaused)
               {
                  if(!_loc3_)
                  {
                     §[k§.controller.update(param1);
                     if(!_loc3_)
                     {
                        (§[=§.getItemByName("Container_Credits") as §3C§).setVisibility(true);
                        addr64:
                        this.§3z§();
                     }
                     (§[=§.getItemByName("Container_Credits") as §3C§).y = Math.floor(-this.§^S§);
                     if(_loc4_ || this)
                     {
                        this.§?L§(param1);
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
                        return §#!,§.STATE_STATUS_RUNNING;
                     }
                     addr115:
                     return §#!,§.STATE_STATUS_COMPLETED;
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
      
      protected function §3z§() : void
      {
      }
      
      private function §?L§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§^S§);
            if(!_loc3_)
            {
               §§push(§§pop() + this.§+!<§);
            }
            §§pop().§^S§ = §§pop();
            §§push(this);
            §§push(this.§^S§);
            if(_loc2_)
            {
               §§push(§§pop() + this.§ 0§);
            }
            §§pop().§^S§ = §§pop();
            §§push(this.§^?§);
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
                           §§push(Math.abs(this.§ 0§) < param1 / 15);
                           if(_loc2_)
                           {
                              addr65:
                              if(§§pop())
                              {
                                 §§push(this);
                                 §§push(this.§^S§);
                                 if(_loc2_)
                                 {
                                    §§push(param1);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() / 15);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§^S§ = §§pop();
                                 if(_loc2_)
                                 {
                                    addr90:
                                    §§push(this.§^S§);
                                    if(_loc2_ || param1)
                                    {
                                       §§push(-AngryBirdsFP11.screenHeight);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(§§pop() * §[k§.§@$§);
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr119:
                                             if(§§pop() < §§pop())
                                             {
                                                if(_loc2_)
                                                {
                                                   addr122:
                                                   this.§^S§ = this.§2!E§;
                                                   addr159:
                                                   addr161:
                                                   if(!this.§^?§)
                                                   {
                                                      addr162:
                                                      §§push(this);
                                                      §§push(this.§+!<§);
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§push(§§pop() * 0.9);
                                                      }
                                                      §§pop().§+!<§ = §§pop();
                                                      if(_loc2_)
                                                      {
                                                         addr177:
                                                         §§push(this);
                                                         §§push(this.§ 0§);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop() * 0.9);
                                                         }
                                                         §§pop().§ 0§ = §§pop();
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
                                                if(this.§^S§ > this.§2!E§)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      addr134:
                                                      §§push(this);
                                                      §§push(-AngryBirdsFP11.screenHeight);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * §[k§.§@$§);
                                                      }
                                                      §§pop().§^S§ = §§pop();
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
         §[=§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         if(_loc2_)
         {
            §[=§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%!E§);
            if(!(_loc1_ && this))
            {
               §[=§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§<!F§);
               if(!_loc1_)
               {
                  §[=§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(_loc2_ || this)
                  {
                     §[=§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§7-§);
                     addr73:
                     if(_loc2_ || _loc2_)
                     {
                        (§[=§.getItemByName("Container_Credits") as §3C§).visible = false;
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
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
                     mNextState = §!!=§.§?x§;
                     if(_loc5_)
                     {
                        break;
                     }
                     addr36:
                     break;
                  case 1:
                     AngryBirdsFP11.§,s§.§8!1§();
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
