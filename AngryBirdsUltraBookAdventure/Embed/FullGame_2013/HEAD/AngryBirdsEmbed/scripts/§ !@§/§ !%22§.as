package § !@§
{
   import §#X§.§,!F§;
   import §%4§.§7-§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §0,§.§4V§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   
   public class § !"§ extends §1Q§
   {
      
      public static const §>9§:String = "LevelEndFailStateRio";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §>9§ = "LevelEndFailStateRio";
         }
      }
      
      private var §+f§:§4V§;
      
      public function § !"§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            if(_loc2_ || _loc2_)
            {
               addr38:
               §]F§ = new §4!,§(this);
               if(!(_loc1_ && this))
               {
                  §]F§.init(this.getViewXML());
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      protected function getViewXML() : XML
      {
         return §5A§.§;L§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§[4§.§4E§());
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §§push(Boolean(_loc1_));
            §§push(Boolean(_loc1_));
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     §§push(AngryBirdsFP11.sUserProgress);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(_loc1_);
                        if(_loc2_)
                        {
                           §§push(§§pop().isLevelOpen(§§pop()));
                           if(_loc2_)
                           {
                              §§push(!§§pop());
                              if(_loc2_)
                              {
                                 §§goto(addr59);
                              }
                              §§goto(addr77);
                           }
                           §§goto(addr59);
                        }
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr117);
               }
               §§goto(addr59);
            }
            addr59:
            if(§§pop() || !AngryBirdsFP11.sUserProgress.isLevelPassed(§[4§.§"!>§))
            {
               (§]F§.getItemByName("Button_NextLevel") as §7-§).setVisibility(false);
               (§]F§.getItemByName("Button_CutScene") as §7-§).setVisibility(false);
               if(!(_loc3_ && _loc2_))
               {
                  (§]F§.getItemByName("Button_MightyEagle") as §7-§).setVisibility(true);
                  if(_loc3_ && _loc3_)
                  {
                  }
                  §§goto(addr164);
               }
               addr142:
               (§]F§.getItemByName("Button_CutScene") as §7-§).setVisibility(true);
            }
            else
            {
               addr117:
               if(§[4§.§`v§())
               {
                  (§]F§.getItemByName("Button_NextLevel") as §7-§).setVisibility(false);
                  if(!(_loc3_ && this))
                  {
                     §§goto(addr142);
                  }
                  §§goto(addr164);
               }
               else
               {
                  (§]F§.getItemByName("Button_NextLevel") as §7-§).setVisibility(true);
               }
               (§]F§.getItemByName("Button_CutScene") as §7-§).setVisibility(false);
            }
            addr164:
            return;
         }
         §§goto(addr77);
      }
      
      protected function hideButtons() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§]F§.getItemByName("Button_CutScene") as §7-§).setVisibility(false);
            if(_loc2_)
            {
               (§]F§.getItemByName("Button_MightyEagle") as §7-§).setVisibility(false);
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            if(_loc2_ || _loc2_)
            {
               this.§+f§ = new §4V§(0,0,0,0);
               if(!(_loc1_ && _loc2_))
               {
                  §]F§.movieClip.addChildAt(this.§+f§,§]F§.movieClip.numChildren - 1);
                  if(_loc2_ || _loc2_)
                  {
                  }
                  §§goto(addr87);
               }
            }
            this.showButtons();
            if(_loc2_)
            {
               this.§+f§.§[!'§(0.7);
            }
         }
         addr87:
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() != §1Q§.STATE_STATUS_RUNNING)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr60);
                  }
               }
               else if(mNextState.length > 0)
               {
                  if(_loc4_)
                  {
                     addr69:
                     §=w§.§ o§.clearLevel();
                     if(!_loc3_)
                     {
                        return §1Q§.STATE_STATUS_COMPLETED;
                     }
                  }
               }
               return §1Q§.STATE_STATUS_RUNNING;
            }
            addr60:
            return _loc2_;
         }
         §§goto(addr69);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.deActivate();
         if(!_loc1_)
         {
            §§push(this.§+f§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(§]F§.movieClip.contains(this.§+f§))
                  {
                     if(_loc2_)
                     {
                        §]F§.movieClip.removeChild(this.§+f§);
                        if(_loc2_ || this)
                        {
                           addr73:
                           this.§+f§.clean();
                           this.§+f§ = null;
                           addr71:
                           if(!(_loc1_ && _loc2_))
                           {
                              addr84:
                              this.setButtonStates(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              if(_loc1_ && _loc1_)
                              {
                              }
                              §§goto(addr97);
                           }
                           this.hideButtons();
                        }
                     }
                     addr97:
                     return;
                  }
                  §§goto(addr71);
               }
               §§goto(addr84);
            }
         }
         §§goto(addr73);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§]F§.getItemByName("Button_Menu") as §7-§).setComponentVisualState(param1);
            if(!(_loc2_ && this))
            {
               (§]F§.getItemByName("Button_Replay") as §7-§).setComponentVisualState(param1);
               if(_loc3_ || this)
               {
                  (§]F§.getItemByName("Button_NextLevel") as §7-§).setComponentVisualState(param1);
                  if(_loc3_ || this)
                  {
                     addr81:
                     (§]F§.getItemByName("Button_CutScene") as §7-§).setComponentVisualState(param1);
                     if(!_loc3_)
                     {
                     }
                     §§goto(addr97);
                  }
                  (§]F§.getItemByName("Button_MightyEagle") as §7-§).setComponentVisualState(param1);
                  §§goto(addr97);
               }
               addr97:
               return;
            }
         }
         §§goto(addr81);
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
      
      protected function §@a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^!K§.§+!4§();
            if(_loc1_)
            {
               addr22:
               mNextState = this.§`!A§();
            }
            return;
         }
         §§goto(addr22);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param1)
         {
            §§push("NEXT_LEVEL");
            if(_loc5_)
            {
               §§push(_loc4_);
               if(!_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                        }
                     }
                     else
                     {
                        addr100:
                        §§push(1);
                        if(!(_loc5_ || this))
                        {
                           addr163:
                        }
                     }
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(_loc5_ || param1)
                     {
                        §§push(_loc4_);
                        if(!(_loc6_ && param3))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc6_ && param1))
                              {
                                 §§goto(addr100);
                              }
                              else
                              {
                                 §§goto(addr143);
                              }
                           }
                           else
                           {
                              §§push("MENU");
                              if(!(_loc6_ && param1))
                              {
                                 addr117:
                                 §§push(_loc4_);
                                 if(!(_loc6_ && param2))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc6_ && param3))
                                       {
                                          addr143:
                                          §§push(2);
                                          if(_loc5_ || param3)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr154:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr168:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                this.§@a§();
                                                break;
                                             case 1:
                                                §^!K§.§@!<§();
                                                mNextState = this.§]!-§();
                                                break;
                                             case 2:
                                                §,!F§.§?X§();
                                                mNextState = this.§[A§();
                                                break;
                                             case 3:
                                                AngryBirdsFP11.§ y§.§-!$§();
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr168);
                                    §§goto(addr168);
                                 }
                                 §§goto(addr154);
                              }
                           }
                           §§goto(addr168);
                        }
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr168);
               }
               §§goto(addr154);
            }
            §§goto(addr117);
         }
         §§goto(addr100);
      }
      
      protected function §]!-§() : String
      {
         return §^!K§.§>9§;
      }
      
      protected function §[A§() : String
      {
         return §6!@§.§>9§;
      }
      
      protected function §`!A§() : String
      {
         return StateCutScene.§>9§;
      }
   }
}
