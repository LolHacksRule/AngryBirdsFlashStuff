package §#!2§
{
   import §"$§.Starling;
   import §#!X§.ChapterModel;
   import §#!X§.LevelManager;
   import §+R§.§""§;
   import §,!#§.ExternalInterfaceHandler;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §6!'§.BackGroundAnimator;
   import §9c§.StateCreditsNew;
   import §9c§.StateCutScene;
   import §9c§.StateLevelSelection;
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class StateFacebookEpisodeSelection extends StateBase
   {
      
      public static var sPreviousState:String = "";
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      {
         var sPreviousState:Boolean = false;
         var STATE_NAME:Boolean = true;
         if(!(sPreviousState && StateFacebookEpisodeSelection))
         {
            while(true)
            {
               sPreviousState = "";
            }
            addr79:
         }
         loop1:
         while(true)
         {
            while(STATE_NAME || sPreviousState)
            {
               STATE_NAME = "ChapterSelectionState";
               if(sPreviousState && StateFacebookEpisodeSelection)
               {
                  continue;
               }
               if(STATE_NAME)
               {
                  break loop1;
               }
               §§goto(addr79);
            }
         }
      }
      
      private var mChapterTween0:§9h§ = null;
      
      private var mChapterTween1:§9h§ = null;
      
      private var mChapterTween2:§9h§ = null;
      
      private var §;!<§:§9h§ = null;
      
      private var §`!@§:§9h§ = null;
      
      private var § !W§:§""§;
      
      private var §-Z§:BackGroundAnimator;
      
      public function StateFacebookEpisodeSelection(initObject:Boolean, name:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || initObject)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(_loc3_)
                  {
                     super(initObject,name);
                     while(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           if(_loc3_)
                           {
                              return;
                              addr58:
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || this)
         {
            loop0:
            while(true)
            {
               super.init();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §^,§ = new §-!H§(this);
                     continue loop0;
                     addr76:
                     if(_loc1_ || _loc1_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  super.activate();
                  while(true)
                  {
                     addr96:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     addr104:
                     if(_loc3_ && chapterNum)
                     {
                        loop17:
                        while(true)
                        {
                           addr116:
                           do
                           {
                              if(!(_loc2_ || _loc3_))
                              {
                                 continue loop0;
                              }
                              if(_loc2_ || chapterNum)
                              {
                                 if(sPreviousState == "")
                                 {
                                    continue;
                                 }
                                 AngryBirdsFP11.playThemeMusic();
                                 loop19:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       §§push(Starling.§'!A§);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§pop().start();
                                          break loop19;
                                       }
                                       break;
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc2_ || _loc3_)
                                          {
                                          }
                                          continue;
                                       }
                                       addr55:
                                       addr263:
                                       addr88:
                                       loop13:
                                       while(true)
                                       {
                                          §§push(§4!T§.§1t§);
                                          addr154:
                                          while(true)
                                          {
                                             §§pop().§@!F§(false);
                                             addr157:
                                             while(_loc2_ || this)
                                             {
                                                addr164:
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   addr231:
                                                   addr231:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop9;
                                                   §§goto(addr164);
                                                }
                                             }
                                             addr149:
                                             §§push(§4!T§.§1t§);
                                             continue loop13;
                                             if(_loc2_)
                                             {
                                                §§pop().clearLevel();
                                                continue loop17;
                                             }
                                          }
                                       }
                                       §§push(0);
                                       if(!_loc3_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       var chapterNum:* = §§pop();
                                       addr371:
                                       §§push(chapterNum);
                                       if(_loc2_ || this)
                                       {
                                          if(_loc2_ || chapterNum)
                                          {
                                             if(§§pop() > 3)
                                             {
                                                addr390:
                                                addr389:
                                                if(_loc2_ || chapterNum)
                                                {
                                                   §^,§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
                                                   addr351:
                                                   if(_loc2_)
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §^,§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
                                                         addr336:
                                                         if(_loc2_)
                                                         {
                                                            (§4!T§.§%!K§ as AngryBirdsUltraBook).§"!S§(FriendsBar.SIDEBAR_BUTTON_STATE_INFO);
                                                            addr331:
                                                            if(_loc2_)
                                                            {
                                                               addr304:
                                                               if(_loc2_ || this)
                                                               {
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     this.§-Z§.start();
                                                                     addr290:
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc2_ || chapterNum)
                                                                           {
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr415:
                                                                                    §§goto(addr371);
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              §§goto(addr290);
                                                                           }
                                                                           §§goto(addr336);
                                                                        }
                                                                        §§goto(addr331);
                                                                     }
                                                                     §§goto(addr304);
                                                                  }
                                                                  addr418:
                                                                  if(_loc2_ || this)
                                                                  {
                                                                     addr410:
                                                                     §§push(chapterNum + 1);
                                                                     if(_loc2_)
                                                                     {
                                                                        addr414:
                                                                        chapterNum = int(§§pop());
                                                                        §§goto(addr415);
                                                                     }
                                                                     §§goto(addr414);
                                                                  }
                                                                  this.§&!7§(chapterNum);
                                                                  addr431:
                                                                  §§goto(addr431);
                                                                  addr435:
                                                               }
                                                               §§goto(addr351);
                                                            }
                                                            §§goto(addr390);
                                                         }
                                                         addr348:
                                                         §§goto(addr348);
                                                      }
                                                      §§goto(addr389);
                                                   }
                                                   addr370:
                                                   §§goto(addr370);
                                                }
                                                §§goto(addr418);
                                             }
                                             §§goto(addr435);
                                          }
                                          §§goto(addr410);
                                       }
                                       §§goto(addr414);
                                    }
                                    addr215:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr176);
                                 }
                              }
                              else
                              {
                                 loop5:
                                 while(_loc2_)
                                 {
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§4!T§.§%!K§);
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       (§§pop() as AngryBirdsUltraBook).§1!-§("");
                                    }
                                    while(true)
                                    {
                                       (§§pop() as AngryBirdsUltraBook).§=s§.§`!4§ = false;
                                       continue loop5;
                                       §§goto(addr236);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr241);
                                 }
                                 addr252:
                              }
                              §§goto(addr231);
                           }
                           while(_loc3_);
                           
                           §§goto(addr96);
                        }
                     }
                     if(!_loc3_)
                     {
                        SoundEngine.§`B§("Intel_StartPlay",SoundEngine.§[2§,0,-1,this.§8!!§);
                        §§goto(addr79);
                     }
                     else
                     {
                        §§goto(addr234);
                     }
                  }
               }
            }
         }
         §§goto(addr252);
      }
      
      private function §8!!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(§'!f§)
            {
               loop1:
               while(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     AngryBirdsFP11.playThemeMusic();
                     while(_loc2_)
                     {
                        if(!(_loc1_ && this))
                        {
                           if(!_loc1_)
                           {
                              break loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr85);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!(_loc1_ && this))
         {
            while(true)
            {
               sPreviousState == "";
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     super.deActivate();
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           this.§-Z§.stop();
                           loop5:
                           while(true)
                           {
                              while(!_loc1_)
                              {
                                 this.§87§();
                                 continue loop4;
                                 while(!(_loc1_ && this))
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §87§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(!(_loc2_ && _loc1_))
         {
            loop0:
            while(true)
            {
               §§push(this.mChapterTween0);
               loop1:
               while(true)
               {
                  if(§§pop() == null)
                  {
                     loop8:
                     while(true)
                     {
                        §§push(this.mChapterTween1);
                        while(true)
                        {
                           if(§§pop() == null)
                           {
                              while(true)
                              {
                                 §§push(this.mChapterTween2);
                                 loop17:
                                 while(true)
                                 {
                                    if(§§pop() == null)
                                    {
                                       loop24:
                                       while(true)
                                       {
                                          §§push(this.§;!<§);
                                          loop25:
                                          for(; §§pop() != null; §§push(this.§;!<§),if(_loc2_)
                                          {
                                             continue;
                                          },§§pop().stop(),loop28:
                                          while(_loc1_)
                                          {
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   this.§;!<§ = null;
                                                   continue;
                                                }
                                                continue loop28;
                                             }
                                             §§goto(addr131);
                                          },§§goto(addr243))
                                          {
                                             while(_loc1_ || this)
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      continue loop25;
                                                   }
                                                }
                                                continue loop25;
                                             }
                                             while(_loc1_)
                                             {
                                                continue loop8;
                                                §§goto(addr113);
                                             }
                                             addr113:
                                             while(true)
                                             {
                                                addr246:
                                                while(true)
                                                {
                                                   this.mChapterTween0 = null;
                                                   addr243:
                                                   while(true)
                                                   {
                                                      §§goto(addr226);
                                                   }
                                                   addr145:
                                                   if(_loc2_ && _loc1_)
                                                   {
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop24;
                                                   }
                                                }
                                             }
                                             addr226:
                                          }
                                          return;
                                       }
                                    }
                                    while(_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop17;
                                       }
                                       addr265:
                                       while(!_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr205);
                                 }
                              }
                           }
                           §§goto(addr222);
                           while(true)
                           {
                              §§push(this.mChapterTween1);
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§pop().stop();
                              §§goto(addr216);
                           }
                        }
                     }
                  }
                  §§goto(addr265);
               }
            }
         }
         §§goto(addr152);
      }
      
      private function §&!7§(chapterNum:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || episode)
         {
         }
         if(_loc4_ && episode)
         {
         }
         while(true)
         {
            while(true)
            {
               while(!(_loc3_ || _loc3_))
               {
               }
               if(_loc4_ && episode)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var episode:ChapterModel = LevelManager.§ m§(chapterNum);
               if(!_loc4_)
               {
                  loop3:
                  while(true)
                  {
                     if(episode != null)
                     {
                        loop4:
                        while(true)
                        {
                           §^,§.setText(AngryBirdsFP11.sUserProgress.§8!2§(episode) + "/" + AngryBirdsFP11.sUserProgress.§@!3§(episode),"Textfield_CollectedStars" + chapterNum);
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 if(!(_loc4_ && chapterNum))
                                 {
                                    if(_loc3_ || this)
                                    {
                                       §^,§.setText(AngryBirdsFP11.sUserProgress.§]!$§(episode) + "/" + AngryBirdsFP11.sUserProgress.§#!-§(episode),"Textfield_ME_Score" + chapterNum);
                                       continue;
                                    }
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              continue loop3;
                           }
                        }
                     }
                     §§goto(addr183);
                  }
                  return;
               }
               §§goto(addr121);
            }
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               addr36:
               while(true)
               {
                  continue loop0;
               }
            }
            addr40:
         }
         while(true)
         {
            if(_loc4_ && deltaTime)
            {
               continue;
            }
            if(_loc3_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr40);
            }
            §§goto(addr36);
         }
         §§push(super.run(deltaTime));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var superReturn:* = §§pop();
         if(_loc3_)
         {
            loop3:
            while(true)
            {
               §§push(this.§-Z§.run(deltaTime));
               loop4:
               while(true)
               {
                  §§pop();
                  loop5:
                  while(true)
                  {
                     loop6:
                     do
                     {
                        §§push(superReturn);
                        while(!_loc4_)
                        {
                           if(§§pop() == StateBase.STATE_STATUS_RUNNING)
                           {
                              if(mNextState.length <= 0)
                              {
                                 return StateBase.STATE_STATUS_RUNNING;
                              }
                              if(_loc3_ || superReturn)
                              {
                                 continue loop6;
                              }
                           }
                           if(_loc3_ || deltaTime)
                           {
                              §§push(superReturn);
                              if(_loc3_ || deltaTime)
                              {
                                 return §§pop();
                              }
                              continue;
                              continue;
                           }
                           continue loop5;
                        }
                        continue loop4;
                     }
                     while(!(_loc3_ || superReturn));
                     
                     if(_loc4_)
                     {
                        continue loop3;
                     }
                  }
               }
            }
         }
         return StateBase.STATE_STATUS_COMPLETED;
      }
      
      private function §]q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            while(true)
            {
               trace("track pixel");
               while(true)
               {
                  §§goto(addr83);
               }
            }
         }
         addr83:
         while(true)
         {
            ExternalInterfaceHandler.§!!@§("playClicked");
            while(_loc1_)
            {
            }
            if(_loc2_ || this)
            {
               if(_loc2_)
               {
                  if(!_loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      private function §;!$§(event:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(_loc3_ || this)
         {
         }
         loop0:
         do
         {
            while(true)
            {
               trace("Pixel Tracked");
               while(!(_loc2_ && this))
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      private function §,!g§(event:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!(_loc3_ && _loc2_))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  trace("Tracking Pixel error, error ID[" + event.errorID + "]");
                  loop2:
                  while(_loc2_ || _loc2_)
                  {
                     continue loop0;
                     while(!_loc2_)
                     {
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_)
         {
         }
         var eggNumber:* = 0;
         if(!(_loc8_ && eventIndex))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(_loc7_)
                  {
                     continue loop0;
                     loop5:
                     while(!(_loc8_ && this))
                     {
                        if(_loc8_ && component)
                        {
                           continue;
                        }
                        addr39:
                        if(false)
                        {
                           while(true)
                           {
                              continue loop5;
                              §§goto(addr39);
                           }
                           addr68:
                           var isEggEvent:int = eventName.indexOf("EASTER_EGG_");
                           §§push(_loc8_ && eventIndex);
                           addr41:
                        }
                        else
                        {
                           §§goto(addr68);
                        }
                        if(!§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§push(isEggEvent);
                              addr498:
                              loop7:
                              while(true)
                              {
                                 if(§§pop() == -1)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       super.uiInteractionHandler(eventIndex,eventName,component);
                                       if(!_loc8_)
                                       {
                                          if(!(_loc8_ && this))
                                          {
                                             if(!_loc8_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   break;
                                                }
                                                addr500:
                                                while(true)
                                                {
                                                   addr501:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc8_ && this))
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      addr490:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   addr466:
                                                   while(_loc8_ && eventIndex)
                                                   {
                                                   }
                                                   §§push(LevelManager);
                                                   §§push("1000-");
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§§pop() + eggNumber);
                                                   }
                                                   §§pop().§%<§(§§pop());
                                                }
                                                mNextState = StateCutScene.STATE_NAME;
                                                loop15:
                                                while(_loc7_)
                                                {
                                                   while(_loc8_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   continue loop11;
                                                }
                                                continue loop6;
                                                addr443:
                                             }
                                             while(!_loc8_)
                                             {
                                                continue loop7;
                                                §§goto(addr466);
                                             }
                                             §§goto(addr501);
                                          }
                                          §§goto(addr443);
                                       }
                                       §§goto(addr429);
                                    }
                                    var _loc6_:* = eventName;
                                    if(!(_loc8_ && eventName))
                                    {
                                       §§push("showCredits");
                                       if(_loc7_ || this)
                                       {
                                          if(_loc7_)
                                          {
                                             addr528:
                                             §§push(_loc6_);
                                             if(_loc7_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc8_ && this))
                                                   {
                                                      §§push(0);
                                                      if(!_loc7_)
                                                      {
                                                         addr568:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr624:
                                                      §§push(4);
                                                      if(_loc7_)
                                                      {
                                                         addr627:
                                                      }
                                                   }
                                                   §§goto(addr629);
                                                }
                                                §§push("CHAPTER0");
                                                if(!_loc8_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§push(_loc6_);
                                                      if(!_loc8_)
                                                      {
                                                         addr552:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc8_ && eventIndex))
                                                            {
                                                               §§push(1);
                                                               if(_loc7_ || component)
                                                               {
                                                                  §§goto(addr568);
                                                               }
                                                               else
                                                               {
                                                                  addr604:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr624);
                                                            }
                                                            §§goto(addr629);
                                                         }
                                                         else
                                                         {
                                                            §§push("CHAPTER0OVER");
                                                            if(!_loc8_)
                                                            {
                                                               addr572:
                                                               if(_loc8_)
                                                               {
                                                               }
                                                               addr609:
                                                               if(§§pop() === _loc6_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(3);
                                                                     if(_loc8_ && component)
                                                                     {
                                                                        §§goto(addr627);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr624);
                                                                  }
                                                               }
                                                               else if(false)
                                                               {
                                                                  §§goto(addr624);
                                                               }
                                                               else
                                                               {
                                                                  §§push(4);
                                                               }
                                                               §§goto(addr629);
                                                               addr608:
                                                            }
                                                            §§push(_loc6_);
                                                            if(!(_loc8_ && eventIndex))
                                                            {
                                                               addr583:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc8_ && eventIndex))
                                                                  {
                                                                     §§push(2);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§goto(addr604);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr624);
                                                                  }
                                                                  addr629:
                                                                  switch(§§pop())
                                                                  {
                                                                     case 0:
                                                                        mNextState = StateCreditsNew.STATE_NAME;
                                                                        trace("Really going to credits screen");
                                                                        break;
                                                                        addr405:
                                                                        addr390:
                                                                        addr384:
                                                                        addr400:
                                                                     case 1:
                                                                        this.§]q§();
                                                                        SoundEngine.§`B§("Menu_Confirm");
                                                                        LevelManager.§3V§ = 0;
                                                                        addr368:
                                                                        if(!_loc8_)
                                                                        {
                                                                           mNextState = StateLevelSelection.STATE_NAME;
                                                                           addr333:
                                                                           if(_loc7_ || component)
                                                                           {
                                                                              trace("Chapter 1");
                                                                              addr323:
                                                                              if(!(_loc8_ && eventName))
                                                                              {
                                                                                 addr310:
                                                                                 if(_loc8_ && component)
                                                                                 {
                                                                                    §§goto(addr368);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr405);
                                                                           }
                                                                           §§goto(addr390);
                                                                           addr347:
                                                                           addr350:
                                                                        }
                                                                        §§goto(addr384);
                                                                        addr376:
                                                                        addr361:
                                                                        addr381:
                                                                        addr371:
                                                                     case 2:
                                                                        addr295:
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr281:
                                                                           if(this.mChapterTween0 != null)
                                                                           {
                                                                              addr283:
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr261:
                                                                                       this.mChapterTween0.stop();
                                                                                       if(_loc7_ || component)
                                                                                       {
                                                                                          if(_loc7_ || component)
                                                                                          {
                                                                                             addr224:
                                                                                             this.mChapterTween0 = TweenManager.§&!'§.§3L§(§^,§.getItemByName("MovieClip_StartPlaying").mClip,{
                                                                                                "scaleX":1.2,
                                                                                                "scaleY":1.2
                                                                                             },null,0.2);
                                                                                             addr243:
                                                                                             if(!(_loc8_ && component))
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      addr214:
                                                                                                      §§push(this.mChapterTween0);
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         §§pop().play();
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr208:
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§goto(addr243);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr400);
                                                                                                      }
                                                                                                      §§goto(addr281);
                                                                                                      addr223:
                                                                                                   }
                                                                                                   §§goto(addr376);
                                                                                                }
                                                                                                §§goto(addr368);
                                                                                             }
                                                                                             §§goto(addr283);
                                                                                             addr257:
                                                                                          }
                                                                                          §§goto(addr361);
                                                                                       }
                                                                                       addr290:
                                                                                       §§goto(addr290);
                                                                                    }
                                                                                    §§goto(addr381);
                                                                                 }
                                                                                 §§goto(addr347);
                                                                              }
                                                                              §§goto(addr310);
                                                                           }
                                                                           §§goto(addr224);
                                                                        }
                                                                        §§goto(addr333);
                                                                     case 3:
                                                                        addr205:
                                                                        §§push(this.mChapterTween0);
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(null);
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              if(§§pop() != §§pop())
                                                                              {
                                                                                 addr195:
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr198:
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr162:
                                                                                       §§push(this.mChapterTween0);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(_loc7_ || this)
                                                                                          {
                                                                                             §§pop().stop();
                                                                                             addr173:
                                                                                             if(!(_loc8_ && eventName))
                                                                                             {
                                                                                                if(_loc7_ || this)
                                                                                                {
                                                                                                   addr122:
                                                                                                   this.mChapterTween0 = TweenManager.§&!'§.§3L§(§^,§.getItemByName("MovieClip_StartPlaying").mClip,{
                                                                                                      "scaleX":1,
                                                                                                      "scaleY":1
                                                                                                   },null,0.5,TweenManager.§4!-§);
                                                                                                   addr144:
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         addr112:
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            if(_loc7_ || component)
                                                                                                            {
                                                                                                               addr89:
                                                                                                               §§push(this.mChapterTween0);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§pop().play();
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        if(!(_loc8_ && this))
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr89);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr323);
                                                                                                                              }
                                                                                                                              §§goto(addr173);
                                                                                                                           }
                                                                                                                           §§goto(addr371);
                                                                                                                        }
                                                                                                                        §§goto(addr223);
                                                                                                                     }
                                                                                                                     §§goto(addr198);
                                                                                                                  }
                                                                                                                  §§goto(addr112);
                                                                                                               }
                                                                                                               §§goto(addr162);
                                                                                                            }
                                                                                                            §§goto(addr350);
                                                                                                         }
                                                                                                         §§goto(addr144);
                                                                                                      }
                                                                                                      §§goto(addr205);
                                                                                                   }
                                                                                                   §§goto(addr195);
                                                                                                }
                                                                                                §§goto(addr257);
                                                                                             }
                                                                                             §§goto(addr295);
                                                                                          }
                                                                                          §§goto(addr261);
                                                                                       }
                                                                                       §§goto(addr205);
                                                                                    }
                                                                                    §§goto(addr208);
                                                                                 }
                                                                                 §§goto(addr261);
                                                                              }
                                                                              §§goto(addr122);
                                                                           }
                                                                           §§goto(addr281);
                                                                        }
                                                                        §§goto(addr214);
                                                                  }
                                                                  return;
                                                               }
                                                               §§push("CHAPTER0OUT");
                                                               if(!_loc8_)
                                                               {
                                                                  §§goto(addr608);
                                                               }
                                                               §§goto(addr609);
                                                               §§goto(addr624);
                                                            }
                                                            §§goto(addr609);
                                                         }
                                                      }
                                                      §§goto(addr583);
                                                   }
                                                   §§goto(addr609);
                                                }
                                                §§goto(addr572);
                                                §§goto(addr624);
                                             }
                                             §§goto(addr552);
                                          }
                                          §§goto(addr572);
                                       }
                                       §§goto(addr528);
                                    }
                                    §§goto(addr624);
                                 }
                                 §§goto(addr500);
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(int(int(eventName.substr("EASTER_EGG_".length))));
                           if(_loc7_ || component)
                           {
                              eggNumber = §§pop();
                              §§goto(addr490);
                           }
                           §§goto(addr498);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr41);
         }
      }
   }
}
