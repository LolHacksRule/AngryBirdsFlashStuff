package §'!3§
{
   import §!""§.§1=§;
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §1!c§.§%!<§;
   import §1!c§.§1!Z§;
   import §1!c§.§?"7§;
   import §1!c§.§^!,§;
   import §1!c§.§^j§;
   import §1!i§.§4z§;
   import §1!i§.AbstractPopup;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   import §37§.§9!c§;
   import §4!i§.§@"#§;
   import §4[§.§4Z§;
   import §;V§.§%c§;
   import §<S§.HighscoreSidebar;
   import §>G§.PopupSidebarEvent;
   import §[!Z§.§>D§;
   import §^"!§.§+!7§;
   import §^"!§.§;m§;
   
   public class §2!2§ extends AbstractPopup
   {
      
      private static var §?B§:Class;
      
      private static var §'!!§:HighscoreSidebar = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?B§ = §[!<§;
            do
            {
               §'!!§ = null;
            }
            while(!_loc2_);
            
         }
      }
      
      private var §-!j§:§9!c§;
      
      private var §&E§:int = -1;
      
      private var § S§:int = -1;
      
      private var §3!+§:§4Z§;
      
      public function §2!2§(param1:§4Z§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super(§`!t§.§4l§,§4z§.DEFAULT,§4!H§.§7o§(§?B§));
            do
            {
               this.§3!+§ = param1;
            }
            while(_loc3_);
            
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            loop0:
            while(true)
            {
               §§push(§'!!§);
               loop1:
               while(true)
               {
                  if(§§pop() == null)
                  {
                     while(true)
                     {
                        §'!!§ = new HighscoreSidebar();
                        addr112:
                        while(true)
                        {
                        }
                     }
                     addr108:
                  }
                  while(true)
                  {
                     §§push(§'!!§);
                     continue loop1;
                     §§goto(addr112);
                  }
               }
               while(true)
               {
                  if(!(_loc2_ || _loc2_))
                  {
                     continue loop0;
                  }
                  this.§@!0§();
                  §§goto(addr68);
               }
            }
         }
         §§goto(addr93);
      }
      
      public function §@!0§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §29§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
            if(_loc2_)
            {
               §29§.getItemByName("MovieClip_SoundOff").setVisibility(!§ !4§.§4E§());
            }
         }
         §§push(this.§=^§());
         if(!(_loc3_ && _loc2_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc1_))
         {
            §§push(§'!!§);
            loop0:
            while(true)
            {
               §§push(_loc1_);
               addr182:
               while(true)
               {
                  §§pop().§;!I§(§§pop());
                  continue loop0;
               }
            }
         }
         §§goto(addr104);
      }
      
      public function §9!z§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(§'!!§);
            loop0:
            while(true)
            {
               §§push(§§pop().container);
               addr91:
               while(true)
               {
                  §§push(§§pop().getItemByName("Button_Credits"));
                  addr93:
                  while(true)
                  {
                     §§push(param1);
                     addr94:
                     while(true)
                     {
                        §§pop().setVisibility(§§pop());
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §2!J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §'!!§.§-!<§(param1);
         }
      }
      
      public function §;!I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §'!!§.§;!I§(param1);
         }
      }
      
      public function §8!E§() : Boolean
      {
         return §'!!§.container.getItemByName("Button_Credits").visible;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §'!!§.§<8§(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(_loc5_)
         {
            if("MUTE" === _loc4_)
            {
               if(!_loc6_)
               {
                  addr240:
                  §§push(0);
                  if(_loc5_ || param1)
                  {
                  }
               }
               else
               {
                  addr299:
                  §§push(4);
                  if(_loc5_)
                  {
                     addr312:
                  }
               }
               §§goto(addr317);
            }
            else if("LOGOUT" === _loc4_)
            {
               if(!(_loc6_ && param2))
               {
                  §§push(1);
                  if(_loc6_ && this)
                  {
                     addr286:
                  }
               }
               else
               {
                  §§goto(addr299);
               }
               §§goto(addr317);
            }
            else if("LOGIN" === _loc4_)
            {
               if(_loc5_ || param1)
               {
                  §§push(2);
                  if(_loc5_ || param3)
                  {
                     §§goto(addr286);
                  }
                  else
                  {
                     §§goto(addr312);
                  }
               }
               else
               {
                  §§goto(addr299);
               }
               §§goto(addr317);
            }
            else
            {
               if("CREDITS" !== _loc4_)
               {
                  if("TUTORIAL" === _loc4_)
                  {
                     §§goto(addr299);
                  }
                  else
                  {
                     §§push(5);
                  }
                  addr317:
                  loop3:
                  switch(§§pop())
                  {
                     case 0:
                        addr213:
                        §§push(§ !4§.§%"7§ as AngryBirdsCustom);
                        §§push(§ !4§.§4E§());
                        if(_loc5_)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().setSoundsEnabled(§§pop());
                        while(true)
                        {
                           §29§.getItemByName("MovieClip_SoundOff").setVisibility(!§ !4§.§4E§());
                           if(!(_loc5_ || this))
                           {
                              break loop3;
                           }
                           if(!(_loc5_ || param2))
                           {
                              continue;
                           }
                           §>D§.§9!q§("Menu_Confirm");
                           addr184:
                           break loop3;
                           addr184:
                        }
                        break;
                     case 1:
                        addr164:
                        §§push(§ !4§.§%"7§);
                        if(!_loc6_)
                        {
                           §§pop().§+!J§.openPopup(new §7!<§(this.§3!+§));
                           if(!(_loc6_ && param3))
                           {
                              this.§08§.§4!4§(false);
                              §>D§.§9!q§("Menu_Confirm");
                              addr135:
                              if(_loc5_ || param1)
                              {
                                 break;
                              }
                              addr148:
                           }
                           break;
                        }
                        §§goto(addr213);
                        §§goto(addr184);
                     case 2:
                        §§push(§ !4§.§%"7§);
                        if(_loc5_ || param2)
                        {
                           (§§pop() as AngryBirdsCustom).§7"6§(§?"7§.§8"%§);
                           if(_loc5_ || this)
                           {
                              if(_loc5_ || param3)
                              {
                                 §>D§.§9!q§("Menu_Confirm");
                                 break;
                                 addr98:
                              }
                              else
                              {
                                 §§goto(addr148);
                              }
                           }
                           break;
                        }
                        §§goto(addr164);
                        §§goto(addr184);
                     case 3:
                        this.§@!L§();
                        loop1:
                        while(true)
                        {
                           dispatchEvent(new PopupSidebarEvent(PopupSidebarEvent.§@n§));
                           addr80:
                           while(true)
                           {
                              if(_loc5_ || param1)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        §>D§.§9!q§("Menu_Confirm");
                        addr41:
                        break;
                        addr72:
                     case 4:
                        this.§&!z§();
                        if(_loc5_ || param1)
                        {
                           if(!(_loc6_ && param3))
                           {
                              if(_loc5_ || param1)
                              {
                                 §>D§.§9!q§("Menu_Confirm");
                                 if(_loc5_ || this)
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       if(_loc5_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr98);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr72);
                                    }
                                    §§goto(addr41);
                                 }
                                 break;
                              }
                              §§goto(addr135);
                           }
                           else
                           {
                              §§goto(addr80);
                           }
                           §§goto(addr41);
                        }
                  }
                  return;
               }
               if(_loc5_)
               {
                  §§push(3);
                  if(_loc6_)
                  {
                     §§goto(addr312);
                  }
               }
               else
               {
                  §§goto(addr299);
               }
               §§goto(addr317);
            }
            §§goto(addr299);
         }
         §§goto(addr240);
      }
      
      protected function §&!z§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§+!7§ = § !4§.§%"7§.§=!e§;
         var _loc2_:Vector.<String> = _loc1_.§+!k§.getTutorialNamesForMapping(§;m§.§`X§);
         if(_loc4_)
         {
            _loc1_.openMultipleTutorialPopups(_loc2_,true,true,true,true,null,true,true);
         }
      }
      
      private function §@!L§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§0![§ = (§ !4§.§%"7§ as AngryBirdsCustom).§[!,§;
         if(!(_loc3_ && this))
         {
            _loc1_.loadLevel(_loc1_.getValidLevelId(HighscoreSidebar.§7!_§));
            do
            {
               (§ !4§.§%"7§ as AngryBirdsCustom).§7"6§(§^!,§.§8"%§);
            }
            while(_loc3_);
            
         }
      }
      
      private function §>0§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(§@"#§.§,2§);
            loop0:
            while(true)
            {
               §§pop().setLanguage(param1);
               addr85:
               while(true)
               {
                  §8&§.setLanguage(param1);
                  continue loop0;
               }
            }
            addr83:
         }
         loop2:
         while(true)
         {
            §§push(§@"#§.§,2§);
            if(_loc2_)
            {
               §§push(§§pop().§2"2§());
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               param1 = §§pop();
               while(_loc2_)
               {
                  §%c§.§6"§("language",param1);
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(_loc2_ || this)
                  {
                     break loop2;
                  }
                  §§goto(addr85);
               }
               continue;
            }
            §§goto(addr83);
         }
      }
      
      public function updateTextFields() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@"#§.§,2§.updateTextFields(§29§,"HighscoreSidebar");
         }
      }
      
      protected function §=^§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = (§ !4§.§%"7§ as AngryBirdsCustom).§!!w§();
         if(_loc2_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(§^j§.§8"%§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr136:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 addr103:
                                 while(_loc2_)
                                 {
                                    §§push(§1!Z§.§8"%§);
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       addr108:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        loop5:
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc2_)
                           {
                              continue loop3;
                           }
                           if(!§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 loop7:
                                 while(!_loc3_)
                                 {
                                    §§push(_loc1_);
                                    if(!_loc3_)
                                    {
                                       §§push(§%!<§.§8"%§);
                                       if(!(_loc3_ && this))
                                       {
                                          if(_loc2_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§push(true);
                                                      }
                                                      else
                                                      {
                                                         addr26:
                                                         §§push(false);
                                                         if(_loc2_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            continue;
                                                         }
                                                      }
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         break loop5;
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr26);
                                                }
                                                §§goto(addr108);
                                             }
                                             addr39:
                                             if(!(_loc3_ && this))
                                             {
                                                return §§pop();
                                             }
                                             continue loop2;
                                             addr75:
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr107);
                                    }
                                    §§goto(addr103);
                                 }
                                 §§goto(addr136);
                              }
                           }
                           §§goto(addr75);
                        }
                        return §§pop();
                     }
                  }
               }
            }
         }
         §§goto(addr136);
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.updateLocalization();
         }
         do
         {
            this.updateTextFields();
         }
         while(!_loc1_);
         
      }
      
      override protected function runTransition(param1:§1=§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.runTransition(param1);
         }
      }
      
      public function get §08§() : HighscoreSidebar
      {
         return §'!!§;
      }
      
      public function get §6!"§() : §4Z§
      {
         return this.§3!+§;
      }
   }
}
