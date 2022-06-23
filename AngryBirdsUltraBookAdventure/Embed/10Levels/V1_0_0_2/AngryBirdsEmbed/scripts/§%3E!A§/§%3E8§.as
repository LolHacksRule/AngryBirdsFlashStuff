package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §87§.§<8§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §@D§.§6I§;
   import §class§.§?q§;
   
   public class §>8§ extends §#!,§
   {
      
      public static const §?x§:String = "LevelEndFailStateRio";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?x§ = "LevelEndFailStateRio";
         }
      }
      
      private var §<!4§:§<8§;
      
      public function §>8§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
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
               §[=§ = new §^3§(this);
               if(!_loc1_)
               {
                  §[=§.init(this.getViewXML());
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      protected function getViewXML() : XML
      {
         return §!I§.§7y§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§5j§.§&1§());
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
                                    §§push(AngryBirdsFP11.sUserProgress.isLevelPassed(§5j§.§%V§));
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
                                             (§[=§.getItemByName("Button_NextLevel") as §?q§).setVisibility(false);
                                             (§[=§.getItemByName("Button_CutScene") as §?q§).setVisibility(true);
                                             if(_loc2_ && _loc1_)
                                             {
                                                addr171:
                                                (§[=§.getItemByName("Button_CutScene") as §?q§).setVisibility(false);
                                                §§goto(addr178);
                                             }
                                             addr178:
                                             return;
                                          }
                                       }
                                       else
                                       {
                                          (§[=§.getItemByName("Button_NextLevel") as §?q§).setVisibility(true);
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
                                 (§[=§.getItemByName("Button_NextLevel") as §?q§).setVisibility(false);
                                 if(_loc3_ || _loc2_)
                                 {
                                    (§[=§.getItemByName("Button_CutScene") as §?q§).setVisibility(false);
                                    addr110:
                                    (§[=§.getItemByName("Button_MightyEagle") as §?q§).setVisibility(true);
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
                                 §§push(§5j§.§!d§());
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
            (§[=§.getItemByName("Button_CutScene") as §?q§).setVisibility(false);
            if(_loc1_)
            {
               (§[=§.getItemByName("Button_MightyEagle") as §?q§).setVisibility(false);
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
               this.§<!4§ = new §<8§(0,0,0,0);
               if(!_loc2_)
               {
                  addr62:
                  §[=§.movieClip.addChildAt(this.§<!4§,§[=§.movieClip.numChildren - 1);
                  if(!(_loc2_ && _loc2_))
                  {
                     this.showButtons();
                     if(!(_loc2_ && _loc2_))
                     {
                        addr87:
                        this.§<!4§.§4J§(0.7);
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
               if(§§pop() != §#!,§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_ || this)
                  {
                     §§goto(addr65);
                  }
                  else
                  {
                     addr79:
                     §[k§.§&@§.clearLevel();
                     if(_loc4_ || this)
                     {
                        return §#!,§.STATE_STATUS_COMPLETED;
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
               return §#!,§.STATE_STATUS_RUNNING;
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
               §§push(this.§<!4§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(§[=§.movieClip.contains(this.§<!4§))
                     {
                        §[=§.movieClip.removeChild(this.§<!4§);
                        if(!(_loc1_ && _loc1_))
                        {
                           addr68:
                           this.§<!4§.clean();
                           §§goto(addr66);
                        }
                     }
                     addr66:
                     if(!_loc1_)
                     {
                        this.§<!4§ = null;
                        if(_loc2_ || this)
                        {
                        }
                     }
                     §§goto(addr87);
                  }
                  this.setButtonStates(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
            (§[=§.getItemByName("Button_Menu") as §?q§).setComponentVisualState(param1);
            if(!_loc2_)
            {
               (§[=§.getItemByName("Button_Replay") as §?q§).setComponentVisualState(param1);
               if(!(_loc2_ && _loc2_))
               {
                  (§[=§.getItemByName("Button_NextLevel") as §?q§).setComponentVisualState(param1);
                  §§goto(addr52);
               }
               §§goto(addr90);
            }
            addr52:
            if(_loc3_ || _loc2_)
            {
               addr76:
               (§[=§.getItemByName("Button_CutScene") as §?q§).setComponentVisualState(param1);
               if(!(_loc2_ && param1))
               {
                  addr90:
                  (§[=§.getItemByName("Button_MightyEagle") as §?q§).setComponentVisualState(param1);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
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
                                          §,w§.§^^§();
                                          mNextState = this.§9N§();
                                          break;
                                       case 1:
                                          §,w§.§9!D§();
                                          mNextState = this.§#! §();
                                          if(_loc6_ || this)
                                          {
                                             break;
                                          }
                                          addr46:
                                          mNextState = this.§"^§();
                                          break;
                                       case 2:
                                          §6I§.§%,§();
                                          if(!_loc6_)
                                          {
                                          }
                                          §§goto(addr46);
                                       case 3:
                                          AngryBirdsFP11.§,s§.§8!1§();
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
      
      protected function §#! §() : String
      {
         return §,w§.§?x§;
      }
      
      protected function §"^§() : String
      {
         return §5O§.§?x§;
      }
      
      protected function §9N§() : String
      {
         return StateCutScene.§?x§;
      }
   }
}
