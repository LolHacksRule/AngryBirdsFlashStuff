package §1!F§
{
   import § !r§.§`![§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §5#§.§]]§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §?!M§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "CreditsState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            STATE_NAME = "CreditsState";
         }
      }
      
      protected var §7!D§:§]]§ = null;
      
      private var §8!I§:Boolean;
      
      private var §"!9§:Number;
      
      private var §?!j§:Number;
      
      private var §2&§:Number;
      
      private var §&!]§:Number;
      
      private var §2N§:Number;
      
      public function §?!M§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            if(_loc2_ || _loc2_)
            {
               §+!$§ = new §2U§(this);
               if(_loc2_ || this)
               {
                  addr60:
                  §+!$§.init(§=!Z§.§;K§.Views.View_Credits[0]);
                  if(!_loc1_)
                  {
                     this.§7!D§ = new §]]§(§'!V§.§1!2§);
                  }
               }
            }
            return;
         }
         §§goto(addr60);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            super.activate();
            this.§2N§ = (§+!$§.getItemByName("Container_Credits") as §[!s§).height + §'!V§.§6k§ * §'!V§.§'A§;
            §§push(this);
            §§push(this.§2N§);
            if(_loc3_)
            {
               §§push(-§§pop());
            }
            §§pop().§&!]§ = §§pop();
            if(!_loc4_)
            {
               §'!V§.§1!2§.§-I§(true);
               §'!V§.resume();
               if(_loc3_ || _loc1_)
               {
                  §'!V§.§>_§(this.§7!D§);
                  this.§7!D§.init();
                  AngryBirdsFP11.§?!7§();
                  §+!$§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
                  §+!$§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
                  §+!$§.stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
                  §+!$§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  addr108:
                  §+!$§.stage.addEventListener(Event.MOUSE_LEAVE,this.§4E§);
               }
               this.§"!9§ = 0;
            }
            this.§?!j§ = 0;
            §§push(§`![§.§38§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop());
            }
            var _loc1_:* = §§pop();
            §§push(_loc1_);
            if(_loc3_ || _loc1_)
            {
               §§push(§§pop().slice(_loc1_.search("Server:"),_loc1_.length));
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || _loc1_)
            {
               §§push(_loc1_);
               if(_loc3_)
               {
                  §§push(§§pop().slice(0,_loc1_.search("Server:")));
               }
               _loc1_ = §§pop();
               if(_loc3_)
               {
                  addr177:
                  §+!$§.setText(_loc1_,"TextField_Version_Number");
                  if(!_loc4_)
                  {
                     §+!$§.setText(_loc2_,"TextField_Version_Number_Server");
                  }
               }
               return;
            }
            §§goto(addr177);
         }
         §§goto(addr108);
      }
      
      private function §!!`§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§+!$§.stage.mouseX < §+!$§.stage.width - 180)
            {
               if(_loc2_ || param1)
               {
                  addr44:
                  §§push(true);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  §§push(false);
               }
               return §§pop();
            }
            §§goto(addr48);
         }
         §§goto(addr44);
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§8!I§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     addr38:
                     if(!this.§!!`§(param1))
                     {
                        if(_loc2_ || _loc3_)
                        {
                           this.§8!I§ = false;
                           if(_loc2_ || _loc2_)
                           {
                              return;
                           }
                           addr59:
                           §§push(this.§2&§);
                           if(_loc2_)
                           {
                              §§push(§§pop() - §+!$§.stage.mouseY);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(0);
                                 if(!(_loc3_ && this))
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       §§push(this);
                                       §§push(this.§2&§);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(§§pop() - §+!$§.stage.mouseY);
                                       }
                                       §§pop().§"!9§ = §§pop();
                                       this.§2&§ = §+!$§.stage.mouseY;
                                       §§goto(addr149);
                                    }
                                    else
                                    {
                                       §§push(this.§2&§);
                                       if(_loc2_)
                                       {
                                          addr132:
                                          §§push(§§pop() - §+!$§.stage.mouseY);
                                          §§push(0);
                                       }
                                       §§goto(addr132);
                                    }
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    addr134:
                                    §§push(this);
                                    §§push(this.§2&§);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() - §+!$§.stage.mouseY);
                                    }
                                    §§pop().§"!9§ = §§pop();
                                    addr144:
                                    this.§2&§ = §+!$§.stage.mouseY;
                                 }
                                 §§goto(addr149);
                              }
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr134);
               }
               addr149:
               return;
            }
            §§goto(addr38);
         }
         §§goto(addr134);
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§!!`§(param1));
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     §§goto(addr64);
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr64);
         }
         addr64:
         if(!§'!V§.§=!A§)
         {
            if(!(_loc2_ && _loc2_))
            {
               addr72:
               this.§8!I§ = true;
               if(!_loc3_)
               {
               }
               §§goto(addr82);
            }
            this.§2&§ = §+!$§.stage.mouseY;
            §§goto(addr82);
         }
         addr82:
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!I§ = false;
         }
      }
      
      private function §4E§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8!I§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§!!`§(param1))
            {
               if(_loc3_ || this)
               {
                  if(param1.delta < 0)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        this.§?!j§ = 16;
                        if(_loc2_ && _loc3_)
                        {
                           addr88:
                           this.§?!j§ = -16;
                        }
                        §§goto(addr91);
                     }
                     addr91:
                     return;
                  }
                  if(param1.delta > 0)
                  {
                     if(_loc3_ || param1)
                     {
                     }
                  }
                  §§goto(addr88);
                  §§goto(addr88);
               }
            }
         }
         §§goto(addr88);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc3_ && param1))
         {
            if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
            {
               return _loc2_;
            }
            else
            {
               if(!§'!V§.§=!A§)
               {
                  if(!_loc3_)
                  {
                     §'!V§.§?!G§.update(param1);
                     if(!(_loc3_ && _loc2_))
                     {
                        (§+!$§.getItemByName("Container_Credits") as §[!s§).setVisibility(true);
                     }
                     this.§;,§();
                  }
                  (§+!$§.getItemByName("Container_Credits") as §[!s§).y = Math.floor(-this.§&!]§);
                  if(_loc4_)
                  {
                     this.§]!>§(param1);
                     if(_loc4_)
                     {
                        addr112:
                        if(mNextState.length <= 0)
                        {
                           return §;!!§.STATE_STATUS_RUNNING;
                        }
                     }
                  }
                  return §;!!§.STATE_STATUS_COMPLETED;
               }
               §§goto(addr112);
            }
         }
         return §§pop();
      }
      
      protected function §;,§() : void
      {
      }
      
      private function §]!>§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this);
         §§push(this.§&!]§);
         if(_loc2_)
         {
            §§push(§§pop() + this.§"!9§);
         }
         §§pop().§&!]§ = §§pop();
         §§push(this);
         §§push(this.§&!]§);
         if(_loc2_ || _loc2_)
         {
            §§push(§§pop() + this.§?!j§);
         }
         §§pop().§&!]§ = §§pop();
         if(!_loc3_)
         {
            §§push(this.§8!I§);
            if(_loc2_)
            {
               §§push(!§§pop());
               if(_loc2_)
               {
                  addr48:
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(_loc2_ || _loc2_)
                        {
                           §§push(Math.abs(this.§?!j§) < param1 / 15);
                           if(!_loc3_)
                           {
                              addr70:
                              if(§§pop())
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    addr78:
                                    §§push(this);
                                    §§push(this.§&!]§);
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(param1);
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(§§pop() / 15);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§&!]§ = §§pop();
                                 }
                                 §§goto(addr188);
                              }
                              §§push(this.§&!]§);
                              if(_loc2_)
                              {
                                 §§push(-AngryBirdsFP11.screenHeight);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() * §'!V§.§'A§);
                                    if(_loc2_ || _loc2_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          this.§&!]§ = this.§2N§;
                                       }
                                       else
                                       {
                                          addr139:
                                          if(this.§&!]§ > this.§2N§)
                                          {
                                             §§push(this);
                                             §§push(-AngryBirdsFP11.screenHeight);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() * §'!V§.§'A§);
                                             }
                                             §§pop().§&!]§ = §§pop();
                                             if(_loc2_)
                                             {
                                                addr162:
                                                if(this.§8!I§)
                                                {
                                                }
                                                §§goto(addr188);
                                             }
                                             §§push(this);
                                             §§push(this.§"!9§);
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push(§§pop() * 0.9);
                                             }
                                             §§pop().§"!9§ = §§pop();
                                             if(!_loc3_)
                                             {
                                                §§push(this);
                                                §§push(this.§?!j§);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() * 0.9);
                                                }
                                                §§pop().§?!j§ = §§pop();
                                             }
                                             §§goto(addr188);
                                          }
                                       }
                                       §§goto(addr162);
                                    }
                                 }
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr78);
                     }
                  }
                  §§goto(addr70);
               }
               §§goto(addr162);
            }
            §§goto(addr48);
         }
         addr188:
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §+!$§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         if(!_loc2_)
         {
            §+!$§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
            if(!_loc2_)
            {
               addr44:
               §+!$§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
               §+!$§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
               if(!(_loc2_ && this))
               {
                  §+!$§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§4E§);
                  if(!_loc2_)
                  {
                     (§+!$§.getItemByName("Container_Credits") as §[!s§).visible = false;
                  }
               }
               super.deActivate();
            }
            return;
         }
         §§goto(addr44);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param3)
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(_loc6_)
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_ || param1)
                     {
                        addr78:
                        §§push(0);
                        if(!_loc6_)
                        {
                        }
                     }
                     else
                     {
                        addr85:
                        §§push(1);
                        if(_loc5_ && param2)
                        {
                        }
                     }
                     §§goto(addr98);
                  }
                  else
                  {
                     §§goto(addr84);
                  }
               }
               §§goto(addr84);
            }
            addr84:
            if("FULLSCREEN_BUTTON" === _loc4_)
            {
               §§goto(addr85);
            }
            else
            {
               §§push(2);
            }
            addr98:
            switch(§§pop())
            {
               case 0:
                  mNextState = §#!@§.STATE_NAME;
                  if(_loc6_)
                  {
                     break;
                  }
                  addr32:
                  break;
               case 1:
                  AngryBirdsFP11.§`!d§.§!5§();
                  if(!_loc5_)
                  {
                     §§goto(addr32);
                  }
            }
            return;
         }
         §§goto(addr78);
      }
   }
}
