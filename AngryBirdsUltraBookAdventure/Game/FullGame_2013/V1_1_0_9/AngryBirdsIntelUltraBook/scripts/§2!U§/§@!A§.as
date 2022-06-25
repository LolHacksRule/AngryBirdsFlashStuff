package §2!U§
{
   import §"!i§.LevelManager;
   import §2y§.§54§;
   import §2y§.§7!p§;
   import §2y§.§[!i§;
   import §2y§.§^! §;
   import §40§.§<!P§;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §[!b§.§-!Q§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   
   public class §@!A§ extends §9![§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §'!q§:String = "PauseState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §@!A§))
         {
            OFFSCREEN_X = -250;
         }
         do
         {
            §'!q§ = "PauseState";
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      protected var § !d§:§^v§ = null;
      
      public function §@!A§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            while(true)
            {
               §'!Q§ = new §&!G§(this);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §'!Q§.init(§2!z§.§ _§.Views.View_LevelPause[0]);
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
         }
         loop0:
         do
         {
            this.openPauseMenu();
            while(true)
            {
               §,!s§.§=!I§.background.§4!=§();
               while(_loc2_ || _loc2_)
               {
                  this.setInitialButtonVisibilities();
                  if(_loc2_ || _loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §'!Q§.getItemByName("Button_Help").setVisibility(false);
            while(true)
            {
               §'!Q§.getItemByName("Button_Sound").setVisibility(false);
               while(!(_loc1_ && _loc2_))
               {
                  §'!Q§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr62:
               }
            }
         }
         §§goto(addr62);
      }
      
      private function §%!!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§ !d§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr70:
                     this.§ !d§.stop();
                     do
                     {
                        this.§ !d§ = null;
                     }
                     while(!_loc2_);
                     
                     addr71:
                  }
                  §§goto(addr71);
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      protected function openPauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(LevelManager.§"L§ != null)
            {
               while(true)
               {
                  (§'!Q§.getItemByName("TextField_LevelName") as §54§).§5!B§.text = LevelManager.§"L§;
                  addr175:
                  while(true)
                  {
                  }
               }
               addr166:
            }
            while(true)
            {
               (§'!Q§.getItemByName("Container_PauseMenu") as §^! §).x = OFFSCREEN_X;
               §§goto(addr175);
            }
         }
         loop3:
         while(true)
         {
            this.§3^§(false);
            loop4:
            while(!_loc2_)
            {
               §,!s§.pause();
               while(true)
               {
                  §'!Q§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§"C§());
                  continue loop3;
               }
               addr54:
               if(!(_loc1_ || this))
               {
                  continue;
               }
               addr61:
               §§push(this.§ !d§);
               if(!_loc2_)
               {
                  §§pop().play();
                  if(!_loc2_)
                  {
                     if(!_loc1_)
                     {
                        loop8:
                        while(_loc1_)
                        {
                           §§push(this.§ !d§);
                           while(true)
                           {
                              §§pop().onComplete = this.§^R§;
                              addr47:
                              while(true)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    §§goto(addr54);
                                 }
                                 else
                                 {
                                    while(!_loc2_)
                                    {
                                       this.§ !d§ = §`!G§.§[U§.§`h§(§`!G§.§[U§.§-]§(§'!Q§.getItemByName("Container_PauseMenu") as §^! §,{"x":0},null,0.25),§`!G§.§[U§.§-]§((§'!Q§.getItemByName("MovieClip_DarkBG") as §7!p§).mClip,{"alpha":1},{"alpha":0},0.25));
                                       continue loop8;
                                    }
                                    §§goto(addr145);
                                    addr113:
                                 }
                              }
                              continue loop4;
                              §§goto(addr61);
                           }
                        }
                        continue loop3;
                     }
                     if(!_loc2_)
                     {
                        return;
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr47);
               }
               §§goto(addr44);
            }
            §§goto(addr175);
         }
      }
      
      protected function §^R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§3^§(true);
         }
         do
         {
            this.§%!!§();
         }
         while(_loc1_ && this);
         
      }
      
      protected function §3^§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§'!Q§.getItemByName("Button_Resume") as §[!i§).setEnabled(param1);
            while(true)
            {
               (§'!Q§.getItemByName("Button_Replay") as §[!i§).setEnabled(param1);
               loop1:
               for(; !_loc3_; if(_loc3_ && this)
               {
                  continue;
               },§§goto(addr71))
               {
                  (§'!Q§.getItemByName("Button_Menu") as §[!i§).setEnabled(param1);
                  loop2:
                  while(true)
                  {
                     (§'!Q§.getItemByName("Button_Help") as §[!i§).setEnabled(param1);
                     while(true)
                     {
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                        addr71:
                        (§'!Q§.getItemByName("Button_Sound") as §[!i§).setEnabled(param1);
                        if(_loc2_)
                        {
                           return;
                           addr33:
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr33);
      }
      
      protected function §-@§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§'!Q§.getItemByName("Button_Resume") as §[!i§).setComponentVisualState(param1);
         }
         loop0:
         while(true)
         {
            (§'!Q§.getItemByName("Button_Replay") as §[!i§).setComponentVisualState(param1);
            do
            {
               (§'!Q§.getItemByName("Button_Menu") as §[!i§).setComponentVisualState(param1);
               do
               {
                  (§'!Q§.getItemByName("Button_Help") as §[!i§).setComponentVisualState(param1);
                  continue loop0;
               }
               while(_loc2_ && _loc2_);
               
            }
            while(!(_loc3_ || param1));
            
            return;
         }
      }
      
      protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§%!!§();
            while(true)
            {
               this.§ !d§ = §`!G§.§[U§.§`h§(§`!G§.§[U§.§-]§(§'!Q§.getItemByName("Container_PauseMenu") as §^! §,{"x":OFFSCREEN_X},null,0.25),§`!G§.§[U§.§-]§((§'!Q§.getItemByName("MovieClip_DarkBG") as §7!p§).mClip,{"alpha":0},{"alpha":1},0.25));
               loop1:
               while(!_loc2_)
               {
                  §§push(this.§ !d§);
                  loop2:
                  while(true)
                  {
                     §§pop().onComplete = this.§7g§;
                     addr53:
                     while(_loc1_)
                     {
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§ !d§);
            if(!_loc2_)
            {
               §§pop().play();
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr53);
            }
            §§goto(addr50);
         }
      }
      
      protected function §7g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            mNextState = this.§>!A§();
         }
         do
         {
            this.§%!!§();
         }
         while(!_loc1_);
         
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
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() == §9![§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(!_loc4_)
                     {
                        §§goto(addr59);
                     }
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        addr78:
                        return _loc2_;
                     }
                  }
                  return §9![§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr78);
         }
         addr59:
         return §9![§.STATE_STATUS_COMPLETED;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.deActivate();
         }
         do
         {
            this.§%!!§();
            do
            {
               this.§-@§(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            while(!(_loc2_ || _loc1_));
            
         }
         while(_loc1_);
         
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§<!P§ = null;
         var _loc7_:* = param2;
         if(!(_loc9_ && param2))
         {
            §§push("HELP");
            if(!(_loc9_ && param3))
            {
               §§push(_loc7_);
               if(!_loc9_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc10_ || param1)
                     {
                        §§push(0);
                        if(!(_loc10_ || param1))
                        {
                           addr351:
                        }
                     }
                     else
                     {
                        addr348:
                        §§push(4);
                        if(_loc10_)
                        {
                           §§goto(addr351);
                        }
                     }
                  }
                  else
                  {
                     §§push("RESTART_LEVEL");
                     if(_loc10_)
                     {
                        §§push(_loc7_);
                        if(!_loc9_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc10_)
                              {
                                 §§push(1);
                                 if(!(_loc10_ || param3))
                                 {
                                    addr374:
                                 }
                                 §§goto(addr429);
                              }
                              else
                              {
                                 §§goto(addr348);
                              }
                           }
                           else
                           {
                              §§push("RESUME_LEVEL");
                              if(_loc10_)
                              {
                                 §§push(_loc7_);
                                 if(_loc10_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc10_)
                                       {
                                          addr297:
                                          §§push(2);
                                          if(!_loc10_)
                                          {
                                             addr424:
                                          }
                                       }
                                       else
                                       {
                                          addr404:
                                          §§push(6);
                                          if(_loc10_ || param2)
                                          {
                                          }
                                       }
                                       §§goto(addr429);
                                    }
                                    else
                                    {
                                       §§push("END_LEVEL");
                                       if(!_loc9_)
                                       {
                                          addr304:
                                          §§push(_loc7_);
                                          if(!(_loc9_ && param1))
                                          {
                                             addr312:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc9_ && param2))
                                                {
                                                   §§push(3);
                                                   if(_loc10_)
                                                   {
                                                      §§goto(addr429);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr351);
                                                   }
                                                }
                                                else
                                                {
                                                   addr366:
                                                   §§push(5);
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      §§goto(addr374);
                                                   }
                                                   §§goto(addr429);
                                                }
                                                §§goto(addr429);
                                             }
                                             else
                                             {
                                                §§push("MENU");
                                                if(_loc10_ || param3)
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc10_ || param2)
                                                   {
                                                      addr340:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc10_ || param3)
                                                         {
                                                            §§goto(addr348);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr404);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("TOGGLE_SOUNDS");
                                                         if(!_loc9_)
                                                         {
                                                            addr355:
                                                            §§push(_loc7_);
                                                            if(!(_loc9_ && param3))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§goto(addr366);
                                                                  }
                                                                  §§goto(addr429);
                                                               }
                                                               else
                                                               {
                                                                  §§push("TOGGLE_PARTICLES");
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr378:
                                                                     §§push(_loc7_);
                                                                     if(!(_loc9_ && param2))
                                                                     {
                                                                        addr386:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              §§goto(addr404);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr415:
                                                                           if("FULLSCREEN_BUTTON" !== _loc7_)
                                                                           {
                                                                              addr429:
                                                                              loop0:
                                                                              while(true)
                                                                              {
                                                                                 switch(§§pop())
                                                                                 {
                                                                                    case 0:
                                                                                       this.closePauseMenu();
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          AngryBirdsFP11.§]!G§(_loc4_);
                                                                                          addr172:
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §'!Q§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                                                                                             addr155:
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          break loop0;
                                                                                       }
                                                                                       continue;
                                                                                       addr172:
                                                                                       break;
                                                                                    case 1:
                                                                                       mNextState = this.§[!Q§();
                                                                                       §3!;§.§0!1§();
                                                                                       break loop0;
                                                                                       addr229:
                                                                                       addr222:
                                                                                    case 2:
                                                                                       this.closePauseMenu();
                                                                                       break;
                                                                                    case 3:
                                                                                       break loop0;
                                                                                    case 4:
                                                                                       §-!Q§.§4!$§();
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                mNextState = this.§8!X§();
                                                                                                break loop0;
                                                                                                addr178:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr229);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr222);
                                                                                       }
                                                                                       break loop0;
                                                                                    case 5:
                                                                                       addr171:
                                                                                       _loc4_ = !AngryBirdsFP11.§"C§();
                                                                                       addr170:
                                                                                       §§goto(addr172);
                                                                                    case 6:
                                                                                       §§push(§,!s§.§^@§());
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                       }
                                                                                       if(_loc10_ || param3)
                                                                                       {
                                                                                          if(!(_loc9_ && this))
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             addr145:
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §,!s§.§'6§(_loc5_);
                                                                                                loop1:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc9_ && this))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §'!Q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                                                                                         if(_loc10_ || param3)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               break loop0;
                                                                                                            }
                                                                                                            §§goto(addr172);
                                                                                                         }
                                                                                                         break loop0;
                                                                                                      }
                                                                                                      addr91:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr178);
                                                                                                   }
                                                                                                }
                                                                                                addr147:
                                                                                             }
                                                                                             §§goto(addr155);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr170);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr171);
                                                                                    case 7:
                                                                                       AngryBirdsFP11.§'!g§.§]8§();
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(!(_loc9_ && this))
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             §§goto(addr91);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr145);
                                                                                          }
                                                                                       }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              return;
                                                                              §§push(8);
                                                                           }
                                                                        }
                                                                        §§goto(addr429);
                                                                     }
                                                                  }
                                                                  §§goto(addr415);
                                                               }
                                                               §§goto(addr429);
                                                            }
                                                         }
                                                         §§goto(addr378);
                                                      }
                                                      §§goto(addr429);
                                                   }
                                                   §§goto(addr386);
                                                }
                                                §§goto(addr415);
                                             }
                                          }
                                          §§goto(addr415);
                                       }
                                       §§goto(addr355);
                                    }
                                 }
                                 §§goto(addr340);
                              }
                              §§goto(addr304);
                           }
                           §§goto(addr429);
                        }
                        §§goto(addr312);
                     }
                     §§goto(addr378);
                  }
                  §§goto(addr429);
               }
               §§goto(addr415);
            }
            §§goto(addr378);
         }
         §§goto(addr297);
      }
      
      protected function §>!A§() : String
      {
         return StatePlay.§'!q§;
      }
      
      protected function §[!Q§() : String
      {
         return §3!;§.§'!q§;
      }
      
      protected function §8!X§() : String
      {
         return §2!=§.§'!q§;
      }
   }
}
