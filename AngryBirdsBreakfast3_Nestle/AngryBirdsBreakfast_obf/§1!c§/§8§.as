package §1!c§
{
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §2u§.§7!m§;
   import §2u§.§]"%§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §@V§.§&#§;
   import §[!Z§.§>D§;
   
   public class §8§ extends §7X§
   {
      
      public static const §%n§:Number = -250;
      
      public static const §8"%§:String = "PauseState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §%n§ = -250;
         }
         do
         {
            §8"%§ = "PauseState";
         }
         while(_loc1_);
         
      }
      
      protected var §5"3§:§]W§ = null;
      
      public function §8§(param1:§0![§, param2:§+f§, param3:Boolean = false, param4:String = "PauseState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            do
            {
               §^!T§ = new §9%§(this);
               do
               {
                  §^!T§.init(§7I§.§7!%§.Views.View_LevelPause[0]);
               }
               while(!(_loc1_ || this));
               
            }
            while(_loc2_ && this);
            
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               this.§function§();
               while(true)
               {
                  §@!S§.§2A§.background.§0"1§();
                  while(!(_loc2_ && _loc3_))
                  {
                     continue loop0;
                     this.§[!R§();
                     if(!_loc2_)
                     {
                        return;
                        addr44:
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      protected function §[!R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^!T§.getItemByName("Button_Help").setVisibility(false);
         }
         while(true)
         {
            §^!T§.getItemByName("Button_Sound").setVisibility(false);
            while(_loc1_)
            {
               §^!T§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private function §3G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§5"3§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§5"3§);
                     addr75:
                     addr52:
                     while(true)
                     {
                        §§pop().stop();
                        do
                        {
                           this.§5"3§ = null;
                        }
                        while(_loc1_ && _loc2_);
                        
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr25);
                  }
               }
               addr25:
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr52);
      }
      
      protected function §function§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(§4a§.currentLevelNumericName != null)
            {
               while(true)
               {
                  (§^!T§.getItemByName("TextField_LevelName") as §7!&§).§'!"§.text = §4a§.currentLevelNumericName;
                  addr180:
                  while(true)
                  {
                  }
               }
               addr161:
            }
            loop2:
            while(true)
            {
               (§^!T§.getItemByName("Container_PauseMenu") as §,6§).x = §%n§;
               while(true)
               {
                  this.§7!]§(false);
                  loop4:
                  for(; !(_loc2_ && _loc2_); loop6:
                  for(; _loc1_ || _loc2_; if(_loc2_ && _loc1_)
                  {
                     continue;
                  },§§goto(addr61))
                  {
                     §^!T§.getItemByName("MovieClip_SoundsOff").setVisibility(!§ !4§.§4E§());
                     loop7:
                     for(; _loc1_; if(!(_loc2_ && _loc2_))
                     {
                        return;
                     })
                     {
                        this.§3G§();
                        loop8:
                        while(_loc1_)
                        {
                           this.§5"3§ = §0!o§.§,2§.§+!p§(§0!o§.§,2§.§4!t§(§^!T§.getItemByName("Container_PauseMenu") as §,6§,{"x":0},null,0.25),§0!o§.§,2§.§4!t§((§^!T§.getItemByName("MovieClip_DarkBG") as §7!m§).mClip,{"alpha":1},{"alpha":0},0.25));
                           loop9:
                           while(true)
                           {
                              §§push(this.§5"3§);
                              while(true)
                              {
                                 §§pop().onComplete = this.§>!r§;
                                 addr52:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop9;
                                 }
                                 addr61:
                                 §§push(this.§5"3§);
                                 continue loop6;
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 §§pop().play();
                                 if(_loc1_)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop7;
                                    }
                                    continue loop8;
                                 }
                                 §§goto(addr52);
                              }
                           }
                        }
                        §§goto(addr161);
                     }
                     continue loop2;
                  })
                  {
                     while(true)
                     {
                        §@!S§.pause();
                        continue loop4;
                     }
                  }
               }
               §§goto(addr180);
            }
         }
         §§goto(addr147);
      }
      
      protected function §>!r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§7!]§(true);
         }
         do
         {
            this.§3G§();
         }
         while(!_loc2_);
         
      }
      
      protected function §7!]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            (§^!T§.getItemByName("Button_Resume") as §]"%§).setEnabled(param1);
            while(true)
            {
               (§^!T§.getItemByName("Button_Replay") as §]"%§).setEnabled(param1);
            }
            addr114:
         }
         loop1:
         while(true)
         {
            (§^!T§.getItemByName("Button_Menu") as §]"%§).setEnabled(param1);
            while(!_loc3_)
            {
               (§^!T§.getItemByName("Button_Help") as §]"%§).setEnabled(param1);
               continue loop1;
               if(_loc2_ || _loc3_)
               {
                  return;
               }
            }
            §§goto(addr114);
         }
      }
      
      protected function §8#§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§^!T§.getItemByName("Button_Resume") as §]"%§).setComponentVisualState(param1);
            while(true)
            {
               (§^!T§.getItemByName("Button_Replay") as §]"%§).setComponentVisualState(param1);
            }
            addr105:
         }
         loop1:
         while(true)
         {
            (§^!T§.getItemByName("Button_Menu") as §]"%§).setComponentVisualState(param1);
            while(true)
            {
               (§^!T§.getItemByName("Button_Help") as §]"%§).setComponentVisualState(param1);
               while(_loc3_ || _loc2_)
               {
                  (§^!T§.getItemByName("Button_Sound") as §]"%§).setComponentVisualState(param1);
                  if(!_loc2_)
                  {
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function §7!u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3G§();
            while(true)
            {
               this.§5"3§ = §0!o§.§,2§.§+!p§(§0!o§.§,2§.§4!t§(§^!T§.getItemByName("Container_PauseMenu") as §,6§,{"x":§%n§},null,0.25),§0!o§.§,2§.§4!t§((§^!T§.getItemByName("MovieClip_DarkBG") as §7!m§).mClip,{"alpha":0},{"alpha":1},0.25));
               loop1:
               while(true)
               {
                  §§push(this.§5"3§);
                  loop2:
                  while(true)
                  {
                     §§pop().onComplete = this.§]r§;
                     addr55:
                     while(_loc1_)
                     {
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function §]r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7"6§(this.§[!w§());
         }
         do
         {
            this.§3G§();
         }
         while(_loc1_ && _loc2_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.deActivate();
            while(true)
            {
               this.§3G§();
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            this.§8#§(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(!(_loc2_ && this))
            {
               if(_loc1_ || _loc1_)
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
         if(_loc1_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§&#§ = null;
         var _loc7_:* = param2;
         if(_loc10_)
         {
            if("HELP" === _loc7_)
            {
               if(_loc10_)
               {
                  §§push(0);
                  if(_loc9_ && this)
                  {
                     addr330:
                  }
               }
               else
               {
                  addr294:
                  §§push(4);
                  if(!(_loc9_ && param2))
                  {
                     addr302:
                  }
                  else
                  {
                     addr352:
                  }
               }
            }
            else if("RESTART_LEVEL" === _loc7_)
            {
               if(!_loc9_)
               {
                  §§push(1);
                  if(_loc9_)
                  {
                     §§goto(addr302);
                  }
               }
               else
               {
                  addr322:
                  §§push(6);
                  if(!(_loc9_ && param3))
                  {
                     §§goto(addr330);
                  }
               }
            }
            else
            {
               if("RESUME_LEVEL" === _loc7_)
               {
                  if(!_loc9_)
                  {
                     §§push(2);
                     if(_loc10_ || param2)
                     {
                     }
                  }
               }
               else if("END_LEVEL" === _loc7_)
               {
                  if(!_loc9_)
                  {
                     §§push(3);
                     if(!_loc9_)
                     {
                        §§goto(addr357);
                     }
                     else
                     {
                        §§goto(addr330);
                     }
                  }
                  else
                  {
                     §§goto(addr294);
                  }
               }
               else if("MENU" === _loc7_)
               {
                  if(!(_loc9_ && this))
                  {
                     §§goto(addr294);
                  }
               }
               else if("TOGGLE_SOUNDS" === _loc7_)
               {
                  if(_loc10_)
                  {
                     addr308:
                     §§push(5);
                     if(_loc10_)
                     {
                        §§goto(addr357);
                     }
                     else
                     {
                        §§goto(addr330);
                     }
                  }
                  else
                  {
                     §§goto(addr322);
                  }
               }
               else if("TOGGLE_PARTICLES" === _loc7_)
               {
                  if(_loc10_ || param1)
                  {
                     §§goto(addr322);
                  }
               }
               else if("FULLSCREEN_BUTTON" !== _loc7_)
               {
                  addr357:
                  loop0:
                  while(true)
                  {
                     switch(§§pop())
                     {
                        case 0:
                           this.§7!u§();
                           if(_loc10_ || param2)
                           {
                              §§push(0);
                              if(!_loc9_)
                              {
                                 _loc7_ = §§pop();
                                 if(_loc10_ || param2)
                                 {
                                    for each(_loc6_ in §@!S§.§2A§.slingshot.§&]§)
                                    {
                                       if(_loc10_ || param2)
                                       {
                                          § !4§.§%"7§.§@D§.userProgress.setTutorialSeen(_loc6_.name,false);
                                       }
                                    }
                                 }
                                 if(!(_loc9_ && param2))
                                 {
                                    break loop0;
                                    addr85:
                                 }
                                 break loop0;
                              }
                              continue;
                           }
                           §§goto(addr85);
                        case 1:
                           §7"6§(this.§9!"§());
                           break loop0;
                           addr230:
                        case 2:
                           this.§7!u§();
                           break;
                        case 3:
                           break loop0;
                        case 4:
                           §>D§.§>!%§();
                           if(_loc10_)
                           {
                              §7"6§(this.§'!#§());
                              addr205:
                              if(_loc10_)
                              {
                                 break loop0;
                              }
                              break;
                           }
                           break loop0;
                        case 5:
                           addr198:
                           _loc4_ = !§ !4§.§4E§();
                           § !4§.setSoundsEnabled(_loc4_);
                           §^!T§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                           addr186:
                           break loop0;
                           addr186:
                           addr199:
                           addr197:
                           addr191:
                        case 6:
                           §§push(§@!S§.§^"&§());
                           if(!_loc9_)
                           {
                              §§push(!§§pop());
                           }
                           if(!_loc9_)
                           {
                              if(_loc10_ || param2)
                              {
                                 _loc5_ = §§pop();
                                 addr159:
                                 if(_loc10_ || param1)
                                 {
                                    if(_loc10_)
                                    {
                                       §@!S§.§'"%§(_loc5_);
                                       addr114:
                                       §^!T§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                       if(_loc10_ || this)
                                       {
                                          if(!(_loc9_ && param1))
                                          {
                                             break loop0;
                                          }
                                          §§goto(addr186);
                                       }
                                       break loop0;
                                       addr140:
                                    }
                                    else
                                    {
                                       §§goto(addr205);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr199);
                                 }
                                 §§goto(addr186);
                              }
                              else
                              {
                                 §§goto(addr197);
                              }
                           }
                           §§goto(addr198);
                        case 7:
                           § !4§.§%"7§.§]!;§();
                           if(_loc10_)
                           {
                              if(_loc10_)
                              {
                                 if(_loc10_ || param3)
                                 {
                                    if(!(_loc9_ && this))
                                    {
                                       if(!_loc9_)
                                       {
                                          if(true)
                                          {
                                             break loop0;
                                          }
                                          §§goto(addr114);
                                       }
                                       else
                                       {
                                          §§goto(addr230);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr191);
                                    }
                                    §§goto(addr198);
                                 }
                                 else
                                 {
                                    §§goto(addr159);
                                 }
                              }
                              §§goto(addr140);
                           }
                     }
                     break;
                  }
                  return;
                  §§push(8);
               }
               §§goto(addr357);
               if(!(_loc9_ && param2))
               {
                  §§goto(addr352);
               }
            }
            §§goto(addr357);
         }
         §§goto(addr308);
      }
      
      protected function §[!w§() : String
      {
         return StatePlay.§8"%§;
      }
      
      protected function §9!"§() : String
      {
         return §'8§.§8"%§;
      }
      
      protected function §'!#§() : String
      {
         return §^j§.§8"%§;
      }
   }
}
