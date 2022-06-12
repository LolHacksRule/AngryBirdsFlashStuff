package §7"@§
{
   import § " §.§0&§;
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §'!s§.§%?§;
   import §'6§.§"]§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§7'§;
   import §4!e§.§08§;
   import §4!e§.§^!D§;
   import §6!B§.§ do§;
   import §6!B§.§&!7§;
   import §6!B§.§>!E§;
   import §7-§.§,!C§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §<a§.§=1§;
   import §[!K§.§-k§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   
   public class §@"D§ extends §1-§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      public static const §]!j§:String = "GreenDay";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            STATE_NAME = "ChapterSelectionState";
            do
            {
               §]!j§ = "GreenDay";
            }
            while(!_loc1_);
            
         }
      }
      
      private var mChapterTween0:§"m§ = null;
      
      private var mChapterTween1:§"m§ = null;
      
      private var mChapterTween2:§"m§ = null;
      
      private var §#!1§:§"m§ = null;
      
      private var mChapterTween3:§"m§ = null;
      
      private var §-!n§:§"m§ = null;
      
      private var §;D§:§"m§ = null;
      
      private var §!"$§:§0&§;
      
      public function §@"D§(param1:Boolean, param2:String = "ChapterSelectionState")
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
         if(!_loc2_)
         {
            super.init();
            do
            {
               §6w§ = new §7!A§(this);
               do
               {
                  §6w§.init(§ "A§.§4[§.Views.View_ChapterFacebookSelection[0]);
               }
               while(!(_loc1_ || _loc2_));
               
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      override public function activate() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§#6§.§ q§);
               loop1:
               while(true)
               {
                  (§§pop() as §3T§).§9!Q§.§`W§ = false;
                  addr99:
                  while(true)
                  {
                     §§push(§#6§.§ q§);
                     if(_loc9_ || _loc3_)
                     {
                        (§§pop() as §3T§).§?D§("");
                        loop3:
                        for(; !(_loc8_ && _loc1_); while(_loc9_ || this)
                        {
                           §§push(§#6§.§6!z§);
                           if(!(_loc8_ && _loc1_))
                           {
                              §§pop().clearLevel();
                              if(_loc8_)
                              {
                                 continue;
                              }
                              §§goto(addr33);
                           }
                           §§goto(addr47);
                        })
                        {
                           §§push(§"]§.§!X§);
                           if(_loc9_)
                           {
                              if(§§pop())
                              {
                                 if(_loc9_)
                                 {
                                    addr67:
                                    §"]§.§!X§.start();
                                 }
                                 while(true)
                                 {
                                    addr33:
                                    if(_loc8_ && this)
                                    {
                                       continue;
                                    }
                                    if(_loc8_)
                                    {
                                       continue loop0;
                                    }
                                    if(false)
                                    {
                                       while(true)
                                       {
                                          §§push(§#6§.§6!z§);
                                          addr47:
                                          while(true)
                                          {
                                             §§pop().§3H§(false);
                                             continue loop3;
                                          }
                                       }
                                       continue loop0;
                                       addr44:
                                    }
                                    else
                                    {
                                       var _loc1_:§7'§ = §6w§.getItemByName("AvatarPlaceHolder");
                                       var _loc2_:§7'§ = §6w§.getItemByName("AvatarSilhouette");
                                       if(_loc9_ || _loc3_)
                                       {
                                          if(_loc1_)
                                          {
                                             addr364:
                                             if(_loc1_.mClip.numChildren <= 1)
                                             {
                                                addr371:
                                                §§push(Boolean(§3T§.§67§.§0+§));
                                                if(!_loc8_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr379:
                                                      §§pop();
                                                      addr380:
                                                      §§push(§3T§.§67§);
                                                      if(!(_loc8_ && _loc1_))
                                                      {
                                                         §§push(§§pop().§0+§);
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            addr351:
                                                            §§push(Boolean(§§pop().§3"F§));
                                                            if(!(_loc8_ && _loc1_))
                                                            {
                                                               addr359:
                                                               if(§§pop())
                                                               {
                                                                  addr361:
                                                                  §%?§.§-!?§();
                                                                  addr363:
                                                               }
                                                               addr299:
                                                               if(this.§!"$§ == null)
                                                               {
                                                                  addr301:
                                                                  this.§!"$§ = new §0&§((AngryBirdsFP11.sUserProgress as §[<§).§4v§,(AngryBirdsFP11.sUserProgress as §[<§).avatarString,_loc2_.mClip,false,"240");
                                                                  if(_loc9_)
                                                                  {
                                                                     addr292:
                                                                     this.§!"$§.scaleX = 0.75;
                                                                     addr291:
                                                                     if(_loc9_)
                                                                     {
                                                                        addr276:
                                                                        §§push(this.§!"$§);
                                                                        §§push(0.75);
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           §§pop().scaleY = §§pop();
                                                                           addr285:
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr261:
                                                                              §§push(this.§!"$§);
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    addr271:
                                                                                    §§pop().x = -40;
                                                                                    addr246:
                                                                                    addr272:
                                                                                    §§push(this.§!"$§);
                                                                                    §§push(-50);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§pop().y = §§pop();
                                                                                       addr250:
                                                                                       if(_loc9_ || _loc3_)
                                                                                       {
                                                                                          _loc1_.mClip.addChild(this.§!"$§);
                                                                                          addr233:
                                                                                          if(_loc9_ || _loc1_)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr121:
                                                                                                this.playThemeMusic();
                                                                                                if(_loc9_ || _loc2_)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         addr135:
                                                                                                         §§push(this.§!"$§);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               §§push(§§pop().§,!m§);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc8_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(_loc9_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 addr166:
                                                                                                                                 §§push(this.§!"$§);
                                                                                                                                 if(!(_loc8_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc8_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          §§pop().§-u§.visible = false;
                                                                                                                                          addr185:
                                                                                                                                          §§goto(addr121);
                                                                                                                                       }
                                                                                                                                       §§goto(addr261);
                                                                                                                                    }
                                                                                                                                    §§goto(addr246);
                                                                                                                                 }
                                                                                                                                 addr189:
                                                                                                                                 §§pop().§-u§ = _loc2_.mClip;
                                                                                                                                 addr192:
                                                                                                                                 if(!(_loc8_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(_loc9_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc8_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§goto(addr135);
                                                                                                                                       }
                                                                                                                                       §§goto(addr371);
                                                                                                                                    }
                                                                                                                                    §§goto(addr301);
                                                                                                                                 }
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr189);
                                                                                                                                       §§push(this.§!"$§);
                                                                                                                                    }
                                                                                                                                    §§goto(addr363);
                                                                                                                                 }
                                                                                                                                 §§goto(addr233);
                                                                                                                              }
                                                                                                                              §§goto(addr361);
                                                                                                                           }
                                                                                                                           §§goto(addr285);
                                                                                                                        }
                                                                                                                        §§goto(addr185);
                                                                                                                     }
                                                                                                                     §§goto(addr121);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr351);
                                                                                                            }
                                                                                                            §§goto(addr291);
                                                                                                         }
                                                                                                         §§goto(addr166);
                                                                                                      }
                                                                                                      var _loc3_:int = 0;
                                                                                                      if(!(_loc8_ && _loc3_))
                                                                                                      {
                                                                                                         addr400:
                                                                                                         if(_loc3_ > 4)
                                                                                                         {
                                                                                                            if(!(_loc8_ && _loc3_))
                                                                                                            {
                                                                                                               this.§8"<§(3000,§]!j§,"3000");
                                                                                                            }
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     addr422:
                                                                                                                     _loc3_++;
                                                                                                                     §§goto(addr400);
                                                                                                                  }
                                                                                                                  var _loc4_:§>x§ = LevelManager.§;X§(3);
                                                                                                                  if(_loc9_ || _loc2_)
                                                                                                                  {
                                                                                                                     §6w§.setText(AngryBirdsFP11.sUserProgress.§9o§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§`!g§(_loc4_),"Textfield_CollectedStarsGE");
                                                                                                                     §6w§.setText(AngryBirdsFP11.sUserProgress.§7L§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§,!b§(_loc4_),"Textfield_ME_ScoreGE");
                                                                                                                     addr468:
                                                                                                                     this.§4!6§();
                                                                                                                     addr494:
                                                                                                                     if(!(_loc8_ && _loc3_))
                                                                                                                     {
                                                                                                                        (§#6§.§ q§ as §3T§).§`!P§(§ K§.§7!y§);
                                                                                                                        if(!(_loc8_ && this))
                                                                                                                        {
                                                                                                                           if(!(_loc8_ && this))
                                                                                                                           {
                                                                                                                              addr466:
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 §§goto(addr468);
                                                                                                                              }
                                                                                                                              var _loc5_:§>x§ = LevelManager.§5!W§("12");
                                                                                                                              if(!(_loc8_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §6w§.setText(AngryBirdsFP11.sUserProgress.§9o§(_loc5_) + "/" + AngryBirdsFP11.sUserProgress.§`!g§(_loc5_),"Textfield_CollectedStars3");
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    §6w§.setText(AngryBirdsFP11.sUserProgress.§7L§(_loc5_) + "/" + AngryBirdsFP11.sUserProgress.§,!b§(_loc5_),"Textfield_ME_Score3");
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              var _loc6_:String = String(§,!C§.§;"§.§0!&§).toUpperCase();
                                                                                                                              var _loc7_:String = String(§,!C§.§;"§.nextTournamentBrand).toUpperCase();
                                                                                                                              if(!(_loc8_ && _loc1_))
                                                                                                                              {
                                                                                                                                 addr675:
                                                                                                                                 if(_loc6_ == §,!C§.§1!G§)
                                                                                                                                 {
                                                                                                                                    addr676:
                                                                                                                                    (§6w§.getItemByName("MovieClip_BackGround") as §08§).mClip.gotoAndStop("BRANDED_BACKGROUND");
                                                                                                                                    addr684:
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       §§push(§,!C§.§1!G§);
                                                                                                                                       if(_loc9_ || this)
                                                                                                                                       {
                                                                                                                                          if(§§pop() != §§pop())
                                                                                                                                          {
                                                                                                                                             (§6w§.getItemByName("Button_Tournament") as §^!D§).mClip.Button_Graphic.gotoAndStop("STANDARD_BUTTON");
                                                                                                                                             addr630:
                                                                                                                                             if(_loc8_ && this)
                                                                                                                                             {
                                                                                                                                                §§goto(addr684);
                                                                                                                                             }
                                                                                                                                             return;
                                                                                                                                             addr596:
                                                                                                                                          }
                                                                                                                                          addr662:
                                                                                                                                          (§6w§.getItemByName("Button_Tournament") as §^!D§).mClip.Button_Graphic.gotoAndStop("BRANDED_BUTTON");
                                                                                                                                          §§goto(addr596);
                                                                                                                                          addr671:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr675);
                                                                                                                                 }
                                                                                                                                 (§6w§.getItemByName("Button_Tournament") as §^!D§).mClip.Button_Graphic.gotoAndStop("STANDARD_BUTTON");
                                                                                                                                 addr608:
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    if(_loc9_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       (§6w§.getItemByName("MovieClip_BackGround") as §08§).mClip.gotoAndStop(0);
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr630);
                                                                                                                                          }
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr671);
                                                                                                                                          }
                                                                                                                                          §§goto(addr630);
                                                                                                                                       }
                                                                                                                                       §§goto(addr608);
                                                                                                                                    }
                                                                                                                                    §§goto(addr676);
                                                                                                                                 }
                                                                                                                                 §§goto(addr662);
                                                                                                                              }
                                                                                                                              §§goto(addr676);
                                                                                                                           }
                                                                                                                           §§goto(addr494);
                                                                                                                        }
                                                                                                                        §§goto(addr468);
                                                                                                                     }
                                                                                                                     addr509:
                                                                                                                     §§goto(addr509);
                                                                                                                  }
                                                                                                                  §§goto(addr466);
                                                                                                               }
                                                                                                               addr430:
                                                                                                            }
                                                                                                            §§goto(addr422);
                                                                                                         }
                                                                                                         this.§8"<§(_loc3_);
                                                                                                         §§goto(addr430);
                                                                                                      }
                                                                                                      §§goto(addr422);
                                                                                                   }
                                                                                                   §§goto(addr192);
                                                                                                }
                                                                                                §§goto(addr185);
                                                                                             }
                                                                                             §§goto(addr301);
                                                                                          }
                                                                                          §§goto(addr250);
                                                                                       }
                                                                                       §§goto(addr272);
                                                                                    }
                                                                                    §§goto(addr271);
                                                                                 }
                                                                                 §§goto(addr299);
                                                                              }
                                                                              §§goto(addr276);
                                                                           }
                                                                           §§goto(addr291);
                                                                        }
                                                                        §§goto(addr292);
                                                                     }
                                                                     §§goto(addr380);
                                                                  }
                                                                  addr389:
                                                                  §§goto(addr364);
                                                               }
                                                               _loc1_.mClip.addChild(this.§!"$§);
                                                               §§goto(addr166);
                                                            }
                                                            §§goto(addr379);
                                                         }
                                                      }
                                                      §§goto(addr371);
                                                   }
                                                   §§goto(addr359);
                                                }
                                                §§goto(addr379);
                                                addr370:
                                             }
                                             _loc1_.mClip.removeChildAt(1);
                                             §§goto(addr389);
                                             addr383:
                                          }
                                          §§goto(addr370);
                                       }
                                       §§goto(addr383);
                                    }
                                 }
                              }
                              §§goto(addr44);
                           }
                           §§goto(addr67);
                        }
                        continue;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      protected function playThemeMusic() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§ do§ = §3T§.§67§.§2!c§();
         if(_loc3_)
         {
            _loc1_.§"!r§(§&!7§.§3V§);
         }
      }
      
      protected function §4!6§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§,!C§.§;"§.§<>§());
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push("Your Rank: ");
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop() + _loc1_);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() + §=1§.§,A§(_loc1_));
            }
         }
         var _loc2_:String = §§pop();
         if(_loc3_)
         {
            if(_loc1_ == §,!C§.§'W§)
            {
               if(_loc3_)
               {
                  addr92:
                  _loc2_ = "Join the fun!";
               }
               while(true)
               {
                  §§goto(addr73);
               }
            }
            addr73:
            while(true)
            {
               §6w§.setText(_loc2_,"Textfield_TournamentRank");
               if(!(_loc4_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr92);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.deActivate();
            while(true)
            {
               this.§7%§();
               addr169:
               loop1:
               while(true)
               {
                  §6w§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
                  loop2:
                  while(true)
                  {
                     §6w§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
                     addr157:
                     while(true)
                     {
                        §6w§.getItemByName("Container_Chapter1").mClip.scaleX = 1;
                        while(!_loc1_)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(!_loc1_)
                              {
                                 return;
                              }
                              continue loop1;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
            addr172:
         }
         while(true)
         {
            §6w§.getItemByName("Container_Chapter1").mClip.scaleY = 1;
            loop6:
            while(!_loc1_)
            {
               §6w§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
               while(true)
               {
                  §6w§.getItemByName("Container_Chapter2").mClip.scaleY = 1;
                  loop8:
                  while(!(_loc1_ && _loc1_))
                  {
                     §6w§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleX = 1;
                     while(true)
                     {
                        §6w§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleY = 1;
                        while(true)
                        {
                           if(_loc1_)
                           {
                              continue loop8;
                           }
                           if(!_loc2_)
                           {
                              continue loop6;
                           }
                           if(_loc2_)
                           {
                              continue;
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr169);
                     }
                  }
               }
            }
            §§goto(addr157);
         }
      }
      
      private function §7%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.mChapterTween0);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.mChapterTween0);
                     addr241:
                     while(true)
                     {
                        §§pop().stop();
                        addr242:
                        while(true)
                        {
                           this.mChapterTween0 = null;
                           addr227:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr239:
               }
               loop1:
               while(true)
               {
                  §§push(this.mChapterTween1);
                  if(_loc2_ || _loc2_)
                  {
                     if(§§pop() != null)
                     {
                        while(true)
                        {
                           §§push(this.mChapterTween1);
                           addr221:
                           while(true)
                           {
                              §§pop().stop();
                              addr222:
                              while(true)
                              {
                                 this.mChapterTween1 = null;
                                 addr196:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr164:
                           if(_loc1_ && _loc2_)
                           {
                              continue;
                           }
                           addr171:
                           while(true)
                           {
                              §§push(this.mChapterTween3);
                              if(!_loc1_)
                              {
                                 if(§§pop() != null)
                                 {
                                    loop6:
                                    while(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          §§push(this.mChapterTween3);
                                          while(true)
                                          {
                                             §§pop().stop();
                                             loop15:
                                             while(true)
                                             {
                                                this.mChapterTween3 = null;
                                                loop16:
                                                while(true)
                                                {
                                                   if(!(_loc1_ && _loc2_))
                                                   {
                                                      addr142:
                                                      while(true)
                                                      {
                                                         §§push(this.§-!n§);
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            if(§§pop() != null)
                                                            {
                                                               loop8:
                                                               for(; !(_loc1_ && _loc2_); if(!(_loc2_ || _loc2_))
                                                               {
                                                                  continue;
                                                               },if(!(_loc2_ || _loc1_))
                                                               {
                                                                  continue loop16;
                                                               },§§goto(addr80),§§push(this.§#!1§))
                                                               {
                                                                  §§push(this.§-!n§);
                                                                  while(true)
                                                                  {
                                                                     §§pop().stop();
                                                                     while(true)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        this.§-!n§ = null;
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_ || _loc2_)
                                                                           {
                                                                              addr95:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§#!1§);
                                                                                 if(!(_loc1_ && _loc1_))
                                                                                 {
                                                                                    if(§§pop() != null)
                                                                                    {
                                                                                       if(!(_loc1_ && _loc2_))
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          continue loop13;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                       addr81:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 addr80:
                                                                                 §§pop().stop();
                                                                                 §§goto(addr81);
                                                                                 §§goto(addr95);
                                                                              }
                                                                              return;
                                                                              addr43:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr179:
                                                                           }
                                                                           while(_loc2_)
                                                                           {
                                                                              §§push(this.mChapterTween2);
                                                                              while(true)
                                                                              {
                                                                                 §§pop().stop();
                                                                                 break loop8;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           §§goto(addr242);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(_loc2_ || this)
                                                               {
                                                                  this.mChapterTween2 = null;
                                                                  while(!_loc1_)
                                                                  {
                                                                     §§goto(addr164);
                                                                  }
                                                                  §§goto(addr196);
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr43);
                                                         }
                                                         §§goto(addr127);
                                                         §§goto(addr142);
                                                      }
                                                      addr96:
                                                   }
                                                   §§goto(addr162);
                                                }
                                             }
                                          }
                                          addr156:
                                       }
                                       else
                                       {
                                          §§goto(addr239);
                                       }
                                       §§goto(addr242);
                                    }
                                    §§goto(addr222);
                                 }
                                 §§goto(addr96);
                              }
                              §§goto(addr156);
                              §§goto(addr171);
                           }
                           addr143:
                        }
                     }
                     while(true)
                     {
                        §§push(this.mChapterTween2);
                        if(!_loc1_)
                        {
                           if(§§pop() != null)
                           {
                              §§goto(addr179);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr183);
                        §§goto(addr196);
                     }
                  }
                  §§goto(addr221);
               }
            }
            §§goto(addr241);
         }
         §§goto(addr222);
      }
      
      private function §8"<§(param1:int, param2:String = "", param3:String = "") : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:§>x§ = null;
         var _loc9_:§>x§ = null;
         if(!(_loc11_ && param3))
         {
            if(param3 == "")
            {
               §§goto(addr32);
            }
            else
            {
               _loc4_ = LevelManager.§5!W§(param3);
            }
            §§goto(addr45);
         }
         addr32:
         _loc4_ = LevelManager.§;X§(param1);
         if(!_loc11_)
         {
            addr45:
            if(_loc4_ == null)
            {
               if(!_loc11_)
               {
                  return;
               }
            }
            else if(param2 == "")
            {
               if(!(_loc11_ && param2))
               {
                  §§push(param1);
                  if(!_loc11_)
                  {
                     param2 = §§pop() + "";
                     §§goto(addr69);
                  }
                  §§goto(addr75);
               }
            }
         }
         addr69:
         §§push(AngryBirdsFP11.sUserProgress.§9o§(_loc4_));
         if(!_loc11_)
         {
            addr75:
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(AngryBirdsFP11.sUserProgress.§`!g§(_loc4_));
         if(!(_loc11_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(AngryBirdsFP11.sUserProgress.§7L§(_loc4_));
         if(!(_loc11_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(AngryBirdsFP11.sUserProgress.§,!b§(_loc4_));
         if(_loc10_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(_loc10_ || param2)
         {
            if(param2 == §]!j§)
            {
               if(!(_loc11_ && param1))
               {
                  _loc9_ = LevelManager.§5!W§(§]!K§.EPISODE_GREEN_DAY_EGG);
                  if(_loc10_ || param3)
                  {
                     §§push(_loc5_);
                     loop0:
                     while(true)
                     {
                        §§push(AngryBirdsFP11.sUserProgress);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop().§9o§(_loc9_));
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 loop4:
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       loop6:
                                       while(!_loc11_)
                                       {
                                          §§push(AngryBirdsFP11.sUserProgress);
                                          while(_loc10_)
                                          {
                                             §§push(§§pop().§`!g§(_loc9_));
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr253:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   addr254:
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                   }
                                                }
                                             }
                                             loop14:
                                             while(_loc10_ || param1)
                                             {
                                                §§push(§§pop().§7L§(_loc9_));
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr228:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      loop17:
                                                      while(_loc10_)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            _loc7_ = §§pop();
                                                            while(_loc10_ || param1)
                                                            {
                                                               §§push(_loc8_);
                                                               if(_loc10_)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(AngryBirdsFP11.sUserProgress);
                                                                        if(_loc10_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  continue loop17;
                                                               }
                                                               addr195:
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  if(_loc11_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!(_loc11_ && param1))
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        §§goto(addr275);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr255:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop14;
                                                               }
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop4;
                                                      }
                                                      §§goto(addr254);
                                                   }
                                                }
                                             }
                                          }
                                          continue loop1;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr255);
               }
               §§goto(addr292);
            }
            §§goto(addr275);
         }
         addr275:
         §6w§.setText(_loc5_ + "/" + _loc6_,"Textfield_CollectedStars" + param2);
         if(!(_loc11_ && param2))
         {
            addr292:
            §6w§.setText(_loc7_ + "/" + _loc8_,"Textfield_ME_Score" + param2);
         }
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
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               if(§§pop() == §1-§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  do
                  {
                     §6w§.setText(§,!C§.§;"§.§0!V§()[0],"Textfield_TimeLeft");
                     while(mNextState.length > 0)
                     {
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        if(!(_loc3_ && param1))
                        {
                           break;
                        }
                     }
                     return §1-§.STATE_STATUS_RUNNING;
                  }
                  while(!_loc4_);
                  
                  if(_loc4_ || _loc3_)
                  {
                     return §1-§.STATE_STATUS_COMPLETED;
                  }
                  addr101:
                  §§push(_loc2_);
               }
               §§goto(addr101);
            }
            return §§pop();
         }
         §§goto(addr101);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:int = 0;
         var _loc4_:int;
         §§push(_loc4_ = param2.indexOf("EASTER_EGG_"));
         if(!(_loc8_ && param1))
         {
            if(§§pop() != -1)
            {
               if(_loc7_)
               {
                  addr42:
                  _loc5_ = int(param2.substr("EASTER_EGG_".length));
                  if(!_loc8_)
                  {
                     §§push(LevelManager);
                     §§push("1000-");
                     if(_loc7_)
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§-!4§(§§pop());
                     while(true)
                     {
                        mNextState = StateCutScene.STATE_NAME;
                     }
                     addr1256:
                  }
                  loop66:
                  while(true)
                  {
                     addr1228:
                     while(true)
                     {
                        super.uiInteractionHandler(param1,param2,param3);
                        if(!(_loc7_ || this))
                        {
                           continue loop66;
                        }
                        if(_loc7_)
                        {
                           break;
                        }
                        §§goto(addr1256);
                        continue loop66;
                     }
                  }
               }
               var _loc6_:* = param2;
               if(_loc7_ || param3)
               {
                  §§push("AVATAREDITOR");
                  if(!(_loc8_ && param1))
                  {
                     §§push(_loc6_);
                     if(!(_loc8_ && param2))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc7_)
                           {
                              §§push(0);
                              if(!(_loc7_ || param2))
                              {
                                 addr1669:
                              }
                           }
                           else
                           {
                              addr1344:
                              §§push(2);
                              if(_loc8_ && this)
                              {
                                 addr1549:
                              }
                           }
                        }
                        else
                        {
                           §§push("showCredits");
                           if(!(_loc8_ && param3))
                           {
                              §§push(_loc6_);
                              if(_loc7_ || param3)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc8_ && param2))
                                    {
                                       addr1321:
                                       §§push(1);
                                       if(!(_loc8_ && param2))
                                       {
                                          §§goto(addr1831);
                                       }
                                       else
                                       {
                                          §§goto(addr1549);
                                       }
                                    }
                                    else
                                    {
                                       addr1689:
                                       §§push(17);
                                       if(_loc7_ || this)
                                       {
                                          addr1697:
                                       }
                                       else
                                       {
                                          addr1753:
                                       }
                                       §§goto(addr1831);
                                    }
                                    §§goto(addr1831);
                                 }
                                 else
                                 {
                                    §§push("CHAPTERGREENDAY");
                                    if(_loc7_ || param2)
                                    {
                                       addr1338:
                                       §§push(_loc6_);
                                       if(_loc7_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc7_)
                                             {
                                                §§goto(addr1344);
                                             }
                                             else
                                             {
                                                addr1628:
                                                §§push(15);
                                                if(_loc7_ || param2)
                                                {
                                                   addr1636:
                                                   §§goto(addr1831);
                                                }
                                                else
                                                {
                                                   §§goto(addr1669);
                                                }
                                             }
                                             §§goto(addr1831);
                                          }
                                          else
                                          {
                                             §§push("CHAPTER2");
                                             if(_loc7_)
                                             {
                                                §§push(_loc6_);
                                                if(_loc7_ || param2)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         §§push(3);
                                                         if(_loc8_ && param2)
                                                         {
                                                            addr1725:
                                                         }
                                                      }
                                                      §§goto(addr1831);
                                                   }
                                                   else
                                                   {
                                                      §§push("CHAPTER3");
                                                      if(!_loc8_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc7_ || param3)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc7_ || param1)
                                                               {
                                                                  §§push(4);
                                                                  if(_loc7_ || param2)
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr1811:
                                                                  §§push(21);
                                                                  if(_loc7_ || param3)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr1831);
                                                            }
                                                            else
                                                            {
                                                               §§push("CHAPTER0");
                                                               if(_loc7_ || param1)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc8_ && param3))
                                                                        {
                                                                           §§push(5);
                                                                           if(_loc8_ && this)
                                                                           {
                                                                              addr1508:
                                                                           }
                                                                           §§goto(addr1831);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr1454:
                                                                           §§push(7);
                                                                           if(!(_loc8_ && param3))
                                                                           {
                                                                              §§goto(addr1831);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1697);
                                                                           }
                                                                        }
                                                                        §§goto(addr1831);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("CHAPTER1");
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(_loc7_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(6);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr1831);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr1454);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push("CHAPTERGE");
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§goto(addr1454);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr1689);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push("CHAPTER0OVER");
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr1466:
                                                                                             §§push(_loc6_);
                                                                                             if(_loc7_ || param2)
                                                                                             {
                                                                                                addr1474:
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §§push(8);
                                                                                                      if(_loc8_ && param2)
                                                                                                      {
                                                                                                         addr1585:
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr1823:
                                                                                                      §§push(22);
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         addr1826:
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1831);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push("CHAPTER0OUT");
                                                                                                   if(_loc7_ || param2)
                                                                                                   {
                                                                                                      addr1494:
                                                                                                      §§push(_loc6_);
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            if(_loc7_ || param1)
                                                                                                            {
                                                                                                               §§push(9);
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  §§goto(addr1508);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr1572:
                                                                                                                  §§goto(addr1831);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr1811);
                                                                                                            }
                                                                                                            §§goto(addr1831);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push("CHAPTER1OVER");
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  addr1515:
                                                                                                                  if(§§pop() === §§pop())
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        §§push(10);
                                                                                                                        if(_loc8_ && param1)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr1661:
                                                                                                                        §§push(16);
                                                                                                                        if(!(_loc8_ && this))
                                                                                                                        {
                                                                                                                           §§goto(addr1669);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1831);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push("CHAPTER1OUT");
                                                                                                                     if(_loc7_ || this)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           addr1538:
                                                                                                                           if(§§pop() === §§pop())
                                                                                                                           {
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 §§push(11);
                                                                                                                                 if(!(_loc8_ && param2))
                                                                                                                                 {
                                                                                                                                    §§goto(addr1549);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr1697);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr1582:
                                                                                                                                 §§push(13);
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1585);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr1636);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1831);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push("CHAPTER2OVER");
                                                                                                                              if(!(_loc8_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    addr1561:
                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          §§push(12);
                                                                                                                                          if(!(_loc8_ && param2))
                                                                                                                                          {
                                                                                                                                             §§goto(addr1572);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1831);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr1773:
                                                                                                                                          §§push(20);
                                                                                                                                          if(!(_loc8_ && param2))
                                                                                                                                          {
                                                                                                                                             addr1781:
                                                                                                                                             §§goto(addr1831);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr1826);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1831);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push("CHAPTER2OUT");
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          addr1576:
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          addr1597:
                                                                                                                                          if(§§pop() === §§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(14);
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1831);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1781);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr1661);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1831);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push("CHAPTER3OUT");
                                                                                                                                             if(_loc7_ || param2)
                                                                                                                                             {
                                                                                                                                                addr1617:
                                                                                                                                                §§push(_loc6_);
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr1620:
                                                                                                                                                   if(§§pop() === §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc8_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1628);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1661);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push("CHAPTERGREENDAYOVER");
                                                                                                                                                      if(_loc7_ || param3)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                         if(!(_loc8_ && param3))
                                                                                                                                                         {
                                                                                                                                                            addr1653:
                                                                                                                                                            if(§§pop() === §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc7_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1661);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1689);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push("CHAPTERGREENDAYOUT");
                                                                                                                                                               if(!(_loc8_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  addr1678:
                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                  if(!(_loc8_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr1686:
                                                                                                                                                                     if(§§pop() === §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1689);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr1717:
                                                                                                                                                                           §§push(18);
                                                                                                                                                                           if(!(_loc8_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1725);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1831);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push("CHAPTERGEOVER");
                                                                                                                                                                        if(!(_loc8_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           addr1706:
                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1709:
                                                                                                                                                                              if(§§pop() === §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc7_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1717);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1811);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push("CHAPTERGEOUT");
                                                                                                                                                                                 if(!(_loc8_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1734:
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    if(!(_loc8_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1742:
                                                                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(19);
                                                                                                                                                                                             if(_loc7_ || param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1753);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1826);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1823);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1831);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push("TOURNAMENTOVER");
                                                                                                                                                                                          if(!(_loc8_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1762:
                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                             if(!(_loc8_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1770:
                                                                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1773);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1811);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push("TOURNAMENTOUT");
                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1785:
                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                      if(!(_loc8_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() === §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc8_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1811);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1823);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1821:
                                                                                                                                                                                                            §§push("TOURNAMENT");
                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1823);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1821);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1831);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1821);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1823);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1831:
                                                                                                                                                                                       loop67:
                                                                                                                                                                                       switch(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          case 0:
                                                                                                                                                                                             §%?§.§9$§();
                                                                                                                                                                                             break;
                                                                                                                                                                                             addr1226:
                                                                                                                                                                                          case 1:
                                                                                                                                                                                             mNextState = §9<§.STATE_NAME;
                                                                                                                                                                                             break;
                                                                                                                                                                                             addr1220:
                                                                                                                                                                                          case 2:
                                                                                                                                                                                             §>!E§.§7N§("Menu_Confirm");
                                                                                                                                                                                             LevelManager.§2?§ = 6;
                                                                                                                                                                                             mNextState = §1!J§.STATE_NAME;
                                                                                                                                                                                             addr1205:
                                                                                                                                                                                             break;
                                                                                                                                                                                             addr1205:
                                                                                                                                                                                             addr1200:
                                                                                                                                                                                             addr1212:
                                                                                                                                                                                          case 3:
                                                                                                                                                                                             §>!E§.§7N§("Menu_Confirm");
                                                                                                                                                                                             LevelManager.§2?§ = 2;
                                                                                                                                                                                             mNextState = §8"D§.STATE_NAME;
                                                                                                                                                                                             addr1182:
                                                                                                                                                                                             break;
                                                                                                                                                                                             addr1182:
                                                                                                                                                                                             addr1194:
                                                                                                                                                                                             addr1187:
                                                                                                                                                                                          case 4:
                                                                                                                                                                                             §>!E§.§7N§("Menu_Confirm");
                                                                                                                                                                                             LevelManager.§2?§ = 5;
                                                                                                                                                                                             mNextState = §8"D§.STATE_NAME;
                                                                                                                                                                                             addr1162:
                                                                                                                                                                                             if(_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1182);
                                                                                                                                                                                             break;
                                                                                                                                                                                             addr1176:
                                                                                                                                                                                             addr1169:
                                                                                                                                                                                          case 5:
                                                                                                                                                                                             §>!E§.§7N§("Menu_Confirm");
                                                                                                                                                                                             LevelManager.§2?§ = 0;
                                                                                                                                                                                             mNextState = §8"D§.STATE_NAME;
                                                                                                                                                                                             addr1144:
                                                                                                                                                                                             break;
                                                                                                                                                                                             addr1149:
                                                                                                                                                                                             addr1144:
                                                                                                                                                                                             addr1156:
                                                                                                                                                                                          case 6:
                                                                                                                                                                                             §>!E§.§7N§("Menu_Confirm");
                                                                                                                                                                                             addr1131:
                                                                                                                                                                                             if(!(_loc8_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                LevelManager.§2?§ = 1;
                                                                                                                                                                                                mNextState = §8"D§.STATE_NAME;
                                                                                                                                                                                                break;
                                                                                                                                                                                                addr1124:
                                                                                                                                                                                                addr1119:
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1194);
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          case 7:
                                                                                                                                                                                             §>!E§.§7N§("Menu_Confirm");
                                                                                                                                                                                             LevelManager.§2?§ = 3;
                                                                                                                                                                                             mNextState = §9!X§.STATE_NAME;
                                                                                                                                                                                             addr1101:
                                                                                                                                                                                             break;
                                                                                                                                                                                             addr1101:
                                                                                                                                                                                             addr1106:
                                                                                                                                                                                             addr1113:
                                                                                                                                                                                          case 8:
                                                                                                                                                                                             addr1081:
                                                                                                                                                                                             addr1082:
                                                                                                                                                                                             if(this.mChapterTween0 != null)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1083:
                                                                                                                                                                                                if(_loc7_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1092:
                                                                                                                                                                                                   this.mChapterTween0.stop();
                                                                                                                                                                                                   if(_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1101);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1162);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             this.mChapterTween0 = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Chapter0").mClip,{
                                                                                                                                                                                                "scaleX":1.2,
                                                                                                                                                                                                "scaleY":1.2
                                                                                                                                                                                             },null,0.2);
                                                                                                                                                                                             addr1056:
                                                                                                                                                                                             this.mChapterTween0.play();
                                                                                                                                                                                             break;
                                                                                                                                                                                             addr1057:
                                                                                                                                                                                             addr1075:
                                                                                                                                                                                          case 9:
                                                                                                                                                                                             §§push(this.mChapterTween0);
                                                                                                                                                                                             if(_loc7_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(null);
                                                                                                                                                                                                      if(_loc7_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() != §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1047:
                                                                                                                                                                                                            §§push(this.mChapterTween0);
                                                                                                                                                                                                            loop1:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().stop();
                                                                                                                                                                                                               loop2:
                                                                                                                                                                                                               while(!_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1052:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.mChapterTween0 = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Chapter0").mClip,{
                                                                                                                                                                                                                        "scaleX":1,
                                                                                                                                                                                                                        "scaleY":1
                                                                                                                                                                                                                     },null,0.5,§>!+§.§%%§);
                                                                                                                                                                                                                     addr1019:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.mChapterTween0);
                                                                                                                                                                                                                           if(!(_loc7_ || this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop1;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!(_loc8_ && param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().play();
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break loop67;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop2;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr997:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1081);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1124);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1052);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break loop67;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1057);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1049:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1000);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1082);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1092);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1056);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1049);
                                                                                                                                                                                          case 10:
                                                                                                                                                                                             §§push(this.mChapterTween1);
                                                                                                                                                                                             loop3:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(null);
                                                                                                                                                                                                addr974:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.mChapterTween1);
                                                                                                                                                                                                         addr977:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().stop();
                                                                                                                                                                                                            addr978:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr975:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.mChapterTween1 = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Chapter1").mClip,{
                                                                                                                                                                                                         "scaleX":1.2,
                                                                                                                                                                                                         "scaleY":1.2
                                                                                                                                                                                                      },null,0.2);
                                                                                                                                                                                                      addr965:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc7_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.mChapterTween1);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().play();
                                                                                                                                                                                                                     addr947:
                                                                                                                                                                                                                     break loop67;
                                                                                                                                                                                                                     addr947:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop3;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr977);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr942:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1149);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          case 11:
                                                                                                                                                                                             §§push(this.mChapterTween1);
                                                                                                                                                                                             loop6:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(null);
                                                                                                                                                                                                if(_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr935:
                                                                                                                                                                                                      §§push(this.mChapterTween1);
                                                                                                                                                                                                      loop7:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().stop();
                                                                                                                                                                                                         addr938:
                                                                                                                                                                                                         addr925:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr925:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.mChapterTween1);
                                                                                                                                                                                                            if(_loc8_ && param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop7;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop6;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc7_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().play();
                                                                                                                                                                                                               break loop67;
                                                                                                                                                                                                               addr895:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr942);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.mChapterTween1 = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Chapter1").mClip,{
                                                                                                                                                                                                         "scaleX":1,
                                                                                                                                                                                                         "scaleY":1
                                                                                                                                                                                                      },null,0.5,§>!+§.§%%§);
                                                                                                                                                                                                      §§goto(addr925);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr885);
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr974);
                                                                                                                                                                                          case 12:
                                                                                                                                                                                             addr869:
                                                                                                                                                                                             if(this.mChapterTween2 != null)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr871:
                                                                                                                                                                                                §§push(this.mChapterTween2);
                                                                                                                                                                                                loop10:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().stop();
                                                                                                                                                                                                   addr826:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc8_ && this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop10;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().play();
                                                                                                                                                                                                      if(_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc7_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop67;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1205);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr938);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.mChapterTween2 = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Chapter2").mClip,{
                                                                                                                                                                                                   "scaleX":1.2,
                                                                                                                                                                                                   "scaleY":1.2
                                                                                                                                                                                                },null,0.2);
                                                                                                                                                                                                addr861:
                                                                                                                                                                                                while(_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr826);
                                                                                                                                                                                                   §§push(this.mChapterTween2);
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr947);
                                                                                                                                                                                             addr844:
                                                                                                                                                                                          case 13:
                                                                                                                                                                                             §§push(this.mChapterTween2);
                                                                                                                                                                                             loop13:
                                                                                                                                                                                             for(; _loc7_ || param1; if(!(_loc7_ || this))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             },§§pop().play(),while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break loop67;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr978);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr796);
                                                                                                                                                                                                }
                                                                                                                                                                                             },addr744:)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(null);
                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc7_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.mChapterTween2);
                                                                                                                                                                                                            loop15:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().stop();
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc7_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc8_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.mChapterTween2 = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Chapter2").mClip,{
                                                                                                                                                                                                                                 "scaleX":1,
                                                                                                                                                                                                                                 "scaleY":1
                                                                                                                                                                                                                              },null,0.5,§>!+§.§%%§);
                                                                                                                                                                                                                              if(!(_loc8_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop15;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr935);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr826);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break loop67;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop13;
                                                                                                                                                                                                                           addr749:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr925);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr834);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr808:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr869);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr826);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr844);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1220);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr796:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr749);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr869);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr826);
                                                                                                                                                                                          case 14:
                                                                                                                                                                                             §§push(this.mChapterTween3);
                                                                                                                                                                                             if(_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr717:
                                                                                                                                                                                                if(§§pop() != null)
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop18:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.mChapterTween3);
                                                                                                                                                                                                      addr720:
                                                                                                                                                                                                      loop21:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().stop();
                                                                                                                                                                                                         addr721:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc7_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr730:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.mChapterTween3 = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Chapter3").mClip,{
                                                                                                                                                                                                                        "scaleX":1.2,
                                                                                                                                                                                                                        "scaleY":1.2
                                                                                                                                                                                                                     },null,0.2);
                                                                                                                                                                                                                     addr694:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc7_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc8_ && param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.mChapterTween3);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().play();
                                                                                                                                                                                                                                    continue loop18;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop21;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr666:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1106);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1019);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1101);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr730);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr677:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1176);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1162);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1144);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr677);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr720);
                                                                                                                                                                                          case 15:
                                                                                                                                                                                             §§push(this.mChapterTween3);
                                                                                                                                                                                             if(!(_loc8_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(null);
                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr655:
                                                                                                                                                                                                      §§push(this.mChapterTween3);
                                                                                                                                                                                                      loop25:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc8_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().stop();
                                                                                                                                                                                                            while(!_loc8_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr662:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.mChapterTween3 = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Chapter3").mClip,{
                                                                                                                                                                                                                     "scaleX":1,
                                                                                                                                                                                                                     "scaleY":1
                                                                                                                                                                                                                  },null,0.5,§>!+§.§%%§);
                                                                                                                                                                                                                  addr636:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.mChapterTween3);
                                                                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().play();
                                                                                                                                                                                                                           break loop67;
                                                                                                                                                                                                                           addr616:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop25;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr744);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr662);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr660:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr666);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1119);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1144);
                                                                                                                                                                                                      addr657:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr617);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr717);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr657);
                                                                                                                                                                                          case 16:
                                                                                                                                                                                             §§push(this.§#!1§);
                                                                                                                                                                                             if(!(_loc8_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr601:
                                                                                                                                                                                                if(§§pop() != null)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr602:
                                                                                                                                                                                                   §§push(this.§#!1§);
                                                                                                                                                                                                   loop29:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().stop();
                                                                                                                                                                                                      addr605:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc7_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr609:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§#!1§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_ChapterGreenDay").mClip,{
                                                                                                                                                                                                                     "scaleX":1.2,
                                                                                                                                                                                                                     "scaleY":1.2
                                                                                                                                                                                                                  },null,0.2);
                                                                                                                                                                                                                  addr587:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§#!1§);
                                                                                                                                                                                                                     addr557:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop29;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().play();
                                                                                                                                                                                                                        if(_loc7_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break loop67;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1075);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr965);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr609);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr570:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1169);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr660);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr947);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr604:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr570);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr604);
                                                                                                                                                                                          case 17:
                                                                                                                                                                                             §§push(this.§#!1§);
                                                                                                                                                                                             if(_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(null);
                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr525:
                                                                                                                                                                                                      if(_loc7_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc8_ && param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§#!1§);
                                                                                                                                                                                                            loop36:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().stop();
                                                                                                                                                                                                               addr542:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc7_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr553:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.§#!1§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_ChapterGreenDay").mClip,{
                                                                                                                                                                                                                                 "scaleX":1,
                                                                                                                                                                                                                                 "scaleY":1
                                                                                                                                                                                                                              },null,0.5,§>!+§.§%%§);
                                                                                                                                                                                                                              addr497:
                                                                                                                                                                                                                              while(_loc7_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc7_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc7_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§#!1§);
                                                                                                                                                                                                                                       if(!(_loc7_ || param3))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop36;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().play();
                                                                                                                                                                                                                                          break loop67;
                                                                                                                                                                                                                                          addr477:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr557);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1131);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr694);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                              §§goto(addr553);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr636);
                                                                                                                                                                                                                           addr478:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr997);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break loop36;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr616);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr861);
                                                                                                                                                                                                            addr541:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr895);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr587);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr478);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr601);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr541);
                                                                                                                                                                                          case 18:
                                                                                                                                                                                             addr459:
                                                                                                                                                                                             if(this.§;D§ != null)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr460:
                                                                                                                                                                                                §§push(this.§;D§);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().stop();
                                                                                                                                                                                                   addr463:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr462:
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§;D§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                                                                                                                                                                                                   "scaleX":1.2,
                                                                                                                                                                                                   "scaleY":1.2
                                                                                                                                                                                                },null,0.2);
                                                                                                                                                                                                if(_loc7_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§;D§);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc8_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().play();
                                                                                                                                                                                                         addr420:
                                                                                                                                                                                                         if(!(_loc8_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop67;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr560);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr462);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr417:
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop67;
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          case 19:
                                                                                                                                                                                             §§push(this.§;D§);
                                                                                                                                                                                             if(_loc7_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc8_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(null);
                                                                                                                                                                                                      if(!(_loc8_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() != §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc7_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr389:
                                                                                                                                                                                                               §§push(this.§;D§);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().stop();
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr389:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            loop41:
                                                                                                                                                                                                            for(; _loc7_ || param1; §§goto(addr389))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc8_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc8_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop46:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.§;D§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                                                                                                                                                                                                                              "scaleX":1,
                                                                                                                                                                                                                              "scaleY":1
                                                                                                                                                                                                                           },null,0.5,§>!+§.§%%§);
                                                                                                                                                                                                                           addr347:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop46;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(this.§;D§);
                                                                                                                                                                                                                              if(_loc8_ && param3)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop41;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().play();
                                                                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break loop67;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr871);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr602);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr497);
                                                                                                                                                                                                                        addr328:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1187);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1083);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr808);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr542);
                                                                                                                                                                                                            addr390:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr328);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr459);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr459);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr459);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr417);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr389);
                                                                                                                                                                                          case 20:
                                                                                                                                                                                             addr293:
                                                                                                                                                                                             if(this.§-!n§ != null)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc7_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§-!n§);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().stop();
                                                                                                                                                                                                            addr309:
                                                                                                                                                                                                            loop52:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§-!n§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Tournament").mClip,{
                                                                                                                                                                                                                        "scaleX":1.2,
                                                                                                                                                                                                                        "scaleY":1.2
                                                                                                                                                                                                                     },null,0.2);
                                                                                                                                                                                                                     addr259:
                                                                                                                                                                                                                     while(_loc7_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc8_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc7_ || param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc7_ || param3)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§-!n§);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop52;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().play();
                                                                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break loop67;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr460);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr236:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1156);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1144);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr605);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr347);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr636);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr323);
                                                                                                                                                                                                                  addr242:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1226);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr721);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr390);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr309);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr242);
                                                                                                                                                                                          case 21:
                                                                                                                                                                                             §§push(this.§-!n§);
                                                                                                                                                                                             if(!(_loc8_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(null);
                                                                                                                                                                                                   if(_loc7_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() != §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc8_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc7_ || param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§-!n§);
                                                                                                                                                                                                                  loop60:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().stop();
                                                                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc8_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc7_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr232:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.§-!n§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_Tournament").mClip,{
                                                                                                                                                                                                                                          "scaleX":1,
                                                                                                                                                                                                                                          "scaleY":1
                                                                                                                                                                                                                                       },null,0.5,§>!+§.§%%§);
                                                                                                                                                                                                                                       addr160:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc8_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc8_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§-!n§);
                                                                                                                                                                                                                                                if(!(_loc7_ || param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop60;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc7_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().play();
                                                                                                                                                                                                                                                   if(!(_loc8_ && param3))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc8_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc7_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc7_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr74:
                                                                                                                                                                                                                                                               break loop67;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1200);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1047);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr420);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1081);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break loop67;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr293);
                                                                                                                                                                                                                                                §§goto(addr947);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1113);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr463);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr232);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1101);
                                                                                                                                                                                                                                    addr141:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr1212);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1205);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr655);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr309);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr259);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break loop67;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr216:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr975);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr525);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr141);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr293);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr236);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr216);
                                                                                                                                                                                          case 22:
                                                                                                                                                                                             LevelManager.§2?§ = 4;
                                                                                                                                                                                             if(_loc7_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc7_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         mNextState = §-k§.STATE_NAME;
                                                                                                                                                                                                         if(_loc7_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc8_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc8_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr74);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr239);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr160);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr463);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1092);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr669);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr477);
                                                                                                                                                                                             }
                                                                                                                                                                                       }
                                                                                                                                                                                       return;
                                                                                                                                                                                       §§push(23);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1831);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1762);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1831);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1821);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1831);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1742);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1706);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1831);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1709);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1785);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1831);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1770);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1821);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1706);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 if(§§pop() === §§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1582);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr1628);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push("CHAPTER3OVER");
                                                                                                                                    if(!(_loc8_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_);
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1597);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1653);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1785);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1831);
                                                                                                                              }
                                                                                                                              §§goto(addr1576);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1620);
                                                                                                                     }
                                                                                                                     §§goto(addr1617);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1653);
                                                                                                            }
                                                                                                            §§goto(addr1785);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1686);
                                                                                                   }
                                                                                                   §§goto(addr1576);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1576);
                                                                                          }
                                                                                          §§goto(addr1785);
                                                                                       }
                                                                                       §§goto(addr1831);
                                                                                    }
                                                                                    §§goto(addr1686);
                                                                                 }
                                                                                 §§goto(addr1466);
                                                                              }
                                                                              §§goto(addr1831);
                                                                           }
                                                                           §§goto(addr1538);
                                                                        }
                                                                        §§goto(addr1706);
                                                                     }
                                                                  }
                                                                  §§goto(addr1561);
                                                               }
                                                               §§goto(addr1734);
                                                            }
                                                         }
                                                         §§goto(addr1474);
                                                      }
                                                      §§goto(addr1785);
                                                   }
                                                }
                                                §§goto(addr1474);
                                             }
                                             §§goto(addr1785);
                                          }
                                       }
                                       §§goto(addr1515);
                                    }
                                    §§goto(addr1494);
                                 }
                              }
                              §§goto(addr1561);
                           }
                           §§goto(addr1338);
                        }
                        §§goto(addr1831);
                     }
                     §§goto(addr1561);
                  }
                  §§goto(addr1678);
               }
               §§goto(addr1321);
            }
            §§goto(addr1228);
         }
         §§goto(addr42);
      }
   }
}
