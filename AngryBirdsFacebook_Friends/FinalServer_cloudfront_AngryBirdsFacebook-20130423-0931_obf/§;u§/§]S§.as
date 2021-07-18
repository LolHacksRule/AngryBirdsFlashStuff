package §;u§
{
   import §%i§.§7"0§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §>0§.§3"K§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   
   public class §]S§ extends §+d§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            STATE_NAME = "LevelEndFailStateRio";
         }
      }
      
      private var §;!@§:§3"K§;
      
      public function §]S§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            while(true)
            {
               §2"@§ = new §`_§(this);
               while(!_loc2_)
               {
                  §2"@§.init(this.§+!"§());
                  if(!_loc2_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      protected function §+!"§() : XML
      {
         return § "<§.§%I§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(LevelManager.§8t§());
         if(!(_loc2_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §§push(Boolean(_loc1_));
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.sUserProgress);
                           loop4:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr240:
                              while(true)
                              {
                                 §§push(§§pop().isLevelOpen(§§pop()));
                                 addr241:
                                 while(_loc3_ || _loc2_)
                                 {
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr119:
                                       if(!(_loc3_ || this))
                                       {
                                          continue;
                                       }
                                       if(!§§pop())
                                       {
                                          (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(true);
                                          while(!(_loc2_ && _loc3_))
                                          {
                                             (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(false);
                                             if(_loc2_)
                                             {
                                                continue;
                                             }
                                             if(_loc3_ || _loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   addr137:
                                                   (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
                                                }
                                                if(_loc3_ || this)
                                                {
                                                   §§goto(addr31);
                                                }
                                                continue loop3;
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop4;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr218:
                                                      (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
                                                      (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(false);
                                                      (§2"@§.getItemByName("Button_MightyEagle") as §7"0§).setVisibility(true);
                                                      addr225:
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         §§goto(addr225);
                                                      }
                                                      addr171:
                                                   }
                                                   addr31:
                                                   return;
                                                }
                                                §§goto(addr171);
                                             }
                                             addr88:
                                          }
                                          if(_loc3_)
                                          {
                                             while(true)
                                             {
                                                (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(true);
                                                §§goto(addr88);
                                             }
                                             addr146:
                                          }
                                          §§goto(addr225);
                                       }
                                       §§goto(addr137);
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr252);
                  }
               }
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr214);
               §§push(!§§pop());
            }
         }
         §§goto(addr146);
      }
      
      protected function §[J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(false);
            do
            {
               (§2"@§.getItemByName("Button_MightyEagle") as §7"0§).setVisibility(false);
            }
            while(!_loc1_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               this.§;!@§ = new §3"K§(0,0,0,0);
               while(true)
               {
                  §2"@§.movieClip.addChildAt(this.§;!@§,§2"@§.movieClip.numChildren - 1);
                  while(_loc1_ || _loc2_)
                  {
                     this.showButtons();
                     loop3:
                     while(_loc1_)
                     {
                        while(true)
                        {
                           this.§;!@§.§!!4§(0.7);
                           if(_loc1_ || _loc2_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() != §+d§.STATE_STATUS_RUNNING)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr92);
                  }
                  else
                  {
                     while(true)
                     {
                        addr72:
                        if(!(_loc4_ || _loc2_))
                        {
                           continue;
                        }
                        addr79:
                        §?l§.§'h§.clearLevel();
                        return §+d§.STATE_STATUS_COMPLETED;
                        addr82:
                     }
                     addr93:
                  }
               }
               while(true)
               {
                  if(mNextState.length > 0)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr72);
                     }
                     break;
                  }
                  return §+d§.STATE_STATUS_RUNNING;
                  §§goto(addr93);
               }
               §§goto(addr82);
            }
            addr92:
            return _loc2_;
         }
         §§goto(addr79);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§;!@§);
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        if(§2"@§.movieClip.contains(this.§;!@§))
                        {
                           while(true)
                           {
                              §2"@§.movieClip.removeChild(this.§;!@§);
                              addr120:
                              while(true)
                              {
                              }
                           }
                           addr115:
                        }
                        loop3:
                        while(true)
                        {
                           §§push(this.§;!@§);
                           if(_loc1_)
                           {
                              break;
                              addr78:
                           }
                           §§pop().clean();
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           continue loop0;
                        }
                        continue;
                     }
                     §§goto(addr120);
                  }
                  else
                  {
                     loop7:
                     while(true)
                     {
                        this.§-!$§(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        addr45:
                        addr69:
                        for(; !(_loc1_ && this); this.§[J§(),if(!(_loc1_ && this))
                        {
                           return;
                           addr39:
                        })
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           §§goto(addr115);
                        }
                        while(_loc2_)
                        {
                           continue loop7;
                           §§goto(addr45);
                        }
                     }
                  }
                  §§goto(addr78);
               }
            }
         }
         §§goto(addr39);
      }
      
      protected function §-!$§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            (§2"@§.getItemByName("Button_Menu") as §7"0§).setComponentVisualState(param1);
         }
         while(true)
         {
            (§2"@§.getItemByName("Button_Replay") as §7"0§).setComponentVisualState(param1);
            loop1:
            while(_loc2_ || _loc3_)
            {
               (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setComponentVisualState(param1);
               loop2:
               do
               {
                  (§2"@§.getItemByName("Button_CutScene") as §7"0§).setComponentVisualState(param1);
                  while(!_loc3_)
                  {
                     (§2"@§.getItemByName("Button_MightyEagle") as §7"0§).setComponentVisualState(param1);
                     if(!_loc3_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(_loc3_);
               
               return;
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
      
      protected function loadNextLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §-!v§.§>"@§();
            do
            {
               mNextState = this.getCutSceneState();
            }
            while(_loc2_);
            
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            §§push("NEXT_LEVEL");
            if(!_loc5_)
            {
               §§push(_loc4_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        addr113:
                        §§push(0);
                        if(_loc5_)
                        {
                           addr144:
                        }
                     }
                     else
                     {
                        addr181:
                        §§push(3);
                        if(_loc5_ && param3)
                        {
                        }
                     }
                     §§goto(addr194);
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(_loc6_ || this)
                     {
                        §§push(_loc4_);
                        if(!_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc5_ && param1))
                              {
                                 §§push(1);
                                 if(!(_loc5_ && this))
                                 {
                                    §§goto(addr144);
                                 }
                              }
                              else
                              {
                                 §§goto(addr181);
                              }
                              §§goto(addr194);
                           }
                           else
                           {
                              §§push("MENU");
                              if(_loc6_ || param1)
                              {
                                 addr153:
                                 §§push(_loc4_);
                                 if(_loc6_)
                                 {
                                    addr156:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(2);
                                          if(_loc6_ || this)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr181);
                                       }
                                       §§goto(addr194);
                                    }
                                    else
                                    {
                                       §§push("FULLSCREEN_BUTTON");
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr180);
                              }
                              addr180:
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr181);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              addr194:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.loadNextLevel();
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    break;
                                 case 1:
                                    §-!v§.§^!$§();
                                    mNextState = this.getLevelLoadState();
                                    break;
                                    addr79:
                                    addr73:
                                 case 2:
                                    §@"M§.§3!s§();
                                    loop0:
                                    while(true)
                                    {
                                       addr49:
                                       while(true)
                                       {
                                          mNextState = this.getLevelSelectionState();
                                          continue loop0;
                                       }
                                    }
                                    break;
                                 case 3:
                                    AngryBirdsFP11.§>m§.§=-§();
                                    if(_loc6_ || param3)
                                    {
                                       if(_loc6_ || param2)
                                       {
                                          if(_loc6_ || param3)
                                          {
                                             if(_loc6_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                §§goto(addr49);
                                             }
                                             else
                                             {
                                                §§goto(addr79);
                                             }
                                          }
                                          §§goto(addr73);
                                       }
                                       §§goto(addr54);
                                    }
                              }
                              return;
                              §§push(_loc4_);
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr153);
                  }
               }
            }
            §§goto(addr153);
         }
         §§goto(addr113);
      }
      
      protected function getLevelLoadState() : String
      {
         return §-!v§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §9"@§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
