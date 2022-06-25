package §7t§
{
   import §!!0§.SoundEngine;
   import §0!Q§.UIComponentInteractiveRovio;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §5!3§.§2!R§;
   import §6a§.UIButtonRovio;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.LevelManager;
   import §?!Y§.§`S§;
   
   public class StateLevelEndFailRio extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
      
      {
         var STATE_NAME:Boolean = true;
         var _loc2_:Boolean = false;
         if(STATE_NAME || _loc2_)
         {
         }
         do
         {
            STATE_NAME = "LevelEndFailStateRio";
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private var §%!Q§:§2!R§;
      
      public function StateLevelEndFailRio(initState:Boolean = false, name:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!_loc4_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            do
            {
               while(true)
               {
                  super(initState,name);
                  while(_loc4_)
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_)
                        {
                           continue loop1;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
            while(_loc3_);
            
            return;
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         loop0:
         do
         {
            super.init();
            loop1:
            while(true)
            {
               do
               {
                  §`=§ = new §`X§(this);
                  continue loop1;
               }
               while(!_loc2_);
               
               continue loop0;
            }
         }
         while(_loc1_);
         
      }
      
      protected function getViewXML() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return §+q§.§%M§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(!(_loc2_ && nextLevelId))
         {
            if(!(_loc2_ && _loc3_))
            {
               addr41:
            }
            §§push(LevelManager.§8!I§());
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            var nextLevelId:* = §§pop();
            if(_loc3_)
            {
               loop0:
               while(true)
               {
                  §§push(Boolean(nextLevelId));
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc3_ || nextLevelId)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(AngryBirdsFP11.sUserProgress);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(nextLevelId);
                                    addr336:
                                    while(true)
                                    {
                                       §§push(§§pop().isLevelOpen(§§pop()));
                                       if(_loc3_)
                                       {
                                          §§push(!§§pop());
                                          if(!(_loc2_ && this))
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                addr350:
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   addr376:
                                                   if(§§pop())
                                                   {
                                                      while(!§§pop())
                                                      {
                                                         §§push(LevelManager.§%!M§());
                                                         if(_loc2_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         addr201:
                                                         if(_loc2_ && nextLevelId)
                                                         {
                                                            while(!_loc2_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc3_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               continue loop1;
                                                               §§goto(addr201);
                                                            }
                                                            continue loop3;
                                                            addr309:
                                                         }
                                                         if(!(_loc2_ && nextLevelId))
                                                         {
                                                            if(!(_loc3_ || _loc3_))
                                                            {
                                                               continue loop16;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  addr225:
                                                                  if(!(_loc3_ || this))
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  if(!(_loc2_ && nextLevelId))
                                                                  {
                                                                     (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ && nextLevelId)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
                                                                              addr274:
                                                                              §§goto(addr52);
                                                                           }
                                                                           addr277:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           (§`=§.getItemByName("Button_MightyEagle") as UIButtonRovio).setVisibility(true);
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        addr137:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(!(_loc2_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc3_ || nextLevelId))
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                    }
                                                                                    addr127:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
                                                                                       addr289:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§goto(addr277);
                                                                                       }
                                                                                    }
                                                                                    addr327:
                                                                                 }
                                                                                 addr52:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr52:
                                                                                 return;
                                                                              }
                                                                              §§goto(addr289);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr165);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr165:
                                                                     addr181:
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
                                                               while(true)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr137);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr378:
                                                               addr326:
                                                               while(true)
                                                               {
                                                                  continue loop5;
                                                               }
                                                            }
                                                            addr377:
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         §§goto(addr378);
                                                      }
                                                      §§goto(addr326);
                                                      addr322:
                                                   }
                                                }
                                                continue loop2;
                                             }
                                             addr349:
                                          }
                                          §§goto(addr377);
                                       }
                                       §§goto(addr350);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr349);
                     }
                  }
               }
            }
            §§goto(addr181);
         }
         §§goto(addr41);
      }
      
      protected function hideButtons() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
               do
               {
                  loop2:
                  do
                  {
                     (§`=§.getItemByName("Button_MightyEagle") as UIButtonRovio).setVisibility(false);
                     while(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  while(_loc2_ && _loc2_);
                  
               }
               while(!_loc1_);
               
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               super.activate();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.§%!Q§ = new §2!R§(0,0,0,0);
                     addr146:
                     addr109:
                     loop6:
                     for(; !(_loc1_ && _loc1_); if(_loc2_ || _loc2_)
                     {
                        loop9:
                        for(; !_loc1_; if(!(_loc1_ && _loc2_))
                        {
                           if(!_loc1_)
                           {
                              return;
                           }
                           continue loop0;
                        })
                        {
                           if(!_loc1_)
                           {
                              this.§%!Q§.§`!]§(0.7);
                              while(!_loc1_)
                              {
                                 if(_loc2_ || _loc1_)
                                 {
                                    continue loop9;
                                 }
                              }
                              §§goto(addr82);
                           }
                           else
                           {
                              §§goto(addr146);
                           }
                        }
                        continue loop1;
                     })
                     {
                        loop7:
                        while(true)
                        {
                           this.showButtons();
                           addr82:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop6;
                              }
                              continue loop7;
                           }
                           continue loop6;
                        }
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §`=§.movieClip.addChildAt(this.§%!Q§,§`=§.movieClip.numChildren - 1);
            §§goto(addr109);
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || deltaTime)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               addr39:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(!(_loc4_ && _loc3_))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr39);
            }
            §§goto(addr41);
         }
         §§push(super.run(deltaTime));
         if(_loc3_ || this)
         {
            §§push(int(§§pop()));
         }
         var superReturn:* = §§pop();
         if(!(_loc4_ && deltaTime))
         {
            while(true)
            {
               §§push(superReturn);
               §§goto(addr173);
            }
         }
         while(true)
         {
            §§push(superReturn);
            if(!(_loc4_ && _loc3_))
            {
               break;
            }
            addr173:
            loop5:
            while(true)
            {
               if(§§pop() == StateBase.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     loop7:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              §`S§.§[o§.clearLevel();
                              if(_loc4_ && _loc3_)
                              {
                                 break;
                              }
                              if(_loc3_)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    break loop5;
                                 }
                                 break loop7;
                              }
                           }
                           continue;
                        }
                        if(!(_loc4_ && deltaTime))
                        {
                           continue loop4;
                        }
                     }
                     continue loop5;
                  }
                  return StateBase.STATE_STATUS_RUNNING;
                  addr126:
               }
            }
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return §§pop();
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               super.deActivate();
               while(true)
               {
                  loop2:
                  while(_loc2_ || _loc2_)
                  {
                     §§push(this.§%!Q§);
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc2_)
                           {
                           }
                           loop4:
                           while(true)
                           {
                              if(§`=§.movieClip.contains(this.§%!Q§))
                              {
                                 while(true)
                                 {
                                    addr180:
                                    while(true)
                                    {
                                       §`=§.movieClip.removeChild(this.§%!Q§);
                                       addr160:
                                       while(true)
                                       {
                                          addr151:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr58:
                                    if(_loc1_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    addr65:
                                    if(_loc2_ || _loc1_)
                                    {
                                       continue loop0;
                                    }
                                    loop15:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          addr51:
                                          if(!(_loc2_ || _loc1_))
                                          {
                                             break;
                                          }
                                          §§goto(addr58);
                                       }
                                       loop14:
                                       while(true)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             addr75:
                                             if(!(_loc2_ || _loc1_))
                                             {
                                                break;
                                             }
                                             if(_loc2_)
                                             {
                                                this.hideButtons();
                                                continue loop15;
                                             }
                                             continue loop2;
                                          }
                                          addr102:
                                          while(_loc2_)
                                          {
                                             continue loop14;
                                          }
                                          addr112:
                                          while(true)
                                          {
                                             if(_loc2_ || _loc2_)
                                             {
                                                break loop15;
                                             }
                                             break;
                                          }
                                          while(!(_loc1_ && _loc2_))
                                          {
                                             if(_loc2_)
                                             {
                                                break loop14;
                                             }
                                             continue loop4;
                                             §§goto(addr112);
                                          }
                                          §§goto(addr180);
                                       }
                                       while(true)
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             if(!_loc1_)
                                             {
                                                this.§%!Q§ = null;
                                                §§goto(addr112);
                                             }
                                             §§goto(addr160);
                                          }
                                          break;
                                          §§goto(addr75);
                                       }
                                       §§goto(addr151);
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       addr85:
                                       while(true)
                                       {
                                          this.setButtonStates(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                          §§goto(addr102);
                                          continue loop11;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(this.§%!Q§);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§pop().clean();
                                 §§goto(addr112);
                                 §§goto(addr151);
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr85);
                     }
                  }
               }
            }
         }
         §§goto(addr160);
      }
      
      protected function setButtonStates(state:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               addr181:
               while(true)
               {
                  (§`=§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
               }
               loop8:
               while(!(_loc3_ && this))
               {
                  loop9:
                  while(true)
                  {
                     (§`=§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentVisualState(state);
                     loop10:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           continue loop9;
                        }
                        if(_loc3_)
                        {
                           continue loop8;
                        }
                        addr61:
                        if(_loc2_ || _loc2_)
                        {
                           addr68:
                           if(!(_loc2_ || _loc3_))
                           {
                              break;
                           }
                           continue;
                        }
                        while(_loc2_ || state)
                        {
                           (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setComponentVisualState(state);
                           continue loop8;
                           §§goto(addr61);
                        }
                        loop5:
                        while(true)
                        {
                           (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
                           while(true)
                           {
                              continue loop5;
                              addr36:
                              if(_loc3_ && _loc3_)
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 return;
                              }
                              addr166:
                              while(true)
                              {
                                 (§`=§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
                                 break loop10;
                              }
                           }
                        }
                        addr110:
                     }
                     loop4:
                     while(true)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§goto(addr132);
                        }
                        addr178:
                        while(true)
                        {
                           §§goto(addr166);
                           continue loop4;
                        }
                     }
                     §§goto(addr181);
                  }
               }
            }
         }
         §§goto(addr178);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(!(_loc2_ && this))
         {
            while(true)
            {
               super.cleanup();
               loop1:
               while(_loc1_ || _loc1_)
               {
                  while(!_loc1_)
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && this)
         {
         }
         if(_loc6_ || eventName)
         {
            loop0:
            while(true)
            {
               addr216:
               while(true)
               {
                  if(!(_loc5_ && eventIndex))
                  {
                     if(_loc6_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               var _loc4_:* = eventName;
               if(_loc6_)
               {
                  §§push("NEXT_LEVEL");
                  if(!(_loc5_ && eventName))
                  {
                     if(!_loc5_)
                     {
                        §§push(_loc4_);
                        if(!(_loc5_ && this))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(0);
                                 if(_loc5_)
                                 {
                                    addr314:
                                 }
                              }
                              else
                              {
                                 addr349:
                                 §§push(4);
                                 if(!_loc5_)
                                 {
                                    addr352:
                                 }
                              }
                              §§goto(addr354);
                           }
                           else
                           {
                              §§push("REPLAY");
                              if(_loc6_ || eventIndex)
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_ || eventIndex)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc6_ || eventIndex)
                                          {
                                             §§push(1);
                                             if(_loc5_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr338:
                                             §§push(3);
                                             if(_loc5_ && eventName)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push("MENU");
                                          if(_loc6_)
                                          {
                                             if(_loc6_ || eventIndex)
                                             {
                                                addr295:
                                                §§push(_loc4_);
                                                if(!(_loc5_ && eventIndex))
                                                {
                                                   addr303:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc5_ && eventName))
                                                      {
                                                         §§push(2);
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr314);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr352);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr338);
                                                      }
                                                      §§goto(addr354);
                                                   }
                                                   else
                                                   {
                                                      §§push("FULLSCREEN_BUTTON");
                                                      if(!(_loc5_ && component))
                                                      {
                                                         addr333:
                                                      }
                                                   }
                                                   §§goto(addr354);
                                                }
                                                addr335:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr338);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr349);
                                                   }
                                                }
                                                else
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr349);
                                                   }
                                                   else
                                                   {
                                                      addr354:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            StateLevelLoadClassic.§7^§();
                                                            mNextState = this.§4!;§();
                                                            addr196:
                                                            break;
                                                            addr201:
                                                            addr181:
                                                            addr187:
                                                            addr190:
                                                            addr196:
                                                         case 1:
                                                            loop2:
                                                            while(true)
                                                            {
                                                               StateLevelLoadClassic.§;!8§();
                                                               addr161:
                                                               while(!_loc5_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_ || eventName)
                                                                     {
                                                                        mNextState = this.§4!6§();
                                                                        continue loop2;
                                                                     }
                                                                     §§goto(addr201);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr190);
                                                         case 2:
                                                            SoundEngine.§%!V§();
                                                            addr102:
                                                            if(_loc6_)
                                                            {
                                                               mNextState = this.§@!W§();
                                                               addr84:
                                                               if(!(_loc5_ && component))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr161);
                                                               }
                                                               §§goto(addr118);
                                                               addr99:
                                                            }
                                                            §§goto(addr196);
                                                            addr110:
                                                         case 3:
                                                            if(_loc6_)
                                                            {
                                                               loop5:
                                                               do
                                                               {
                                                                  AngryBirdsFP11.§'t§.§0-§();
                                                                  while(_loc6_ || this)
                                                                  {
                                                                     if(_loc6_ || eventIndex)
                                                                     {
                                                                        if(!(_loc6_ || eventIndex))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr148);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr99);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr102);
                                                                     }
                                                                     §§goto(addr196);
                                                                  }
                                                                  §§goto(addr84);
                                                               }
                                                               while(false);
                                                               
                                                               break;
                                                            }
                                                            §§goto(addr110);
                                                            §§goto(addr102);
                                                      }
                                                      return;
                                                      §§push(4);
                                                   }
                                                   §§goto(addr354);
                                                }
                                                §§goto(addr349);
                                             }
                                             §§goto(addr333);
                                          }
                                          §§goto(addr335);
                                          §§push(_loc4_);
                                       }
                                       §§goto(addr354);
                                    }
                                    §§goto(addr335);
                                 }
                                 §§goto(addr333);
                              }
                              §§goto(addr295);
                           }
                        }
                        §§goto(addr303);
                     }
                     §§goto(addr333);
                  }
                  §§goto(addr295);
               }
               §§goto(addr349);
            }
         }
         §§goto(addr216);
      }
      
      protected function §4!6§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function §@!W§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         return StateLevelSelection.STATE_NAME;
      }
      
      protected function §4!;§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return StateCutScene.STATE_NAME;
      }
   }
}
