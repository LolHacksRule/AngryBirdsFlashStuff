package §`!%§
{
   import §"!5§.§,!!§;
   import §'X§.§9[§;
   import §,K§.§-!$§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=^§.§]P§;
   import §>!C§.§6M§;
   import §?!?§.§3!E§;
   import §@s§.§'!0§;
   import §@s§.§9$§;
   
   public class §^J§ extends §9[§
   {
      
      public static const §0!7§:String = "LevelEndFailStateRio";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0!7§ = "LevelEndFailStateRio";
         }
      }
      
      private var §>!;§:§-!$§;
      
      public function §^J§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
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
            if(!(_loc1_ && _loc2_))
            {
               addr38:
               §#!4§ = new §!!1§(this);
               if(!_loc1_)
               {
                  §#!4§.init(this.getViewXML());
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      protected function getViewXML() : XML
      {
         return §0!&§.§'^§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§6M§.§1$§());
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(Boolean(_loc1_));
            §§push(Boolean(_loc1_));
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     §§push(AngryBirdsFP11.sUserProgress);
                     if(!_loc2_)
                     {
                        §§push(_loc1_);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(!§§pop().isLevelOpen(§§pop()));
                           if(_loc3_ || _loc2_)
                           {
                              addr61:
                              addr63:
                              addr64:
                              §§push(Boolean(§§pop()));
                              if(!Boolean(§§pop()))
                              {
                                 if(!_loc2_)
                                 {
                                    §§pop();
                                    addr72:
                                    §§push(AngryBirdsFP11.sUserProgress.isLevelPassed(§6M§.§[z§));
                                    if(_loc3_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc2_)
                                       {
                                       }
                                       addr122:
                                       if(§§pop())
                                       {
                                          if(_loc3_ || this)
                                          {
                                             (§#!4§.getItemByName("Button_NextLevel") as §]P§).setVisibility(false);
                                             (§#!4§.getItemByName("Button_CutScene") as §]P§).setVisibility(true);
                                             if(_loc2_ && _loc1_)
                                             {
                                                addr171:
                                                (§#!4§.getItemByName("Button_CutScene") as §]P§).setVisibility(false);
                                                §§goto(addr178);
                                             }
                                             addr178:
                                             return;
                                          }
                                       }
                                       else
                                       {
                                          (§#!4§.getItemByName("Button_NextLevel") as §]P§).setVisibility(true);
                                          if(_loc3_)
                                          {
                                             §§goto(addr171);
                                          }
                                       }
                                       §§goto(addr171);
                                    }
                                 }
                                 §§goto(addr122);
                              }
                              if(§§pop())
                              {
                                 (§#!4§.getItemByName("Button_NextLevel") as §]P§).setVisibility(false);
                                 if(_loc3_ || _loc2_)
                                 {
                                    (§#!4§.getItemByName("Button_CutScene") as §]P§).setVisibility(false);
                                    addr110:
                                    (§#!4§.getItemByName("Button_MightyEagle") as §]P§).setVisibility(true);
                                    if(!_loc3_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr171);
                                 }
                              }
                              else
                              {
                                 §§goto(addr122);
                                 §§push(§6M§.§"p§());
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr122);
                        }
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr61);
               }
               §§goto(addr63);
            }
            §§goto(addr64);
         }
         §§goto(addr110);
      }
      
      protected function hideButtons() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            (§#!4§.getItemByName("Button_CutScene") as §]P§).setVisibility(false);
            if(_loc1_)
            {
               (§#!4§.getItemByName("Button_MightyEagle") as §]P§).setVisibility(false);
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.activate();
            if(_loc1_ || this)
            {
               addr42:
               this.§>!;§ = new §-!$§(0,0,0,0);
               if(!_loc2_)
               {
                  addr62:
                  §#!4§.movieClip.addChildAt(this.§>!;§,§#!4§.movieClip.numChildren - 1);
                  if(!(_loc2_ && _loc2_))
                  {
                     this.showButtons();
                     if(!(_loc2_ && _loc2_))
                     {
                        addr87:
                        this.§>!;§.§0C§(0.7);
                     }
                     return;
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr62);
         }
         §§goto(addr42);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && param1))
            {
               if(§§pop() != §9[§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_ || this)
                  {
                     §§goto(addr65);
                  }
                  else
                  {
                     addr79:
                     §,!!§.§;4§.clearLevel();
                     if(_loc4_ || this)
                     {
                        return §9[§.STATE_STATUS_COMPLETED;
                     }
                  }
               }
               else if(mNextState.length > 0)
               {
                  if(_loc4_)
                  {
                     §§goto(addr79);
                  }
               }
               return §9[§.STATE_STATUS_RUNNING;
            }
            addr65:
            return _loc2_;
         }
         §§goto(addr79);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
            if(_loc2_)
            {
               §§push(this.§>!;§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(§#!4§.movieClip.contains(this.§>!;§))
                     {
                        §#!4§.movieClip.removeChild(this.§>!;§);
                        if(!(_loc1_ && _loc1_))
                        {
                           addr68:
                           this.§>!;§.clean();
                           §§goto(addr66);
                        }
                     }
                     addr66:
                     if(!_loc1_)
                     {
                        this.§>!;§ = null;
                        if(_loc2_ || this)
                        {
                        }
                     }
                     §§goto(addr87);
                  }
                  this.setButtonStates(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  this.hideButtons();
                  §§goto(addr87);
               }
               §§goto(addr68);
            }
            addr87:
            return;
         }
         §§goto(addr68);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§#!4§.getItemByName("Button_Menu") as §]P§).setComponentVisualState(param1);
            if(!_loc2_)
            {
               (§#!4§.getItemByName("Button_Replay") as §]P§).setComponentVisualState(param1);
               if(!(_loc2_ && _loc2_))
               {
                  (§#!4§.getItemByName("Button_NextLevel") as §]P§).setComponentVisualState(param1);
                  §§goto(addr52);
               }
               §§goto(addr90);
            }
            addr52:
            if(_loc3_ || _loc2_)
            {
               addr76:
               (§#!4§.getItemByName("Button_CutScene") as §]P§).setComponentVisualState(param1);
               if(!(_loc2_ && param1))
               {
                  addr90:
                  (§#!4§.getItemByName("Button_MightyEagle") as §]P§).setComponentVisualState(param1);
               }
            }
            return;
         }
         §§goto(addr76);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            §§push("NEXT_LEVEL");
            if(!(_loc5_ && param1))
            {
               §§push(_loc4_);
               if(!(_loc5_ && param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_)
                     {
                        §§push(0);
                        if(!(_loc6_ || param1))
                        {
                           addr150:
                        }
                     }
                     else
                     {
                        addr114:
                        §§push(1);
                        if(!_loc6_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(!(_loc5_ && param2))
                     {
                        §§push(_loc4_);
                        if(!_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr114);
                              }
                              else
                              {
                                 addr147:
                                 §§push(2);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr150);
                                 }
                                 else
                                 {
                                    addr162:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          § @§.§-!-§();
                                          mNextState = this.§;i§();
                                          break;
                                       case 1:
                                          § @§.§'d§();
                                          mNextState = this.§,7§();
                                          if(_loc6_ || this)
                                          {
                                             break;
                                          }
                                          addr46:
                                          mNextState = this.§&N§();
                                          break;
                                       case 2:
                                          §3!E§.§#'§();
                                          if(!_loc6_)
                                          {
                                          }
                                          §§goto(addr46);
                                       case 3:
                                          AngryBirdsFP11.§@t§.§"&§();
                                    }
                                    return;
                                    addr157:
                                 }
                                 §§goto(addr162);
                              }
                           }
                           else
                           {
                              §§push("MENU");
                              if(!_loc5_)
                              {
                                 §§push(_loc4_);
                                 if(_loc6_ || this)
                                 {
                                    addr139:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          §§goto(addr147);
                                       }
                                    }
                                    else
                                    {
                                       addr152:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          §§goto(addr162);
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr162);
                                    §§goto(addr162);
                                 }
                              }
                              §§goto(addr152);
                           }
                           §§goto(addr162);
                        }
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr162);
               }
               §§goto(addr139);
            }
            §§goto(addr152);
         }
         §§goto(addr147);
      }
      
      protected function §,7§() : String
      {
         return § @§.§0!7§;
      }
      
      protected function §&N§() : String
      {
         return §!,§.§0!7§;
      }
      
      protected function §;i§() : String
      {
         return StateCutScene.§0!7§;
      }
   }
}
