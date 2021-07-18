package §0![§
{
   import §%c§.§=!X§;
   import §'!A§.§-!S§;
   import §'p§.§`!T§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §;'§.§7"'§;
   import §=!M§.§9!P§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §'"6§ extends §5y§
   {
      
      public static const §'=§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'=§ = "CreditsState";
         }
      }
      
      protected var §?u§:§7"'§ = null;
      
      private var §+p§:Boolean;
      
      private var §4F§:Number;
      
      private var §>!b§:Number;
      
      private var §!!U§:Number;
      
      private var §]!r§:Number;
      
      private var §2",§:Number;
      
      public function §'"6§(param1:Boolean = false, param2:String = "CreditsState")
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
         if(_loc2_ || _loc2_)
         {
            super.init();
            while(true)
            {
               §?E§ = new §'s§(this);
               loop1:
               while(_loc2_ || this)
               {
                  while(true)
                  {
                     §?E§.init(§`7§.§>"?§.Views.View_Credits[0]);
                     do
                     {
                        this.§?u§ = new §7"'§(§=!X§.§!'§);
                     }
                     while(!(_loc2_ || _loc2_));
                     
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr89);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.activate();
            while(true)
            {
               this.§2",§ = (§?E§.getItemByName("Container_Credits") as §`!T§).height + §=!X§.§5!P§ * §=!X§.§ !4§;
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push(this.§2",§);
                  if(_loc4_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§]!r§ = §§pop();
                  while(true)
                  {
                     §=!X§.§!'§.§;p§(true);
                     loop3:
                     while(true)
                     {
                        §=!X§.resume();
                        while(true)
                        {
                           §=!X§.§]T§(this.§?u§);
                           continue loop1;
                           addr116:
                           if(_loc4_ || _loc1_)
                           {
                              continue loop3;
                           }
                        }
                     }
                     if(_loc3_ && _loc2_)
                     {
                        continue;
                     }
                     if(false)
                     {
                        §§goto(addr45);
                     }
                     §§goto(addr212);
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      protected function §<!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            AngryBirdsFP11.§<!,§();
         }
      }
      
      private function §,z§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(§?E§.stage.mouseX < §?E§.stage.width - 180)
            {
               if(_loc2_)
               {
                  §§push(true);
                  if(!(_loc3_ && _loc3_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr63:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr63);
      }
      
      private function §2<§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§+p§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§,z§(param1));
                     addr167:
                     loop1:
                     while(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§!!U§);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop() - §?E§.stage.mouseY);
                              loop4:
                              while(true)
                              {
                                 §§push(0);
                                 loop5:
                                 while(§§pop() <= §§pop())
                                 {
                                    §§push(this.§!!U§);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() - §?E§.stage.mouseY);
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(0);
                                    if(!(_loc3_ || param1))
                                    {
                                       continue;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§!!U§);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() - §?E§.stage.mouseY);
                                             }
                                             §§pop().§4F§ = §§pop();
                                          }
                                          addr95:
                                       }
                                       while(_loc3_)
                                       {
                                          if(_loc2_ && _loc2_)
                                          {
                                             break loop5;
                                          }
                                          this.§!!U§ = §?E§.stage.mouseY;
                                          if(_loc3_)
                                          {
                                             if(_loc2_ && _loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   this.§!!U§ = §?E§.stage.mouseY;
                                                   break;
                                                }
                                                addr171:
                                             }
                                             else
                                             {
                                                addr143:
                                             }
                                             if(_loc2_ && _loc3_)
                                             {
                                                break loop1;
                                             }
                                             continue loop0;
                                             return;
                                          }
                                       }
                                    }
                                    §§goto(addr20);
                                 }
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(this);
                                    §§push(this.§!!U§);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() - §?E§.stage.mouseY);
                                    }
                                    §§pop().§4F§ = §§pop();
                                    §§goto(addr143);
                                 }
                              }
                           }
                        }
                     }
                     this.§+p§ = false;
                     §§goto(addr171);
                  }
               }
               addr20:
               return;
            }
            §§goto(addr167);
         }
         §§goto(addr95);
      }
      
      private function §,!k§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§,z§(param1));
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && param1))
                  {
                     addr85:
                     addr83:
                     if(!§=!X§.isPaused)
                     {
                        while(true)
                        {
                           this.§+p§ = true;
                        }
                        addr86:
                     }
                     §§goto(addr25);
                  }
                  while(true)
                  {
                     this.§!!U§ = §?E§.stage.mouseY;
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        break;
                     }
                     §§goto(addr86);
                  }
               }
               addr25:
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr83);
      }
      
      private function §#!d§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§+p§ = false;
         }
      }
      
      private function §,!_§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§+p§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§,z§(param1))
            {
               if(!_loc2_)
               {
                  if(param1.delta >= 0)
                  {
                     if(param1.delta > 0)
                     {
                        if(_loc3_ || this)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              if(!(_loc2_ && param1))
                              {
                                 this.§>!b§ = -16;
                                 addr20:
                                 return;
                                 addr65:
                              }
                           }
                           §§goto(addr20);
                           addr89:
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr20);
                  }
                  this.§>!b§ = 16;
               }
               §§goto(addr89);
            }
         }
         §§goto(addr20);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() == §5y§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     if(!§=!X§.isPaused)
                     {
                        loop1:
                        while(true)
                        {
                           §=!X§.§#H§.update(param1);
                           addr138:
                           while(true)
                           {
                              (§?E§.getItemByName("Container_Credits") as §`!T§).setVisibility(true);
                              loop3:
                              while(true)
                              {
                                 this.§<!^§();
                                 loop4:
                                 while(!(_loc4_ && _loc2_))
                                 {
                                    (§?E§.getItemByName("Container_Credits") as §`!T§).y = Math.floor(-this.§]!r§);
                                    loop5:
                                    while(true)
                                    {
                                       this.§-!N§(param1);
                                       addr87:
                                       while(!_loc4_)
                                       {
                                          if(_loc4_ && this)
                                          {
                                             addr156:
                                             return _loc2_;
                                             addr155:
                                          }
                                          while(true)
                                          {
                                          }
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop4;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     while(mNextState.length > 0)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              return §5y§.STATE_STATUS_COMPLETED;
                           }
                           §§goto(addr138);
                        }
                        else
                        {
                           §§goto(addr54);
                        }
                     }
                     §§goto(addr36);
                  }
               }
               §§goto(addr155);
            }
            §§goto(addr156);
         }
         §§goto(addr96);
      }
      
      protected function §<!^§() : void
      {
      }
      
      private function §-!N§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this);
            §§push(this.§]!r§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + this.§4F§);
            }
            §§pop().§]!r§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§]!r§);
               if(!_loc2_)
               {
                  §§push(§§pop() + this.§>!b§);
               }
               §§pop().§]!r§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§+p§);
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr238:
                              while(true)
                              {
                                 §§push(Math.abs(this.§>!b§) < param1 / 15);
                              }
                           }
                           addr237:
                        }
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§]!r§);
                                    loop11:
                                    while(true)
                                    {
                                       §§push(-AngryBirdsFP11.§>Y§);
                                       addr174:
                                       while(true)
                                       {
                                          §§push(§§pop() * §=!X§.§ !4§);
                                          addr177:
                                          while(§§pop() >= §§pop())
                                          {
                                             continue loop11;
                                          }
                                          addr178:
                                          if(_loc3_ || this)
                                          {
                                             this.§]!r§ = this.§2",§;
                                             addr50:
                                             addr189:
                                             §§push(this.§+p§);
                                             if(!_loc3_)
                                             {
                                                continue loop7;
                                             }
                                             if(_loc3_ || this)
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      addr72:
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§4F§);
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               §§push(§§pop() * 0.9);
                                                            }
                                                            §§pop().§4F§ = §§pop();
                                                            addr94:
                                                            if(_loc3_)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§>!b§);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop() * 0.9);
                                                               }
                                                               §§pop().§>!b§ = §§pop();
                                                               if(_loc3_)
                                                               {
                                                                  if(!(_loc3_ || param1))
                                                                  {
                                                                     §§goto(addr72);
                                                                  }
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§goto(addr25);
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr94);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§]!r§);
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  §§push(param1);
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() / 15);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§pop().§]!r§ = §§pop();
                                                               continue loop0;
                                                            }
                                                            addr201:
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      addr158:
                                                      if(!_loc2_)
                                                      {
                                                         addr160:
                                                         if(!(_loc3_ || param1))
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr50);
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                }
                                                continue loop3;
                                                addr25:
                                                return;
                                             }
                                             §§goto(addr237);
                                          }
                                          §§goto(addr238);
                                       }
                                    }
                                 }
                                 addr168:
                              }
                              §§goto(addr201);
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr168);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?E§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§2<§);
            while(true)
            {
               §?E§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,!k§);
               addr128:
               while(true)
               {
                  §?E§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§#!d§);
                  loop2:
                  while(true)
                  {
                     §?E§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     while(true)
                     {
                        §?E§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§,!_§);
                        addr33:
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop2;
                        }
                     }
                  }
               }
               if(!(_loc1_ || this))
               {
                  continue;
               }
               return;
               addr54:
            }
         }
         loop4:
         while(true)
         {
            (§?E§.getItemByName("Container_Credits") as §`!T§).visible = false;
            while(true)
            {
               if(_loc1_ || _loc1_)
               {
                  if(!_loc1_)
                  {
                     break;
                  }
                  continue;
               }
               continue loop4;
            }
            §§goto(addr128);
         }
         §§goto(addr54);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param2))
         {
            if("CREDITS_CLOSE_BUTTON" !== _loc4_)
            {
               if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  §§goto(addr66);
               }
               else
               {
                  §§push(2);
               }
               addr84:
               switch(§§pop())
               {
                  case 0:
                     mNextState = §]x§.§'=§;
                     if(!_loc5_)
                     {
                        break;
                     }
                     addr32:
                     break;
                  case 1:
                     AngryBirdsFP11.§%d§.§9+§();
                     if(_loc6_)
                     {
                        §§goto(addr32);
                     }
               }
               return;
            }
            if(_loc6_)
            {
               §§push(0);
               if(_loc5_)
               {
               }
            }
            else
            {
               addr66:
               §§push(1);
               if(!_loc6_)
               {
               }
            }
            §§goto(addr84);
         }
         §§goto(addr66);
      }
   }
}
