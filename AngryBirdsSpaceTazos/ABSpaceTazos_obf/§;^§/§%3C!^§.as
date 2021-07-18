package §;^§
{
   import §3C§.§^p§;
   import §5X§.§8n§;
   import §5X§.§@!!§;
   import §6"4§.§&a§;
   import §7!B§.LoginHandlerEvent;
   import §77§.§ ",§;
   import §77§.§&!>§;
   import §9y§.§8"3§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   
   public class §<!^§
   {
       
      
      private var §-!C§:§ ",§;
      
      private var §@!e§:§&a§;
      
      public function §<!^§(param1:§ ",§, param2:§&a§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super();
            do
            {
               this.§-!C§ = param1;
               do
               {
                  this.§@!e§ = param2;
               }
               while(!(_loc3_ || this));
               
            }
            while(_loc4_);
            
         }
      }
      
      public function §8!E§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§@!!§ = this.§-!C§.getItemByName("Checkbox_RememberMe") as §@!!§;
         if(!_loc3_)
         {
            if(!this.§@!e§.rememberMeToggled)
            {
               _loc1_.setComponentState(§@!!§.§else §);
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§-!C§);
                     loop2:
                     while(true)
                     {
                        §§push("TextField_UserNameField");
                        loop3:
                        while(true)
                        {
                           §§push(§§pop().getItemByName(§§pop()));
                           loop4:
                           while(true)
                           {
                              (§§pop() as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
                              loop5:
                              while(!_loc3_)
                              {
                                 §§push(this.§-!C§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop().getItemByName("TextField_PasswordField"));
                                    loop7:
                                    while(true)
                                    {
                                       (§§pop() as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
                                       loop8:
                                       while(!_loc3_)
                                       {
                                          §§push(this.§-!C§);
                                          loop9:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc3_ && _loc3_)
                                                {
                                                   break;
                                                }
                                                §§push("TextField_UserNameField");
                                                while(!(_loc3_ && _loc2_))
                                                {
                                                   §§push(§§pop().getItemByName(§§pop()));
                                                   while(_loc2_)
                                                   {
                                                      (§§pop() as §&!>§).§ !'§.restrict = §&a§.§'"<§;
                                                      loop12:
                                                      while(_loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop5;
                                                            while(true)
                                                            {
                                                               this.§[!]§();
                                                               if(_loc2_ || _loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                            }
                                                         }
                                                         continue loop9;
                                                         return;
                                                      }
                                                      §§push(§§pop().getItemByName(§§pop()));
                                                      continue loop8;
                                                      if(_loc3_ && _loc1_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc2_ || this))
                                                      {
                                                         continue loop7;
                                                      }
                                                      (§§pop() as §&!>§).§ !'§.maxChars = §&a§.§%!!§;
                                                      §§goto(addr80);
                                                   }
                                                   §§push("TextField_UserNameField");
                                                   continue loop4;
                                                   if(!(_loc2_ || _loc1_))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr59);
                                                }
                                                continue loop3;
                                             }
                                             continue loop6;
                                          }
                                          continue loop2;
                                       }
                                       addr179:
                                       while(true)
                                       {
                                          _loc1_.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                          break loop5;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr179);
         }
         §§goto(addr80);
      }
      
      private function §#I§(param1:TextField) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         §§push(_loc3_.x + _loc3_.width - _loc2_.x);
         if(_loc4_ || _loc2_)
         {
            return §§pop() + _loc2_.width / 2;
         }
      }
      
      public function §[!]§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:TextField = this.§-!C§.getItemByName("Button_ForgotPassword").mClip.text;
         var _loc2_:MovieClip = this.§-!C§.getItemByName("Button_ForgotPassword").mClip.MovieClip_Forgot_Underline;
         var _loc3_:MovieClip = this.§-!C§.getItemByName("Button_ForgotPassword").mClip.MouseHitArea;
         if(_loc4_)
         {
            _loc2_.width = this.§#I§(_loc1_);
            while(true)
            {
               _loc3_.width = _loc2_.width;
               loop1:
               while(!_loc5_)
               {
                  while(true)
                  {
                     this.§45§(_loc1_);
                     if(!_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr81);
      }
      
      private function §45§(param1:TextField) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TextFormat = new TextFormat();
         if(_loc4_ || _loc3_)
         {
            _loc2_.italic = true;
         }
         do
         {
            param1.setTextFormat(_loc2_);
         }
         while(!(_loc4_ || param1));
         
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§-!C§);
            loop0:
            while(true)
            {
               §§push("TextField_UserNameField");
               addr168:
               while(true)
               {
                  §§push(§§pop().getItemByName(§§pop()));
                  addr169:
                  while(true)
                  {
                     §§pop().removeEventListener(KeyboardEvent.KEY_UP,this.§>!T§);
                     addr174:
                     while(true)
                     {
                        §§push(this.§-!C§);
                        continue loop0;
                     }
                  }
               }
            }
         }
         loop7:
         while(true)
         {
            §§push(this.§@!e§);
            loop8:
            while(true)
            {
               §§push(§§pop().§@!j§);
               addr122:
               while(true)
               {
                  §§push(LoginHandlerEvent.§!"8§);
                  addr124:
                  while(true)
                  {
                     §§pop().removeEventListener(§§pop(),this.§6!I§);
                     addr127:
                     while(true)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop8;
                        }
                        continue loop7;
                     }
                     §§goto(addr174);
                  }
               }
            }
         }
      }
      
      public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§8n§ = this.§-!C§.getItemByName("Container_Login_Tab");
         if(!(_loc3_ && _loc1_))
         {
            §§push(this.§-!C§);
            while(true)
            {
               §§pop().setObjectToFront(_loc1_);
               while(true)
               {
                  §§push(this.§-!C§);
                  while(true)
                  {
                     §§push("TextField_UserNameField");
                     addr446:
                     while(true)
                     {
                        §§push(§§pop().getItemByName(§§pop()));
                        while(true)
                        {
                           §§push(true);
                           loop5:
                           while(true)
                           {
                              §§pop().setVisibility(§§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(this.§-!C§);
                                 while(true)
                                 {
                                    §§push("TextField_PasswordField");
                                    while(true)
                                    {
                                       §§push(§§pop().getItemByName(§§pop()));
                                       loop9:
                                       while(true)
                                       {
                                          §§push(true);
                                          while(true)
                                          {
                                             §§pop().setVisibility(§§pop());
                                             while(true)
                                             {
                                                §§push(this.§-!C§);
                                                while(true)
                                                {
                                                   §§push(§§pop().getItemByName("Button_Submit"));
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                      while(true)
                                                      {
                                                         §§pop().setVisibility(§§pop());
                                                         while(true)
                                                         {
                                                            §§push(this.§-!C§);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().getItemByName("Checkbox_RememberMe"));
                                                               while(!_loc3_)
                                                               {
                                                                  §§push(true);
                                                                  while(_loc2_)
                                                                  {
                                                                     §§pop().setVisibility(§§pop());
                                                                     loop19:
                                                                     while(!_loc3_)
                                                                     {
                                                                        §§push(this.§-!C§);
                                                                        while(true)
                                                                        {
                                                                           §§push("Checkbox_Marketing");
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 §§push(true);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().setVisibility(§§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§-!C§);
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().getItemByName("Button_ForgotPassword"));
                                                                                          addr382:
                                                                                          while(_loc2_ || this)
                                                                                          {
                                                                                             §§push(true);
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().setVisibility(§§pop());
                                                                                                addr391:
                                                                                                while(!_loc3_)
                                                                                                {
                                                                                                   §§push(this.§-!C§);
                                                                                                   continue loop25;
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                          }
                                                                                          continue loop13;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr155);
                                    §§push(§§pop().getItemByName("Button_Submit_Register"));
                                 }
                              }
                           }
                        }
                     }
                     if(!(_loc2_ || _loc3_))
                     {
                        continue;
                     }
                     §§push("TextField_UserNameField");
                     if(!_loc3_)
                     {
                        §§goto(addr123);
                        §§push(§§pop().getItemByName(§§pop()));
                     }
                     §§goto(addr446);
                  }
               }
            }
         }
         §§goto(addr376);
      }
      
      private function §'h§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§-!C§);
            loop0:
            while(true)
            {
               §§push(§§pop().getItemByName("MovieClip_ErrorLoginMarkEmail"));
               addr74:
               while(true)
               {
                  §§push(false);
                  addr75:
                  while(true)
                  {
                     §§pop().setVisibility(§§pop());
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §8"@§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = (this.§-!C§.getItemByName("TextField_UserNameField") as §&!>§).§ !'§.text;
         if(!_loc4_)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc1_))
            {
               §§push(§§pop().toLowerCase());
               if(!(_loc4_ && _loc2_))
               {
                  _loc1_ = §§pop();
                  addr46:
                  §§push((this.§-!C§.getItemByName("TextField_PasswordField") as §&!>§).§ !'§.text);
               }
            }
            var _loc2_:* = §§pop();
            if(!(_loc4_ && _loc3_))
            {
               §§push(this.§-!C§);
               loop0:
               while(true)
               {
                  §§pop().setObjectToFront(this.§-!C§.getItemByName("WaitingPopupLogin"));
                  addr191:
                  while(true)
                  {
                     §§push(this.§-!C§);
                     if(!(_loc3_ || _loc3_))
                     {
                        continue loop0;
                     }
                     §§pop().getItemByName("WaitingPopupLogin").setVisibility(true);
                     loop2:
                     while(true)
                     {
                        §§push(this.§@!e§);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop().§@!j§);
                           loop4:
                           while(true)
                           {
                              §§push(LoginHandlerEvent.§!"8§);
                              loop5:
                              while(true)
                              {
                                 §§pop().addEventListener(§§pop(),this.§6!I§);
                                 addr158:
                                 addr120:
                                 while(true)
                                 {
                                    §§push(this.§@!e§);
                                    while(true)
                                    {
                                       §§push(§§pop().§@!j§);
                                       addr125:
                                       while(!_loc4_)
                                       {
                                          §§push(LoginHandlerEvent.ERROR);
                                          while(_loc3_)
                                          {
                                             §§pop().addEventListener(§§pop(),this.§#!X§);
                                             continue loop2;
                                          }
                                          continue loop5;
                                       }
                                       addr148:
                                       §§push(this.§@!e§);
                                       continue loop4;
                                       if(_loc3_ || this)
                                       {
                                          continue loop3;
                                       }
                                    }
                                 }
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr191);
         }
         §§goto(addr46);
      }
      
      private function §6!I§(param1:LoginHandlerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§@!e§);
            loop0:
            while(true)
            {
               §§push(§§pop().§@!j§);
               loop1:
               while(true)
               {
                  §§push(LoginHandlerEvent.§!"8§);
                  loop2:
                  while(true)
                  {
                     §§pop().removeEventListener(§§pop(),this.§6!I§);
                     addr118:
                     while(true)
                     {
                        §§push(this.§@!e§);
                        while(true)
                        {
                           §§push(§§pop().§@!j§);
                           if(_loc3_ && this)
                           {
                              break;
                           }
                           §§push(LoginHandlerEvent.ERROR);
                           if(_loc3_ && _loc2_)
                           {
                              continue loop2;
                           }
                           §§pop().removeEventListener(§§pop(),this.§#!X§);
                           addr75:
                           §§push(this.§@!e§);
                           if(_loc2_ || _loc3_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      private function §#!X§(param1:LoginHandlerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§@!e§);
            loop0:
            while(true)
            {
               §§push(§§pop().§@!j§);
               addr103:
               while(true)
               {
                  §§push(LoginHandlerEvent.§!"8§);
                  addr105:
                  while(true)
                  {
                     §§pop().removeEventListener(§§pop(),this.§6!I§);
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      private function §1I§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§-!C§.getItemByName("WaitingPopupLogin").setVisibility(false);
         }
         var _loc2_:* = param1;
         if(_loc4_ || _loc3_)
         {
            §§push(§8"3§.INVALID_EMAIL);
            if(_loc4_ || _loc3_)
            {
               §§push(_loc2_);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc3_ && this))
                     {
                        addr260:
                        §§push(0);
                        if(!_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr284:
                        §§push(1);
                        if(_loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§8"3§.PASSWORD_MISSING);
                     if(_loc4_)
                     {
                        addr268:
                        §§push(_loc2_);
                        if(_loc4_ || param1)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 §§goto(addr284);
                              }
                              addr305:
                              switch(§§pop())
                              {
                                 case 0:
                                    addr211:
                                    break;
                                 case 1:
                                    addr194:
                                    §§push(this.§-!C§.getItemByName("MovieClip_ErrorLoginMarkEmail"));
                                    §§push(this.§-!C§.getItemByName("MovieClip_ErrorLoginMarkPassword"));
                                    if(!(_loc4_ || param1))
                                    {
                                       break;
                                    }
                                    addr203:
                                    §§pop().setVisibility(true);
                                    § !g§.§;!'§.§>";§.openPopup(new §^p§(param1,§^p§.§>F§));
                                    addr333:
                                    return;
                                    addr314:
                                    addr204:
                                    break;
                                 case 2:
                                    addr154:
                                    §§push(this.§-!C§.getItemByName("MovieClip_ErrorLoginMarkEmail"));
                                    if(!(_loc3_ && this))
                                    {
                                       addr172:
                                       §§push(true);
                                       if(!(_loc3_ && this))
                                       {
                                          §§pop().setVisibility(§§pop());
                                          if(_loc4_ || this)
                                          {
                                             addr134:
                                             §§push(this.§-!C§);
                                             §§push("MovieClip_ErrorLoginMarkPassword");
                                             if(_loc4_ || param1)
                                             {
                                                addr143:
                                                §§pop().getItemByName(§§pop()).setVisibility(true);
                                                addr142:
                                                if(_loc4_)
                                                {
                                                   addr70:
                                                }
                                                §§goto(addr333);
                                             }
                                             else
                                             {
                                                §§goto(addr194);
                                             }
                                          }
                                          §§goto(addr333);
                                       }
                                       §§goto(addr203);
                                    }
                                    §§goto(addr194);
                                 default:
                                    §§push(this.§-!C§);
                                    loop0:
                                    for(; _loc4_; §§push(this.§-!C§),if(!(_loc4_ || param1))
                                    {
                                       continue;
                                    },§§push("MovieClip_ErrorLoginMarkPassword"),if(_loc4_)
                                    {
                                       §§goto(addr33);
                                    },§§goto(addr134))
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                §§push("MovieClip_ErrorLoginMarkEmail");
                                                if(_loc4_ || param1)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop().getItemByName(§§pop()));
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               §§push(true);
                                                               while(!(_loc3_ && param1))
                                                               {
                                                                  §§pop().setVisibility(§§pop());
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               addr213:
                                                               §§pop().setVisibility(§§pop());
                                                               if(!_loc4_)
                                                               {
                                                               }
                                                               §§goto(addr203);
                                                               addr114:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr154);
                                                            }
                                                            §§goto(addr203);
                                                         }
                                                         §§goto(addr142);
                                                         addr33:
                                                         §§push(§§pop().getItemByName(§§pop()));
                                                         if(!(_loc4_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(true);
                                                         if(_loc4_)
                                                         {
                                                            if(_loc4_ || param1)
                                                            {
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  §§pop().setVisibility(§§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr70);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr204);
                                                                     }
                                                                  }
                                                                  §§goto(addr203);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr172);
                                                               }
                                                            }
                                                            §§goto(addr143);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr114);
                                                         }
                                                      }
                                                      §§goto(addr194);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr211);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr154);
                                                }
                                                §§goto(addr154);
                                             }
                                             else
                                             {
                                                §§goto(addr211);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr194);
                                          }
                                          §§goto(addr194);
                                       }
                                       else
                                       {
                                          §§goto(addr154);
                                       }
                                    }
                                    §§goto(addr134);
                              }
                              §§goto(addr213);
                              §§push(true);
                           }
                           else
                           {
                              addr291:
                              if(§8"3§.CONNECTION_ERROR_RETRY !== _loc2_)
                              {
                                 §§goto(addr305);
                                 §§push(3);
                              }
                              §§goto(addr305);
                           }
                           §§push(2);
                           if(_loc3_ && _loc3_)
                           {
                           }
                           §§goto(addr305);
                        }
                     }
                     §§goto(addr291);
                  }
                  §§goto(addr305);
               }
               §§goto(addr291);
            }
            §§goto(addr268);
         }
         §§goto(addr260);
      }
      
      private function §>!T§(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:uint = param1.keyCode;
         if(_loc4_)
         {
            if(_loc2_ == Keyboard.ENTER)
            {
               if(_loc4_ || _loc3_)
               {
                  this.§8"@§();
               }
            }
         }
      }
   }
}
