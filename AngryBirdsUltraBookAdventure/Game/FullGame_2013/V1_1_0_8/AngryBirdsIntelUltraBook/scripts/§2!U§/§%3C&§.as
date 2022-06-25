package §2!U§
{
   import §1!B§.§<m§;
   import §2y§.§^! §;
   import §48§.§>6§;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §<&§ extends §9![§
   {
      
      public static const §'!q§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §'!q§ = "CreditsState";
         }
      }
      
      protected var §0! §:§>6§ = null;
      
      private var §;!f§:Boolean;
      
      private var §@!-§:Number;
      
      private var §'c§:Number;
      
      private var §-!U§:Number;
      
      private var §!?§:Number;
      
      private var § !s§:Number;
      
      public function §<&§(param1:Boolean = false, param2:String = "CreditsState")
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
         if(!_loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               §'!Q§ = new §&!G§(this);
               while(true)
               {
                  §'!Q§.init(§2!z§.§ _§.Views.View_Credits[0]);
                  loop2:
                  while(!(_loc1_ && _loc1_))
                  {
                     while(true)
                     {
                        this.§0! § = new §>6§(§,!s§.§=!I§);
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            super.activate();
            loop0:
            while(true)
            {
               this.§;!f§ = false;
               loop1:
               while(true)
               {
                  this.§ !s§ = (§'!Q§.getItemByName("Container_Credits") as §^! §).height + §,!s§.§8p§ * §,!s§.§#d§;
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§ !s§);
                     if(!_loc3_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().§!?§ = §§pop();
                     loop3:
                     while(true)
                     {
                        §,!s§.§=!I§.§!C§(true);
                        loop4:
                        while(true)
                        {
                           §,!s§.resume();
                           loop5:
                           while(!_loc3_)
                           {
                              if(_loc3_)
                              {
                                 continue loop1;
                              }
                              §,!s§.setController(this.§0! §);
                              addr62:
                              if(_loc3_ && _loc2_)
                              {
                                 continue;
                              }
                              this.§'c§ = 0;
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    addr33:
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr40:
                                       if(_loc4_ || _loc1_)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(false)
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   this.§@!-§ = 0;
                                                   addr55:
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         §§goto(addr62);
                                                      }
                                                      addr125:
                                                      while(true)
                                                      {
                                                         §'!Q§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§&6§);
                                                         loop11:
                                                         while(!_loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §'!Q§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                                                               while(true)
                                                               {
                                                                  §'!Q§.stage.addEventListener(Event.MOUSE_LEAVE,this.§!!?§);
                                                                  addr78:
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  addr140:
                                                                  while(true)
                                                                  {
                                                                     §'!Q§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§>![§);
                                                                     break loop14;
                                                                  }
                                                                  §§goto(addr33);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§0! §.init();
                                                                  break loop11;
                                                               }
                                                               addr151:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            this.playThemeMusic();
                                                            §§goto(addr140);
                                                         }
                                                         continue loop15;
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                while(!_loc3_)
                                                {
                                                   §'!Q§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§?!&§);
                                                   §§goto(addr125);
                                                   §§goto(addr40);
                                                }
                                                continue loop2;
                                                addr134:
                                             }
                                             §§push(§<m§.§[![§);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop());
                                             }
                                             var _loc1_:* = §§pop();
                                             §§push(_loc1_);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§push(§§pop().slice(_loc1_.search("Server:"),_loc1_.length));
                                             }
                                             var _loc2_:* = §§pop();
                                             if(!_loc3_)
                                             {
                                                §§push(_loc1_);
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§push(§§pop().slice(0,_loc1_.search("Server:")));
                                                }
                                                _loc1_ = §§pop();
                                             }
                                             this.setVersionTexts(_loc1_,_loc2_);
                                             addr261:
                                             if(!_loc4_)
                                             {
                                                §§goto(addr261);
                                             }
                                             return;
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr134);
                                    }
                                    §§goto(addr91);
                                 }
                                 §§goto(addr78);
                              }
                              §§goto(addr55);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr151);
      }
      
      protected function setVersionTexts(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §'!Q§.setText(param1,"TextField_Version_Number");
         }
         do
         {
            §'!Q§.setText(param2,"TextField_Version_Number_Server");
         }
         while(_loc3_);
         
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      private function §+!&§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§'!Q§.stage.mouseX < §'!Q§.stage.width - 180)
            {
               if(!(_loc3_ && param1))
               {
                  §§push(true);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr48);
      }
      
      private function §>![§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§;!f§);
            if(!(_loc2_ && param1))
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     addr177:
                     if(this.§+!&§(param1))
                     {
                        loop0:
                        while(true)
                        {
                           §§push(this.§-!U§);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop() - §'!Q§.stage.mouseY);
                              loop2:
                              while(true)
                              {
                                 §§push(0);
                                 while(§§pop() <= §§pop())
                                 {
                                    §§push(this.§-!U§);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() - §'!Q§.stage.mouseY);
                                    }
                                    if(_loc2_ && _loc3_)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(0);
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       addr76:
                                       if(_loc3_ || param1)
                                       {
                                          §§push(this);
                                          §§push(this.§-!U§);
                                          if(_loc3_ || this)
                                          {
                                             §§push(§§pop() - §'!Q§.stage.mouseY);
                                          }
                                          §§pop().§@!-§ = §§pop();
                                          addr108:
                                          if(!_loc2_)
                                          {
                                             if(_loc3_)
                                             {
                                                this.§-!U§ = §'!Q§.stage.mouseY;
                                                if(_loc3_ || this)
                                                {
                                                   if(_loc2_ && this)
                                                   {
                                                      §§goto(addr76);
                                                   }
                                                   if(!(_loc2_ && this))
                                                   {
                                                      §§goto(addr20);
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr108);
                                             }
                                             return;
                                             addr181:
                                          }
                                          addr119:
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          addr20:
                                          return;
                                          addr121:
                                       }
                                       this.§-!U§ = §'!Q§.stage.mouseY;
                                       §§goto(addr119);
                                       addr153:
                                    }
                                    §§goto(addr20);
                                 }
                                 if(!_loc2_)
                                 {
                                    §§push(this);
                                    §§push(this.§-!U§);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() - §'!Q§.stage.mouseY);
                                    }
                                    §§pop().§@!-§ = §§pop();
                                    §§goto(addr153);
                                 }
                              }
                           }
                        }
                     }
                     this.§;!f§ = false;
                  }
                  §§goto(addr181);
               }
               §§goto(addr20);
            }
            §§goto(addr177);
         }
         §§goto(addr121);
      }
      
      private function §?!&§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§+!&§(param1));
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(§,!s§.isPaused);
                     addr85:
                     while(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           this.§;!f§ = true;
                           addr89:
                           while(true)
                           {
                              this.§-!U§ = §'!Q§.stage.mouseY;
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr89);
      }
      
      private function §&6§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§;!f§ = false;
         }
      }
      
      private function §!!?§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§;!f§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§+!&§(param1))
            {
               if(!_loc3_)
               {
                  if(param1.delta < 0)
                  {
                     if(_loc2_)
                     {
                        this.§'c§ = 16;
                     }
                  }
                  else
                  {
                     if(param1.delta > 0)
                     {
                        if(_loc2_)
                        {
                           if(!(_loc3_ && this))
                           {
                              addr59:
                              this.§'c§ = -16;
                           }
                           else
                           {
                              addr19:
                              return;
                              addr78:
                           }
                        }
                     }
                     §§goto(addr19);
                  }
                  §§goto(addr19);
               }
               §§goto(addr78);
            }
            §§goto(addr19);
         }
         §§goto(addr59);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() == §9![§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     if(!§,!s§.isPaused)
                     {
                        if(_loc3_ || this)
                        {
                           §,!s§.§ Q§.update(param1);
                        }
                        while(true)
                        {
                           (§'!Q§.getItemByName("Container_Credits") as §^! §).setVisibility(true);
                           loop2:
                           for(; !_loc4_; while(_loc4_ && _loc2_)
                           {
                              continue loop2;
                           },if(_loc3_)
                           {
                              this.§]!a§(param1);
                              addr80:
                           },return _loc2_)
                           {
                              while(true)
                              {
                                 this.readyToShowCredits();
                                 addr106:
                                 while(true)
                                 {
                                    (§'!Q§.getItemByName("Container_Credits") as §^! §).y = Math.floor(-this.§!?§);
                                    continue loop2;
                                 }
                              }
                           }
                           continue loop0;
                           addr63:
                           if(_loc3_)
                           {
                              §§goto(addr31);
                           }
                        }
                     }
                     for(; mNextState.length > 0; §§goto(addr80))
                     {
                        if(_loc3_ || this)
                        {
                           if(!(_loc3_ || this))
                           {
                              continue;
                           }
                           if(!_loc4_)
                           {
                              return §9![§.STATE_STATUS_COMPLETED;
                           }
                           §§goto(addr106);
                        }
                        else if(_loc3_)
                        {
                           §§goto(addr63);
                        }
                        §§goto(addr93);
                     }
                     addr31:
                     return §9![§.STATE_STATUS_RUNNING;
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr156);
         }
         §§goto(addr117);
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §]!a§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§!?§);
            if(!_loc2_)
            {
               §§push(§§pop() + this.§@!-§);
            }
            §§pop().§!?§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§!?§);
               if(_loc3_ || param1)
               {
                  §§push(§§pop() + this.§'c§);
               }
               §§pop().§!?§ = §§pop();
               while(true)
               {
                  §§push(this.§;!f§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        addr210:
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr213:
                              while(true)
                              {
                                 §§push(Math.abs(this.§'c§) < param1 / 15);
                              }
                              addr60:
                              if(_loc3_ || _loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc2_ && param1))
                                    {
                                       addr75:
                                       if(_loc3_ || this)
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(this);
                                             §§push(this.§@!-§);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() * 0.9);
                                             }
                                             §§pop().§@!-§ = §§pop();
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                loop11:
                                                while(true)
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(this.§;!f§);
                                                      if(!(_loc2_ && param1))
                                                      {
                                                         §§goto(addr60);
                                                      }
                                                      addr166:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§!?§);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(param1);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(§§pop() / 15);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§pop().§!?§ = §§pop();
                                                               addr179:
                                                               while(!(_loc2_ && _loc2_))
                                                               {
                                                               }
                                                               §§goto(addr213);
                                                            }
                                                            addr167:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§!?§);
                                                            loop8:
                                                            while(true)
                                                            {
                                                               §§push(-AngryBirdsFP11.§2" §);
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(§§pop() * §,!s§.§#d§);
                                                               }
                                                               addr148:
                                                               addr149:
                                                               while(§§pop() >= §§pop())
                                                               {
                                                                  continue loop8;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     this.§!?§ = this.§ !s§;
                                                                     continue loop11;
                                                                  }
                                                                  §§goto(addr167);
                                                               }
                                                            }
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                   §§goto(addr20);
                                                }
                                             }
                                             continue loop0;
                                             addr92:
                                          }
                                          §§goto(addr179);
                                       }
                                       §§goto(addr124);
                                    }
                                    §§goto(addr92);
                                 }
                                 addr20:
                              }
                              continue;
                              return;
                           }
                           addr212:
                        }
                        while(true)
                        {
                           §§goto(addr166);
                        }
                     }
                     §§goto(addr212);
                  }
                  §§goto(addr210);
               }
            }
         }
         §§goto(addr126);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §'!Q§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§>![§);
            while(true)
            {
               §'!Q§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§?!&§);
               loop1:
               for(; !_loc1_; if(!(_loc2_ || _loc2_))
               {
                  continue;
               },§§goto(addr109))
               {
                  §'!Q§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§&6§);
                  loop2:
                  while(true)
                  {
                     §'!Q§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                        addr109:
                        §'!Q§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§!!?§);
                        do
                        {
                           (§'!Q§.getItemByName("Container_Credits") as §^! §).visible = false;
                           do
                           {
                              super.deActivate();
                           }
                           while(_loc1_ && this);
                           
                        }
                        while(!(_loc2_ || _loc1_));
                        
                        if(!(_loc1_ && _loc1_))
                        {
                           return;
                           addr63:
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param3)
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(!(_loc6_ && param1))
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                        }
                     }
                     else
                     {
                        addr84:
                        §§push(1);
                        if(_loc6_)
                        {
                        }
                     }
                     §§goto(addr92);
                  }
                  else
                  {
                     addr82:
                     §§push("FULLSCREEN_BUTTON");
                     §§push(_loc4_);
                  }
                  §§goto(addr84);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr84);
               }
               else
               {
                  §§push(2);
               }
               addr92:
               switch(§§pop())
               {
                  case 0:
                     mNextState = §&i§.§'!q§;
                     if(!_loc6_)
                     {
                        break;
                     }
                     break;
                  case 1:
                     AngryBirdsFP11.§'!g§.§]8§();
                     if(_loc5_)
                     {
                        break;
                     }
               }
               return;
            }
            §§goto(addr82);
         }
         §§goto(addr84);
      }
   }
}
