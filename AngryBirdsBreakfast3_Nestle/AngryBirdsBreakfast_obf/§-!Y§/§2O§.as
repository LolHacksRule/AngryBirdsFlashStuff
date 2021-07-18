package §-!Y§
{
   import §&!y§.§14§;
   import §'!3§.§ !3§;
   import §'"!§.§-!g§;
   import §1!i§.§`!t§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §4!i§.§@"#§;
   import §4[§.LoginHandlerEvent;
   import §[!5§.§2p§;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class §2O§
   {
       
      
      private var §;"7§:§,6§;
      
      private var §8!"§:§14§;
      
      private var §@&§:§ !3§;
      
      public function §2O§(param1:§,6§, param2:§14§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super();
         }
         do
         {
            this.§;"7§ = param1;
            do
            {
               this.§8!"§ = param2;
            }
            while(_loc3_);
            
         }
         while(!_loc4_);
         
      }
      
      public function §'!u§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§-!g§ = this.§;"7§.getItemByName("Checkbox_RememberMe_Register") as §-!g§;
         if(!_loc3_)
         {
            if(!this.§8!"§.rememberMeToggled)
            {
               _loc1_.setComponentState(§-!g§.§+O§);
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§;"7§);
                     while(true)
                     {
                        §§push(§§pop().getItemByName("TextField_PasswordField_Register"));
                        loop3:
                        while(true)
                        {
                           (§§pop() as §7!&§).§'!"§.addEventListener(MouseEvent.MOUSE_DOWN,this.§7N§);
                           loop4:
                           while(_loc2_ || _loc3_)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§;"7§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop().getItemByName("TextField_PasswordFieldRepeat_Register"));
                                       addr80:
                                       while(!(_loc3_ && _loc3_))
                                       {
                                          (§§pop() as §7!&§).§'!"§.addEventListener(MouseEvent.MOUSE_DOWN,this.§7N§);
                                          while(!_loc3_)
                                          {
                                             continue loop8;
                                             (§§pop() as §7!&§).§'!"§.addEventListener(MouseEvent.MOUSE_DOWN,this.§7N§);
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                if(!_loc3_)
                                                {
                                                   break loop7;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          continue loop4;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 return;
                                 addr125:
                              }
                              else
                              {
                                 addr148:
                              }
                              while(true)
                              {
                                 _loc1_.setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                 break loop4;
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
            §§goto(addr148);
         }
         §§goto(addr125);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§;"7§);
            loop0:
            while(true)
            {
               §§push(§§pop().getItemByName("TextField_NickNameField_Register"));
               addr168:
               while(true)
               {
                  (§§pop() as §7!&§).§'!"§.removeEventListener(TextEvent.TEXT_INPUT,this.§ W§);
               }
               loop3:
               while(true)
               {
                  if(_loc1_ && this)
                  {
                     continue loop0;
                  }
                  §§push(§§pop().getItemByName("TextField_PasswordField_Register"));
                  while(true)
                  {
                     (§§pop() as §7!&§).§'!"§.removeEventListener(TextEvent.TEXT_INPUT,this.§%g§);
                     §§push(§§pop().getItemByName("TextField_PasswordFieldRepeat_Register"));
                     addr111:
                     continue loop3;
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     if(!_loc1_)
                     {
                        (§§pop() as §7!&§).§'!"§.removeEventListener(TextEvent.TEXT_INPUT,this.§%g§);
                        loop6:
                        while(!_loc1_)
                        {
                           §§push(this.§8!"§);
                           while(true)
                           {
                              §§pop().stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!d§);
                              addr100:
                              addr61:
                              while(true)
                              {
                                 §§push(this.§8!"§);
                                 loop9:
                                 while(true)
                                 {
                                    §§pop().stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§51§);
                                    addr73:
                                    while(_loc2_ || _loc1_)
                                    {
                                       continue loop9;
                                    }
                                    continue loop3;
                                 }
                              }
                              if(_loc2_)
                              {
                                 return;
                              }
                              continue loop6;
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue;
                              }
                              §§pop().stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§"o§);
                              if(!(_loc1_ && this))
                              {
                                 if(_loc1_ && _loc1_)
                                 {
                                    §§goto(addr100);
                                 }
                                 §§goto(addr61);
                              }
                              §§goto(addr73);
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr168);
                     }
                     while(true)
                     {
                        continue loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr176);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§8!"§);
               loop1:
               while(true)
               {
                  §§push(§§pop().§6!"§);
                  loop2:
                  while(true)
                  {
                     §§push(LoginHandlerEvent.ERROR);
                     loop3:
                     while(true)
                     {
                        §§pop().removeEventListener(§§pop(),this.§`"#§);
                        loop4:
                        while(true)
                        {
                           §§push(this.§8!"§);
                           while(_loc2_)
                           {
                              §§push(§§pop().§6!"§);
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue loop2;
                              }
                              §§push(LoginHandlerEvent.§`!B§);
                              if(!_loc2_)
                              {
                                 continue loop3;
                              }
                              §§pop().removeEventListener(§§pop(),this.§=?§);
                              loop6:
                              while(true)
                              {
                                 §§push(this.§;"7§);
                                 addr120:
                                 while(true)
                                 {
                                    §§push(§§pop().getItemByName("TextField_PasswordField_Register"));
                                    addr122:
                                    while(true)
                                    {
                                       (§§pop() as §7!&§).§'!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7N§);
                                       addr130:
                                       while(!_loc1_)
                                       {
                                          §§push(this.§;"7§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop().getItemByName("TextField_PasswordFieldRepeat_Register"));
                                             addr106:
                                             while(true)
                                             {
                                                (§§pop() as §7!&§).§'!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7N§);
                                                addr114:
                                                while(!_loc1_)
                                                {
                                                   continue loop10;
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                              addr100:
                              §§push(this.§8!"§);
                              if(_loc1_ && _loc2_)
                              {
                                 continue;
                              }
                              §§pop().stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!d§);
                              if(!_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    §§goto(addr114);
                                 }
                                 return;
                                 addr44:
                              }
                              while(!(_loc1_ && _loc2_))
                              {
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr130);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§;"7§);
            if(!(_loc1_ && _loc2_))
            {
               if(!_loc1_)
               {
                  §§push(§§pop().getItemByName("TextField_NickNameField_Register"));
                  if(_loc2_ || _loc1_)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        (§§pop() as §7!&§).§'!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7N§);
                        §§goto(addr91);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr106);
               }
               §§goto(addr120);
            }
            §§goto(addr104);
         }
         §§goto(addr44);
      }
      
      private function §7N§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§;"7§);
            while(true)
            {
               §§push(§§pop().getItemByName("MovieClip_ErrorRegisterMarkPassword"));
               addr115:
               while(true)
               {
                  §§push(false);
                  addr116:
                  while(true)
                  {
                     §§pop().setVisibility(§§pop());
                  }
               }
               addr39:
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §§push(§§pop().getItemByName("MovieClip_ErrorRegisterMarkNick"));
               if(_loc3_)
               {
                  addr50:
                  §§push(false);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§pop().setVisibility(§§pop());
                     if(_loc2_)
                     {
                        loop7:
                        while(!(_loc2_ && param1))
                        {
                           §§push(this.§;"7§);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr39);
                           }
                           while(true)
                           {
                              §§push(§§pop().getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat"));
                              addr77:
                              while(_loc3_ || this)
                              {
                                 §§push(false);
                                 while(!(_loc2_ && _loc3_))
                                 {
                                    §§pop().setVisibility(§§pop());
                                    continue loop7;
                                    §§goto(addr50);
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr115);
                              §§goto(addr110);
                           }
                           addr110:
                        }
                        while(true)
                        {
                           §§goto(addr75);
                        }
                        addr117:
                     }
                     return;
                  }
                  §§goto(addr85);
               }
               §§goto(addr77);
            }
         }
         §§goto(addr117);
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§;"7§);
            while(true)
            {
               §§pop().setObjectToFront(this.§;"7§.getItemByName("Container_Register_Tab"));
            }
            addr286:
         }
         loop1:
         while(true)
         {
            this.§8!"§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§!!d§);
            loop2:
            while(true)
            {
               §§push(this.§;"7§);
               loop3:
               while(true)
               {
                  §§push(§§pop().getItemByName("TextField_UserNameField"));
                  loop4:
                  while(true)
                  {
                     §§push(false);
                     loop5:
                     while(true)
                     {
                        §§pop().setVisibility(§§pop());
                        loop6:
                        while(_loc5_)
                        {
                           §§push(this.§;"7§);
                           loop7:
                           while(true)
                           {
                              §§push(§§pop().getItemByName("TextField_PasswordField"));
                              addr259:
                              while(true)
                              {
                                 §§push(false);
                                 addr260:
                                 while(!_loc4_)
                                 {
                                    §§pop().setVisibility(§§pop());
                                    while(true)
                                    {
                                       §§push(this.§;"7§);
                                       continue loop3;
                                    }
                                 }
                                 continue loop5;
                              }
                              addr198:
                              if(!(_loc5_ || _loc3_))
                              {
                                 continue;
                              }
                              §§push(§§pop().getItemByName("TextField_PasswordField_Register"));
                              loop20:
                              while(true)
                              {
                                 §§push(true);
                                 loop21:
                                 while(true)
                                 {
                                    §§pop().setVisibility(§§pop());
                                    loop22:
                                    while(!_loc4_)
                                    {
                                       §§push(this.§;"7§);
                                       if(!_loc4_)
                                       {
                                          addr163:
                                          if(_loc5_ || this)
                                          {
                                             §§push(§§pop().getItemByName("TextField_PasswordFieldRepeat_Register"));
                                             loop23:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop20;
                                                }
                                                if(!(_loc5_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                §§push(true);
                                                loop24:
                                                while(!_loc4_)
                                                {
                                                   §§pop().setVisibility(§§pop());
                                                   while(_loc5_)
                                                   {
                                                      §§push(this.§;"7§);
                                                      loop26:
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§push("TextField_NickNameField_Register");
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop().getItemByName(§§pop()));
                                                            continue loop23;
                                                         }
                                                         §§goto(addr286);
                                                         addr77:
                                                         if(_loc4_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§pop().getItemByName("Checkbox_RememberMe_Register"));
                                                         if(!(_loc4_ && this))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop23;
                                                            }
                                                            if(_loc4_ && _loc2_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(true);
                                                            loop31:
                                                            while(true)
                                                            {
                                                               if(_loc5_ || _loc1_)
                                                               {
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     §§pop().setVisibility(§§pop());
                                                                     loop32:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           while(!(_loc4_ && _loc3_))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§;"7§);
                                                                                 if(!(_loc5_ || this))
                                                                                 {
                                                                                    break loop32;
                                                                                 }
                                                                                 §§goto(addr77);
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           continue loop6;
                                                                           addr150:
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(this.§;"7§);
                                                                           if(_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr25:
                                                                           if(!(_loc4_ && _loc1_))
                                                                           {
                                                                              §§push(§§pop().getItemByName("Button_Submit_Register"));
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr36:
                                                                                 if(!(_loc4_ && _loc1_))
                                                                                 {
                                                                                    continue loop31;
                                                                                 }
                                                                                 addr244:
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    §§push(false);
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().setVisibility(§§pop());
                                                                                       addr231:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§;"7§);
                                                                                          addr191:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_ && _loc3_)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             §§goto(addr198);
                                                                                             §§goto(addr163);
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr36);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(false);
                                                                                    break loop31;
                                                                                 }
                                                                                 addr227:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr296:
                                                                                 var _loc1_:§7!&§ = §§pop() as §7!&§;
                                                                                 var _loc2_:§7!&§ = this.§;"7§.getItemByName("TextField_PasswordField_Register") as §7!&§;
                                                                                 var _loc3_:§7!&§ = this.§;"7§.getItemByName("TextField_PasswordFieldRepeat_Register") as §7!&§;
                                                                                 if(!(_loc4_ && _loc1_))
                                                                                 {
                                                                                    _loc1_.§'!"§.restrict = §14§.§4i§;
                                                                                    _loc1_.§'!"§.maxChars = §14§.§@u§;
                                                                                    _loc2_.§'!"§.maxChars = §14§.§+]§;
                                                                                    _loc3_.§'!"§.maxChars = §14§.§+]§;
                                                                                    _loc1_.§'!"§.tabIndex = 1;
                                                                                    addr453:
                                                                                    addr429:
                                                                                    addr459:
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       _loc2_.§'!"§.tabIndex = 2;
                                                                                       _loc3_.§'!"§.tabIndex = 3;
                                                                                       addr401:
                                                                                       addr409:
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          _loc1_.§'!"§.addEventListener(TextEvent.TEXT_INPUT,this.§ W§);
                                                                                          _loc2_.§'!"§.addEventListener(TextEvent.TEXT_INPUT,this.§%g§);
                                                                                          addr395:
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             _loc3_.§'!"§.addEventListener(TextEvent.TEXT_INPUT,this.§%g§);
                                                                                             addr359:
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(!(_loc4_ && _loc1_))
                                                                                                {
                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                   {
                                                                                                      this.§8!"§.§^o§();
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(_loc5_ || this)
                                                                                                            {
                                                                                                               if(!(_loc5_ || _loc2_))
                                                                                                               {
                                                                                                                  §§goto(addr453);
                                                                                                               }
                                                                                                               return;
                                                                                                            }
                                                                                                            §§goto(addr401);
                                                                                                         }
                                                                                                         §§goto(addr395);
                                                                                                      }
                                                                                                      §§goto(addr359);
                                                                                                   }
                                                                                                   §§goto(addr429);
                                                                                                }
                                                                                                §§goto(addr453);
                                                                                             }
                                                                                             §§goto(addr395);
                                                                                          }
                                                                                          §§goto(addr409);
                                                                                       }
                                                                                       §§goto(addr459);
                                                                                    }
                                                                                    addr436:
                                                                                    §§goto(addr436);
                                                                                 }
                                                                                 §§goto(addr401);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr227);
                                                                              §§goto(addr25);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr263);
                                                                        }
                                                                        §§goto(addr296);
                                                                     }
                                                                     addr294:
                                                                     §§push("TextField_NickNameField_Register");
                                                                     break loop26;
                                                                     addr118:
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop21;
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop().setVisibility(§§pop());
                                                               break loop22;
                                                            }
                                                         }
                                                         §§goto(addr296);
                                                      }
                                                      §§goto(addr296);
                                                      §§push(§§pop().getItemByName(§§pop()));
                                                   }
                                                   continue loop22;
                                                   while(true)
                                                   {
                                                      if(_loc5_ || _loc1_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§pop().setVisibility(§§pop());
                                                            §§goto(addr150);
                                                         }
                                                         break;
                                                      }
                                                      continue loop24;
                                                      §§goto(addr51);
                                                   }
                                                   §§goto(addr230);
                                                }
                                                §§goto(addr260);
                                             }
                                             §§goto(addr259);
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr294);
                                    }
                                    while(!(_loc4_ && this))
                                    {
                                       §§goto(addr215);
                                       §§push(this.§;"7§);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      private function § W§(param1:TextEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:RegExp = /[A-Za-z0-9]/;
         §§push(§2p§.ONLY_LETTERS_AND_NUMBERS_ALLOWED);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §§push(!param1.text.match(_loc2_));
            if(_loc4_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr87:
                     while(true)
                     {
                        §§push(Boolean(_loc3_));
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr86:
               }
               while(§§pop())
               {
                  if(!_loc5_)
                  {
                     if(!_loc4_)
                     {
                        §§goto(addr87);
                        continue;
                     }
                     (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new § !3§(_loc3_,§ !3§.§0!3§));
                  }
                  break;
               }
               return;
            }
            §§goto(addr86);
         }
         §§goto(addr55);
      }
      
      private function §%g§(param1:TextEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:RegExp = /[*]/;
         var _loc3_:String = null;
         if(!(_loc5_ && this))
         {
            §§push(!param1.text.match(_loc2_));
            if(!_loc5_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr94:
                     while(true)
                     {
                        §§push(Boolean(_loc3_));
                        if(_loc4_ || this)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr93:
               }
               loop0:
               for(; §§pop(); §§goto(addr94))
               {
                  if(!_loc5_)
                  {
                     while(true)
                     {
                        (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new § !3§(_loc3_,§ !3§.§0!3§));
                     }
                     addr60:
                  }
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr93);
         }
         §§goto(addr60);
      }
      
      public function §>!m§() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc1_:String = "registerPlayer";
         var _loc2_:String = (this.§;"7§.getItemByName("TextField_NickNameField_Register") as §7!&§).§'!"§.text;
         var _loc3_:String = (this.§;"7§.getItemByName("TextField_PasswordField_Register") as §7!&§).§'!"§.text;
         var _loc4_:String = (this.§;"7§.getItemByName("TextField_PasswordFieldRepeat_Register") as §7!&§).§'!"§.text;
         §§push(§@"#§.§,2§.§2"2§());
         if(_loc12_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         §§push(§@"#§.§,2§.§0!x§());
         if(_loc12_)
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         if(!(_loc11_ && this))
         {
            this.§9<§();
            loop0:
            while(true)
            {
               addr96:
               while(true)
               {
                  §§push(this.§8!"§);
                  loop2:
                  while(true)
                  {
                     §§push(_loc2_);
                     loop3:
                     while(true)
                     {
                        §§pop().§=!%§ = §§pop();
                        while(true)
                        {
                           §§push(this.§8!"§);
                           if(_loc11_)
                           {
                              break;
                           }
                           §§push(_loc3_);
                           if(!(_loc11_ && this))
                           {
                              §§pop().§-!6§ = §§pop();
                              if(!_loc11_)
                              {
                                 continue loop0;
                              }
                              continue;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr96);
         }
         var _loc7_:int = 5;
         var _loc8_:int = 5;
         var _loc9_:Boolean = false;
         if(!(_loc11_ && _loc3_))
         {
            §§push(_loc2_);
            loop6:
            for(; §§pop().length != 0; loop11:
            while(true)
            {
               if(!(_loc12_ || _loc3_))
               {
                  continue loop6;
               }
               if(§§pop().length == 0)
               {
                  if(_loc12_)
                  {
                     this.reportError(§2p§.PASSWORD_MISSING);
                  }
                  if(!_loc11_)
                  {
                     return;
                  }
                  break loop6;
               }
               loop12:
               while(true)
               {
                  §§push(_loc3_);
                  loop13:
                  while(_loc12_ || _loc1_)
                  {
                     if(§§pop().length >= _loc8_)
                     {
                        loop14:
                        while(true)
                        {
                           §§push(_loc4_);
                           loop15:
                           while(true)
                           {
                              if(!(_loc11_ && _loc3_))
                              {
                                 if(§§pop().length < _loc8_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc11_)
                                    {
                                       if(!_loc11_)
                                       {
                                          if(§§pop() != _loc4_)
                                          {
                                             if(_loc12_)
                                             {
                                                if(_loc12_ || this)
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      this.reportError(§2p§.PASSWORDS_DONT_MATCH);
                                                      if(!(_loc11_ && _loc1_))
                                                      {
                                                         if(!(_loc11_ && this))
                                                         {
                                                            break loop14;
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      else
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            break loop15;
                                                         }
                                                         if(_loc12_)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr299);
                                                   }
                                                }
                                                else if(!(_loc11_ && this))
                                                {
                                                   continue loop12;
                                                }
                                                §§goto(addr275);
                                             }
                                             §§goto(addr209);
                                          }
                                          var _loc10_:Object = {
                                             "nickName":_loc2_,
                                             "password":_loc3_,
                                             "locale":_loc6_,
                                             "language":_loc5_
                                          };
                                          if(!(_loc11_ && _loc1_))
                                          {
                                             §§push(this.§8!"§);
                                             while(true)
                                             {
                                                §§push(§§pop().§6!"§);
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(LoginHandlerEvent.§`!B§);
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.§=?§);
                                                      while(true)
                                                      {
                                                         §§push(this.§8!"§);
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§6!"§);
                                                            addr380:
                                                            while(_loc12_)
                                                            {
                                                               §§push(LoginHandlerEvent.ERROR);
                                                               if(!_loc11_)
                                                               {
                                                                  §§pop().addEventListener(§§pop(),this.§`"#§);
                                                                  continue loop21;
                                                               }
                                                               continue loop19;
                                                            }
                                                            continue loop18;
                                                         }
                                                      }
                                                   }
                                                }
                                                if(_loc11_ && _loc1_)
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop().§6!"§);
                                                if(!_loc11_)
                                                {
                                                   §§goto(addr359);
                                                }
                                                §§goto(addr380);
                                             }
                                          }
                                          return;
                                       }
                                       break;
                                    }
                                    continue loop15;
                                 }
                                 continue loop11;
                              }
                              continue loop13;
                           }
                           if(!_loc12_)
                           {
                              addr288:
                              if(!(_loc11_ && _loc1_))
                              {
                                 return;
                              }
                              addr320:
                              return;
                           }
                           if(!_loc12_)
                           {
                              addr304:
                              this.reportError(§2p§.NICKNAME_LENGTH);
                              addr308:
                              return;
                           }
                           this.reportError(§2p§.PASSWORDS_DONT_MATCH);
                           addr209:
                           if(_loc12_ || _loc3_)
                           {
                              return;
                           }
                           §§goto(addr236);
                        }
                        return;
                        addr179:
                     }
                     addr236:
                     this.reportError(§2p§.PASSWORD_LENGTH);
                     return;
                  }
                  §§goto(addr301);
               }
            },§§goto(addr320))
            {
               while(true)
               {
                  §§push(_loc2_);
                  addr301:
                  while(§§pop().length >= _loc7_)
                  {
                     while(isNaN(Number(_loc2_)))
                     {
                        while(true)
                        {
                           §§push(_loc3_);
                           continue loop6;
                        }
                     }
                     if(!_loc11_)
                     {
                        this.reportError(§2p§.NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME);
                        §§goto(addr288);
                     }
                     §§goto(addr308);
                  }
                  §§goto(addr304);
               }
            }
            this.reportError(§2p§.NICKNAME_MISSING);
            §§goto(addr320);
         }
         §§goto(addr179);
      }
      
      private function §=?§(param1:LoginHandlerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§8!"§);
            loop0:
            while(true)
            {
               §§push(§§pop().§6!"§);
               addr165:
               while(true)
               {
                  §§push(LoginHandlerEvent.ERROR);
                  addr167:
                  while(true)
                  {
                     §§pop().removeEventListener(§§pop(),this.§`"#§);
                  }
               }
               loop4:
               while(true)
               {
                  if(!(_loc3_ || param1))
                  {
                     continue loop0;
                  }
                  §§push(§§pop().§6!"§);
                  if(!(_loc3_ || _loc3_))
                  {
                     break;
                  }
                  §§push(LoginHandlerEvent.§`!B§);
                  if(_loc3_)
                  {
                     §§pop().removeEventListener(§§pop(),this.§=?§);
                     while(true)
                     {
                        §§push(this.§8!"§);
                        continue loop4;
                        addr72:
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(this.§8!"§);
                           if(_loc3_ || _loc3_)
                           {
                              §§pop().close();
                              addr170:
                              loop12:
                              while(_loc3_ || _loc2_)
                              {
                                 addr61:
                                 §§push(§ !4§.§%"7§);
                                 if(_loc3_ || _loc2_)
                                 {
                                    (§§pop() as AngryBirdsCustom).§<=§.§@!0§();
                                    if(_loc3_)
                                    {
                                       addr40:
                                       if(_loc2_)
                                       {
                                          while(true)
                                          {
                                             §§push(§ !4§.§%"7§);
                                             addr65:
                                             while(true)
                                             {
                                                (§§pop() as AngryBirdsCustom).§+Y§.§5!z§ = true;
                                                break loop12;
                                                §§goto(addr61);
                                             }
                                             §§goto(addr40);
                                          }
                                          addr108:
                                       }
                                       return;
                                    }
                                    continue;
                                 }
                                 §§goto(addr65);
                              }
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr72);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(this.§8!"§);
                                    }
                                    addr125:
                                 }
                              }
                              while(true)
                              {
                                 continue loop4;
                              }
                              addr170:
                           }
                           while(_loc3_ || _loc3_)
                           {
                              §§pop().§-<§();
                              §§goto(addr108);
                              §§goto(addr96);
                           }
                           addr96:
                           continue loop4;
                           addr100:
                        }
                        §§goto(addr170);
                     }
                  }
                  else
                  {
                     §§goto(addr167);
                  }
               }
               §§goto(addr165);
            }
         }
         §§goto(addr170);
      }
      
      private function §`"#§(param1:LoginHandlerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§8!"§);
            loop0:
            while(true)
            {
               §§push(§§pop().§6!"§);
               addr134:
               while(true)
               {
                  §§push(LoginHandlerEvent.ERROR);
                  addr136:
                  while(true)
                  {
                     §§pop().removeEventListener(§§pop(),this.§`"#§);
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      private function §12§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TextField = (this.§;"7§.getItemByName("TextField_NickNameField_Register") as §7!&§).§'!"§ as TextField;
         if(_loc3_)
         {
            §§push(this.§8!"§);
            while(true)
            {
               §§pop().stage.focus = _loc2_;
               loop1:
               while(true)
               {
                  _loc2_.setSelection(_loc2_.text.length,_loc2_.text.length);
                  while(true)
                  {
                     §§push(this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkNick"));
                     while(true)
                     {
                        §§push(true);
                        addr215:
                        while(true)
                        {
                           §§pop().setVisibility(§§pop());
                           while(true)
                           {
                              §§push(§ !4§.§%"7§);
                              loop6:
                              while(true)
                              {
                                 (§§pop() as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
                                 addr208:
                                 while(true)
                                 {
                                    this.§@&§ = new § !3§(§2p§.PLAYER_ID_USED_SUGGESTION,§ !3§.§0!3§,true);
                                    continue loop6;
                                 }
                              }
                           }
                        }
                        if(_loc4_ && _loc2_)
                        {
                           continue;
                        }
                        §§push(true);
                        if(!_loc4_)
                        {
                           §§pop().visible = §§pop();
                           §§goto(addr150);
                        }
                        §§goto(addr215);
                     }
                     if(_loc4_ && _loc2_)
                     {
                        continue;
                     }
                     if(_loc4_ && this)
                     {
                        continue loop1;
                     }
                     §§goto(addr104);
                  }
               }
            }
         }
         §§goto(addr159);
      }
      
      private function §51§(param1:FocusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§@&§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§push(this.§@&§);
                     addr94:
                     while(true)
                     {
                        §§pop().§2!l§();
                        while(true)
                        {
                           §§push(this.§8!"§);
                           loop2:
                           while(true)
                           {
                              §§pop().stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§51§);
                              addr69:
                              while(true)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    continue loop2;
                                 }
                                 continue loop4;
                              }
                              continue loop4;
                           }
                        }
                        continue loop4;
                     }
                  }
                  addr92:
               }
               return;
            }
            §§goto(addr94);
         }
         §§goto(addr92);
      }
      
      private function §"o§(param1:FocusEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:TextField = (this.§;"7§.getItemByName("TextField_PasswordField_Register") as §7!&§).§'!"§ as TextField;
         var _loc3_:TextField = (this.§;"7§.getItemByName("TextField_PasswordFieldRepeat_Register") as §7!&§).§'!"§ as TextField;
         if(_loc5_)
         {
            §§push(this.§@&§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           while(true)
                           {
                              §§push(param1.relatedObject == _loc2_);
                              loop5:
                              while(_loc5_ || _loc3_)
                              {
                                 §§push(§§pop());
                                 if(!_loc5_)
                                 {
                                    continue loop2;
                                 }
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          §§push(param1.relatedObject == _loc3_);
                                          if(!_loc4_)
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             if(_loc5_)
                                             {
                                                while(§§pop())
                                                {
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      if(!(_loc4_ && this))
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop7;
                                                   }
                                                   addr136:
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(this.§8!"§);
                                                      while(true)
                                                      {
                                                         §§pop().stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§51§);
                                                         while(true)
                                                         {
                                                            §§push(this.§8!"§);
                                                            if(!(_loc5_ || param1))
                                                            {
                                                               break;
                                                            }
                                                            §§pop().stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§"o§);
                                                            if(_loc5_ || param1)
                                                            {
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                return;
                                                addr110:
                                             }
                                             continue loop3;
                                          }
                                          continue loop6;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr110);
                  }
               }
            }
         }
         §§goto(addr136);
      }
      
      private function reportError(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1;
         if(!_loc4_)
         {
            §§push(§2p§.CONNECTION_ERROR_RETRY);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(_loc4_ && _loc3_)
                        {
                           addr494:
                        }
                     }
                     else
                     {
                        addr467:
                        §§push(4);
                        if(!_loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§2p§.NICKNAME_LENGTH);
                     if(!(_loc4_ && param1))
                     {
                        addr384:
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && this))
                              {
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                    addr526:
                                    loop8:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §§goto(addr341);
                                       case 1:
                                       case 2:
                                          addr306:
                                          §§push(this.§;"7§);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr316:
                                             §§pop().getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
                                             break;
                                             addr317:
                                             addr314:
                                             addr315:
                                          }
                                          else
                                          {
                                             §§goto(addr321);
                                          }
                                          break;
                                       case 3:
                                       case 4:
                                          addr292:
                                          this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
                                          addr291:
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             break;
                                          }
                                          break;
                                       case 5:
                                          addr251:
                                          §§push(this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkPassword"));
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr259:
                                             §§push(true);
                                             if(!_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§pop().setVisibility(§§pop());
                                                   if(_loc3_ || param1)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         addr219:
                                                         §§push(this.§;"7§);
                                                         §§push("MovieClip_ErrorRegisterMarkPasswordRepeat");
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            addr228:
                                                            §§push(§§pop().getItemByName(§§pop()));
                                                            if(!_loc4_)
                                                            {
                                                               addr231:
                                                               §§push(true);
                                                               if(!_loc4_)
                                                               {
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§pop().setVisibility(§§pop());
                                                                        break;
                                                                        addr243:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr341:
                                                                        this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
                                                                        §§goto(addr340);
                                                                     }
                                                                  }
                                                                  §§goto(addr324);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr316);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr340:
                                                               §§goto(addr339);
                                                            }
                                                            §§goto(addr341);
                                                         }
                                                         §§goto(addr330);
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr332);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr291);
                                          }
                                          §§goto(addr292);
                                       case 6:
                                          addr197:
                                          §§push(this.§;"7§);
                                          §§push("MovieClip_ErrorRegisterMarkNick");
                                          if(!_loc4_)
                                          {
                                             addr201:
                                             §§push(§§pop().getItemByName(§§pop()));
                                             §§push(true);
                                             if(_loc3_)
                                             {
                                                if(!(_loc4_ && param1))
                                                {
                                                   §§pop().setVisibility(§§pop());
                                                   if(_loc3_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr259);
                                                §§goto(addr317);
                                             }
                                             §§goto(addr231);
                                          }
                                          §§goto(addr322);
                                       case 7:
                                          addr163:
                                          §§push(this.§;"7§);
                                          if(_loc3_ || param1)
                                          {
                                             addr171:
                                             §§push("MovieClip_ErrorRegisterMarkNick");
                                             if(!(_loc4_ && param1))
                                             {
                                                addr179:
                                                §§push(§§pop().getItemByName(§§pop()));
                                                if(!_loc4_)
                                                {
                                                   addr182:
                                                   §§push(true);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§pop().setVisibility(§§pop());
                                                      break;
                                                      addr190:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr201);
                                                   }
                                                }
                                                §§goto(addr228);
                                             }
                                             else
                                             {
                                                §§goto(addr314);
                                             }
                                          }
                                          §§goto(addr219);
                                       default:
                                          §§push(this.§;"7§);
                                          loop0:
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push("MovieClip_ErrorRegisterMarkPassword");
                                                if(_loc4_ && _loc3_)
                                                {
                                                   break;
                                                }
                                                if(!_loc4_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      addr339:
                                                      addr338:
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         addr332:
                                                         this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
                                                         addr324:
                                                         this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
                                                         break loop8;
                                                         addr321:
                                                         addr330:
                                                         addr333:
                                                         addr322:
                                                         addr329:
                                                         addr325:
                                                         addr331:
                                                         addr323:
                                                      }
                                                      return;
                                                   }
                                                   §§push(§§pop().getItemByName(§§pop()));
                                                   loop1:
                                                   while(true)
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc3_ || this)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§push(true);
                                                                  loop2:
                                                                  while(_loc3_)
                                                                  {
                                                                     §§pop().setVisibility(§§pop());
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           do
                                                                           {
                                                                              §§push(this.§;"7§);
                                                                              continue loop0;
                                                                           }
                                                                           while(false);
                                                                           
                                                                           break loop8;
                                                                        }
                                                                        break;
                                                                        addr94:
                                                                        if(_loc4_ && _loc3_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(this.§;"7§);
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       if(_loc3_ || _loc2_)
                                                                                       {
                                                                                          §§push("MovieClip_ErrorRegisterMarkNick");
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr40:
                                                                                                §§push(§§pop().getItemByName(§§pop()));
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   §§push(true);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§pop().setVisibility(§§pop());
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§goto(addr94);
                                                                                                            }
                                                                                                            break loop8;
                                                                                                         }
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      break loop8;
                                                                                                      addr89:
                                                                                                   }
                                                                                                   §§pop().setVisibility(§§pop());
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§goto(addr54);
                                                                                                   }
                                                                                                   break loop8;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      if(!(_loc4_ && this))
                                                                                                      {
                                                                                                         §§goto(addr89);
                                                                                                         §§push(true);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                   §§goto(addr40);
                                                                                                }
                                                                                                §§goto(addr315);
                                                                                                addr79:
                                                                                             }
                                                                                             §§goto(addr197);
                                                                                          }
                                                                                          §§goto(addr171);
                                                                                       }
                                                                                       §§goto(addr329);
                                                                                    }
                                                                                    §§goto(addr306);
                                                                                 }
                                                                                 §§goto(addr292);
                                                                              }
                                                                              §§goto(addr163);
                                                                           }
                                                                           §§goto(addr243);
                                                                        }
                                                                        §§goto(addr190);
                                                                     }
                                                                     §§goto(addr325);
                                                                  }
                                                                  §§goto(addr182);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            §§goto(addr323);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr201);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr179);
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                   §§goto(addr251);
                                                   §§goto(addr341);
                                                }
                                                else
                                                {
                                                   §§goto(addr292);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr197);
                                             }
                                             §§goto(addr332);
                                          }
                                          §§goto(addr251);
                                    }
                                    § !4§.§%"7§.§+!J§.openPopup(new § !3§(param1,§ !3§.§0!3§));
                                    §§goto(addr341);
                                 }
                                 else
                                 {
                                    addr427:
                                    §§goto(addr526);
                                 }
                              }
                              §§goto(addr526);
                           }
                           else
                           {
                              §§push(§2p§.NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME);
                              if(!_loc4_)
                              {
                                 §§push(_loc2_);
                                 if(_loc3_ || this)
                                 {
                                    addr411:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§push(2);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§goto(addr427);
                                          }
                                          else
                                          {
                                             addr451:
                                             §§goto(addr526);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr467);
                                       }
                                       §§goto(addr526);
                                    }
                                    else
                                    {
                                       §§push(§2p§.PASSWORD_LENGTH);
                                       if(_loc3_ || this)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc4_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   addr443:
                                                   §§push(3);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§goto(addr451);
                                                   }
                                                }
                                                else
                                                {
                                                   addr505:
                                                   §§push(6);
                                                   if(_loc3_)
                                                   {
                                                      addr508:
                                                   }
                                                }
                                                §§goto(addr526);
                                                §§goto(addr526);
                                             }
                                             else
                                             {
                                                §§push(§2p§.PASSWORD_MISSING);
                                                if(_loc3_)
                                                {
                                                   addr456:
                                                   §§push(_loc2_);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      addr464:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr467);
                                                         }
                                                         else
                                                         {
                                                            addr491:
                                                            §§push(5);
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr494);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr508);
                                                            }
                                                         }
                                                         §§goto(addr526);
                                                      }
                                                      else
                                                      {
                                                         §§push(§2p§.PASSWORDS_DONT_MATCH);
                                                         if(_loc3_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               addr483:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     §§goto(addr491);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr505);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(§2p§.FIELD_LENGTH);
                                                                  if(!_loc3_)
                                                                  {
                                                                  }
                                                                  addr511:
                                                                  if(§§pop() === _loc2_)
                                                                  {
                                                                     addr513:
                                                                     §§push(7);
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        §§goto(addr521);
                                                                     }
                                                                     §§goto(addr526);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr526);
                                                                     §§push(8);
                                                                  }
                                                                  §§goto(addr526);
                                                               }
                                                               §§goto(addr526);
                                                            }
                                                            addr502:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§goto(addr505);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr513);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr511);
                                                               §§push(§2p§.FIELD_NOT_VALID);
                                                            }
                                                            §§goto(addr513);
                                                         }
                                                         §§push(_loc2_);
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr502);
                                                         }
                                                         §§goto(addr511);
                                                      }
                                                   }
                                                   §§goto(addr502);
                                                }
                                                §§goto(addr511);
                                             }
                                          }
                                          §§goto(addr483);
                                       }
                                       §§goto(addr456);
                                    }
                                 }
                                 §§goto(addr464);
                              }
                              §§goto(addr456);
                           }
                        }
                        §§goto(addr411);
                     }
                     §§goto(addr456);
                  }
                  §§goto(addr526);
               }
               §§goto(addr502);
            }
            §§goto(addr384);
         }
         §§goto(addr443);
      }
      
      private function §9<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§;"7§);
            while(true)
            {
               §§push(§§pop().getItemByName("MovieClip_ErrorRegisterMarkPassword"));
               addr104:
               while(true)
               {
                  §§push(false);
                  addr105:
                  while(true)
                  {
                     §§pop().setVisibility(§§pop());
                  }
               }
            }
            addr102:
         }
         loop3:
         while(true)
         {
            §§push(this.§;"7§);
            loop4:
            while(true)
            {
               §§push(§§pop().getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat"));
               addr78:
               while(_loc1_ || _loc1_)
               {
                  §§push(false);
                  while(!_loc2_)
                  {
                     §§pop().setVisibility(§§pop());
                     §§push(false);
                     continue loop4;
                     if(_loc1_ || _loc2_)
                     {
                        addr62:
                        §§pop().setVisibility(§§pop());
                        if(!(_loc2_ && this))
                        {
                           if(!_loc2_)
                           {
                              break loop3;
                           }
                           continue loop3;
                        }
                        continue loop4;
                     }
                  }
                  §§goto(addr105);
               }
               §§goto(addr104);
            }
         }
      }
      
      private function §!!d§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.keyCode != Keyboard.ENTER)
            {
               return;
            }
            loop0:
            while(true)
            {
               (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
               while(true)
               {
                  §§push(this.§8!"§);
                  loop2:
                  while(true)
                  {
                     §§pop().stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§51§);
                     addr78:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
   }
}
