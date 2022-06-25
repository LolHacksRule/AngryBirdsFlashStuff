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
         var sPreviousState:Boolean = true;
         var STATE_NAME:Boolean = false;
         if(sPreviousState)
         {
            while(true)
            {
               sPreviousState = "";
            }
            addr73:
         }
         while(true)
         {
            for(; sPreviousState || STATE_NAME; STATE_NAME = "ChapterSelectionState",if(!(STATE_NAME && STATE_NAME))
            {
               return;
            })
            {
               if(!STATE_NAME)
               {
                  continue;
               }
               §§goto(addr73);
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(!_loc3_)
                  {
                     super(initObject,name);
                     loop3:
                     while(!(_loc3_ && _loc3_))
                     {
                        if(_loc4_)
                        {
                           while(!_loc4_)
                           {
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr67);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            loop0:
            while(true)
            {
               super.init();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §5!M§ = new §6"§(this);
                     loop3:
                     while(true)
                     {
                        while(!_loc2_)
                        {
                           §5!M§.init(§>!^§.§8'§.Views.View_ChapterFacebookSelection[0]);
                           loop5:
                           while(!(_loc2_ && _loc1_))
                           {
                              if(!_loc2_)
                              {
                                 while(true)
                                 {
                                    this.§8#§ = new BackGroundAnimator(§5!M§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
                                    continue loop5;
                                    addr46:
                                    while(!(_loc2_ && _loc2_))
                                    {
                                       if(_loc2_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr46);
                                    }
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 return;
                                 addr72:
                                 addr96:
                              }
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && _loc3_))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  super.activate();
                  loop2:
                  while(true)
                  {
                     loop3:
                     for(; !_loc3_; while(_loc2_ || this)
                     {
                        continue loop0;
                        §§goto(addr39);
                     })
                     {
                        §§push(§]!B§.§%h§);
                        while(true)
                        {
                           (§§pop() as AngryBirdsUltraBook).§56§.§5^§ = false;
                           addr246:
                           §§push(§]!B§.§%h§);
                           if(_loc3_ && chapterNum)
                           {
                              continue;
                           }
                           (§§pop() as AngryBirdsUltraBook).§81§("");
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(Starling.§!!F§);
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          §§push(§]!B§.§>F§);
                                          loop15:
                                          while(true)
                                          {
                                             §§pop().§,>§(false);
                                             while(true)
                                             {
                                                loop17:
                                                while(!_loc3_)
                                                {
                                                   continue loop15;
                                                   loop19:
                                                   while(true)
                                                   {
                                                      if(_loc2_ || this)
                                                      {
                                                         addr121:
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr128:
                                                            if(_loc3_ && _loc2_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(sPreviousState != "")
                                                            {
                                                               AngryBirdsFP11.playThemeMusic();
                                                               while(true)
                                                               {
                                                                  if(_loc2_ || chapterNum)
                                                                  {
                                                                     if(_loc2_ || _loc3_)
                                                                     {
                                                                        continue loop19;
                                                                     }
                                                                     addr101:
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr257:
                                                                     while(true)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                  }
                                                                  break;
                                                                  addr77:
                                                                  if(_loc3_ && _loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc2_)
                                                                  {
                                                                     addr39:
                                                                     if(!(_loc2_ || _loc3_))
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        addr48:
                                                                     }
                                                                     §§push(0);
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     var chapterNum:* = §§pop();
                                                                     addr390:
                                                                     §§push(chapterNum);
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        if(_loc2_ || chapterNum)
                                                                        {
                                                                           if(§§pop() > 3)
                                                                           {
                                                                              §5!M§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
                                                                              addr419:
                                                                              addr418:
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §5!M§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
                                                                                 addr377:
                                                                                 if(_loc2_ || chapterNum)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       (§]!B§.§%h§ as AngryBirdsUltraBook).§8$§(FriendsBar.SIDEBAR_BUTTON_STATE_INFO);
                                                                                       addr355:
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             addr323:
                                                                                             if(!(_loc3_ && chapterNum))
                                                                                             {
                                                                                                this.§8#§.start();
                                                                                                addr318:
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         if(_loc2_ || this)
                                                                                                         {
                                                                                                            if(_loc2_ || this)
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     addr427:
                                                                                                                     §§goto(addr390);
                                                                                                                  }
                                                                                                                  return;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr419);
                                                                                                         }
                                                                                                         §§goto(addr355);
                                                                                                      }
                                                                                                      §§goto(addr323);
                                                                                                   }
                                                                                                   §§goto(addr318);
                                                                                                }
                                                                                                §§goto(addr355);
                                                                                             }
                                                                                             §§goto(addr377);
                                                                                          }
                                                                                          this.§54§(chapterNum);
                                                                                          §§push(chapterNum);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr426:
                                                                                             chapterNum = int(§§pop() + 1);
                                                                                             addr425:
                                                                                             §§goto(addr427);
                                                                                          }
                                                                                          §§goto(addr425);
                                                                                          addr430:
                                                                                          addr436:
                                                                                          addr440:
                                                                                       }
                                                                                       §§goto(addr377);
                                                                                    }
                                                                                    §§goto(addr430);
                                                                                 }
                                                                                 §§goto(addr418);
                                                                              }
                                                                              §§goto(addr436);
                                                                           }
                                                                           §§goto(addr440);
                                                                        }
                                                                        §§goto(addr425);
                                                                     }
                                                                     §§goto(addr426);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr91:
                                                                     if(_loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           continue loop19;
                                                                           §§goto(addr91);
                                                                        }
                                                                        addr149:
                                                                     }
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                                  §§goto(addr48);
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  SoundEngine.§9!X§("Intel_StartPlay",SoundEngine.§0R§,0,-1,this.§<l§);
                                                                  §§goto(addr91);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     break loop19;
                                                                  }
                                                                  addr181:
                                                               }
                                                            }
                                                            §§goto(addr101);
                                                         }
                                                         break;
                                                      }
                                                      continue loop17;
                                                   }
                                                   while(_loc2_ || this)
                                                   {
                                                      continue loop14;
                                                      §§goto(addr121);
                                                   }
                                                   while(!_loc3_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr188);
                                    addr198:
                                    §§push(Starling.§!!F§);
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    §§pop().start();
                                    §§goto(addr181);
                                 }
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr246);
            }
         }
         §§goto(addr257);
      }
      
      private function §<l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(§;!M§)
            {
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     AngryBirdsFP11.playThemeMusic();
                     while(_loc2_ && this)
                     {
                     }
                     if(_loc1_ || this)
                     {
                        if(_loc1_)
                        {
                           break loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr84);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            while(true)
            {
               sPreviousState == "";
               while(true)
               {
                  while(true)
                  {
                     super.deActivate();
                     loop3:
                     while(true)
                     {
                        addr163:
                        while(true)
                        {
                           this.§8#§.stop();
                           continue loop3;
                        }
                     }
                  }
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     loop13:
                     while(true)
                     {
                        StateLevelSelection.sPreviousState = STATE_NAME;
                        for(; _loc1_; if(_loc1_)
                        {
                           continue loop13;
                        })
                        {
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr87);
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        §§goto(addr43);
                     }
                  }
                  §§goto(addr52);
               }
            }
         }
         §§goto(addr101);
      }
      
      private function §"M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(_loc2_ || _loc1_)
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
                     while(true)
                     {
                        §§push(this.mChapterTween1);
                        loop9:
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
                                          loop25:
                                          for(§§push(this.§'5§); §§pop() != null; )
                                          {
                                             loop26:
                                             while(_loc2_)
                                             {
                                                while(_loc2_ || _loc1_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      break loop24;
                                                   }
                                                   addr107:
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      §§push(this.§'5§);
                                                      if(!_loc2_)
                                                      {
                                                         continue loop25;
                                                      }
                                                      §§pop().stop();
                                                      §§goto(addr87);
                                                      continue loop25;
                                                   }
                                                   addr249:
                                                   while(true)
                                                   {
                                                      this.mChapterTween0 = null;
                                                      addr246:
                                                      while(true)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr107);
                                                   }
                                                   loop29:
                                                   while(!(_loc1_ && this))
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      this.§'5§ = null;
                                                      while(true)
                                                      {
                                                         if(_loc1_ && _loc1_)
                                                         {
                                                            while(!_loc1_)
                                                            {
                                                               continue loop29;
                                                            }
                                                            continue loop26;
                                                            addr87:
                                                         }
                                                         if(_loc2_)
                                                         {
                                                            addr60:
                                                            if(!(_loc2_ || _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         addr139:
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break loop26;
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            this.mChapterTween2 = null;
                                                            §§goto(addr134);
                                                         }
                                                         addr134:
                                                      }
                                                      while(true)
                                                      {
                                                         this.mChapterTween1 = null;
                                                         break loop24;
                                                         §§goto(addr60);
                                                      }
                                                   }
                                                }
                                                continue loop17;
                                             }
                                             while(_loc2_)
                                             {
                                                continue loop24;
                                             }
                                             continue loop0;
                                          }
                                          return;
                                       }
                                       loop14:
                                       while(_loc2_ || _loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             §§goto(addr185);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                break loop14;
                                             }
                                             addr220:
                                          }
                                       }
                                       continue loop9;
                                    }
                                    §§goto(addr179);
                                 }
                              }
                           }
                           §§goto(addr220);
                        }
                     }
                     addr215:
                  }
                  §§goto(addr268);
               }
            }
         }
         §§goto(addr46);
      }
      
      private function §54§(chapterNum:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || chapterNum)
         {
         }
         if(_loc3_)
         {
         }
         while(true)
         {
            while(true)
            {
               while(_loc3_)
               {
               }
               if(_loc3_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var episode:ChapterModel = LevelManager.§;![§(chapterNum);
               if(_loc4_)
               {
                  loop3:
                  while(true)
                  {
                     if(episode == null)
                     {
                        if(_loc4_ || chapterNum)
                        {
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           §5!M§.setText(AngryBirdsFP11.sUserProgress.§,l§(episode) + "/" + AngryBirdsFP11.sUserProgress.§8!_§(episode),"Textfield_CollectedStars" + chapterNum);
                           loop5:
                           while(!_loc3_)
                           {
                              while(true)
                              {
                                 if(!(_loc3_ && episode))
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 continue loop5;
                                 addr98:
                                 while(!(_loc3_ && episode))
                                 {
                                    if(!(_loc3_ && episode))
                                    {
                                       return;
                                    }
                                 }
                              }
                              return;
                           }
                        }
                     }
                  }
               }
               §§goto(addr177);
            }
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_ || superReturn)
         {
            loop0:
            while(true)
            {
               addr37:
               while(true)
               {
                  continue loop0;
               }
            }
            addr41:
         }
         while(true)
         {
            if(!_loc4_)
            {
               continue;
            }
            if(_loc4_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr41);
            }
            §§goto(addr37);
         }
         §§push(super.run(deltaTime));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var superReturn:* = §§pop();
         if(_loc4_)
         {
            loop3:
            while(true)
            {
               §§push(this.§8#§.run(deltaTime));
               addr153:
               while(true)
               {
                  §§pop();
                  continue loop3;
               }
            }
         }
         §§goto(addr115);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || eventIndex)
         {
         }
         var eggNumber:* = 0;
         if(_loc7_)
         {
            while(true)
            {
               while(_loc7_)
               {
                  addr39:
                  if(_loc8_ && eventName)
                  {
                     continue;
                  }
                  if(false)
                  {
                     loop4:
                     while(true)
                     {
                        addr50:
                        addr60:
                        while(!(_loc8_ && component))
                        {
                           if(!(_loc7_ || eventName))
                           {
                              continue;
                           }
                           §§goto(addr39);
                        }
                        while(true)
                        {
                           continue loop4;
                           §§goto(addr50);
                        }
                     }
                     continue;
                  }
                  var isEggEvent:int = eventName.indexOf("EASTER_EGG_");
                  if(_loc7_)
                  {
                     addr537:
                     if(isEggEvent != -1)
                     {
                        addr534:
                        addr535:
                        addr529:
                        §§push(int(int(eventName.substr("EASTER_EGG_".length))));
                        if(!_loc8_)
                        {
                           eggNumber = §§pop();
                           §§push(LevelManager);
                           §§push("1000-");
                           if(!_loc8_)
                           {
                              §§push(§§pop() + eggNumber);
                           }
                           §§pop().§]!R§(§§pop());
                           addr504:
                           addr514:
                           if(_loc7_ || eventIndex)
                           {
                              mNextState = StateCutScene.STATE_NAME;
                              addr493:
                              if(_loc7_)
                              {
                                 if(!(_loc8_ && this))
                                 {
                                    if(!_loc8_)
                                    {
                                       addr459:
                                       if(!_loc8_)
                                       {
                                          if(_loc7_)
                                          {
                                             if(_loc7_ || eventIndex)
                                             {
                                                if(_loc7_)
                                                {
                                                   addr440:
                                                   super.uiInteractionHandler(eventIndex,eventName,component);
                                                   if(!(_loc8_ && eventIndex))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§goto(addr493);
                                                      }
                                                      var _loc6_:* = eventName;
                                                      if(_loc7_ || eventName)
                                                      {
                                                         §§push("showCredits");
                                                         if(_loc7_ || this)
                                                         {
                                                            if(_loc7_ || eventIndex)
                                                            {
                                                               §§push(_loc6_);
                                                               if(!_loc8_)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc8_ && eventName))
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc8_)
                                                                        {
                                                                        }
                                                                        §§goto(addr668);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr594);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("CHAPTER0");
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           addr588:
                                                                           §§push(_loc6_);
                                                                           if(_loc7_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr594:
                                                                                    §§push(1);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr660:
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr620:
                                                                                    §§push(2);
                                                                                    if(_loc8_ && eventIndex)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr668);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push("CHAPTER0OVER");
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    addr606:
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr609:
                                                                                       §§push(_loc6_);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr612:
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!(_loc8_ && this))
                                                                                             {
                                                                                                §§goto(addr620);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr652:
                                                                                                §§push(3);
                                                                                                if(!(_loc8_ && this))
                                                                                                {
                                                                                                   §§goto(addr660);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr666:
                                                                                                   §§goto(addr668);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr668);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push("CHAPTER0OUT");
                                                                                             if(!(_loc8_ && this))
                                                                                             {
                                                                                                addr647:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr668);
                                                                                       }
                                                                                       addr649:
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§goto(addr652);
                                                                                          }
                                                                                       }
                                                                                       else if(true)
                                                                                       {
                                                                                          addr668:
                                                                                          switch(§§pop())
                                                                                          {
                                                                                             case 0:
                                                                                                mNextState = StateCreditsNew.STATE_NAME;
                                                                                                addr434:
                                                                                                if(!(_loc7_ || this))
                                                                                                {
                                                                                                   §§goto(addr434);
                                                                                                }
                                                                                                trace("Really going to credits screen");
                                                                                                break;
                                                                                                addr439:
                                                                                                addr417:
                                                                                                addr411:
                                                                                             case 1:
                                                                                                SoundEngine.§9!X§("Menu_Confirm");
                                                                                                addr408:
                                                                                                addr403:
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   if(_loc7_ || eventIndex)
                                                                                                   {
                                                                                                      LevelManager.§?Q§ = 0;
                                                                                                      addr375:
                                                                                                      if(!(_loc8_ && eventName))
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr367:
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               mNextState = StateLevelSelection.STATE_NAME;
                                                                                                               addr362:
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§goto(addr408);
                                                                                                               }
                                                                                                               trace("Chapter 1");
                                                                                                               break;
                                                                                                               addr355:
                                                                                                               addr346:
                                                                                                               addr352:
                                                                                                            }
                                                                                                            §§goto(addr408);
                                                                                                         }
                                                                                                         §§goto(addr439);
                                                                                                      }
                                                                                                      §§goto(addr403);
                                                                                                   }
                                                                                                   §§goto(addr434);
                                                                                                }
                                                                                                §§goto(addr417);
                                                                                             case 2:
                                                                                                addr319:
                                                                                                if(!(_loc8_ && eventIndex))
                                                                                                {
                                                                                                   if(_loc7_ || eventName)
                                                                                                   {
                                                                                                      addr311:
                                                                                                      if(this.mChapterTween0 != null)
                                                                                                      {
                                                                                                         addr301:
                                                                                                         §§push(this.mChapterTween0);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            §§pop().stop();
                                                                                                            addr305:
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               addr275:
                                                                                                               this.mChapterTween0 = TweenManager.§8!X§.§8m§(§5!M§.getItemByName("MovieClip_StartPlaying").mClip,{
                                                                                                                  "scaleX":1.2,
                                                                                                                  "scaleY":1.2
                                                                                                               },null,0.2);
                                                                                                               addr260:
                                                                                                               this.mChapterTween0.play();
                                                                                                               addr262:
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  if(!(_loc8_ && eventName))
                                                                                                                  {
                                                                                                                     addr242:
                                                                                                                     if(!(_loc8_ && eventName))
                                                                                                                     {
                                                                                                                        if(!(_loc7_ || eventName))
                                                                                                                        {
                                                                                                                           §§goto(addr319);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr262);
                                                                                                                  }
                                                                                                                  §§goto(addr411);
                                                                                                               }
                                                                                                               §§goto(addr305);
                                                                                                               addr294:
                                                                                                               addr297:
                                                                                                               addr274:
                                                                                                            }
                                                                                                            §§goto(addr375);
                                                                                                         }
                                                                                                         §§goto(addr311);
                                                                                                         addr313:
                                                                                                         addr314:
                                                                                                      }
                                                                                                      §§goto(addr275);
                                                                                                   }
                                                                                                   §§goto(addr362);
                                                                                                }
                                                                                                §§goto(addr355);
                                                                                             case 3:
                                                                                                addr232:
                                                                                                if(!(_loc8_ && component))
                                                                                                {
                                                                                                   addr197:
                                                                                                   §§push(this.mChapterTween0);
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(!(_loc8_ && this))
                                                                                                      {
                                                                                                         §§push(null);
                                                                                                         if(!(_loc8_ && eventName))
                                                                                                         {
                                                                                                            if(§§pop() != §§pop())
                                                                                                            {
                                                                                                               addr215:
                                                                                                               if(!(_loc8_ && this))
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     addr225:
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        addr182:
                                                                                                                        §§push(this.mChapterTween0);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§pop().stop();
                                                                                                                           addr186:
                                                                                                                           if(!(_loc8_ && this))
                                                                                                                           {
                                                                                                                              addr162:
                                                                                                                              if(_loc7_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    if(_loc7_ || this)
                                                                                                                                    {
                                                                                                                                       addr128:
                                                                                                                                       this.mChapterTween0 = TweenManager.§8!X§.§8m§(§5!M§.getItemByName("MovieClip_StartPlaying").mClip,{
                                                                                                                                          "scaleX":1,
                                                                                                                                          "scaleY":1
                                                                                                                                       },null,0.5,TweenManager.§0D§);
                                                                                                                                       addr150:
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          if(_loc7_ || component)
                                                                                                                                          {
                                                                                                                                             addr120:
                                                                                                                                             if(!(_loc8_ && eventName))
                                                                                                                                             {
                                                                                                                                                addr101:
                                                                                                                                                §§push(this.mChapterTween0);
                                                                                                                                                if(!(_loc8_ && eventName))
                                                                                                                                                {
                                                                                                                                                   §§pop().play();
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc8_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc8_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(_loc7_ || eventName)
                                                                                                                                                               {
                                                                                                                                                                  if(false)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr101);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr313);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr162);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr120);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr346);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr215);
                                                                                                                                                }
                                                                                                                                                §§goto(addr182);
                                                                                                                                             }
                                                                                                                                             §§goto(addr150);
                                                                                                                                          }
                                                                                                                                          §§goto(addr232);
                                                                                                                                       }
                                                                                                                                       §§goto(addr186);
                                                                                                                                    }
                                                                                                                                    §§goto(addr367);
                                                                                                                                 }
                                                                                                                                 §§goto(addr314);
                                                                                                                              }
                                                                                                                              §§goto(addr225);
                                                                                                                           }
                                                                                                                           §§goto(addr294);
                                                                                                                        }
                                                                                                                        §§goto(addr197);
                                                                                                                     }
                                                                                                                     §§goto(addr297);
                                                                                                                  }
                                                                                                                  §§goto(addr352);
                                                                                                               }
                                                                                                               §§goto(addr274);
                                                                                                            }
                                                                                                            §§goto(addr128);
                                                                                                         }
                                                                                                         §§goto(addr311);
                                                                                                      }
                                                                                                      §§goto(addr301);
                                                                                                   }
                                                                                                   §§goto(addr260);
                                                                                                }
                                                                                                §§goto(addr242);
                                                                                          }
                                                                                          return;
                                                                                          §§push(4);
                                                                                       }
                                                                                       §§goto(addr668);
                                                                                       §§goto(addr668);
                                                                                    }
                                                                                    §§goto(addr649);
                                                                                    §§push(_loc6_);
                                                                                 }
                                                                                 §§goto(addr647);
                                                                              }
                                                                           }
                                                                           §§goto(addr612);
                                                                        }
                                                                        §§goto(addr609);
                                                                     }
                                                                     §§goto(addr647);
                                                                  }
                                                                  §§goto(addr668);
                                                               }
                                                               §§goto(addr609);
                                                            }
                                                            §§goto(addr588);
                                                         }
                                                         §§goto(addr606);
                                                      }
                                                      §§goto(addr652);
                                                   }
                                                   §§goto(addr459);
                                                }
                                                §§goto(addr537);
                                             }
                                             §§goto(addr534);
                                          }
                                          §§goto(addr504);
                                       }
                                       §§goto(addr493);
                                    }
                                    §§goto(addr535);
                                 }
                                 §§goto(addr529);
                              }
                              §§goto(addr514);
                           }
                           addr526:
                           §§goto(addr526);
                        }
                        §§goto(addr537);
                     }
                     §§goto(addr440);
                  }
                  §§goto(addr534);
               }
            }
         }
         while(true)
         {
            §§goto(addr60);
         }
      }
   }
}
