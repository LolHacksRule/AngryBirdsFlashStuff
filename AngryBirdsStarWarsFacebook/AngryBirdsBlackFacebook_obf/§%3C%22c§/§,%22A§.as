package §<"c§
{
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§6!D§;
   import §+D§.§^"m§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §^#>§.§`"]§;
   import com.angrybirds.§,!q§;
   
   public class §,"A§ extends §]"_§
   {
      
      public static const §9k§:Number = -250;
      
      public static const §^!7§:String = "PauseState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §9k§ = -250;
         }
         do
         {
            §^!7§ = "PauseState";
         }
         while(_loc2_);
         
      }
      
      protected var §@!`§:§[#R§ = null;
      
      public function §,"A§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "PauseState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
         do
         {
            §@;§ = new §]#[§(this);
            do
            {
               §@;§.init(§&$§.§@8§.Views.View_LevelPause[0]);
            }
            while(_loc1_ && _loc2_);
            
         }
         while(_loc1_ && _loc1_);
         
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               this.§3!q§();
               while(true)
               {
                  §,!q§.§9!,§.background.stopAmbientSound();
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        this.§8"u§();
                        if(!(_loc3_ && this))
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      protected function §8"u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@;§.getItemByName("Button_Help").setVisibility(false);
         }
         do
         {
            §@;§.getItemByName("Button_Sound").setVisibility(false);
            do
            {
               §@;§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
            }
            while(!(_loc2_ || this));
            
         }
         while(_loc1_);
         
      }
      
      private function §8!m§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§@!`§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§@!`§);
                     addr70:
                     while(true)
                     {
                        §§pop().stop();
                        do
                        {
                           this.§@!`§ = null;
                        }
                        while(_loc1_);
                        
                        if(!(_loc1_ && _loc1_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr68:
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr68);
      }
      
      protected function §3!q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§+!b§.currentLevelNumericName != null)
            {
               while(true)
               {
                  (§@;§.getItemByName("TextField_LevelName") as §6!D§).§13§.text = §+!b§.currentLevelNumericName;
                  addr185:
                  while(true)
                  {
                  }
                  loop6:
                  while(_loc1_ || this)
                  {
                     this.§8!m§();
                     loop7:
                     for(; !(_loc2_ && _loc2_); loop9:
                     for(; !(_loc2_ && this); while(!(_loc2_ && this))
                     {
                        §§goto(addr54);
                     })
                     {
                        §§push(this.§@!`§);
                        while(true)
                        {
                           §§pop().onComplete = this.§ "6§;
                           §§push(this.§@!`§);
                           addr54:
                           continue loop9;
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           §§pop().play();
                           if(!_loc1_)
                           {
                              continue loop9;
                           }
                           if(!_loc1_)
                           {
                              continue loop6;
                           }
                           if(_loc1_)
                           {
                              return;
                           }
                           addr159:
                           while(!_loc2_)
                           {
                              this.§;"]§(false);
                              while(true)
                              {
                                 §,!q§.pause();
                                 break loop7;
                              }
                           }
                           §§goto(addr185);
                        }
                     })
                     {
                        while(true)
                        {
                           this.§@!`§ = §-#C§.§%!E§.§^$§(§-#C§.§%!E§.§^!H§(§@;§.getItemByName("Container_PauseMenu") as § #^§,{"x":0},null,0.25),§-#C§.§%!E§.§^!H§((§@;§.getItemByName("MovieClip_DarkBG") as §0"$§).mClip,{"alpha":1},{"alpha":0},0.25));
                           continue loop7;
                        }
                     }
                     while(!(_loc2_ && this))
                     {
                        §@;§.getItemByName("MovieClip_SoundsOff").setVisibility(!§4#;§.§]q§());
                        continue loop6;
                        §§goto(addr111);
                     }
                     addr111:
                     §§goto(addr150);
                  }
               }
            }
            while(true)
            {
               (§@;§.getItemByName("Container_PauseMenu") as § #^§).x = §9k§;
               §§goto(addr159);
               §§goto(addr185);
            }
         }
         §§goto(addr118);
      }
      
      protected function § "6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§;"]§(true);
         }
         do
         {
            this.§8!m§();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      protected function §;"]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§@;§.getItemByName("Button_Resume") as §^"m§).setEnabled(param1);
            while(true)
            {
               (§@;§.getItemByName("Button_Replay") as §^"m§).setEnabled(param1);
            }
            addr100:
         }
         loop1:
         do
         {
            (§@;§.getItemByName("Button_Menu") as §^"m§).setEnabled(param1);
            while(!_loc2_)
            {
               (§@;§.getItemByName("Button_Help") as §^"m§).setEnabled(param1);
               do
               {
                  (§@;§.getItemByName("Button_Sound") as §^"m§).setEnabled(param1);
               }
               while(!(_loc3_ || _loc3_));
               
               if(!_loc2_)
               {
                  continue loop1;
               }
            }
            §§goto(addr100);
         }
         while(!_loc3_);
         
      }
      
      protected function §0"v§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            (§@;§.getItemByName("Button_Resume") as §^"m§).setComponentVisualState(param1);
         }
         loop0:
         while(true)
         {
            (§@;§.getItemByName("Button_Replay") as §^"m§).setComponentVisualState(param1);
            while(true)
            {
               (§@;§.getItemByName("Button_Menu") as §^"m§).setComponentVisualState(param1);
               while(!(_loc2_ && _loc2_))
               {
                  (§@;§.getItemByName("Button_Help") as §^"m§).setComponentVisualState(param1);
                  while(_loc3_ || _loc3_)
                  {
                     continue loop0;
                     (§@;§.getItemByName("Button_Sound") as §^"m§).setComponentVisualState(param1);
                     if(!_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      protected function §8!@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§8!m§();
            while(true)
            {
               this.§@!`§ = §-#C§.§%!E§.§^$§(§-#C§.§%!E§.§^!H§(§@;§.getItemByName("Container_PauseMenu") as § #^§,{"x":§9k§},null,0.25),§-#C§.§%!E§.§^!H§((§@;§.getItemByName("MovieClip_DarkBG") as §0"$§).mClip,{"alpha":0},{"alpha":1},0.25));
               loop1:
               for(; !_loc2_; while(!(_loc2_ && _loc1_))
               {
               })
               {
                  §§push(this.§@!`§);
                  while(true)
                  {
                     §§pop().onComplete = this.§;!§;
                     continue loop1;
                     §§goto(addr65);
                  }
               }
            }
         }
         addr65:
         while(true)
         {
            §§push(this.§@!`§);
            if(!_loc2_)
            {
               §§pop().play();
               if(_loc1_ || _loc1_)
               {
                  break;
               }
               continue loop1;
            }
            continue loop2;
         }
      }
      
      protected function §;!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            § g§(this.getPlayState());
            do
            {
               this.§8!m§();
            }
            while(!_loc2_);
            
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.deActivate();
            while(true)
            {
               this.§8!m§();
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            this.§0"v§(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(!_loc2_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§`"]§ = null;
         var _loc7_:* = param2;
         if(_loc9_)
         {
            if("HELP" !== _loc7_)
            {
               if("RESTART_LEVEL" === _loc7_)
               {
                  if(!_loc10_)
                  {
                     §§push(1);
                     if(_loc10_)
                     {
                        addr349:
                     }
                  }
                  else
                  {
                     addr284:
                     §§push(3);
                     if(!(_loc9_ || param2))
                     {
                        §§goto(addr371);
                     }
                  }
               }
               else if("RESUME_LEVEL" === _loc7_)
               {
                  if(!_loc10_)
                  {
                     §§push(2);
                     if(!_loc9_)
                     {
                     }
                  }
                  else
                  {
                     addr303:
                     §§push(4);
                     if(_loc10_ && param3)
                     {
                        addr330:
                     }
                  }
               }
               else
               {
                  if("END_LEVEL" === _loc7_)
                  {
                     if(!_loc10_)
                     {
                        §§goto(addr284);
                     }
                     else
                     {
                        §§goto(addr353);
                     }
                  }
                  else if("MENU" === _loc7_)
                  {
                     if(!(_loc10_ && param2))
                     {
                        §§goto(addr303);
                     }
                     else
                     {
                        addr341:
                        §§push(6);
                        if(!(_loc10_ && this))
                        {
                           §§goto(addr349);
                        }
                     }
                  }
                  else
                  {
                     if("TOGGLE_SOUNDS" === _loc7_)
                     {
                        if(_loc9_ || param3)
                        {
                           §§push(5);
                           if(!(_loc10_ && param2))
                           {
                              §§goto(addr330);
                           }
                           else
                           {
                              §§goto(addr349);
                           }
                        }
                        else
                        {
                           §§goto(addr353);
                        }
                     }
                     else
                     {
                        if("TOGGLE_PARTICLES" === _loc7_)
                        {
                           if(_loc9_ || param1)
                           {
                              §§goto(addr341);
                           }
                           else
                           {
                              §§goto(addr353);
                           }
                        }
                        else if("FULLSCREEN_BUTTON" === _loc7_)
                        {
                           §§goto(addr353);
                        }
                        else
                        {
                           §§push(8);
                        }
                        §§goto(addr353);
                     }
                     §§goto(addr353);
                  }
                  §§goto(addr353);
               }
               addr376:
               loop0:
               while(true)
               {
                  loop6:
                  switch(§§pop())
                  {
                     case 0:
                        this.§8!@§();
                        if(!_loc9_)
                        {
                           break loop0;
                        }
                        continue;
                        addr200:
                        break;
                     case 1:
                        § g§(this.getLevelLoadState());
                        break loop0;
                        addr244:
                     case 2:
                        this.§8!@§();
                        break loop0;
                        addr237:
                     case 3:
                        break loop0;
                     case 4:
                        §?!r§.§0"#§();
                        if(!_loc10_)
                        {
                           § g§(this.getLevelSelectionState());
                           break;
                        }
                        break loop0;
                     case 5:
                        addr214:
                        _loc4_ = !§4#;§.§]q§();
                        loop3:
                        while(true)
                        {
                           §4#;§.§2!>§(_loc4_);
                           addr205:
                           while(!_loc10_)
                           {
                              §@;§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                              if(!_loc10_)
                              {
                                 if(!_loc9_)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr200);
                              }
                              break loop0;
                           }
                           break loop6;
                        }
                        break;
                        addr215:
                     case 6:
                        §§push(§,!q§.§0@§());
                        if(_loc9_ || param3)
                        {
                           if(!(_loc10_ && param2))
                           {
                              addr161:
                              §§push(!§§pop());
                              if(_loc9_ || param3)
                              {
                                 _loc5_ = §§pop();
                                 if(_loc9_ || this)
                                 {
                                    if(!_loc10_)
                                    {
                                       §,!q§.§%Q§(_loc5_);
                                       loop4:
                                       while(true)
                                       {
                                          if(!(_loc10_ && param1))
                                          {
                                             addr140:
                                             while(true)
                                             {
                                                §@;§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                                if(!(_loc10_ && param2))
                                                {
                                                   if(_loc10_ && param2)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      break loop0;
                                                   }
                                                   §§goto(addr244);
                                                }
                                                break loop0;
                                                §§goto(addr140);
                                             }
                                             addr100:
                                          }
                                          else
                                          {
                                             §§goto(addr205);
                                          }
                                       }
                                       addr178:
                                    }
                                    else
                                    {
                                       §§goto(addr237);
                                    }
                                 }
                                 break loop0;
                              }
                              §§goto(addr214);
                              §§goto(addr215);
                           }
                           else
                           {
                              §§goto(addr214);
                           }
                        }
                        §§goto(addr161);
                     case 7:
                        §4#;§.singleton.§5"q§();
                        if(_loc9_ || this)
                        {
                           if(true)
                           {
                              break loop0;
                           }
                           §§goto(addr100);
                        }
                  }
                  break;
               }
               return;
            }
            if(!_loc10_)
            {
               §§push(0);
               if(_loc10_)
               {
               }
            }
            else
            {
               addr353:
               §§push(7);
               if(!(_loc10_ && param3))
               {
                  addr371:
               }
            }
            §§goto(addr376);
            §§goto(addr353);
         }
         §§goto(addr341);
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§^!7§;
      }
      
      protected function getLevelLoadState() : String
      {
         return §<2§.§^!7§;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §+#?§.§^!7§;
      }
   }
}
