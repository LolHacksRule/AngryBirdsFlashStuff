package §,!"§
{
   import § !B§.§-#§;
   import §"U§.§^'§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§`!K§;
   
   public class §]g§ extends §'!#§
   {
      
      public static const §-A§:String = "LevelEndFailStateRio";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-A§ = "LevelEndFailStateRio";
         }
      }
      
      private var §!>§:§-#§;
      
      public function §]g§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.init();
         }
         while(true)
         {
            §0q§ = new §`o§(this);
            while(_loc2_)
            {
               §0q§.init(this.getViewXML());
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      protected function getViewXML() : XML
      {
         return §`Z§.§5c§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§`!K§.§6J§());
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            §§push(Boolean(_loc1_));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        §§push(AngryBirdsFP11.§`I§);
                        while(true)
                        {
                           §§push(_loc1_);
                           addr162:
                           while(true)
                           {
                              §§push(§§pop().isLevelOpen(§§pop()));
                              if(_loc2_ && _loc1_)
                              {
                                 continue loop2;
                              }
                              §§push(!§§pop());
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           continue loop0;
                           loop7:
                           while(true)
                           {
                              §§pop();
                              §§push(AngryBirdsFP11.§`I§);
                              if(!(_loc3_ || _loc1_))
                              {
                                 break;
                              }
                              §§push(§`!K§.§5g§);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(§§pop().isLevelPassed(§§pop()));
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 addr140:
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 else
                                 {
                                    addr186:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             break;
                                          }
                                          continue loop7;
                                       }
                                       continue loop1;
                                       §§goto(addr140);
                                    }
                                    addr186:
                                 }
                                 addr149:
                                 if(!§§pop())
                                 {
                                    §§push(§`!K§.§ !;§());
                                    if(_loc2_)
                                    {
                                       §§goto(addr149);
                                    }
                                    if(§§pop())
                                    {
                                       (§0q§.getItemByName("Button_NextLevel") as §^'§).setVisibility(false);
                                       addr87:
                                       if(!_loc2_)
                                       {
                                          (§0q§.getItemByName("Button_CutScene") as §^'§).setVisibility(true);
                                          addr62:
                                          if(!_loc2_)
                                          {
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                (§0q§.getItemByName("Button_MightyEagle") as §^'§).setVisibility(true);
                                                addr108:
                                                addr117:
                                             }
                                             else
                                             {
                                                addr71:
                                             }
                                             §§goto(addr26);
                                          }
                                          §§goto(addr108);
                                       }
                                       else
                                       {
                                          addr150:
                                          (§0q§.getItemByName("Button_NextLevel") as §^'§).setVisibility(false);
                                          (§0q§.getItemByName("Button_CutScene") as §^'§).setVisibility(false);
                                       }
                                       §§goto(addr117);
                                    }
                                    else
                                    {
                                       (§0q§.getItemByName("Button_NextLevel") as §^'§).setVisibility(true);
                                       if(!_loc2_)
                                       {
                                          (§0q§.getItemByName("Button_CutScene") as §^'§).setVisibility(false);
                                          if(_loc2_)
                                          {
                                             §§goto(addr87);
                                          }
                                          addr26:
                                          return;
                                       }
                                    }
                                    §§goto(addr62);
                                 }
                                 §§goto(addr150);
                              }
                              else
                              {
                                 §§goto(addr162);
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr186);
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      protected function hideButtons() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (§0q§.getItemByName("Button_CutScene") as §^'§).setVisibility(false);
            do
            {
               (§0q§.getItemByName("Button_MightyEagle") as §^'§).setVisibility(false);
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.activate();
            loop0:
            while(true)
            {
               this.§!>§ = new §-#§(0,0,0,0);
               while(true)
               {
                  §0q§.movieClip.addChildAt(this.§!>§,§0q§.movieClip.numChildren - 1);
                  addr45:
                  if(_loc1_ || this)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.showButtons();
            while(!_loc2_)
            {
               this.§!>§.fadeToAlpha(0.7);
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr45);
            }
         }
         §§goto(addr64);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() != §'!#§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc3_ && param1))
                  {
                     §§goto(addr107);
                  }
               }
               if(mNextState.length <= 0)
               {
                  return §'!#§.STATE_STATUS_RUNNING;
               }
               §§goto(addr84);
            }
            addr107:
            return _loc2_;
         }
         addr84:
         §#! §.§`'§.clearLevel();
         return §'!#§.STATE_STATUS_COMPLETED;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
            §§push(this.§!>§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!§0q§.movieClip.contains(this.§!>§))
                  {
                     continue;
                  }
                  loop1:
                  while(true)
                  {
                     §0q§.movieClip.removeChild(this.§!>§);
                     addr80:
                     addr103:
                     while(true)
                     {
                        if(!(_loc2_ && this))
                        {
                           continue;
                        }
                        continue loop1;
                     }
                     addr103:
                     while(true)
                     {
                        continue loop0;
                     }
                  }
               }
               else
               {
                  §§goto(addr34);
               }
               §§goto(addr103);
            }
         }
         §§goto(addr63);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            (§0q§.getItemByName("Button_Menu") as §^'§).setComponentVisualState(param1);
         }
         loop0:
         while(true)
         {
            (§0q§.getItemByName("Button_Replay") as §^'§).setComponentVisualState(param1);
            while(true)
            {
               (§0q§.getItemByName("Button_NextLevel") as §^'§).setComponentVisualState(param1);
               while(!(_loc3_ && _loc3_))
               {
                  if(_loc2_)
                  {
                     (§0q§.getItemByName("Button_CutScene") as §^'§).setComponentVisualState(param1);
                     while(!(_loc3_ && _loc3_))
                     {
                        (§0q§.getItemByName("Button_MightyEagle") as §^'§).setComponentVisualState(param1);
                        if(_loc2_)
                        {
                           return;
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            §§push("NEXT_LEVEL");
            if(!(_loc5_ && this))
            {
               §§push(_loc4_);
               if(_loc6_ || param2)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_)
                     {
                        addr104:
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr150:
                        §§push(2);
                        if(!(_loc5_ && param1))
                        {
                           addr158:
                        }
                        else
                        {
                           addr165:
                        }
                     }
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(_loc6_)
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_ || this)
                              {
                                 §§push(1);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr170);
                                 }
                                 else
                                 {
                                    §§goto(addr158);
                                 }
                              }
                              §§goto(addr170);
                           }
                           else
                           {
                              §§push("MENU");
                              if(!_loc5_)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc5_ && param3))
                                 {
                                    addr147:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr150);
                                       }
                                    }
                                    else
                                    {
                                       addr161:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr170:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §-O§.§ b§();
                                                mNextState = this.§5!>§();
                                                break;
                                                addr62:
                                             case 1:
                                                §-O§.§8!5§();
                                                mNextState = this.§5!'§();
                                                break;
                                             case 2:
                                                §[!7§.§=0§();
                                                addr26:
                                                mNextState = this.§@]§();
                                                if(_loc6_ || this)
                                                {
                                                   break;
                                                }
                                                §§goto(addr62);
                                                break;
                                             case 3:
                                                AngryBirdsFP11.§`y§.§,,§();
                                                if(true)
                                                {
                                                   break;
                                                }
                                                §§goto(addr26);
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr170);
                                 }
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr170);
                        }
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr170);
               }
               §§goto(addr147);
            }
            §§goto(addr161);
         }
         §§goto(addr104);
      }
      
      protected function §5!'§() : String
      {
         return §-O§.§-A§;
      }
      
      protected function §@]§() : String
      {
         return §0!5§.§-A§;
      }
      
      protected function §5!>§() : String
      {
         return StateCutScene.§-A§;
      }
   }
}
