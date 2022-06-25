package §<!S§
{
   import § D§.§]!B§;
   import §"!@§.§!!8§;
   import §"L§.LevelManager;
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.§6#§;
   import §]!6§.UIButtonRovio;
   import §]!6§.UITextFieldRovio;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class StateLevelEndEagle extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const LOOP_CHANNEL_NAME:String = "ScoreLoopCountChannel";
      
      {
         var STATE_NAME:Boolean = false;
         var LOOP_CHANNEL_NAME:Boolean = true;
         if(!LOOP_CHANNEL_NAME)
         {
         }
         loop0:
         do
         {
            STATE_NAME = "LevelEndEagleState";
            while(true)
            {
               while(LOOP_CHANNEL_NAME || StateLevelEndEagle)
               {
                  LOOP_CHANNEL_NAME = "ScoreLoopCountChannel";
                  if(!STATE_NAME)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(LOOP_CHANNEL_NAME || StateLevelEndEagle));
         
      }
      
      private var §`!!§:§!T§;
      
      private var § !A§:§!!8§;
      
      public var mEagleScoreCounter:Number;
      
      private var §6!T§:Number;
      
      private var §true§:int;
      
      public function StateLevelEndEagle(initState:Boolean = false, name:String = "LevelEndEagleState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!(_loc4_ && _loc3_))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr76:
                  if(!(_loc4_ && this))
                  {
                     addr83:
                     if(!(_loc4_ && name))
                     {
                        continue loop0;
                     }
                     loop3:
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           while(true)
                           {
                              super(initState,name);
                              continue loop3;
                           }
                           return;
                           addr68:
                           addr86:
                        }
                        §§goto(addr76);
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc1_)
         {
            loop0:
            while(true)
            {
               super.init();
               while(true)
               {
                  addr149:
                  while(true)
                  {
                     §5!M§ = new §6"§(this);
                     addr146:
                     while(true)
                     {
                     }
                  }
                  addr129:
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  loop6:
                  while(_loc2_)
                  {
                     this.§6!T§ = (§5!M§.getItemByName("MovieClip_EagleMeterFill") as §6#§).width;
                     while(_loc2_)
                     {
                        continue loop6;
                        loop8:
                        while(_loc2_ || _loc2_)
                        {
                           SoundEngine.§#!`§(LOOP_CHANNEL_NAME,1,1);
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop8;
                           }
                           §§goto(addr127);
                        }
                        if(_loc2_ || this)
                        {
                           continue loop0;
                        }
                     }
                     while(true)
                     {
                        §5!M§.init(§>!^§.§8'§.Views.View_LevelEndEagle[0]);
                        addr127:
                        while(_loc2_)
                        {
                           §§goto(addr129);
                        }
                        §§goto(addr146);
                     }
                     return;
                  }
                  §§goto(addr149);
               }
            }
         }
         §§goto(addr139);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
         }
         if(!(_loc3_ && newEagleScore))
         {
            while(true)
            {
               loop1:
               for(; !(_loc3_ && _loc3_); if(!(_loc4_ || isNewEagleHighScore))
               {
                  continue;
               },§§goto(addr139))
               {
                  loop2:
                  while(true)
                  {
                     super.activate();
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           this.§ !A§ = new §!!8§(0,0,0,0);
                           while(!_loc3_)
                           {
                              continue loop2;
                              loop12:
                              for(; _loc4_ || isNewEagleHighScore; if(_loc3_ && this)
                              {
                                 continue;
                              },§§goto(addr81))
                              {
                                 loop13:
                                 while(true)
                                 {
                                    SoundEngine.§9!X§("LevelCompletedTheme1");
                                    loop14:
                                    while(_loc4_)
                                    {
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop12;
                                          }
                                          continue loop14;
                                          addr43:
                                          if(_loc4_ || this)
                                          {
                                             continue loop13;
                                          }
                                       }
                                       while(_loc4_)
                                       {
                                          continue loop1;
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                this.§ !A§.§6k§(0.7);
                                                while(_loc4_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(!(_loc4_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr43);
                                                }
                                                addr136:
                                                while(true)
                                                {
                                                   break loop14;
                                                }
                                                continue loop13;
                                             }
                                             continue loop13;
                                             addr59:
                                          }
                                       }
                                       continue loop3;
                                    }
                                    while(_loc4_)
                                    {
                                       while(true)
                                       {
                                          (§5!M§.getItemByName("MovieClip_EagleMeterFill") as §6#§).setVisibility(true);
                                          continue loop12;
                                       }
                                    }
                                    addr139:
                                    while(true)
                                    {
                                       (§5!M§.getItemByName("MovieClip_EagleMeterEmpty") as §6#§).setVisibility(true);
                                       §§goto(addr136);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr124);
      }
      
      protected function §3c§(newEagleScore:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc3_ && this)
         {
         }
         while(true)
         {
            while(!_loc3_)
            {
               AngryBirdsFP11.sUserProgress.§&t§(LevelManager.§var§,newEagleScore);
               while(_loc3_)
               {
               }
               if(_loc2_ || newEagleScore)
               {
                  return;
               }
            }
         }
      }
      
      protected function §4S§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && glowFilter)
         {
         }
         var glowFilter:GlowFilter = null;
         if(_loc2_ || this)
         {
            while(true)
            {
               SoundEngine.§'!B§(LOOP_CHANNEL_NAME);
               loop1:
               for(; _loc2_ || glowFilter; while(!(_loc3_ && this))
               {
                  while(true)
                  {
                     §§goto(addr74);
                  }
               })
               {
                  loop2:
                  for(; this.mEagleScoreCounter == 100; if(_loc3_ && glowFilter)
                  {
                     continue;
                  },if(!(_loc3_ && _loc2_))
                  {
                     if(!(_loc2_ || _loc3_))
                     {
                        continue loop1;
                     }
                     if(false)
                     {
                        §§goto(addr54);
                     }
                     glowFilter = new GlowFilter(16777215,1,22,22,2.5,10);
                     if(!(_loc3_ && _loc2_))
                     {
                        (§5!M§.getItemByName("MovieClip_EagleMeterEffect") as §6#§).setVisibility(true);
                        addr208:
                        addr210:
                     }
                     (§5!M§.getItemByName("MovieClip_EagleMeterFill") as §6#§).mClip.filters = [glowFilter];
                     addr162:
                     if(!_loc3_)
                     {
                        if(_loc2_ || glowFilter)
                        {
                           if(_loc2_ || this)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(false)
                                 {
                                    §§goto(addr162);
                                 }
                                 break;
                              }
                              §§goto(addr208);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr210);
                     }
                     addr196:
                     §§goto(addr196);
                  },§§goto(addr62))
                  {
                     while(true)
                     {
                        continue loop1;
                        addr74:
                        loop6:
                        while(_loc2_ || _loc3_)
                        {
                           while(true)
                           {
                              SoundEngine.§9!X§("Hiscore_Badge",LOOP_CHANNEL_NAME);
                              addr62:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop6;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr105);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
         }
         if(_loc4_ || deltaTime)
         {
            while(true)
            {
               loop1:
               while(_loc4_)
               {
                  while(true)
                  {
                     addr46:
                     while(_loc4_)
                     {
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            if(_loc4_ || deltaTime)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr44);
            }
            §§goto(addr46);
         }
         §§push(super.run(deltaTime));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var superReturn:* = §§pop();
         if(_loc4_)
         {
            loop5:
            while(true)
            {
               §§push(superReturn);
               while(true)
               {
                  if(§§pop() == StateBase.STATE_STATUS_RUNNING)
                  {
                     loop7:
                     while(true)
                     {
                        if(int(this.mEagleScoreCounter) <= this.§true§)
                        {
                           (§5!M§.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).§24§.text = int(this.§true§) + "%";
                           loop8:
                           while(true)
                           {
                              addr106:
                              loop12:
                              while(true)
                              {
                                 addr81:
                                 while(true)
                                 {
                                    (§5!M§.getItemByName("TextField_EaglePercentageEffects") as UITextFieldRovio).§24§.text = int(this.§true§) + "%";
                                    loop14:
                                    while(!_loc5_)
                                    {
                                       if(_loc4_)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop8;
                                             }
                                             continue loop12;
                                          }
                                          continue;
                                       }
                                       loop15:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop5;
                                          }
                                          while(true)
                                          {
                                             (§5!M§.getItemByName("TextField_EaglePercentageEffects") as UITextFieldRovio).§24§.text = int(this.mEagleScoreCounter) + "%";
                                             break loop14;
                                          }
                                          addr154:
                                          if(_loc4_)
                                          {
                                             addr156:
                                             if(_loc5_)
                                             {
                                                while(true)
                                                {
                                                   if(_loc5_ && clipRect)
                                                   {
                                                      if(_loc5_ && superReturn)
                                                      {
                                                         break loop7;
                                                      }
                                                      continue loop7;
                                                   }
                                                   while(true)
                                                   {
                                                      (§5!M§.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).§24§.text = int(this.mEagleScoreCounter) + "%";
                                                      continue loop15;
                                                      §§goto(addr154);
                                                   }
                                                   §§goto(addr156);
                                                }
                                                addr204:
                                             }
                                             addr243:
                                             var clipRect:Rectangle = new Rectangle(0,0,this.§6!T§ * (this.mEagleScoreCounter / 100),(§5!M§.getItemByName("MovieClip_EagleMeterFill") as §6#§).height);
                                             if(!(_loc5_ && superReturn))
                                             {
                                                (§5!M§.getItemByName("MovieClip_EagleMeterFill") as §6#§).mClip.scrollRect = clipRect;
                                                (§5!M§.getItemByName("MovieClip_EagleMeterEffect") as §6#§).mClip.rotation = (§5!M§.getItemByName("MovieClip_EagleMeterEffect") as §6#§).mClip.rotation + deltaTime / 20;
                                                addr339:
                                                addr388:
                                                addr376:
                                                if(mNextState.length > 0)
                                                {
                                                   addr326:
                                                   if(!(_loc5_ && superReturn))
                                                   {
                                                      addr334:
                                                      if(!_loc5_)
                                                      {
                                                         §]!B§.§>F§.clearLevel();
                                                         addr315:
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr326);
                                                                  }
                                                                  return StateBase.STATE_STATUS_COMPLETED;
                                                               }
                                                               §§goto(addr315);
                                                            }
                                                            §§goto(addr339);
                                                         }
                                                         §§goto(addr334);
                                                      }
                                                      §§goto(addr388);
                                                      addr333:
                                                   }
                                                   §§goto(addr376);
                                                }
                                                return StateBase.STATE_STATUS_RUNNING;
                                             }
                                             §§goto(addr333);
                                          }
                                          §§goto(addr212);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!(_loc5_ && clipRect))
                                       {
                                          §§goto(addr154);
                                       }
                                       §§goto(addr161);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr204);
                     }
                  }
                  §§push(superReturn);
                  addr240:
                  continue loop5;
                  if(_loc4_)
                  {
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc2_ || this)
         {
            loop0:
            while(true)
            {
               super.deActivate();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§ !A§);
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 SoundEngine.§'!B§(LOOP_CHANNEL_NAME);
                                 loop17:
                                 while(true)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       loop18:
                                       while(_loc2_ || _loc1_)
                                       {
                                          this.mEagleScoreCounter = 0;
                                          loop19:
                                          while(_loc2_ || _loc2_)
                                          {
                                             loop20:
                                             while(true)
                                             {
                                                §§push(this.§`!!§);
                                                loop21:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      loop28:
                                                      while(true)
                                                      {
                                                         (§5!M§.getItemByName("MovieClip_EagleMeterFill") as §6#§).mClip.filters = [];
                                                         loop29:
                                                         while(!_loc1_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               loop30:
                                                               for(; !(_loc1_ && _loc1_); while(_loc2_ || _loc1_)
                                                               {
                                                                  (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                  §§goto(addr158);
                                                                  §§goto(addr49);
                                                               })
                                                               {
                                                                  (§5!M§.getItemByName("MovieClip_EagleMeterEffect") as §6#§).setVisibility(false);
                                                                  while(true)
                                                                  {
                                                                     continue loop30;
                                                                     addr123:
                                                                     if(!(_loc2_ || _loc2_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr130:
                                                                     if(_loc2_ || _loc1_)
                                                                     {
                                                                        addr137:
                                                                        if(!(_loc2_ || _loc1_))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                        while(!_loc1_)
                                                                        {
                                                                           addr109:
                                                                           if(_loc2_ || this)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           addr275:
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              addr392:
                                                                              while(true)
                                                                              {
                                                                                 if(!§5!M§.movieClip.contains(this.§ !A§))
                                                                                 {
                                                                                    break loop22;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              §§goto(addr109);
                                                                           }
                                                                           continue loop3;
                                                                           addr72:
                                                                           if(!(_loc1_ && _loc2_))
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    loop38:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc1_ && _loc1_)
                                                                                       {
                                                                                          while(_loc2_)
                                                                                          {
                                                                                             §§goto(addr72);
                                                                                             continue loop38;
                                                                                          }
                                                                                          continue loop1;
                                                                                          addr70:
                                                                                       }
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          addr49:
                                                                                          if(_loc2_ || _loc1_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop30;
                                                                                       }
                                                                                       addr358:
                                                                                       addr358:
                                                                                       loop34:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             while(_loc2_)
                                                                                             {
                                                                                                continue loop34;
                                                                                             }
                                                                                             continue loop21;
                                                                                             addr158:
                                                                                          }
                                                                                          §§goto(addr123);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          addr349:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop3;
                                                                                             addr252:
                                                                                             if(_loc2_ || _loc2_)
                                                                                             {
                                                                                                this.§`!!§ = null;
                                                                                                break loop29;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr130);
                                                                                       }
                                                                                    }
                                                                                    return;
                                                                                    addr83:
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                              continue loop29;
                                                                           }
                                                                        }
                                                                        while(!(_loc1_ && _loc1_))
                                                                        {
                                                                           continue loop28;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           break loop30;
                                                                           §§goto(addr221);
                                                                        }
                                                                        addr221:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr358);
                                                                     }
                                                                  }
                                                               }
                                                               continue loop20;
                                                               addr195:
                                                            }
                                                            continue loop19;
                                                         }
                                                         while(_loc2_)
                                                         {
                                                            §§goto(addr221);
                                                         }
                                                         addr346:
                                                         while(true)
                                                         {
                                                            addr333:
                                                            while(true)
                                                            {
                                                               this.§ !A§ = null;
                                                               break loop19;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr275);
                                                }
                                                continue loop4;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr323);
                                             §§goto(addr288);
                                          }
                                          addr288:
                                       }
                                       while(true)
                                       {
                                          §5!M§.movieClip.removeChild(this.§ !A§);
                                          §§goto(addr358);
                                          §§goto(addr298);
                                       }
                                       addr298:
                                       addr385:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr391:
                                    }
                                    §§goto(addr392);
                                 }
                              }
                           }
                           §§goto(addr391);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            do
            {
               super.cleanup();
               while(!_loc2_)
               {
               }
            }
            while(_loc1_ && this);
            
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || eventName)
         {
         }
         if(_loc6_)
         {
         }
         while(true)
         {
            while(!(_loc6_ && eventName))
            {
               if(!(_loc5_ || eventIndex))
               {
                  continue;
               }
               var _loc4_:* = eventName;
               if(_loc5_ || eventName)
               {
                  §§push("NEXT_LEVEL");
                  if(_loc5_)
                  {
                     if(_loc5_)
                     {
                        §§push(_loc4_);
                        if(!(_loc6_ && eventName))
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
                                 addr259:
                                 §§push(1);
                                 if(!(_loc5_ || eventIndex))
                                 {
                                    addr325:
                                 }
                              }
                           }
                           else
                           {
                              §§push("REPLAY");
                              if(!(_loc6_ && eventName))
                              {
                                 if(_loc5_)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       addr256:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§goto(addr259);
                                          }
                                          else
                                          {
                                             addr317:
                                             §§push(3);
                                             if(!(_loc5_ || eventName))
                                             {
                                                addr338:
                                                loop12:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      StateLevelLoadClassic.§[!6§();
                                                      loop2:
                                                      while(true)
                                                      {
                                                         addr174:
                                                         while(true)
                                                         {
                                                            mNextState = StateCutScene.STATE_NAME;
                                                            continue loop2;
                                                         }
                                                      }
                                                      break;
                                                      addr185:
                                                      addr147:
                                                   case 1:
                                                      loop3:
                                                      while(!_loc6_)
                                                      {
                                                         StateLevelLoadClassic.§7!R§();
                                                         while(true)
                                                         {
                                                            addr129:
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               mNextState = StateLevelLoadClassic.STATE_NAME;
                                                               if(_loc5_)
                                                               {
                                                                  break loop12;
                                                               }
                                                               §§goto(addr154);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr174);
                                                   case 2:
                                                      SoundEngine.§;!8§();
                                                      addr107:
                                                      if(_loc5_)
                                                      {
                                                         loop6:
                                                         while(true)
                                                         {
                                                            mNextState = StateLevelSelection.STATE_NAME;
                                                            if(!(_loc6_ && eventIndex))
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  if(_loc5_ || eventIndex)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  §§goto(addr185);
                                                               }
                                                               addr75:
                                                            }
                                                         }
                                                         §§goto(addr154);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr126);
                                                      }
                                                      addr114:
                                                   case 3:
                                                      loop7:
                                                      for(; !(_loc6_ && component); while(true)
                                                      {
                                                         AngryBirdsFP11.§5V§.§>J§();
                                                         if(!(_loc6_ && component))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(!(_loc6_ && eventIndex))
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr129);
                                                               }
                                                               §§goto(addr147);
                                                            }
                                                            break;
                                                         }
                                                         continue loop7;
                                                      },§§goto(addr137))
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr114);
                                                         }
                                                         §§goto(addr107);
                                                      }
                                                      §§goto(addr75);
                                                }
                                                return;
                                                addr336:
                                             }
                                             §§goto(addr338);
                                          }
                                       }
                                       else
                                       {
                                          §§push("MENU");
                                          if(!(_loc6_ && eventIndex))
                                          {
                                             addr276:
                                             if(_loc5_)
                                             {
                                                addr279:
                                                §§push(_loc4_);
                                                if(!_loc6_)
                                                {
                                                   addr282:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§push(2);
                                                         if(_loc5_ || this)
                                                         {
                                                         }
                                                         §§goto(addr338);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr317);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("FULLSCREEN_BUTTON");
                                                      if(!(_loc6_ && eventIndex))
                                                      {
                                                         addr302:
                                                      }
                                                      §§push(_loc4_);
                                                   }
                                                   §§goto(addr338);
                                                }
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr317);
                                                   }
                                                }
                                                else if(true)
                                                {
                                                   §§goto(addr338);
                                                   §§push(4);
                                                }
                                                §§goto(addr338);
                                                §§goto(addr338);
                                             }
                                          }
                                          §§goto(addr302);
                                       }
                                       §§goto(addr338);
                                    }
                                    §§goto(addr282);
                                 }
                                 §§goto(addr279);
                              }
                              §§goto(addr276);
                           }
                           §§goto(addr338);
                        }
                        §§goto(addr256);
                     }
                     §§goto(addr276);
                  }
                  §§goto(addr302);
               }
               §§goto(addr317);
            }
         }
      }
   }
}
