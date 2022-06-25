package § !@§
{
   import §%4§.§4!=§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §3a§.§7!+§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   import §>!7§.§&V§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §8!M§ extends §1Q§
   {
      
      public static const §>9§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>9§ = "CreditsState";
         }
      }
      
      protected var §]!"§:§&V§ = null;
      
      private var §`!F§:Boolean;
      
      private var §9!>§:Number;
      
      private var §!!G§:Number;
      
      private var §5!<§:Number;
      
      private var §3!2§:Number;
      
      private var §?s§:Number;
      
      public function §8!M§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.init();
            if(_loc1_)
            {
               §]F§ = new §4!,§(this);
               if(!_loc1_)
               {
               }
               §§goto(addr75);
            }
            §]F§.init(§5A§.§;L§.Views.View_Credits[0]);
            if(_loc1_ || _loc1_)
            {
               this.§]!"§ = new §&V§(§=w§.§ o§);
            }
         }
         addr75:
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.activate();
            this.§`!F§ = false;
            if(_loc3_ || this)
            {
               this.§?s§ = (§]F§.getItemByName("Container_Credits") as §4!=§).height + §=w§.§0i§ * §=w§.§'c§;
               §§push(this);
               §§push(this.§?s§);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(-§§pop());
               }
               §§pop().§3!2§ = §§pop();
               §=w§.§ o§.§7!E§(true);
               §=w§.resume();
               §=w§.§>@§(this.§]!"§);
               if(_loc3_ || _loc3_)
               {
                  addr73:
                  this.§]!"§.init();
               }
            }
            this.§ x§();
            if(_loc3_ || _loc1_)
            {
               §]F§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
               if(_loc3_)
               {
                  §]F§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§#!#§);
                  if(_loc3_)
                  {
                     §]F§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§8y§);
                     §]F§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     if(_loc3_ || _loc3_)
                     {
                        addr134:
                        §]F§.stage.addEventListener(Event.MOUSE_LEAVE,this.§`k§);
                        addr141:
                        this.§9!>§ = 0;
                     }
                     this.§!!G§ = 0;
                     addr147:
                     §§push(§7!+§.§9h§);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop());
                     }
                     var _loc1_:* = §§pop();
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        §§push(§§pop().slice(_loc1_.search("Server:"),_loc1_.length));
                     }
                     var _loc2_:* = §§pop();
                     if(_loc3_ || _loc2_)
                     {
                        §§push(_loc1_);
                        if(!_loc4_)
                        {
                           §§push(§§pop().slice(0,_loc1_.search("Server:")));
                        }
                        _loc1_ = §§pop();
                        if(_loc3_)
                        {
                           addr198:
                           this.§%A§(_loc1_,_loc2_);
                        }
                        return;
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr141);
               }
               §§goto(addr134);
            }
            §§goto(addr147);
         }
         §§goto(addr73);
      }
      
      protected function §%A§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §]F§.setText(param1,"TextField_Version_Number");
            if(!(_loc3_ && _loc3_))
            {
               addr30:
               §]F§.setText(param2,"TextField_Version_Number_Server");
            }
            return;
         }
         §§goto(addr30);
      }
      
      protected function § x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            AngryBirdsFP11.§ x§();
         }
      }
      
      private function §8C§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(§]F§.stage.mouseX < §]F§.stage.width - 180)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr49:
                  §§push(true);
                  if(!(_loc3_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr58:
                  §§push(false);
               }
               return §§pop();
            }
            §§goto(addr58);
         }
         §§goto(addr49);
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§`!F§);
         if(!_loc3_)
         {
            if(§§pop())
            {
               addr24:
               if(!this.§8C§(param1))
               {
                  this.§`!F§ = false;
                  if(_loc2_)
                  {
                     return;
                  }
                  addr79:
               }
               else
               {
                  §§push(this.§5!<§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - §]F§.stage.mouseY);
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr46);
                     }
                     §§goto(addr89);
                  }
                  addr46:
                  §§push(0);
                  if(_loc2_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(this);
                           §§push(this.§5!<§);
                           if(!_loc3_)
                           {
                              §§push(§§pop() - §]F§.stage.mouseY);
                           }
                           §§pop().§9!>§ = §§pop();
                           this.§5!<§ = §]F§.stage.mouseY;
                           if(!_loc3_)
                           {
                              §§goto(addr79);
                           }
                           §§goto(addr129);
                        }
                        addr124:
                        this.§5!<§ = §]F§.stage.mouseY;
                        §§goto(addr129);
                     }
                     else
                     {
                        §§push(this.§5!<§);
                        if(_loc2_ || _loc2_)
                        {
                           addr89:
                           §§push(§§pop() - §]F§.stage.mouseY);
                        }
                        §§push(0);
                     }
                     §§goto(addr129);
                  }
                  if(§§pop() < §§pop())
                  {
                     if(_loc2_)
                     {
                        §§push(this);
                        §§push(this.§5!<§);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(§§pop() - §]F§.stage.mouseY);
                        }
                        §§pop().§9!>§ = §§pop();
                        if(_loc2_)
                        {
                           §§goto(addr124);
                        }
                     }
                  }
                  §§goto(addr129);
               }
            }
            addr129:
            return;
         }
         §§goto(addr24);
      }
      
      private function §#!#§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§8C§(param1));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr43:
                     if(!§=w§.isPaused)
                     {
                        if(!_loc3_)
                        {
                           this.§`!F§ = true;
                           if(_loc3_)
                           {
                           }
                           §§goto(addr56);
                        }
                        this.§5!<§ = §]F§.stage.mouseY;
                     }
                  }
               }
               addr56:
               return;
            }
         }
         §§goto(addr43);
      }
      
      private function §8y§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§`!F§ = false;
         }
      }
      
      private function §`k§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`!F§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§8C§(param1))
            {
               if(!_loc3_)
               {
                  addr34:
                  if(param1.delta < 0)
                  {
                     if(_loc2_ || this)
                     {
                        this.§!!G§ = 16;
                        if(_loc3_ && param1)
                        {
                        }
                        §§goto(addr75);
                     }
                     addr72:
                     this.§!!G§ = -16;
                  }
                  else if(param1.delta > 0)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr72);
                     }
                  }
               }
            }
            addr75:
            return;
         }
         §§goto(addr34);
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
         §§push(_loc2_);
         if(_loc4_)
         {
            if(§§pop() != §1Q§.STATE_STATUS_RUNNING)
            {
               if(_loc4_)
               {
                  §§goto(addr33);
               }
               else
               {
                  §§goto(addr74);
               }
            }
            else if(!§=w§.isPaused)
            {
               if(_loc4_ || _loc2_)
               {
                  §=w§.controller.update(param1);
                  if(!(_loc3_ && param1))
                  {
                     (§]F§.getItemByName("Container_Credits") as §4!=§).setVisibility(true);
                     addr74:
                     this.§'!=§();
                     if(_loc4_)
                     {
                        (§]F§.getItemByName("Container_Credits") as §4!=§).y = Math.floor(-this.§3!2§);
                        if(_loc4_ || param1)
                        {
                           this.§2f§(param1);
                           addr109:
                           if(mNextState.length <= 0)
                           {
                              return §1Q§.STATE_STATUS_RUNNING;
                           }
                        }
                        §§goto(addr109);
                     }
                     return §1Q§.STATE_STATUS_COMPLETED;
                  }
               }
            }
            §§goto(addr109);
         }
         addr33:
         return _loc2_;
      }
      
      protected function §'!=§() : void
      {
      }
      
      private function §2f§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this);
         §§push(this.§3!2§);
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop() + this.§9!>§);
         }
         §§pop().§3!2§ = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this);
            §§push(this.§3!2§);
            if(_loc3_)
            {
               §§push(§§pop() + this.§!!G§);
            }
            §§pop().§3!2§ = §§pop();
            §§push(this.§`!F§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr68:
                        §§pop();
                        if(!(_loc2_ && param1))
                        {
                           §§push(Math.abs(this.§!!G§) < param1 / 15);
                           if(!_loc2_)
                           {
                              addr86:
                              if(§§pop())
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(this);
                                    §§push(this.§3!2§);
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(param1);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() / 15);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§3!2§ = §§pop();
                                 }
                                 §§goto(addr181);
                              }
                              §§push(this.§3!2§);
                              if(!_loc2_)
                              {
                                 §§push(-AngryBirdsFP11.screenHeight);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() * §=w§.§'c§);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          this.§3!2§ = this.§?s§;
                                       }
                                       else
                                       {
                                          addr150:
                                          if(this.§3!2§ > this.§?s§)
                                          {
                                             addr151:
                                             §§push(this);
                                             §§push(-AngryBirdsFP11.screenHeight);
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(§§pop() * §=w§.§'c§);
                                             }
                                             §§pop().§3!2§ = §§pop();
                                          }
                                       }
                                       §§goto(addr168);
                                    }
                                 }
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr86);
               }
               §§goto(addr68);
            }
            addr168:
            if(!this.§`!F§)
            {
               if(_loc3_)
               {
                  §§goto(addr181);
               }
            }
            §§goto(addr181);
         }
         addr181:
         §§push(this);
         §§push(this.§9!>§);
         if(!_loc2_)
         {
            §§push(§§pop() * 0.9);
         }
         §§pop().§9!>§ = §§pop();
         if(_loc3_ || this)
         {
            §§push(this);
            §§push(this.§!!G§);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() * 0.9);
            }
            §§pop().§!!G§ = §§pop();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §]F§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §]F§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#!#§);
         if(_loc1_ || this)
         {
            §]F§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§8y§);
            if(_loc1_)
            {
               addr66:
               §]F§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
               §]F§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§`k§);
            }
            (§]F§.getItemByName("Container_Credits") as §4!=§).visible = false;
            super.deActivate();
            return;
         }
         §§goto(addr66);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && this))
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(!_loc5_)
            {
               §§push(_loc4_);
               if(_loc6_ || param1)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && param1))
                     {
                        addr88:
                        §§push(0);
                        if(_loc5_ && param3)
                        {
                        }
                     }
                     else
                     {
                        addr100:
                        §§push(1);
                        if(_loc5_)
                        {
                        }
                     }
                     §§goto(addr108);
                  }
                  else
                  {
                     §§goto(addr99);
                  }
               }
               §§goto(addr99);
            }
            addr99:
            if("FULLSCREEN_BUTTON" === _loc4_)
            {
               §§goto(addr100);
            }
            else
            {
               §§push(2);
            }
            addr108:
            switch(§§pop())
            {
               case 0:
                  mNextState = §5!#§.§>9§;
                  if(!(_loc5_ && param2))
                  {
                     break;
                  }
                  addr37:
                  break;
               case 1:
                  AngryBirdsFP11.§ y§.§-!$§();
                  if(_loc6_)
                  {
                     §§goto(addr37);
                  }
            }
            return;
         }
         §§goto(addr88);
      }
   }
}
