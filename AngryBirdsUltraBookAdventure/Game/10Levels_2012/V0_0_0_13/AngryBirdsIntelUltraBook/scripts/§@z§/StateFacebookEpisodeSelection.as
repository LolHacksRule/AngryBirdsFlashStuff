package §@z§
{
   import § D§.§]!B§;
   import §"L§.ChapterModel;
   import §"L§.LevelManager;
   import §0P§.Starling;
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §5!'§.§0<§;
   import §<!S§.StateCreditsNew;
   import §<!S§.StateCutScene;
   import §<!S§.StateLevelSelection;
   import §=?§.SoundEngine;
   import §>!-§.UIEventListenerRovio;
   import §?t§.BackGroundAnimator;
   import com.angrybirds.friendsbar.FriendsBar;
   
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
      
      private var mChapterTween0:§!T§ = null;
      
      private var mChapterTween1:§!T§ = null;
      
      private var mChapterTween2:§!T§ = null;
      
      private var §'5§:§!T§ = null;
      
      private var §%!f§:§!T§ = null;
      
      private var §<M§:§0<§;
      
      private var §8#§:BackGroundAnimator;
      
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
                     §5!M§ = new §6"§(this);
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
                                       §§push(Starling.§!!F§);
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
                                          §§push(§]!B§.§>F§);
                                          addr154:
                                          while(true)
                                          {
                                             §§pop().§,>§(false);
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
                                             §§push(§]!B§.§>F§);
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
                                                   §5!M§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
                                                   addr351:
                                                   if(_loc2_)
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §5!M§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
                                                         addr336:
                                                         if(_loc2_)
                                                         {
                                                            (§]!B§.§%h§ as AngryBirdsUltraBook).§8$§(FriendsBar.SIDEBAR_BUTTON_STATE_INFO);
                                                            addr331:
                                                            if(_loc2_)
                                                            {
                                                               addr304:
                                                               if(_loc2_ || this)
                                                               {
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     this.§8#§.start();
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
                                                                  this.§54§(chapterNum);
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
                                       §§push(§]!B§.§%h§);
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       (§§pop() as AngryBirdsUltraBook).§81§("");
                                    }
                                    while(true)
                                    {
                                       (§§pop() as AngryBirdsUltraBook).§56§.§5^§ = false;
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
                        SoundEngine.§9!X§("Intel_StartPlay",SoundEngine.§0R§,0,-1,this.§<l§);
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
      
      private function §<l§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(§;!M§)
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
                           this.§8#§.stop();
                           loop5:
                           while(true)
                           {
                              while(!_loc1_)
                              {
                                 this.§"M§();
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
      
      private function §"M§() : void
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
                                          §§push(this.§'5§);
                                          loop25:
                                          for(; §§pop() != null; §§push(this.§'5§),if(_loc2_)
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
                                                   this.§'5§ = null;
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
      
      private function §54§(chapterNum:int) : void
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
               var episode:ChapterModel = LevelManager.§;![§(chapterNum);
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
                           §5!M§.setText(AngryBirdsFP11.sUserProgress.§,l§(episode) + "/" + AngryBirdsFP11.sUserProgress.§8!_§(episode),"Textfield_CollectedStars" + chapterNum);
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 if(!(_loc4_ && chapterNum))
                                 {
                                    if(_loc3_ || this)
                                    {
                                       §5!M§.setText(AngryBirdsFP11.sUserProgress.§6Y§(episode) + "/" + AngryBirdsFP11.sUserProgress.§`=§(episode),"Textfield_ME_Score" + chapterNum);
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
               §§push(this.§8#§.run(deltaTime));
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
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || eventName)
         {
         }
         var eggNumber:int = 0;
         if(!(_loc7_ && component))
         {
            while(true)
            {
               addr61:
               while(true)
               {
               }
            }
            addr63:
         }
         loop2:
         while(true)
         {
            while(true)
            {
               while(_loc7_)
               {
               }
               if(_loc8_ || eventIndex)
               {
                  if(_loc8_)
                  {
                     if(!_loc7_)
                     {
                        if(false)
                        {
                           continue;
                        }
                        var isEggEvent:int = eventName.indexOf("EASTER_EGG_");
                        if(!(_loc7_ && this))
                        {
                           loop5:
                           while(true)
                           {
                              §§push(isEggEvent);
                              loop6:
                              while(true)
                              {
                                 if(§§pop() == -1)
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       super.uiInteractionHandler(eventIndex,eventName,component);
                                       if(_loc8_)
                                       {
                                          if(!_loc7_)
                                          {
                                             addr418:
                                             if(_loc8_ || this)
                                             {
                                                break;
                                             }
                                             addr497:
                                             while(_loc8_ || eventName)
                                             {
                                                while(true)
                                                {
                                                   mNextState = StateCutScene.STATE_NAME;
                                                }
                                                §§goto(addr418);
                                             }
                                             loop10:
                                             for(; !(_loc7_ && this); §§goto(addr452))
                                             {
                                                loop11:
                                                for(; _loc8_ || component; if(_loc8_ || eventName)
                                                {
                                                   continue loop14;
                                                })
                                                {
                                                   §§push(LevelManager);
                                                   §§push("1000-");
                                                   if(_loc8_ || this)
                                                   {
                                                      §§push(§§pop() + eggNumber);
                                                   }
                                                   §§pop().§]!R§(§§pop());
                                                   loop12:
                                                   while(true)
                                                   {
                                                      continue loop10;
                                                      addr428:
                                                      while(true)
                                                      {
                                                         if(!(_loc7_ && component))
                                                         {
                                                            continue loop11;
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop14;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   addr522:
                                                   while(true)
                                                   {
                                                      break loop10;
                                                   }
                                                }
                                             }
                                             addr452:
                                             while(!(_loc7_ && eventIndex))
                                             {
                                                if(_loc8_)
                                                {
                                                   continue loop6;
                                                }
                                                continue loop5;
                                                §§goto(addr497);
                                             }
                                             addr497:
                                             §§goto(addr522);
                                          }
                                          while(true)
                                          {
                                          }
                                       }
                                       §§goto(addr428);
                                    }
                                    var _loc6_:* = eventName;
                                    if(_loc8_)
                                    {
                                       §§push("showCredits");
                                       if(_loc8_ || this)
                                       {
                                          if(_loc8_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc8_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§push(0);
                                                      if(_loc7_ && this)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr586:
                                                      §§push(1);
                                                      if(_loc8_ || eventName)
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push("CHAPTER0");
                                                   if(_loc8_ || eventIndex)
                                                   {
                                                      if(_loc8_ || eventName)
                                                      {
                                                         addr575:
                                                         §§push(_loc6_);
                                                         if(!_loc7_)
                                                         {
                                                            addr578:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc7_ && eventIndex))
                                                               {
                                                                  §§goto(addr586);
                                                               }
                                                               else
                                                               {
                                                                  addr612:
                                                                  §§push(2);
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     §§goto(addr670);
                                                                  }
                                                                  addr657:
                                                                  addr670:
                                                                  switch(§§pop())
                                                                  {
                                                                     case 0:
                                                                        mNextState = StateCreditsNew.STATE_NAME;
                                                                        trace("Really going to credits screen");
                                                                        break;
                                                                        addr391:
                                                                        addr385:
                                                                        addr394:
                                                                        addr406:
                                                                        addr401:
                                                                     case 1:
                                                                        SoundEngine.§9!X§("Menu_Confirm");
                                                                        addr366:
                                                                        if(_loc8_)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              LevelManager.§?Q§ = 0;
                                                                              mNextState = StateLevelSelection.STATE_NAME;
                                                                              trace("Chapter 1");
                                                                              addr347:
                                                                              break;
                                                                              addr344:
                                                                              addr347:
                                                                              addr363:
                                                                              addr338:
                                                                              addr357:
                                                                              addr354:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr391);
                                                                           }
                                                                        }
                                                                        §§goto(addr385);
                                                                        addr382:
                                                                        addr377:
                                                                     case 2:
                                                                        addr333:
                                                                        if(_loc8_)
                                                                        {
                                                                           addr307:
                                                                           if(this.mChapterTween0 != null)
                                                                           {
                                                                              addr308:
                                                                              if(_loc8_)
                                                                              {
                                                                                 addr311:
                                                                                 if(!(_loc7_ && eventIndex))
                                                                                 {
                                                                                    addr300:
                                                                                    this.mChapterTween0.stop();
                                                                                    addr289:
                                                                                    if(!(_loc8_ || component))
                                                                                    {
                                                                                       §§goto(addr308);
                                                                                    }
                                                                                    addr267:
                                                                                    this.mChapterTween0 = TweenManager.§8!X§.§8m§(§5!M§.getItemByName("MovieClip_StartPlaying").mClip,{
                                                                                       "scaleX":1.2,
                                                                                       "scaleY":1.2
                                                                                    },null,0.2);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr259:
                                                                                       this.mChapterTween0.play();
                                                                                       addr261:
                                                                                       if(!(_loc8_ || component))
                                                                                       {
                                                                                          §§goto(addr261);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr394);
                                                                                    addr286:
                                                                                    addr302:
                                                                                 }
                                                                                 §§goto(addr344);
                                                                              }
                                                                              §§goto(addr347);
                                                                           }
                                                                           §§goto(addr267);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr363);
                                                                        }
                                                                     case 3:
                                                                        addr238:
                                                                        if(_loc8_ || this)
                                                                        {
                                                                           addr192:
                                                                           §§push(this.mChapterTween0);
                                                                           if(_loc8_)
                                                                           {
                                                                              if(!(_loc7_ && component))
                                                                              {
                                                                                 §§push(null);
                                                                                 if(_loc8_ || this)
                                                                                 {
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       addr210:
                                                                                       if(_loc8_ || this)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   addr224:
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      if(_loc8_ || this)
                                                                                                      {
                                                                                                         addr179:
                                                                                                         §§push(this.mChapterTween0);
                                                                                                         if(_loc8_ || component)
                                                                                                         {
                                                                                                            §§pop().stop();
                                                                                                            addr154:
                                                                                                            addr188:
                                                                                                            if(!(_loc7_ && component))
                                                                                                            {
                                                                                                               if(!(_loc7_ && component))
                                                                                                               {
                                                                                                                  if(!(_loc7_ && eventIndex))
                                                                                                                  {
                                                                                                                     addr111:
                                                                                                                     this.mChapterTween0 = TweenManager.§8!X§.§8m§(§5!M§.getItemByName("MovieClip_StartPlaying").mClip,{
                                                                                                                        "scaleX":1,
                                                                                                                        "scaleY":1
                                                                                                                     },null,0.5,TweenManager.§0D§);
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        if(_loc8_ || eventName)
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              if(_loc8_ || eventIndex)
                                                                                                                              {
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       addr87:
                                                                                                                                       §§push(this.mChapterTween0);
                                                                                                                                       if(!(_loc7_ && component))
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             §§pop().play();
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr87);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr333);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr224);
                                                                                                                                                }
                                                                                                                                                §§goto(addr154);
                                                                                                                                             }
                                                                                                                                             §§goto(addr267);
                                                                                                                                          }
                                                                                                                                          §§goto(addr192);
                                                                                                                                       }
                                                                                                                                       §§goto(addr179);
                                                                                                                                    }
                                                                                                                                    §§goto(addr289);
                                                                                                                                 }
                                                                                                                                 §§goto(addr188);
                                                                                                                              }
                                                                                                                              §§goto(addr382);
                                                                                                                           }
                                                                                                                           §§goto(addr338);
                                                                                                                        }
                                                                                                                        §§goto(addr311);
                                                                                                                     }
                                                                                                                     §§goto(addr286);
                                                                                                                  }
                                                                                                                  §§goto(addr406);
                                                                                                               }
                                                                                                               §§goto(addr261);
                                                                                                            }
                                                                                                            §§goto(addr210);
                                                                                                         }
                                                                                                         §§goto(addr300);
                                                                                                      }
                                                                                                      §§goto(addr357);
                                                                                                   }
                                                                                                   §§goto(addr238);
                                                                                                }
                                                                                                §§goto(addr401);
                                                                                             }
                                                                                             §§goto(addr377);
                                                                                          }
                                                                                          §§goto(addr354);
                                                                                       }
                                                                                       §§goto(addr302);
                                                                                    }
                                                                                    §§goto(addr111);
                                                                                 }
                                                                              }
                                                                              §§goto(addr307);
                                                                           }
                                                                           §§goto(addr259);
                                                                        }
                                                                        §§goto(addr366);
                                                                  }
                                                                  return;
                                                                  §§goto(addr670);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push("CHAPTER0OVER");
                                                               if(_loc8_ || eventName)
                                                               {
                                                                  addr603:
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr609:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              §§goto(addr612);
                                                                           }
                                                                           §§goto(addr670);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("CHAPTER0OUT");
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              addr630:
                                                                              if(§§pop() === _loc6_)
                                                                              {
                                                                                 if(_loc8_ || eventIndex)
                                                                                 {
                                                                                    addr649:
                                                                                    §§push(3);
                                                                                    if(_loc8_ || eventIndex)
                                                                                    {
                                                                                       §§goto(addr657);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr668:
                                                                                       §§goto(addr670);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else if(true)
                                                                              {
                                                                                 §§goto(addr670);
                                                                                 §§push(4);
                                                                              }
                                                                              §§goto(addr670);
                                                                           }
                                                                           §§goto(addr630);
                                                                        }
                                                                        §§goto(addr670);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr630);
                                                            }
                                                            §§goto(addr670);
                                                         }
                                                         §§goto(addr609);
                                                      }
                                                      §§goto(addr603);
                                                   }
                                                   §§goto(addr630);
                                                }
                                                §§goto(addr670);
                                             }
                                             §§goto(addr578);
                                          }
                                          §§goto(addr629);
                                       }
                                       §§goto(addr575);
                                    }
                                    §§goto(addr649);
                                 }
                                 §§goto(addr521);
                              }
                           }
                        }
                        §§goto(addr459);
                     }
                     else
                     {
                        §§goto(addr63);
                     }
                  }
                  break;
               }
               continue loop2;
            }
            §§goto(addr61);
         }
      }
   }
}
