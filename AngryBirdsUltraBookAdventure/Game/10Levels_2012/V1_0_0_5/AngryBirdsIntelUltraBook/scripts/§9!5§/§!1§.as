package §9!5§
{
   import §"m§.§;!v§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §?!7§.§8;§;
   import §^_§.§!>§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §true§.§ _§;
   
   public class §!1§ extends §?Y§
   {
      
      public static const §?h§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?h§ = "CreditsState";
         }
      }
      
      protected var §#j§:§;!v§ = null;
      
      private var §%!p§:Boolean;
      
      private var §4!5§:Number;
      
      private var §"9§:Number;
      
      private var §0Z§:Number;
      
      private var §=!F§:Number;
      
      private var §=J§:Number;
      
      public function §!1§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
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
         }
         loop0:
         while(true)
         {
            §5!P§ = new §'!^§(this);
            while(true)
            {
               §5!P§.init(§[!'§.§+@§.Views.View_Credits[0]);
               while(!_loc1_)
               {
                  continue loop0;
                  this.§#j§ = new §;!v§(§ _§.§!6§);
                  if(!(_loc1_ && this))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.activate();
         }
         loop0:
         while(true)
         {
            this.§=J§ = (§5!P§.getItemByName("Container_Credits") as §8;§).height + § _§.§-S§ * § _§.§[!Y§;
            loop1:
            while(true)
            {
               §§push(this);
               §§push(this.§=J§);
               if(!(_loc3_ && _loc1_))
               {
                  §§push(-§§pop());
               }
               §§pop().§=!F§ = §§pop();
               loop2:
               while(true)
               {
                  § _§.§!6§.§2!d§(true);
                  while(true)
                  {
                     § _§.resume();
                     while(_loc4_)
                     {
                        § _§.setController(this.§#j§);
                        while(true)
                        {
                           this.§#j§.init();
                           addr165:
                           while(true)
                           {
                              AngryBirdsFP11.playThemeMusic();
                              continue loop1;
                           }
                        }
                        loop12:
                        for(; !(_loc3_ && _loc3_); while(true)
                        {
                           if(_loc3_ && this)
                           {
                              continue loop12;
                           }
                           if(!_loc3_)
                           {
                              addr53:
                              if(!(_loc4_ || this))
                              {
                                 continue loop0;
                              }
                              if(_loc3_ && this)
                              {
                                 break;
                              }
                              this.§"9§ = 0;
                              if(_loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr31);
                           }
                           else
                           {
                              §§goto(addr92);
                           }
                        },continue loop1)
                        {
                           while(true)
                           {
                              this.§4!5§ = 0;
                              continue loop12;
                              addr31:
                              if(!(_loc4_ || _loc1_))
                              {
                                 break;
                              }
                              if(false)
                              {
                                 continue;
                              }
                              §§push(§!>§.§<4§);
                              if(_loc4_ || this)
                              {
                                 §§push(§§pop());
                              }
                              var _loc1_:* = §§pop();
                              §§push(_loc1_);
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop().slice(_loc1_.search("Server:"),_loc1_.length));
                              }
                              var _loc2_:* = §§pop();
                              if(_loc4_ || _loc1_)
                              {
                                 §§push(_loc1_);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§§pop().slice(0,_loc1_.search("Server:")));
                                 }
                                 _loc1_ = §§pop();
                                 §5!P§.setText(_loc1_,"TextField_Version_Number");
                                 addr284:
                                 if(!_loc3_)
                                 {
                                    §5!P§.setText(_loc2_,"TextField_Version_Number_Server");
                                    if(_loc3_ && _loc3_)
                                    {
                                       §§goto(addr284);
                                    }
                                    return;
                                    addr286:
                                 }
                                 addr302:
                                 §§goto(addr302);
                              }
                              §§goto(addr286);
                           }
                           while(true)
                           {
                              §5!P§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§2!C§);
                              addr126:
                              loop9:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §5!P§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§+L§);
                                    continue loop0;
                                 }
                                 §§goto(addr171);
                                 addr92:
                                 while(true)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §5!P§.stage.addEventListener(Event.MOUSE_LEAVE,this.§64§);
                                       continue loop12;
                                    }
                                    continue loop9;
                                 }
                                 §§goto(addr165);
                              }
                              continue loop2;
                              §§goto(addr31);
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §0!,§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(§5!P§.stage.mouseX < §5!P§.stage.width - 180)
            {
               if(!_loc3_)
               {
                  §§push(true);
                  if(_loc2_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr53);
      }
      
      private function §&b§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§%!p§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§0!,§(param1));
                     addr197:
                     addr198:
                     loop1:
                     for(; §§pop(); continue loop0)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§0Z§);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop() - §5!P§.stage.mouseY);
                              loop4:
                              while(true)
                              {
                                 §§push(0);
                                 while(true)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(this);
                                          §§push(this.§0Z§);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() - §5!P§.stage.mouseY);
                                          }
                                          §§pop().§4!5§ = §§pop();
                                       }
                                       addr156:
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          this.§0Z§ = §5!P§.stage.mouseY;
                                          addr120:
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             §§goto(addr156);
                                          }
                                          break;
                                       }
                                       if(!(_loc3_ || this))
                                       {
                                          return;
                                       }
                                       addr201:
                                       continue loop2;
                                    }
                                    §§push(this.§0Z§);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(§§pop() - §5!P§.stage.mouseY);
                                    }
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(0);
                                          if(_loc3_ || param1)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                addr79:
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§push(this);
                                                   §§push(this.§0Z§);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§push(§§pop() - §5!P§.stage.mouseY);
                                                   }
                                                   §§pop().§4!5§ = §§pop();
                                                   addr111:
                                                   if(_loc3_)
                                                   {
                                                      this.§0Z§ = §5!P§.stage.mouseY;
                                                      if(!(_loc2_ && param1))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr79);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr111);
                                                   }
                                                   break loop1;
                                                }
                                             }
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                    §§goto(addr120);
                                 }
                              }
                           }
                        }
                     }
                     this.§%!p§ = false;
                     §§goto(addr201);
                  }
               }
               return;
            }
            §§goto(addr197);
         }
         §§goto(addr198);
      }
      
      private function §2!C§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§0!,§(param1));
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     addr73:
                     if(!§ _§.isPaused)
                     {
                        if(_loc3_ || param1)
                        {
                           addr81:
                           this.§%!p§ = true;
                        }
                        do
                        {
                           this.§0Z§ = §5!P§.stage.mouseY;
                        }
                        while(_loc2_ && param1);
                        
                     }
                     §§goto(addr20);
                  }
                  §§goto(addr81);
               }
               addr20:
               return;
            }
         }
         §§goto(addr73);
      }
      
      private function §+L§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§%!p§ = false;
         }
      }
      
      private function §64§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%!p§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§0!,§(param1))
            {
               if(!_loc2_)
               {
                  if(param1.delta >= 0)
                  {
                     if(param1.delta > 0)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           if(_loc3_ || this)
                           {
                              this.§"9§ = -16;
                           }
                           else
                           {
                              addr86:
                              this.§"9§ = 16;
                              addr20:
                              return;
                              addr89:
                           }
                           §§goto(addr89);
                        }
                        if(!(_loc2_ && _loc2_))
                        {
                           addr75:
                        }
                     }
                     §§goto(addr20);
                  }
               }
            }
            §§goto(addr86);
         }
         §§goto(addr75);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() == §?Y§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     if(!§ _§.isPaused)
                     {
                        loop1:
                        while(true)
                        {
                           § _§.§?!]§.update(param1);
                           loop2:
                           while(!_loc4_)
                           {
                              (§5!P§.getItemByName("Container_Credits") as §8;§).setVisibility(true);
                              loop3:
                              while(true)
                              {
                                 this.readyToShowCredits();
                                 while(true)
                                 {
                                    (§5!P§.getItemByName("Container_Credits") as §8;§).y = Math.floor(-this.§=!F§);
                                    loop5:
                                    while(!(_loc4_ && _loc3_))
                                    {
                                       this.§ !Z§(param1);
                                       loop6:
                                       while(!(_loc4_ && this))
                                       {
                                          while(mNextState.length > 0)
                                          {
                                             if(_loc3_ || _loc2_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         return §?Y§.STATE_STATUS_COMPLETED;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop6;
                                             }
                                             if(_loc4_ && this)
                                             {
                                                continue loop5;
                                             }
                                             if(_loc4_ && this)
                                             {
                                                addr156:
                                                return _loc2_;
                                                addr155:
                                             }
                                             §§goto(addr26);
                                             continue loop5;
                                          }
                                          return §?Y§.STATE_STATUS_RUNNING;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr32);
                  }
               }
               §§goto(addr155);
            }
            §§goto(addr156);
         }
         §§goto(addr157);
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function § !Z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§=!F§);
            if(!_loc3_)
            {
               §§push(§§pop() + this.§4!5§);
            }
            §§pop().§=!F§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§=!F§);
               if(_loc2_)
               {
                  §§push(§§pop() + this.§"9§);
               }
               §§pop().§=!F§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§%!p§);
                  if(!_loc3_)
                  {
                     §§push(!§§pop());
                  }
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr212:
                           while(true)
                           {
                              §§push(Math.abs(this.§"9§) < param1 / 15);
                           }
                        }
                        addr211:
                     }
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§=!F§);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(-AngryBirdsFP11.§@U§);
                                    addr139:
                                    while(true)
                                    {
                                       §§push(§§pop() * § _§.§[!Y§);
                                       addr142:
                                       while(§§pop() >= §§pop())
                                       {
                                          continue loop10;
                                       }
                                       addr143:
                                       while(true)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr212);
                                       }
                                       addr161:
                                       this.§=!F§ = this.§=J§;
                                       while(true)
                                       {
                                          §§push(this.§%!p§);
                                          if(_loc3_)
                                          {
                                             continue loop6;
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          §§goto(addr211);
                                       }
                                       addr19:
                                       return;
                                    }
                                 }
                              }
                              addr133:
                           }
                           §§goto(addr173);
                        }
                     }
                  }
               }
               while(_loc2_ || this)
               {
                  §§goto(addr133);
               }
            }
         }
         §§goto(addr122);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §5!P§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§&b§);
            while(true)
            {
               §5!P§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2!C§);
               while(!(_loc1_ && this))
               {
                  §5!P§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§+L§);
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        §5!P§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                        while(true)
                        {
                           §5!P§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§64§);
                           while(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 (§5!P§.getItemByName("Container_Credits") as §8;§).visible = false;
                                 do
                                 {
                                    super.deActivate();
                                 }
                                 while(!_loc2_);
                                 
                                 if(_loc2_)
                                 {
                                    return;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr98);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param2))
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(_loc5_ || this)
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || this)
                     {
                        §§push(0);
                        if(!(_loc5_ || param1))
                        {
                           addr97:
                        }
                     }
                     else
                     {
                        addr94:
                        §§push(1);
                        if(_loc5_)
                        {
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr102);
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
               addr102:
               switch(§§pop())
               {
                  case 0:
                     mNextState = §!i§.§?h§;
                     if(_loc5_)
                     {
                        break;
                     }
                     addr31:
                     break;
                  case 1:
                     AngryBirdsFP11.§3!a§.§8!d§();
                     if(!_loc6_)
                     {
                        §§goto(addr31);
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
