package §9!5§
{
   import §"R§.§ !Q§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §4L§.§,!_§;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §?!7§.§5!I§;
   import §true§.§ _§;
   
   public class §"Y§ extends §?Y§
   {
      
      public static const §?h§:String = "LevelEndFailStateRio";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §?h§ = "LevelEndFailStateRio";
         }
      }
      
      private var §#x§:§,!_§;
      
      public function §"Y§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
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
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            while(true)
            {
               §5!P§ = new §'!^§(this);
               while(_loc1_)
               {
                  §5!P§.init(this.getViewXML());
                  if(!_loc2_)
                  {
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      protected function getViewXML() : XML
      {
         return §[!'§.§+@§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(LevelManager.§9!j§());
         if(!(_loc3_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_ || _loc1_)
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
                        loop3:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.sUserProgress);
                           loop4:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr235:
                              addr276:
                              while(true)
                              {
                                 §§push(§§pop().isLevelOpen(§§pop()));
                                 addr236:
                                 while(_loc2_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc3_ && this)
                                    {
                                       continue loop0;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 continue loop2;
                              }
                              loop8:
                              while(true)
                              {
                                 §§push(AngryBirdsFP11.sUserProgress);
                                 if(!(_loc2_ || this))
                                 {
                                    continue loop4;
                                 }
                                 §§push(LevelManager.§4Y§);
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(§§pop().§%H§(§§pop()));
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§push(!§§pop());
                                          loop10:
                                          while(true)
                                          {
                                             while(!§§pop())
                                             {
                                                §§push(LevelManager.§8!<§());
                                                if(!_loc2_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc2_)
                                                {
                                                   continue loop9;
                                                }
                                                if(_loc3_ && this)
                                                {
                                                   continue loop10;
                                                }
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc2_ || this)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
                                                            (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(true);
                                                            addr95:
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  break loop8;
                                                               }
                                                               break;
                                                            }
                                                            (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(false);
                                                            addr165:
                                                            while(true)
                                                            {
                                                               (§5!P§.getItemByName("Button_MightyEagle") as §5!I§).setVisibility(true);
                                                            }
                                                            addr192:
                                                            addr165:
                                                            addr230:
                                                         }
                                                         while(!(_loc2_ || _loc2_))
                                                         {
                                                            §§goto(addr192);
                                                         }
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr35);
                                                         }
                                                         continue loop8;
                                                      }
                                                      §§goto(addr165);
                                                   }
                                                   else
                                                   {
                                                      (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(true);
                                                      do
                                                      {
                                                         (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(false);
                                                      }
                                                      while(_loc3_ && _loc2_);
                                                      
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(!(_loc2_ || _loc2_))
                                                            {
                                                               continue loop3;
                                                            }
                                                            addr75:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr165);
                                                         }
                                                         §§goto(addr35);
                                                      }
                                                   }
                                                   §§goto(addr95);
                                                }
                                                else
                                                {
                                                   §§goto(addr236);
                                                }
                                             }
                                             (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
                                             §§goto(addr230);
                                          }
                                          continue loop1;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr235);
                                 }
                                 §§goto(addr236);
                              }
                              addr35:
                              return;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr259);
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      protected function hideButtons() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(false);
            do
            {
               (§5!P§.getItemByName("Button_MightyEagle") as §5!I§).setVisibility(false);
            }
            while(_loc1_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            while(true)
            {
               this.§#x§ = new §,!_§(0,0,0,0);
            }
            addr95:
         }
         do
         {
            §5!P§.movieClip.addChildAt(this.§#x§,§5!P§.movieClip.numChildren - 1);
            loop2:
            do
            {
               this.showButtons();
               while(!_loc1_)
               {
                  this.§#x§.§7!+§(0.7);
                  if(_loc2_ || _loc1_)
                  {
                     continue loop2;
                  }
               }
               §§goto(addr95);
            }
            while(!_loc2_);
            
         }
         while(!(_loc2_ || this));
         
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() == §?Y§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(_loc4_)
                     {
                        § _§.§!6§.clearLevel();
                     }
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(_loc4_ || param1)
                     {
                        return §?Y§.STATE_STATUS_COMPLETED;
                     }
                     addr96:
                     §§push(_loc2_);
                  }
                  return §?Y§.STATE_STATUS_RUNNING;
               }
               §§goto(addr96);
            }
            return §§pop();
         }
         §§goto(addr96);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§#x§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.setButtonStates(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        loop3:
                        while(_loc1_)
                        {
                           if(!(_loc1_ || _loc1_))
                           {
                              while(true)
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    this.§#x§ = null;
                                    break loop3;
                                 }
                                 continue loop1;
                              }
                              continue loop1;
                              addr84:
                           }
                           this.hideButtons();
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              break loop2;
                           }
                           addr106:
                           while(true)
                           {
                              if(!§5!P§.movieClip.contains(this.§#x§))
                              {
                                 continue loop1;
                              }
                           }
                           while(true)
                           {
                              §5!P§.movieClip.removeChild(this.§#x§);
                              continue loop0;
                           }
                        }
                        while(true)
                        {
                           if(_loc1_)
                           {
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§5!P§.getItemByName("Button_Menu") as §5!I§).setComponentVisualState(param1);
            loop0:
            while(true)
            {
               (§5!P§.getItemByName("Button_Replay") as §5!I§).setComponentVisualState(param1);
               while(true)
               {
                  (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setComponentVisualState(param1);
                  while(!(_loc3_ && param1))
                  {
                     continue loop0;
                     (§5!P§.getItemByName("Button_CutScene") as §5!I§).setComponentVisualState(param1);
                     do
                     {
                        (§5!P§.getItemByName("Button_MightyEagle") as §5!I§).setComponentVisualState(param1);
                     }
                     while(!(_loc2_ || param1));
                     
                     if(_loc2_)
                     {
                        return;
                        addr50:
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param2)
         {
            §§push("NEXT_LEVEL");
            if(!(_loc5_ && param3))
            {
               §§push(_loc4_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_ || param2)
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                           addr170:
                        }
                     }
                     else
                     {
                        addr167:
                        §§push(2);
                        if(_loc6_)
                        {
                           §§goto(addr170);
                        }
                     }
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(_loc6_)
                     {
                        §§push(_loc4_);
                        if(!_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(1);
                                 if(!_loc6_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr167);
                              }
                           }
                           else
                           {
                              §§push("MENU");
                              if(!(_loc5_ && this))
                              {
                                 §§push(_loc4_);
                                 if(_loc6_)
                                 {
                                    addr164:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          §§goto(addr167);
                                       }
                                       else
                                       {
                                          addr174:
                                          §§push(3);
                                          if(_loc6_ || param3)
                                          {
                                          }
                                          §§goto(addr187);
                                       }
                                    }
                                    else
                                    {
                                       addr172:
                                       §§push("FULLSCREEN_BUTTON");
                                       §§push(_loc4_);
                                    }
                                    §§goto(addr174);
                                 }
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr174);
                                 }
                                 else
                                 {
                                    §§push(4);
                                 }
                              }
                              §§goto(addr172);
                           }
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr172);
                  }
                  addr187:
                  switch(§§pop())
                  {
                     case 0:
                        §#!c§.§ !0§();
                        mNextState = this.§>!_§();
                        addr79:
                        break;
                        addr79:
                        addr94:
                     case 1:
                        §#!c§.§6d§();
                        mNextState = this.§[!Z§();
                        addr65:
                        if(_loc6_)
                        {
                           break;
                        }
                        §§goto(addr79);
                        break;
                        addr73:
                     case 2:
                        § !Q§.§"!"§();
                        while(true)
                        {
                           if(!(_loc5_ && param2))
                           {
                              continue;
                           }
                           §§goto(addr65);
                        }
                        break;
                     case 3:
                        AngryBirdsFP11.§3!a§.§8!d§();
                        if(!_loc5_)
                        {
                           if(_loc6_ || this)
                           {
                              if(!_loc5_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr37);
                              }
                              else
                              {
                                 §§goto(addr94);
                              }
                              §§goto(addr79);
                           }
                           else
                           {
                              §§goto(addr73);
                           }
                        }
                  }
                  return;
               }
               §§goto(addr164);
            }
            §§goto(addr172);
         }
         §§goto(addr174);
      }
      
      protected function §[!Z§() : String
      {
         return §#!c§.§?h§;
      }
      
      protected function §&X§() : String
      {
         return § B§.§?h§;
      }
      
      protected function §>!_§() : String
      {
         return StateCutScene.§?h§;
      }
   }
}
