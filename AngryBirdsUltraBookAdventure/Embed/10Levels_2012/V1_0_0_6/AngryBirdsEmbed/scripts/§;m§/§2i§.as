package §;m§
{
   import §#h§.§ !H§;
   import §'o§.§`K§;
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §4C§.§6<§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §`!0§.§"?§;
   import §`!0§.§[4§;
   
   public class §2i§ extends §>3§
   {
      
      public static const §-!A§:String = "LevelEndFailStateRio";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §2i§)
         {
            §-!A§ = "LevelEndFailStateRio";
         }
      }
      
      private var §=@§:§`K§;
      
      public function §2i§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
            if(_loc2_)
            {
               §§goto(addr38);
            }
            §§goto(addr50);
         }
         addr38:
         §-f§ = new §0#§(this);
         if(!(_loc1_ && this))
         {
            addr50:
            §-f§.init(this.getViewXML());
         }
      }
      
      protected function getViewXML() : XML
      {
         return §06§.§-`§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§59§.§+-§());
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(Boolean(_loc1_));
         if(!_loc2_)
         {
            §§push(§§pop());
            if(_loc3_)
            {
               if(§§pop())
               {
                  §§pop();
                  §§push(AngryBirdsFP11.sUserProgress);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(_loc1_);
                     if(_loc3_)
                     {
                        §§push(!§§pop().isLevelOpen(§§pop()));
                        if(_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc3_ || _loc3_)
                           {
                              addr58:
                              if(!§§pop())
                              {
                                 if(_loc3_ || this)
                                 {
                                    §§pop();
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§goto(addr91);
                                    }
                                    §§goto(addr136);
                                 }
                              }
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr91);
                  }
                  addr91:
                  if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§59§.§%j§))
                  {
                     (§-f§.getItemByName("Button_NextLevel") as §6<§).setVisibility(false);
                     if(!(_loc2_ && this))
                     {
                        (§-f§.getItemByName("Button_CutScene") as §6<§).setVisibility(false);
                        (§-f§.getItemByName("Button_MightyEagle") as §6<§).setVisibility(true);
                     }
                     else
                     {
                        addr143:
                        (§-f§.getItemByName("Button_CutScene") as §6<§).setVisibility(true);
                     }
                  }
                  else
                  {
                     addr123:
                     if(§59§.§^G§())
                     {
                        if(_loc3_)
                        {
                           addr136:
                           (§-f§.getItemByName("Button_NextLevel") as §6<§).setVisibility(false);
                           §§goto(addr143);
                        }
                        §§goto(addr165);
                     }
                     else
                     {
                        (§-f§.getItemByName("Button_NextLevel") as §6<§).setVisibility(true);
                     }
                     (§-f§.getItemByName("Button_CutScene") as §6<§).setVisibility(false);
                  }
                  addr165:
                  return;
               }
            }
            §§goto(addr58);
         }
         §§goto(addr123);
      }
      
      protected function hideButtons() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            (§-f§.getItemByName("Button_CutScene") as §6<§).setVisibility(false);
            if(_loc1_ || this)
            {
               (§-f§.getItemByName("Button_MightyEagle") as §6<§).setVisibility(false);
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
            if(_loc2_)
            {
               this.§=@§ = new §`K§(0,0,0,0);
               if(_loc2_ || _loc1_)
               {
                  §-f§.movieClip.addChildAt(this.§=@§,§-f§.movieClip.numChildren - 1);
                  if(_loc2_)
                  {
                     addr69:
                     this.showButtons();
                     if(!_loc1_)
                     {
                        addr73:
                        this.§=@§.§?`§(0.7);
                     }
                  }
               }
               return;
            }
            §§goto(addr69);
         }
         §§goto(addr73);
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
         if(_loc4_ || this)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               if(§§pop() != §>3§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc3_ && param1))
                  {
                     §§push(_loc2_);
                  }
                  else
                  {
                     §§goto(addr78);
                  }
               }
               §§goto(addr78);
            }
            return §§pop();
         }
         addr78:
         if(mNextState.length > 0)
         {
            if(!_loc3_)
            {
               §"h§.§1C§.clearLevel();
               if(_loc3_ && _loc2_)
               {
                  §§goto(addr97);
               }
            }
            return §>3§.STATE_STATUS_COMPLETED;
         }
         addr97:
         return §>3§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            §§push(this.§=@§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     if(§-f§.movieClip.contains(this.§=@§))
                     {
                        §-f§.movieClip.removeChild(this.§=@§);
                        addr66:
                        this.§=@§.clean();
                        addr64:
                        if(_loc2_ || this)
                        {
                           this.§=@§ = null;
                           if(_loc2_)
                           {
                              addr79:
                              this.setButtonStates(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              this.hideButtons();
                           }
                        }
                     }
                     §§goto(addr64);
                  }
                  return;
               }
               §§goto(addr79);
            }
         }
         §§goto(addr66);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            (§-f§.getItemByName("Button_Menu") as §6<§).setComponentVisualState(param1);
            if(!_loc3_)
            {
               (§-f§.getItemByName("Button_Replay") as §6<§).setComponentVisualState(param1);
               if(_loc2_ || this)
               {
                  (§-f§.getItemByName("Button_NextLevel") as §6<§).setComponentVisualState(param1);
                  if(_loc2_ || _loc3_)
                  {
                     (§-f§.getItemByName("Button_CutScene") as §6<§).setComponentVisualState(param1);
                     if(_loc2_ || _loc2_)
                     {
                        addr94:
                        (§-f§.getItemByName("Button_MightyEagle") as §6<§).setComponentVisualState(param1);
                     }
                  }
               }
               §§goto(addr94);
            }
            return;
         }
         §§goto(addr94);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
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
               if(_loc6_ || param3)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_)
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr144:
                        §§push(3);
                        if(_loc6_)
                        {
                           addr147:
                        }
                     }
                     §§goto(addr152);
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(_loc6_)
                     {
                        §§push(_loc4_);
                        if(!(_loc5_ && param3))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 addr99:
                                 §§push(1);
                                 if(!(_loc6_ || param2))
                                 {
                                    §§goto(addr147);
                                 }
                              }
                              else
                              {
                                 §§goto(addr144);
                              }
                              §§goto(addr152);
                           }
                           else
                           {
                              §§push("MENU");
                              if(_loc6_ || this)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc5_ && param1))
                                 {
                                    addr134:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(2);
                                          if(!_loc6_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr144);
                                       }
                                       §§goto(addr152);
                                    }
                                    else
                                    {
                                       addr142:
                                       §§push("FULLSCREEN_BUTTON");
                                       §§push(_loc4_);
                                    }
                                    §§goto(addr144);
                                 }
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr144);
                                 }
                                 else
                                 {
                                    §§push(4);
                                 }
                                 addr152:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       §3'§.§+^§();
                                       mNextState = this.§]y§();
                                       break;
                                    case 1:
                                       §3'§.§;3§();
                                       mNextState = this.§2J§();
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       addr39:
                                       mNextState = this.§<r§();
                                       break;
                                    case 2:
                                       § !H§.§[!<§();
                                       §§goto(addr39);
                                    case 3:
                                       AngryBirdsFP11.§0P§.§<h§();
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                 }
                                 return;
                              }
                              §§goto(addr142);
                           }
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr142);
                  }
               }
               §§goto(addr134);
            }
            §§goto(addr142);
         }
         §§goto(addr99);
      }
      
      protected function §2J§() : String
      {
         return §3'§.§-!A§;
      }
      
      protected function §<r§() : String
      {
         return §>!B§.§-!A§;
      }
      
      protected function §]y§() : String
      {
         return StateCutScene.§-!A§;
      }
   }
}
