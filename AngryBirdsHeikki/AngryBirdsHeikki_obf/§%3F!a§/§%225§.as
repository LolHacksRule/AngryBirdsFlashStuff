package §?!a§
{
   import §'!N§.§[!%§;
   import §'!O§.§#!_§;
   import §'!O§.§<n§;
   import §'!O§.§=j§;
   import §2`§.HighscoreSidebar;
   import §3Y§.§4!_§;
   import §3Y§.§7!>§;
   import §8P§.§4!Y§;
   import §9I§.§+J§;
   import §9I§.§1F§;
   import §9I§.§>!=§;
   import §;!3§.§;!P§;
   import §<!!§.§#!`§;
   import §=! §.§'!4§;
   import §=! §.§9>§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   
   public class §"5§ implements §>!=§
   {
       
      
      private var §+@§:§#!_§;
      
      public function §"5§(param1:§#!_§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super();
            do
            {
               this.§+@§ = param1;
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function §-!W§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§4!Y§ = this.§+@§.§]!9§.getItemByName("Checkbox_RememberMe_Register") as §4!Y§;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§+@§);
            if(!_loc2_)
            {
               if(§§pop().§"!a§)
               {
                  if(!_loc2_)
                  {
                     _loc1_.setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     if(_loc3_ || _loc2_)
                     {
                        addr57:
                        §§push(this.§+@§);
                     }
                  }
               }
               else
               {
                  _loc1_.setComponentState(§4!Y§.§=?§);
               }
               §§goto(addr57);
            }
            _loc1_ = §§pop().§]!9§.getItemByName("Checkbox_Marketing") as §4!Y§;
            if(_loc3_)
            {
               §§push(this.§+@§);
               loop0:
               while(true)
               {
                  if(!§§pop().§[-§)
                  {
                     _loc1_.setComponentState(§4!Y§.§=?§);
                     while(true)
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              _loc1_.setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              addr313:
                              while(true)
                              {
                              }
                           }
                           addr309:
                        }
                        while(true)
                        {
                           §§push(this.§+@§);
                           continue loop0;
                           §§goto(addr313);
                        }
                        addr277:
                        loop4:
                        for(; _loc3_ || _loc1_; while(!(_loc2_ && this))
                        {
                           §§goto(addr215);
                           §§push(this.§+@§);
                        })
                        {
                           §§push(this.§+@§);
                           while(true)
                           {
                              (§§pop().§]!9§.getItemByName("TextField_PasswordField_Register") as §[!%§).§^!1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
                              continue loop4;
                              addr186:
                              if(_loc3_ || _loc3_)
                              {
                                 (§§pop().§]!9§.getItemByName("TextField_NickNameField_Register") as §[!%§).§^!1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
                                 while(!(_loc2_ && _loc3_))
                                 {
                                    new §'!4§((this.§+@§.§]!9§.getItemByName("TextField_EmailField_Register") as §[!%§).§^!1§,§,L§.§?!S§,§,L§.§^p§,§,L§.§%I§);
                                    loop10:
                                    while(_loc3_)
                                    {
                                       new §'!4§((this.§+@§.§]!9§.getItemByName("TextField_PasswordField_Register") as §[!%§).§^!1§,§,L§.§?!S§,§,L§.§^p§,§,L§.§%I§);
                                       loop13:
                                       while(true)
                                       {
                                          new §'!4§((this.§+@§.§]!9§.getItemByName("TextField_PasswordFieldRepeat_Register") as §[!%§).§^!1§,§,L§.§?!S§,§,L§.§^p§,§,L§.§%I§);
                                          while(true)
                                          {
                                             if(_loc3_ || _loc1_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop13;
                                          }
                                          continue loop10;
                                       }
                                       return;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.§+@§);
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr186);
                                    §§goto(addr204);
                                 }
                                 addr204:
                                 while(!(_loc2_ && _loc3_))
                                 {
                                    (§§pop().§]!9§.getItemByName("TextField_PasswordFieldRepeat_Register") as §[!%§).§^!1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
                                    §§goto(addr233);
                                 }
                                 addr233:
                                 continue loop0;
                                 addr215:
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr309);
               }
            }
            §§goto(addr159);
         }
         §§goto(addr57);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§+@§);
            while(true)
            {
               (§§pop().§]!9§.getItemByName("TextField_EmailField_Register") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
               addr77:
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               (§§pop().§]!9§.getItemByName("TextField_PasswordFieldRepeat_Register") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
               loop5:
               while(true)
               {
                  §§push(this.§+@§);
                  if(!_loc1_)
                  {
                     (§§pop().§]!9§.getItemByName("TextField_NickNameField_Register") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
                     if(_loc1_)
                     {
                        continue;
                     }
                     if(!(_loc1_ && this))
                     {
                        addr54:
                        if(_loc1_)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this.§+@§);
                              addr99:
                              while(true)
                              {
                                 (§§pop().§]!9§.getItemByName("TextField_PasswordField_Register") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
                                 addr110:
                                 while(true)
                                 {
                                    §§push(this.§+@§);
                                    break loop5;
                                 }
                                 continue loop1;
                              }
                           }
                           addr134:
                        }
                        return;
                     }
                     §§goto(addr110);
                  }
                  break;
               }
               while(!(_loc1_ && this))
               {
                  §§goto(addr77);
                  §§goto(addr95);
               }
               addr95:
               §§goto(addr99);
            }
         }
         §§goto(addr134);
      }
      
      private function §5!2§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§+@§);
            while(true)
            {
               §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
            }
            addr146:
         }
         loop1:
         while(true)
         {
            §§push(this.§+@§);
            loop2:
            while(_loc3_)
            {
               §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
               loop3:
               while(true)
               {
                  §§push(this.§+@§);
                  loop4:
                  for(; _loc3_; loop8:
                  while(_loc3_ || _loc2_)
                  {
                     §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
                     loop9:
                     while(true)
                     {
                        §§push(this.§+@§);
                        while(!_loc2_)
                        {
                           §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
                           §§push(this.§+@§);
                           continue loop9;
                           if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              continue loop8;
                           }
                           §§pop().§1!D§.hide();
                           if(_loc2_)
                           {
                              continue loop9;
                           }
                           if(!(_loc2_ && _loc2_))
                           {
                              continue loop3;
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr102);
                     }
                  })
                  {
                     §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
                     loop5:
                     while(true)
                     {
                        §§push(this.§+@§);
                        addr102:
                        while(true)
                        {
                           §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
                           addr107:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(this.§+@§);
                                 continue loop4;
                              }
                              continue loop5;
                           }
                           continue loop1;
                        }
                     }
                  }
                  continue loop2;
                  if(_loc3_ || this)
                  {
                     return;
                  }
               }
            }
            §§goto(addr146);
         }
      }
      
      public function activate() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(this.§+@§);
            loop0:
            while(true)
            {
               §§pop().§]!9§.container.setObjectToFront(this.§+@§.§]!9§.getItemByName("Container_Register_Tab"));
               addr267:
               while(true)
               {
                  §§push(this.§+@§);
                  if(_loc5_)
                  {
                     break;
                  }
                  §§pop().§]!9§.getItemByName("TextField_UserNameField").setVisibility(false);
               }
               addr270:
               var _loc1_:§[!%§ = §§pop().§]!9§.getItemByName("TextField_NickNameField_Register") as §[!%§;
               var _loc2_:§[!%§ = this.§+@§.§]!9§.getItemByName("TextField_EmailField_Register") as §[!%§;
               var _loc3_:§[!%§ = this.§+@§.§]!9§.getItemByName("TextField_PasswordField_Register") as §[!%§;
               var _loc4_:§[!%§ = this.§+@§.§]!9§.getItemByName("TextField_PasswordFieldRepeat_Register") as §[!%§;
               if(_loc6_ || this)
               {
                  _loc1_.§^!1§.restrict = §#!_§.§3t§;
                  loop2:
                  while(true)
                  {
                     _loc4_.§^!1§.restrict = §#!_§.§64§;
                     loop3:
                     while(true)
                     {
                        _loc3_.§^!1§.restrict = §#!_§.§64§;
                        while(true)
                        {
                           _loc2_.§^!1§.restrict = §#!_§.§37§;
                           loop5:
                           for(; _loc6_ || _loc2_; while(_loc6_ || _loc3_)
                           {
                              continue loop3;
                           })
                           {
                              _loc1_.§^!1§.maxChars = 12;
                              while(true)
                              {
                                 _loc2_.§^!1§.maxChars = §#!_§.§!j§;
                                 while(!(_loc5_ && this))
                                 {
                                    continue loop2;
                                    loop10:
                                    while(_loc6_ || _loc2_)
                                    {
                                       _loc4_.§^!1§.tabIndex = 3;
                                       while(_loc6_)
                                       {
                                          _loc1_.§^!1§.tabIndex = 4;
                                          if(_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                return;
                                             }
                                             continue loop10;
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                        if(!(_loc6_ || _loc1_))
                        {
                           continue;
                        }
                        _loc3_.§^!1§.tabIndex = 2;
                        §§goto(addr339);
                     }
                  }
               }
               while(true)
               {
                  _loc2_.§^!1§.tabIndex = 1;
                  §§goto(addr352);
               }
               loop21:
               while(true)
               {
                  if(_loc5_ && _loc3_)
                  {
                     continue loop0;
                  }
                  §§pop().§]!9§.getItemByName("Button_ForgotPassword").setVisibility(false);
                  loop22:
                  while(true)
                  {
                     §§push(this.§+@§);
                     addr169:
                     loop23:
                     for(; _loc6_ || this; if(!(_loc6_ || _loc3_))
                     {
                        continue;
                     },if(_loc6_)
                     {
                        §§pop().§]!9§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
                        loop25:
                        while(_loc6_ || _loc2_)
                        {
                           if(!(_loc5_ && this))
                           {
                              §§push(this.§+@§);
                              loop26:
                              while(true)
                              {
                                 §§pop().§]!9§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
                                 loop27:
                                 while(true)
                                 {
                                    if(!(_loc6_ || _loc1_))
                                    {
                                       break loop26;
                                    }
                                    §§push(this.§+@§);
                                    loop28:
                                    while(!(_loc5_ && _loc2_))
                                    {
                                       §§pop().§]!9§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
                                       loop29:
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                break;
                                                addr84:
                                             }
                                             §§push(this.§+@§);
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop28;
                                                }
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                §§pop().§]!9§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
                                                loop31:
                                                while(_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§+@§);
                                                      addr55:
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                               addr64:
                                                            }
                                                            §§pop().§]!9§.getItemByName("Checkbox_Marketing").setVisibility(true);
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop29;
                                                               }
                                                               continue loop31;
                                                            }
                                                            continue loop27;
                                                         }
                                                         continue loop26;
                                                      }
                                                      addr240:
                                                      while(true)
                                                      {
                                                         §§pop().§]!9§.getItemByName("TextField_PasswordField").setVisibility(false);
                                                         addr245:
                                                         while(true)
                                                         {
                                                            §§push(this.§+@§);
                                                            break loop23;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§+@§);
                                                      addr203:
                                                      while(true)
                                                      {
                                                         §§pop().§]!9§.getItemByName("Checkbox_Marketing").setVisibility(false);
                                                         §§goto(addr218);
                                                      }
                                                   }
                                                }
                                                §§goto(addr181);
                                             }
                                             continue loop21;
                                          }
                                          continue loop25;
                                       }
                                       continue loop22;
                                    }
                                    while(true)
                                    {
                                       §§pop().§]!9§.getItemByName("Checkbox_RememberMe").setVisibility(false);
                                       §§goto(addr227);
                                       §§goto(addr99);
                                    }
                                    addr99:
                                 }
                              }
                              §§goto(addr267);
                           }
                           §§goto(addr245);
                        }
                        while(true)
                        {
                           §§goto(addr222);
                        }
                        addr236:
                     },§§goto(addr203))
                     {
                        §§pop().§]!9§.getItemByName("TextField_EmailField_Register").setVisibility(true);
                        while(!_loc5_)
                        {
                           §§push(this.§+@§);
                           if(!_loc5_)
                           {
                              continue loop23;
                           }
                           §§goto(addr270);
                        }
                        while(true)
                        {
                           continue loop21;
                        }
                     }
                     while(true)
                     {
                        §§pop().§]!9§.getItemByName("Button_Submit").setVisibility(false);
                        §§goto(addr236);
                        §§goto(addr169);
                     }
                  }
               }
            }
         }
         §§goto(addr256);
      }
      
      public function §%!7§() : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc1_:String = "registerPlayer";
         var _loc2_:String = this.§+@§.§]!9§.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§+@§.§]!9§.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§+@§.§]!9§.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§+@§.§]!9§.getText("TextField_EmailField_Register");
         if(!_loc14_)
         {
            this.§%-§();
            loop0:
            while(true)
            {
               addr74:
               while(true)
               {
                  §§push(this.§+@§);
                  loop2:
                  while(true)
                  {
                     §§push(_loc5_);
                     loop3:
                     while(true)
                     {
                        §§pop().§1"§ = §§pop();
                        while(true)
                        {
                           §§push(this.§+@§);
                           if(_loc14_ && _loc3_)
                           {
                              break;
                           }
                           §§push(_loc3_);
                           if(!_loc13_)
                           {
                              continue loop3;
                           }
                           §§pop().§4!e§ = §§pop();
                           if(!(_loc13_ || _loc3_))
                           {
                              continue;
                           }
                           if(_loc14_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr74);
         }
         var _loc6_:int = 5;
         var _loc7_:int = 5;
         var _loc8_:Boolean = false;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            if(!(_loc14_ && _loc1_))
            {
               this.§^<§(§1F§.INVALID_EMAIL);
               if(!_loc14_)
               {
                  return;
               }
            }
            else
            {
               return;
               addr213:
            }
         }
         else
         {
            §§push(_loc5_);
            loop6:
            while(true)
            {
               if(§§pop().length >= 1)
               {
                  loop7:
                  while(true)
                  {
                     §§push(_loc3_);
                     loop8:
                     while(§§pop().length >= _loc7_)
                     {
                        loop9:
                        while(true)
                        {
                           §§push(_loc4_);
                           loop10:
                           while(true)
                           {
                              if(§§pop().length >= _loc7_)
                              {
                                 loop11:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    while(true)
                                    {
                                       if(§§pop() != _loc4_)
                                       {
                                          break loop10;
                                       }
                                       §§push(_loc2_);
                                       if(!(_loc13_ || _loc1_))
                                       {
                                          continue;
                                       }
                                       if(!(_loc13_ || _loc1_))
                                       {
                                          continue loop10;
                                       }
                                       if(!_loc13_)
                                       {
                                          continue loop8;
                                       }
                                       if(!_loc13_)
                                       {
                                          break loop11;
                                       }
                                       if(§§pop().length < _loc6_)
                                       {
                                          if(_loc14_ && _loc1_)
                                          {
                                             break;
                                          }
                                          if(!(_loc13_ || _loc3_))
                                          {
                                             continue loop11;
                                          }
                                          this.§^<§(§1F§.NICKNAME_LENGTH);
                                          if(!(_loc14_ && _loc2_))
                                          {
                                             return;
                                          }
                                       }
                                       else
                                       {
                                          var _loc10_:Object;
                                          (_loc10_ = {}).nickName = _loc2_;
                                          if(_loc13_ || _loc3_)
                                          {
                                             _loc10_.password = _loc3_;
                                             addr323:
                                             _loc10_.id = _loc5_;
                                             addr331:
                                          }
                                          _loc10_.marketing = this.§+@§.§[-§;
                                          if(!(_loc14_ && this))
                                          {
                                             if(!_loc14_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr323);
                                                }
                                                var _loc11_:Object = {
                                                   "type":_loc1_,
                                                   "player":_loc10_
                                                };
                                                var _loc12_:§#!`§ = new §#!`§(_loc11_,§,L§.§2;§ + _loc1_,this,§#!`§.§`!1§);
                                                if(!(_loc14_ && _loc2_))
                                                {
                                                   addr418:
                                                   this.§+@§.§]!9§.getItemByName("WaitingPopup").setVisibility(true);
                                                   §,L§.§8!F§ = new §7!>§("");
                                                   addr415:
                                                   addr423:
                                                   §§push(this.§+@§);
                                                   if(_loc13_ || _loc2_)
                                                   {
                                                      §§pop().§]!9§.container.setObjectToFront(this.§+@§.§]!9§.getItemByName("WaitingPopup"));
                                                      addr396:
                                                      if(_loc13_)
                                                      {
                                                         §=j§.sHighscoreSidebar.enableCreditsButton(false);
                                                         if(!_loc14_)
                                                         {
                                                            if(_loc14_ && _loc2_)
                                                            {
                                                               §§goto(addr415);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr396);
                                                         addr398:
                                                      }
                                                      §§goto(addr423);
                                                   }
                                                   §§goto(addr418);
                                                }
                                                §§goto(addr398);
                                             }
                                             §§goto(addr331);
                                          }
                                          addr327:
                                          §§goto(addr327);
                                       }
                                    }
                                    §§goto(addr213);
                                 }
                                 continue loop6;
                              }
                              this.§^<§(§1F§.PASSWORDS_DONT_MATCH);
                              if(!(_loc14_ && _loc3_))
                              {
                                 if(_loc13_ || this)
                                 {
                                    return;
                                 }
                                 break loop8;
                              }
                              if(!(_loc13_ || this))
                              {
                                 break loop9;
                              }
                              if(_loc13_ || _loc3_)
                              {
                                 if(_loc14_ && _loc1_)
                                 {
                                    this.§^<§(§1F§.INVALID_EMAIL);
                                 }
                                 else
                                 {
                                    addr289:
                                    addr285:
                                 }
                                 continue loop9;
                                 return;
                              }
                              continue loop7;
                           }
                           if(_loc13_ || _loc3_)
                           {
                              this.§^<§(§1F§.PASSWORDS_DONT_MATCH);
                           }
                           §§goto(addr213);
                        }
                        if(!_loc14_)
                        {
                           return;
                        }
                        §§goto(addr289);
                     }
                     this.§^<§(§1F§.PASSWORD_LENGTH);
                     §§goto(addr274);
                  }
               }
            }
         }
         §§goto(addr285);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(_loc7_ || param1)
         {
            this.§+@§.§]!9§.getItemByName("WaitingPopup").setVisibility(false);
         }
         var _loc2_:Object = §+J§.§;!+§((param1.currentTarget as URLLoader).data);
         if(_loc7_ || _loc2_)
         {
            if(_loc2_ != null)
            {
               loop0:
               while(true)
               {
                  if(!_loc2_.security)
                  {
                     if(_loc2_.error)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(§=j§.sHighscoreSidebar);
                           if(_loc7_ || this)
                           {
                              §§push(true);
                              if(!_loc6_)
                              {
                                 §§pop().enableCreditsButton(§§pop());
                                 loop2:
                                 for(; _loc7_; while(true)
                                 {
                                    if(_loc7_ || _loc2_)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             this.§^<§(_loc5_);
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr277);
                                                   }
                                                   break;
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr239);
                                          }
                                          §§goto(addr404);
                                       }
                                       break;
                                    }
                                    continue loop2;
                                    if(_loc7_ || param1)
                                    {
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          break loop0;
                                       }
                                       loop22:
                                       while(true)
                                       {
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§goto(addr182);
                                          }
                                          addr207:
                                          while(_loc7_)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(this.§+@§);
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   if(_loc7_ || param1)
                                                   {
                                                      §§pop().mNextState = §<n§.§@o§;
                                                      continue loop22;
                                                   }
                                                   §§goto(addr432);
                                                }
                                                §§goto(addr417);
                                             }
                                             §§goto(addr348);
                                          }
                                          §§goto(addr301);
                                       }
                                       addr152:
                                       if(!_loc6_)
                                       {
                                          break loop0;
                                       }
                                       continue loop0;
                                    }
                                 },§§goto(addr259))
                                 {
                                    §§push(_loc2_.error);
                                    if(_loc7_ || param1)
                                    {
                                       _loc5_ = §§pop();
                                       continue;
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§4!_§.levelProfileSecurity);
                                       loop6:
                                       while(true)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                if(_loc2_.overallScore != undefined)
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      §§push(§,L§.§8!F§);
                                                      while(true)
                                                      {
                                                         §§pop().overallScore = _loc2_.overallScore;
                                                         addr247:
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(§,L§.§8!F§);
                                                            if(_loc6_ && this)
                                                            {
                                                               break;
                                                            }
                                                            §§pop().§"!1§ = _loc2_.powerUp;
                                                            while(true)
                                                            {
                                                               addr236:
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §4!_§.§!!]§();
                                                                  addr239:
                                                                  while(!_loc6_)
                                                                  {
                                                                     §§push(§=j§.sHighscoreSidebar);
                                                                     loop13:
                                                                     for(; !_loc6_; break loop1)
                                                                     {
                                                                        §§pop().§5K§();
                                                                        loop14:
                                                                        while(!_loc6_)
                                                                        {
                                                                           §§push(§=j§.sHighscoreSidebar);
                                                                           continue loop13;
                                                                           if(_loc6_ && this)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              §9>§.§>%§(§9>§.§9B§);
                                                                              break loop2;
                                                                           }
                                                                           if(_loc7_ || _loc3_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           addr316:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_ && _loc3_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    break loop13;
                                                                                 }
                                                                                 addr352:
                                                                              }
                                                                              this.§^<§("SECURITY_ERROR");
                                                                              addr301:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       break loop6;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§4!_§.§,t§);
                                                                                       if(!(_loc7_ || this))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§pop().§]_§ = _loc2_.security;
                                                                                          loop18:
                                                                                          while(true)
                                                                                          {
                                                                                             §4!_§.levelProfile = _loc2_.levelProfile;
                                                                                             addr368:
                                                                                             if(_loc2_.levelProfileSecurity != undefined)
                                                                                             {
                                                                                                break loop14;
                                                                                             }
                                                                                             addr324:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§#!`§.§,!1§(§4!_§.levelProfile));
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   break loop18;
                                                                                                }
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc7_ || _loc2_))
                                                                                                   {
                                                                                                      break loop18;
                                                                                                   }
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      break loop18;
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                                loop19:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                   loop20:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr417:
                                                                                                      this.§+@§.§,!N§();
                                                                                                      addr430:
                                                                                                      loop21:
                                                                                                      while(_loc7_ || this)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §4!_§.§,t§ = new §;!P§();
                                                                                                            addr404:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               if(_loc6_ && _loc2_)
                                                                                                               {
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                               §§push(§4!_§.§,t§);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§+@§);
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop5;
                                                                                          addr384:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().name = _loc2_.nickName;
                                                                                          break loop12;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr384);
                                                                              }
                                                                           }
                                                                        }
                                                                        §4!_§.levelProfileSecurity = _loc2_.levelProfileSecurity;
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr324);
                                                                        }
                                                                     }
                                                                     §§push(true);
                                                                     while(true)
                                                                     {
                                                                        §§pop().enableCreditsButton(§§pop());
                                                                        §§goto(addr316);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr388);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr274:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr451);
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc2_.powerUp != undefined)
                                                            {
                                                               §§goto(addr247);
                                                            }
                                                            §§goto(addr236);
                                                         }
                                                      }
                                                      break;
                                                      §§goto(addr274);
                                                   }
                                                   §§goto(addr368);
                                                   addr277:
                                                }
                                                §§goto(addr242);
                                             }
                                          }
                                          addr348:
                                          §4!_§.§,t§ = new §;!P§();
                                          §§goto(addr352);
                                       }
                                       return;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§goto(addr152);
                                    }
                                    else
                                    {
                                       §§goto(addr362);
                                    }
                                 }
                              }
                              §§goto(addr315);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(_loc7_ || _loc2_)
                           {
                              §§pop().changeState(HighscoreSidebar.§4!@§);
                              §§goto(addr207);
                           }
                           §§goto(addr230);
                        }
                     }
                     break;
                  }
                  §§goto(addr430);
               }
               return;
            }
            addr451:
            return;
         }
         §§goto(addr425);
      }
      
      public function §3!X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'z§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§+@§);
            while(true)
            {
               §§pop().§&!+§();
               while(true)
               {
                  §§push(this.§+@§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§pop().§]!9§.getItemByName("WaitingPopup").setVisibility(false);
                  while(!(_loc2_ && _loc3_))
                  {
                     §=j§.sHighscoreSidebar.enableCreditsButton(true);
                     if(!_loc2_)
                     {
                        return;
                        addr46:
                     }
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      private function §^<§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§+@§.§]!9§.getItemByName("WaitingPopup").setVisibility(false);
         }
         var _loc2_:* = param1;
         if(_loc4_ || _loc2_)
         {
            §§push(§1F§.CONNECTION_ERROR_RETRY);
            if(!_loc3_)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(0);
                        if(_loc4_ || _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr394:
                        §§push(2);
                        if(_loc3_ && param1)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§1F§.NICKNAME_LENGTH);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(_loc2_);
                        if(!(_loc3_ && this))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§push(1);
                                 if(!_loc3_)
                                 {
                                    loop16:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §§push(this.§+@§);
                                          loop14:
                                          while(true)
                                          {
                                             §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
                                             addr311:
                                             while(true)
                                             {
                                                §§push(this.§+@§);
                                                addr295:
                                                while(true)
                                                {
                                                   §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
                                                   addr300:
                                                   while(true)
                                                   {
                                                      §§push(this.§+@§);
                                                      addr286:
                                                      while(true)
                                                      {
                                                         §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
                                                         addr291:
                                                         while(true)
                                                         {
                                                            §§push(this.§+@§);
                                                            addr270:
                                                            while(_loc3_ && this)
                                                            {
                                                               continue loop14;
                                                            }
                                                            §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
                                                            addr282:
                                                            break loop16;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          break;
                                       case 1:
                                          addr261:
                                          this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
                                          break;
                                          addr266:
                                       case 2:
                                          addr236:
                                          this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
                                          addr241:
                                          if(!_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             §§goto(addr300);
                                          }
                                          §§goto(addr291);
                                       case 3:
                                          §§push(this.§+@§);
                                          loop15:
                                          while(true)
                                          {
                                             §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
                                             addr230:
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§+@§);
                                                addr198:
                                                while(true)
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      break loop11;
                                                   }
                                                   continue loop15;
                                                }
                                                continue loop15;
                                             }
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
                                                addr217:
                                                if(_loc4_)
                                                {
                                                   break loop16;
                                                }
                                                §§goto(addr241);
                                             }
                                             §§goto(addr295);
                                          }
                                          break;
                                       case 4:
                                          addr180:
                                          §§push(this.§+@§);
                                          if(_loc4_ || this)
                                          {
                                             if(_loc4_)
                                             {
                                                §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
                                                break;
                                                addr194:
                                             }
                                             else
                                             {
                                                §§goto(addr261);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr236);
                                          }
                                          break;
                                       case 5:
                                          addr162:
                                          §§push(this.§+@§);
                                          if(!(_loc3_ && this))
                                          {
                                             §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
                                             break;
                                             addr174:
                                          }
                                          else
                                          {
                                             §§goto(addr286);
                                          }
                                          break;
                                       case 6:
                                          addr133:
                                          §§push(this.§+@§);
                                          if(_loc4_ || this)
                                          {
                                             §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
                                             if(!(_loc3_ && this))
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr311);
                                                }
                                                else
                                                {
                                                   §§goto(addr194);
                                                }
                                             }
                                             §§goto(addr511);
                                          }
                                          else
                                          {
                                             §§goto(addr162);
                                          }
                                       default:
                                          §§push(this.§+@§);
                                          loop0:
                                          while(true)
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
                                                   loop1:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§push(this.§+@§);
                                                            loop2:
                                                            while(true)
                                                            {
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           break;
                                                                           addr57:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§+@§);
                                                                           addr60:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           addr511:
                                                                           return;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  §§goto(addr217);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr133);
                                                               }
                                                            }
                                                            §§goto(addr286);
                                                         }
                                                         §§goto(addr282);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr266);
                                                      }
                                                   }
                                                   break loop16;
                                                }
                                                §§goto(addr198);
                                                §§goto(addr295);
                                             }
                                             else
                                             {
                                                §§goto(addr180);
                                             }
                                          }
                                          §§goto(addr236);
                                    }
                                    addr492:
                                    §§goto(addr508);
                                    addr492:
                                    §§push(this.§+@§);
                                 }
                                 else
                                 {
                                    addr455:
                                    §§goto(addr492);
                                 }
                                 §§goto(addr492);
                              }
                              else
                              {
                                 §§goto(addr394);
                              }
                           }
                           else
                           {
                              §§push(§1F§.PASSWORD_LENGTH);
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr388:
                                 §§push(_loc2_);
                                 if(_loc4_)
                                 {
                                    addr391:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr394);
                                       }
                                       else
                                       {
                                          addr423:
                                          §§push(3);
                                          if(_loc3_)
                                          {
                                             addr474:
                                          }
                                          §§goto(addr492);
                                       }
                                    }
                                    else
                                    {
                                       §§push(§1F§.PASSWORDS_DONT_MATCH);
                                       if(_loc4_ || param1)
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc3_ && this))
                                          {
                                             addr420:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr423);
                                                }
                                                else
                                                {
                                                   addr447:
                                                   §§push(4);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§goto(addr455);
                                                   }
                                                   §§goto(addr492);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§1F§.INVALID_EMAIL);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§push(_loc2_);
                                                   if(!_loc3_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            §§goto(addr447);
                                                         }
                                                         else
                                                         {
                                                            addr471:
                                                            §§push(5);
                                                            if(!_loc3_)
                                                            {
                                                               §§goto(addr474);
                                                            }
                                                            else
                                                            {
                                                               addr487:
                                                               §§goto(addr492);
                                                            }
                                                         }
                                                         §§goto(addr492);
                                                      }
                                                      else
                                                      {
                                                         §§push(§1F§.FIELD_LENGTH);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            addr465:
                                                            §§push(_loc2_);
                                                            if(!_loc3_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§goto(addr471);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr479:
                                                                     §§push(6);
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        §§goto(addr487);
                                                                     }
                                                                     §§goto(addr492);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr477:
                                                                  §§push(§1F§.FIELD_NOT_VALID);
                                                                  §§push(_loc2_);
                                                               }
                                                               §§goto(addr479);
                                                            }
                                                         }
                                                         §§goto(addr477);
                                                      }
                                                   }
                                                }
                                                §§goto(addr465);
                                             }
                                             §§goto(addr492);
                                          }
                                          if(§§pop() === §§pop())
                                          {
                                             §§goto(addr479);
                                          }
                                          else
                                          {
                                             §§goto(addr492);
                                             §§push(7);
                                          }
                                          §§goto(addr492);
                                       }
                                    }
                                    §§goto(addr492);
                                 }
                                 §§goto(addr420);
                              }
                              §§goto(addr465);
                           }
                           §§goto(addr492);
                        }
                        §§goto(addr420);
                     }
                     §§goto(addr477);
                  }
                  §§goto(addr492);
               }
               §§goto(addr391);
            }
            §§goto(addr388);
         }
         §§goto(addr479);
      }
      
      private function §%-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§+@§);
            loop0:
            while(true)
            {
               §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
               loop1:
               while(true)
               {
                  §§push(this.§+@§);
                  loop2:
                  while(_loc2_)
                  {
                     §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
                     while(!(_loc1_ && this))
                     {
                        §§push(this.§+@§);
                        loop4:
                        for(; !(_loc1_ && _loc1_); §§push(this.§+@§),if(_loc1_ && _loc2_)
                        {
                           continue;
                        },§§goto(addr34))
                        {
                           §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
                           while(!_loc1_)
                           {
                              continue loop4;
                              §§pop().§]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
                              if(!(_loc1_ && _loc2_))
                              {
                                 return;
                                 addr56:
                              }
                           }
                           §§goto(addr85);
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr56);
      }
   }
}
