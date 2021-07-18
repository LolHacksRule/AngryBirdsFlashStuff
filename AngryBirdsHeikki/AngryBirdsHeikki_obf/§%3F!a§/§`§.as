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
   
   public class §`§ implements §>!=§
   {
       
      
      private var §+@§:§#!_§;
      
      public function §`§(param1:§#!_§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super();
            do
            {
               this.§+@§ = param1;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function §+!O§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§4!Y§ = this.§+@§.§]!9§.getItemByName("Checkbox_RememberMe") as §4!Y§;
         if(_loc3_)
         {
            §§push(this.§+@§);
            loop0:
            while(true)
            {
               if(§§pop().§"!a§)
               {
                  while(true)
                  {
                     _loc1_.setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     addr234:
                     while(true)
                     {
                     }
                  }
                  addr230:
               }
               else
               {
                  _loc1_.setComponentState(§4!Y§.§=?§);
                  while(true)
                  {
                  }
                  addr215:
               }
               while(true)
               {
                  §§push(this.§+@§);
                  addr196:
                  while(true)
                  {
                     (§§pop().§]!9§.getItemByName("TextField_UserNameField") as §[!%§).§^!1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
                     addr207:
                     while(true)
                     {
                        §§push(this.§+@§);
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr159);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§+@§);
            while(true)
            {
               (§§pop().§]!9§.getItemByName("TextField_UserNameField") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
               §§goto(addr80);
            }
         }
         addr80:
         do
         {
            §§push(this.§+@§);
            if(!_loc2_)
            {
               continue;
            }
            continue loop0;
         }
         while((§§pop().§]!9§.getItemByName("TextField_PasswordField") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§), !_loc1_);
         
      }
      
      public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§+@§);
            while(true)
            {
               §§pop().§]!9§.container.setObjectToFront(this.§+@§.§]!9§.getItemByName("Container_Login_Tab"));
            }
            addr295:
         }
         while(true)
         {
            §§push(this.§+@§);
            while(_loc2_)
            {
               §§pop().§]!9§.getItemByName("TextField_UserNameField").setVisibility(true);
               loop3:
               while(true)
               {
                  §§push(this.§+@§);
                  while(true)
                  {
                     §§pop().§]!9§.getItemByName("TextField_PasswordField").setVisibility(true);
                     while(true)
                     {
                        §§push(this.§+@§);
                        while(true)
                        {
                           §§pop().§]!9§.getItemByName("Button_Submit").setVisibility(true);
                           loop7:
                           while(true)
                           {
                              §§push(this.§+@§);
                              loop8:
                              while(true)
                              {
                                 §§pop().§]!9§.getItemByName("Checkbox_RememberMe").setVisibility(true);
                                 while(true)
                                 {
                                    §§push(this.§+@§);
                                    while(_loc2_)
                                    {
                                       §§pop().§]!9§.getItemByName("Checkbox_Marketing").setVisibility(true);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(this.§+@§);
                                          loop12:
                                          while(true)
                                          {
                                             §§pop().§]!9§.getItemByName("Button_ForgotPassword").setVisibility(true);
                                             addr233:
                                             while(true)
                                             {
                                                §§push(this.§+@§);
                                                continue loop12;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                if(!(_loc2_ || this))
                                                {
                                                   break;
                                                }
                                                continue loop3;
                                             }
                                             continue loop11;
                                          }
                                          continue loop7;
                                       }
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       §§pop().§]!9§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
                                       §§goto(addr115);
                                    }
                                    continue loop8;
                                 }
                              }
                           }
                        }
                     }
                     addr175:
                     while(_loc2_ || _loc1_)
                     {
                        §§pop().§]!9§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
                        §§goto(addr187);
                     }
                  }
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §§pop().§]!9§.getItemByName("Checkbox_Marketing").setVisibility(false);
               §§goto(addr79);
            }
            §§goto(addr295);
         }
      }
      
      private function §5!2§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§+@§);
            while(true)
            {
               §§pop().§]!9§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
               addr33:
               if(!(_loc3_ && _loc2_))
               {
                  §§pop().§1!D§.hide();
                  if(!(_loc2_ || _loc3_))
                  {
                     loop3:
                     while(!(_loc3_ && param1))
                     {
                        addr75:
                        §§push(this.§+@§);
                        if(_loc2_)
                        {
                           §§goto(addr33);
                        }
                        else
                        {
                           while(true)
                           {
                              §§pop().§]!9§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
                              continue loop3;
                              §§goto(addr75);
                           }
                           addr63:
                        }
                     }
                     while(true)
                     {
                        §§goto(addr63);
                     }
                     addr93:
                  }
                  return;
               }
            }
         }
         §§goto(addr93);
      }
      
      public function §%!7§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:String = "login";
         var _loc2_:String = this.§+@§.§]!9§.getText("TextField_UserNameField");
         var _loc3_:String = this.§+@§.§]!9§.getText("TextField_PasswordField");
         var _loc4_:RegExp = /^\S+@\S+\.\S+$/;
         var _loc5_:* = false;
         if(_loc10_ || this)
         {
            §§push(_loc2_);
            loop0:
            for(; §§pop().length != 0; loop2:
            while(true)
            {
               §§push(_loc3_);
               if(!(_loc10_ || _loc1_))
               {
                  break;
               }
               if(§§pop().length == 0)
               {
                  loop3:
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        this.§^<§(§1F§.PASSWORD_MISSING);
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(true);
                              loop6:
                              while(true)
                              {
                                 _loc5_ = §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       if(!_loc9_)
                                       {
                                          if(_loc10_ || _loc1_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                if(_loc10_ || this)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      break;
                                                   }
                                                   if(_loc10_)
                                                   {
                                                      if(_loc10_ || _loc1_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            return;
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop7;
                                                   }
                                                   if(!_loc9_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop6;
                                             }
                                             var _loc6_:Object;
                                             (_loc6_ = {}).id = _loc2_;
                                             if(_loc10_ || _loc2_)
                                             {
                                                _loc6_.password = _loc3_;
                                             }
                                             var _loc7_:Object = {
                                                "type":_loc1_,
                                                "player":_loc6_
                                             };
                                             var _loc8_:§#!`§ = new §#!`§(_loc7_,§,L§.§2;§ + _loc1_,this,§#!`§.§`!1§);
                                             if(_loc10_ || this)
                                             {
                                                addr278:
                                                this.§+@§.§]!9§.getItemByName("WaitingPopup").setVisibility(true);
                                                §,L§.§8!F§ = new §7!>§("");
                                                addr250:
                                                this.§+@§.§]!9§.container.setObjectToFront(this.§+@§.§]!9§.getItemByName("WaitingPopup"));
                                                §=j§.sHighscoreSidebar.enableCreditsButton(false);
                                                addr275:
                                                addr258:
                                                if(!_loc9_)
                                                {
                                                   §§push(this.§+@§);
                                                   if(!(_loc9_ && _loc1_))
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(§§pop().§"!a§)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  addr224:
                                                                  this.§+@§.§=!8§(_loc2_,_loc3_);
                                                               }
                                                               if(_loc10_)
                                                               {
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§goto(addr275);
                                                                     }
                                                                     §§goto(addr200);
                                                                  }
                                                                  §§goto(addr258);
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            addr200:
                                                            return;
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                   §§goto(addr224);
                                                   addr246:
                                                }
                                                addr283:
                                                §§goto(addr283);
                                             }
                                             §§goto(addr246);
                                             addr48:
                                          }
                                          else
                                          {
                                             §§goto(addr121);
                                          }
                                       }
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr121);
                              }
                           }
                        }
                     }
                     else
                     {
                        if(_loc9_ && _loc1_)
                        {
                           break loop0;
                        }
                        while(true)
                        {
                           §§goto(addr116);
                        }
                     }
                     addr121:
                     this.§^<§(§1F§.INVALID_EMAIL);
                     if(!_loc9_)
                     {
                        return;
                     }
                     addr156:
                     return;
                  }
                  §§goto(addr156);
               }
               §§goto(addr48);
            })
            {
               while(true)
               {
                  if(!_loc4_.test(_loc2_))
                  {
                     §§goto(addr121);
                  }
                  continue loop0;
               }
            }
            this.§^<§(§1F§.INVALID_EMAIL);
            §§goto(addr156);
         }
         §§goto(addr147);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(!(_loc7_ && _loc3_))
         {
            this.§+@§.§]!9§.getItemByName("WaitingPopup").setVisibility(false);
         }
         var _loc2_:Object = §+J§.§;!+§((param1.currentTarget as URLLoader).data);
         if(_loc8_)
         {
            §§push(Boolean(_loc2_));
            if(!_loc7_)
            {
               if(§§pop())
               {
                  if(_loc8_ || _loc3_)
                  {
                     §§pop();
                     while(true)
                     {
                        §§push(Boolean(_loc2_.security));
                        if(_loc7_)
                        {
                        }
                        break;
                     }
                     addr286:
                     if(§§pop())
                     {
                        §§goto(addr287);
                     }
                     §§goto(addr434);
                     addr281:
                  }
                  §§goto(addr286);
               }
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §4!_§.§,t§ = new §;!P§();
                        while(true)
                        {
                           §§push(§4!_§.§,t§);
                           loop4:
                           while(true)
                           {
                              §§pop().name = _loc2_.nickName;
                              addr253:
                              while(true)
                              {
                                 §§push(§4!_§.§,t§);
                                 while(true)
                                 {
                                    §§pop().§5!D§ = _loc2_.id;
                                    addr246:
                                    while(true)
                                    {
                                       §§push(§4!_§.§,t§);
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                        if(!(_loc8_ || _loc3_))
                        {
                           continue;
                        }
                        this.§^<§("SECURITY_ERROR");
                        §§goto(addr140);
                     }
                  }
                  else
                  {
                     addr391:
                     §§push(Boolean(_loc2_));
                     if(Boolean(_loc2_))
                     {
                        addr393:
                        §§pop();
                        addr394:
                        §§push(Boolean(_loc2_.error));
                        if(!_loc7_)
                        {
                           if(_loc8_ || param1)
                           {
                              addr362:
                              if(§§pop())
                              {
                                 addr364:
                                 if(_loc8_)
                                 {
                                    §§push(§=j§.sHighscoreSidebar);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       if(!_loc7_)
                                       {
                                          §§pop().enableCreditsButton(true);
                                          addr379:
                                          if(_loc8_ || this)
                                          {
                                             this.§^<§(_loc2_.error);
                                             addr339:
                                             if(_loc8_ || _loc2_)
                                             {
                                                if(_loc8_)
                                                {
                                                   §9>§.§>%§(§9>§.§ j§);
                                                   if(_loc8_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §§goto(addr379);
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr416);
                                                   }
                                                   §§goto(addr339);
                                                }
                                                §§goto(addr394);
                                             }
                                             §§goto(addr364);
                                          }
                                          §§goto(addr409);
                                       }
                                       §§goto(addr432);
                                    }
                                    §§goto(addr413);
                                 }
                                 §§goto(addr400);
                              }
                              break;
                           }
                           §§goto(addr391);
                        }
                        §§goto(addr393);
                     }
                     §§goto(addr362);
                  }
               }
               addr287:
               for each(_loc4_ in _loc2_.tutorials)
               {
                  if(_loc8_ || _loc3_)
                  {
                     §,L§.§8!F§.§&0§(_loc4_);
                  }
               }
               if(_loc8_)
               {
                  addr434:
                  §4!_§.§!!]§();
                  while(true)
                  {
                     addr432:
                     §=j§.sHighscoreSidebar.§5K§();
                  }
                  addr436:
               }
               while(true)
               {
                  addr413:
                  §=j§.sHighscoreSidebar.changeState(HighscoreSidebar.§4!@§);
                  addr416:
                  if(!_loc8_)
                  {
                     continue;
                  }
                  this.§+@§.mNextState = §<n§.§@o§;
                  §9>§.§>%§(§9>§.§-!D§);
                  if(_loc8_)
                  {
                     break;
                  }
                  §§goto(addr436);
               }
               return;
            }
            §§goto(addr286);
         }
         §§goto(addr239);
      }
      
      public function §3!X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'z§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^<§(§1F§.CONNECTION_ERROR_RETRY);
            while(true)
            {
               this.§+@§.§]!9§.getItemByName("WaitingPopup").setVisibility(false);
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            §=j§.sHighscoreSidebar.enableCreditsButton(true);
            if(!_loc3_)
            {
               if(!(_loc3_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §^<§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§+@§.§]!9§.getItemByName("WaitingPopup").setVisibility(false);
         }
         var _loc2_:* = param1;
         if(_loc4_ || this)
         {
            §§push(§1F§.INVALID_EMAIL);
            if(!(_loc3_ && _loc3_))
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc3_ && this))
                     {
                        addr206:
                        §§push(0);
                        if(_loc3_ && param1)
                        {
                           addr243:
                        }
                     }
                     else
                     {
                        addr248:
                        §§push(2);
                        if(_loc3_)
                        {
                        }
                     }
                     switch(§§pop())
                     {
                        case 0:
                           addr161:
                           this.§+@§.§]!9§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
                           break;
                        case 1:
                           addr143:
                           §§push(this.§+@§);
                           if(_loc4_ || _loc3_)
                           {
                              §§pop().§]!9§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
                              addr272:
                              this.§+@§.§1!D§.show(param1);
                              addr275:
                              return;
                              addr270:
                              addr155:
                           }
                           else
                           {
                              §§goto(addr161);
                           }
                           break;
                        case 2:
                           addr115:
                           this.§+@§.§]!9§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(this.§+@§);
                              if(_loc4_)
                              {
                                 §§pop().§]!9§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
                                 if(!_loc3_)
                                 {
                                    if(!(_loc4_ || param1))
                                    {
                                       break;
                                    }
                                    addr51:
                                    §§goto(addr270);
                                 }
                                 §§goto(addr275);
                              }
                           }
                           §§goto(addr272);
                        default:
                           §§push(this.§+@§);
                           if(_loc4_ || _loc3_)
                           {
                              if(_loc4_ || param1)
                              {
                                 §§pop().§]!9§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
                                 if(!(_loc3_ && param1))
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(this.§+@§);
                                       if(_loc4_ || this)
                                       {
                                          if(_loc4_)
                                          {
                                             §§pop().§]!9§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
                                             if(!(_loc3_ && this))
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr51);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr143);
                                          }
                                       }
                                       §§goto(addr272);
                                    }
                                    §§goto(addr155);
                                 }
                              }
                              else
                              {
                                 §§goto(addr115);
                              }
                           }
                           §§goto(addr272);
                     }
                     addr256:
                     §§goto(addr272);
                     addr256:
                  }
                  else
                  {
                     §§push(§1F§.PASSWORD_MISSING);
                     if(!(_loc3_ && this))
                     {
                        addr224:
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           addr227:
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc3_ && this))
                              {
                                 §§push(1);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§goto(addr243);
                                 }
                              }
                              else
                              {
                                 §§goto(addr248);
                              }
                              §§goto(addr256);
                           }
                           else
                           {
                              addr246:
                              §§push(§1F§.CONNECTION_ERROR_RETRY);
                              §§push(_loc2_);
                           }
                           §§goto(addr248);
                        }
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr248);
                        }
                        else
                        {
                           §§push(3);
                        }
                        §§goto(addr256);
                     }
                     §§goto(addr246);
                  }
                  §§goto(addr248);
               }
               §§goto(addr227);
            }
            §§goto(addr224);
         }
         §§goto(addr206);
      }
   }
}
