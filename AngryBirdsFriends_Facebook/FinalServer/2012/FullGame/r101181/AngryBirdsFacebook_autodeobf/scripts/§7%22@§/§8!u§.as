package §7"@§
{
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §&q§.§%1§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§=!&§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §]!A§.;
   
   public class §8!u§ extends §1-§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            STATE_NAME = "LevelEndFailStateRio";
         }
      }
      
      private var §-9§:§%1§;
      
      public function §8!u§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
            while(true)
            {
               §6w§ = new §7!A§(this);
               while(!(_loc2_ && _loc1_))
               {
                  §6w§.init(this.§8!f§());
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr60:
               }
            }
         }
         §§goto(addr60);
      }
      
      protected function §8!f§() : XML
      {
         return § "A§.§4[§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(LevelManager.§6!M§());
         if(_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(Boolean(_loc1_));
            if(!_loc3_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop17:
                     while(true)
                     {
                        §§pop();
                        loop10:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.sUserProgress);
                           loop11:
                           while(true)
                           {
                              §§push(_loc1_);
                              loop12:
                              while(true)
                              {
                                 §§push(§§pop().isLevelOpen(§§pop()));
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(!§§pop());
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr238:
                                       §§push(Boolean(§§pop()));
                                       if(_loc2_)
                                       {
                                          while(true)
                                          {
                                          }
                                          addr233:
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          §§pop();
                                          loop4:
                                          while(true)
                                          {
                                             §§push(AngryBirdsFP11.sUserProgress);
                                             if(!_loc2_)
                                             {
                                                continue loop11;
                                             }
                                             §§push(LevelManager.§'!O§);
                                             if(_loc3_ && _loc3_)
                                             {
                                                continue loop12;
                                             }
                                             §§push(§§pop().§%6§(§§pop()));
                                             loop5:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                loop6:
                                                while(true)
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         loop7:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§push(LevelManager.§%^§());
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               continue loop6;
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(false);
                                                               addr149:
                                                               while(!(_loc2_ || this))
                                                               {
                                                                  continue loop16;
                                                               }
                                                               (§6w§.getItemByName("Button_MightyEagle") as §^!D§).setVisibility(true);
                                                               addr133:
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  break loop7;
                                                               }
                                                               continue loop10;
                                                            }
                                                         }
                                                         addr30:
                                                         return;
                                                         addr187:
                                                         addr140:
                                                      }
                                                      continue loop17;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop10;
                                             }
                                          }
                                          continue loop11;
                                       }
                                       addr238:
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          §§goto(addr238);
                                       }
                                       §§goto(addr187);
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr238);
                              }
                           }
                        }
                     }
                     addr247:
                  }
                  §§goto(addr233);
               }
            }
            §§goto(addr247);
         }
         §§goto(addr140);
      }
      
      protected function §>!P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(false);
            do
            {
               (§6w§.getItemByName("Button_MightyEagle") as §^!D§).setVisibility(false);
            }
            while(_loc1_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            loop0:
            while(true)
            {
               this.§-9§ = new §%1§(0,0,0,0);
               loop1:
               do
               {
                  §6w§.movieClip.addChildAt(this.§-9§,§6w§.movieClip.numChildren - 1);
                  while(true)
                  {
                     this.showButtons();
                     while(!_loc2_)
                     {
                        continue loop0;
                        this.§-9§.§?!,§(0.7);
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(!(_loc1_ || _loc2_));
               
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() == §1-§.STATE_STATUS_RUNNING)
               {
                  addr85:
                  if(mNextState.length > 0)
                  {
                     §#6§.§6!z§.clearLevel();
                     return §1-§.STATE_STATUS_COMPLETED;
                  }
                  return §1-§.STATE_STATUS_RUNNING;
               }
               return _loc2_;
            }
         }
         §§goto(addr85);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§-9§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§6w§.movieClip.contains(this.§-9§))
                        {
                           if(_loc1_ || _loc1_)
                           {
                              §6w§.movieClip.removeChild(this.§-9§);
                           }
                           while(true)
                           {
                              addr89:
                              loop5:
                              while(_loc1_ || _loc1_)
                              {
                                 while(true)
                                 {
                                    this.§-9§ = null;
                                    addr80:
                                    while(_loc2_)
                                    {
                                       continue loop5;
                                    }
                                    §§goto(addr82);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(this.§-9§);
                           if(_loc2_)
                           {
                              break;
                           }
                           §§pop().clean();
                           §§goto(addr89);
                        }
                        continue loop1;
                     }
                     addr111:
                  }
                  addr82:
                  while(true)
                  {
                     this.§'"-§(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     continue loop0;
                     §§goto(addr82);
                  }
                  addr62:
                  return;
               }
            }
         }
         §§goto(addr106);
      }
      
      protected function §'"-§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            (§6w§.getItemByName("Button_Menu") as §^!D§).setComponentVisualState(param1);
            while(true)
            {
               (§6w§.getItemByName("Button_Replay") as §^!D§).setComponentVisualState(param1);
               loop1:
               while(true)
               {
                  (§6w§.getItemByName("Button_NextLevel") as §^!D§).setComponentVisualState(param1);
                  while(true)
                  {
                     (§6w§.getItemByName("Button_CutScene") as §^!D§).setComponentVisualState(param1);
                     addr74:
                     while(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr104:
         }
         while(true)
         {
            (§6w§.getItemByName("Button_MightyEagle") as §^!D§).setComponentVisualState(param1);
            if(!(_loc3_ && param1))
            {
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr104);
            }
            §§goto(addr74);
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.cleanup();
         }
      }
      
      protected function loadNextLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §!!7§.§,L§();
         }
         do
         {
            mNextState = this.getCutSceneState();
         }
         while(!_loc1_);
         
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            §§push("NEXT_LEVEL");
            if(_loc5_)
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || param1)
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr183:
                        §§push(2);
                        if(!(_loc5_ || param3))
                        {
                           addr198:
                        }
                     }
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(_loc5_ || param1)
                     {
                        §§push(_loc4_);
                        if(!(_loc6_ && this))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_ || param3)
                              {
                                 §§push(1);
                                 if(_loc6_ && this)
                                 {
                                 }
                                 §§goto(addr203);
                              }
                              else
                              {
                                 §§goto(addr183);
                              }
                           }
                           else
                           {
                              §§push("MENU");
                              if(!_loc6_)
                              {
                                 addr162:
                                 §§push(_loc4_);
                                 if(!(_loc6_ && this))
                                 {
                                    addr180:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr183);
                                       }
                                    }
                                    else
                                    {
                                       addr193:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr203:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                this.loadNextLevel();
                                                break;
                                                addr90:
                                             case 1:
                                                §!!7§.§-V§();
                                                while(true)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      mNextState = this.getLevelLoadState();
                                                      continue;
                                                   }
                                                   §§goto(addr90);
                                                }
                                                break;
                                             case 2:
                                                §>!E§.§&!^§();
                                                loop1:
                                                while(true)
                                                {
                                                   addr34:
                                                   while(true)
                                                   {
                                                      mNextState = this.getLevelSelectionState();
                                                      continue loop1;
                                                   }
                                                }
                                                if(!(_loc6_ && param1))
                                                {
                                                   break;
                                                }
                                                §§goto(addr65);
                                                break;
                                             case 3:
                                                AngryBirdsFP11.§@<§.§'!+§();
                                                if(!(_loc6_ && param2))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr34);
                                                   }
                                                   §§goto(addr39);
                                                }
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr203);
                                    §§goto(addr203);
                                 }
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr203);
                        }
                        §§goto(addr193);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr203);
               }
               §§goto(addr180);
            }
            §§goto(addr193);
         }
         §§goto(addr183);
      }
      
      protected function getLevelLoadState() : String
      {
         return §!!7§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §8"D§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
