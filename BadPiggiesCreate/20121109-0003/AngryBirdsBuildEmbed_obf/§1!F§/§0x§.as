package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §-!0§.§1^§;
   import §1?§.§+!§;
   import §5!`§.§%!Y§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   
   public class §0x§ extends §;!!§
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
      
      private var §7H§:§%!Y§;
      
      public function §0x§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
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
         if(_loc2_)
         {
            super.init();
            if(!_loc1_)
            {
               §+!$§ = new §2U§(this);
               if(!(_loc1_ && _loc2_))
               {
                  addr45:
                  §+!$§.init(this.getViewXML());
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      protected function getViewXML() : XML
      {
         return §=!Z§.§;K§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§1^§.§`!L§());
         if(!(_loc3_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §§push(Boolean(_loc1_));
            if(_loc2_ || this)
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        §§pop();
                        §§push(AngryBirdsFP11.sUserProgress);
                        if(!_loc3_)
                        {
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              addr59:
                              §§push(!§§pop().isLevelOpen(§§pop()));
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc3_)
                                 {
                                    addr71:
                                    if(!§§pop())
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§pop();
                                          if(_loc2_)
                                          {
                                             addr97:
                                             §§push(AngryBirdsFP11.sUserProgress.isLevelPassed(§1^§.§ ]§));
                                             if(!(_loc3_ && this))
                                             {
                                                §§goto(addr105);
                                             }
                                             §§goto(addr108);
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr105);
                                    }
                                 }
                              }
                              §§goto(addr108);
                           }
                        }
                        §§goto(addr97);
                     }
                     addr105:
                     §§push(!§§pop());
                     if(_loc2_)
                     {
                        addr108:
                        if(§§pop())
                        {
                           if(!(_loc3_ && this))
                           {
                              (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setVisibility(false);
                              if(_loc2_)
                              {
                                 addr125:
                                 (§+!$§.getItemByName("Button_CutScene") as §#!'§).setVisibility(false);
                                 if(!_loc3_)
                                 {
                                    §§goto(addr134);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr134);
                        }
                        else
                        {
                           §§goto(addr146);
                        }
                     }
                     addr146:
                     if(§1^§.§`!?§())
                     {
                        §§goto(addr147);
                     }
                     else
                     {
                        (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setVisibility(true);
                        addr188:
                        (§+!$§.getItemByName("Button_CutScene") as §#!'§).setVisibility(false);
                     }
                     addr134:
                     (§+!$§.getItemByName("Button_MightyEagle") as §#!'§).setVisibility(true);
                     if(!_loc2_)
                     {
                        addr147:
                        (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setVisibility(false);
                        if(!_loc3_)
                        {
                           (§+!$§.getItemByName("Button_CutScene") as §#!'§).setVisibility(true);
                           if(!(_loc3_ && _loc2_))
                           {
                              addr180:
                           }
                        }
                        §§goto(addr180);
                     }
                     return;
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr59);
         }
         §§goto(addr125);
      }
      
      protected function hideButtons() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            (§+!$§.getItemByName("Button_CutScene") as §#!'§).setVisibility(false);
            if(!_loc2_)
            {
               (§+!$§.getItemByName("Button_MightyEagle") as §#!'§).setVisibility(false);
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
            if(_loc2_)
            {
               this.§7H§ = new §%!Y§(0,0,0,0);
               addr23:
               if(_loc2_ || this)
               {
                  §+!$§.movieClip.addChildAt(this.§7H§,§+!$§.movieClip.numChildren - 1);
                  if(_loc2_ || _loc2_)
                  {
                     this.showButtons();
                     if(_loc1_)
                     {
                     }
                  }
                  §§goto(addr82);
               }
               this.§7H§.§#[§(0.7);
            }
            addr82:
            return;
         }
         §§goto(addr23);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || param1)
         {
            §§push(_loc2_);
            if(!(_loc3_ && this))
            {
               if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_)
                  {
                     §§goto(addr65);
                  }
               }
               else
               {
                  §§goto(addr73);
               }
               §§goto(addr89);
            }
            addr65:
            return _loc2_;
         }
         addr73:
         if(mNextState.length > 0)
         {
            if(_loc4_ || _loc2_)
            {
               §'!V§.§1!2§.clearLevel();
               if(_loc4_)
               {
                  addr89:
                  return §;!!§.STATE_STATUS_COMPLETED;
               }
            }
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            §§push(this.§7H§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     if(§+!$§.movieClip.contains(this.§7H§))
                     {
                        if(!_loc1_)
                        {
                           §+!$§.movieClip.removeChild(this.§7H§);
                           if(!_loc1_)
                           {
                              addr70:
                              this.§7H§.clean();
                              addr68:
                              if(_loc2_)
                              {
                                 this.§7H§ = null;
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr83:
                                    this.setButtonStates(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                    if(_loc2_ || this)
                                    {
                                       addr94:
                                       this.hideButtons();
                                    }
                                 }
                                 §§goto(addr94);
                              }
                           }
                           §§goto(addr83);
                        }
                        return;
                     }
                     §§goto(addr68);
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr70);
         }
         §§goto(addr94);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            (§+!$§.getItemByName("Button_Menu") as §#!'§).setComponentVisualState(param1);
            if(_loc2_)
            {
               (§+!$§.getItemByName("Button_Replay") as §#!'§).setComponentVisualState(param1);
               if(_loc2_)
               {
                  (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setComponentVisualState(param1);
                  if(_loc2_)
                  {
                     addr70:
                     (§+!$§.getItemByName("Button_CutScene") as §#!'§).setComponentVisualState(param1);
                     if(_loc3_ && _loc3_)
                     {
                     }
                     §§goto(addr91);
                  }
                  (§+!$§.getItemByName("Button_MightyEagle") as §#!'§).setComponentVisualState(param1);
                  §§goto(addr91);
               }
               addr91:
               return;
            }
         }
         §§goto(addr70);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            §§push("NEXT_LEVEL");
            if(_loc6_)
            {
               §§push(_loc4_);
               if(_loc6_ || param2)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(!(_loc6_ || param3))
                        {
                           addr124:
                        }
                     }
                     else
                     {
                        addr154:
                        §§push(2);
                        if(!(_loc5_ && this))
                        {
                           addr162:
                        }
                        else
                        {
                           addr169:
                        }
                     }
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(!_loc5_)
                     {
                        addr105:
                        §§push(_loc4_);
                        if(!(_loc5_ && param1))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_)
                              {
                                 addr116:
                                 §§push(1);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§goto(addr124);
                                 }
                                 else
                                 {
                                    §§goto(addr162);
                                 }
                              }
                              §§goto(addr174);
                           }
                           else
                           {
                              §§push("MENU");
                              if(!_loc5_)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc5_ && this))
                                 {
                                    addr136:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          §§goto(addr154);
                                       }
                                    }
                                    else
                                    {
                                       addr165:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr174:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §26§.§=0§();
                                                if(_loc6_ || this)
                                                {
                                                   mNextState = this.§54§();
                                                   break;
                                                }
                                                addr62:
                                                break;
                                             case 1:
                                                §26§.§!=§();
                                                mNextState = this.§0H§();
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                addr57:
                                                break;
                                             case 2:
                                                §+!§.§'!Q§();
                                                if(!(_loc5_ && param1))
                                                {
                                                   mNextState = this.§ try§();
                                                   §§goto(addr57);
                                                }
                                                else
                                                {
                                                   §§goto(addr62);
                                                }
                                             case 3:
                                                AngryBirdsFP11.§`!d§.§!5§();
                                                §§goto(addr62);
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr174);
                                 }
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr174);
                        }
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr174);
               }
               §§goto(addr136);
            }
            §§goto(addr105);
         }
         §§goto(addr116);
      }
      
      protected function §0H§() : String
      {
         return §26§.STATE_NAME;
      }
      
      protected function § try§() : String
      {
         return §?&§.STATE_NAME;
      }
      
      protected function §54§() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
