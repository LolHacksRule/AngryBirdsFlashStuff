package §`!#§
{
   import §"!i§.§8K§;
   import §"!i§.LevelManager;
   import §2!U§.§2!=§;
   import §2!U§.§<&§;
   import §2!U§.StateCutScene;
   import §2m§.§<!?§;
   import §8!H§.§9![§;
   import §9j§.§6!G§;
   import §;!y§.§,!s§;
   import §>L§.§+!i§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §[!b§.§,!W§;
   import §[!b§.§-!Q§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import §^`§.§#!5§;
   import com.angrybirds.friendsbar.§-V§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §!!2§ extends §9![§
   {
      
      public static var §%!i§:String = "";
      
      public static const §'!q§:String = "ChapterSelectionState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §!!2§))
         {
            §%!i§ = "";
            do
            {
               §'!q§ = "ChapterSelectionState";
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private var mChapterTween0:§^v§ = null;
      
      private var mChapterTween1:§^v§ = null;
      
      private var mChapterTween2:§^v§ = null;
      
      private var §?p§:§^v§ = null;
      
      private var §<!G§:§^v§ = null;
      
      private var §2!<§:§#!5§;
      
      private var §;!9§:§6!G§;
      
      private var §=z§:§,!W§;
      
      public function §!!2§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
         }
         do
         {
            §'!Q§ = new §&!G§(this);
            do
            {
               §'!Q§.init(§2!z§.§ _§.Views.View_ChapterFacebookSelection[0]);
               do
               {
                  this.§;!9§ = new §6!G§(§'!Q§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
               }
               while(_loc2_);
               
            }
            while(!_loc1_);
            
         }
         while(_loc2_ && this);
         
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§,!s§.§]!J§);
               while(true)
               {
                  (§§pop() as §<t§).§`X§.§!r§ = false;
                  loop2:
                  while(true)
                  {
                     §§push(§,!s§.§]!J§);
                     if(_loc2_)
                     {
                        break;
                     }
                     (§§pop() as §<t§).§;!T§("");
                     loop3:
                     while(true)
                     {
                        §§push(§<!?§.§,=§);
                        if(!(_loc2_ && _loc3_))
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(§<!?§.§,=§);
                                 addr129:
                                 while(true)
                                 {
                                    §§pop().start();
                                    addr130:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop3;
                                       }
                                       addr132:
                                    }
                                 }
                              }
                              addr127:
                           }
                           loop5:
                           while(true)
                           {
                              §§push(§,!s§.§=!I§);
                              while(true)
                              {
                                 §§pop().§!C§(false);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§,!s§.§=!I§);
                                    if(_loc2_ && this)
                                    {
                                       break;
                                    }
                                    §§pop().clearLevel();
                                    while(_loc3_ || _loc1_)
                                    {
                                       continue loop0;
                                       if(_loc2_ && _loc1_)
                                       {
                                          continue;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop7;
                                       }
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             this.§=z§.addEventListener(Event.SOUND_COMPLETE,this.§'g§);
                                             addr55:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   break loop5;
                                                }
                                                §§goto(addr127);
                                             }
                                          }
                                          addr47:
                                       }
                                       var _loc1_:int = 0;
                                       addr221:
                                       if(_loc1_ > 3)
                                       {
                                          addr225:
                                          §'!Q§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
                                          §'!Q§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
                                          addr231:
                                          if(_loc3_)
                                          {
                                             if(!_loc2_)
                                             {
                                                (§,!s§.§]!J§ as §<t§).§'!0§(§-V§.§,b§);
                                                addr182:
                                                if(!_loc2_)
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         this.§;!9§.start();
                                                         if(_loc2_ && this)
                                                         {
                                                            §§goto(addr182);
                                                         }
                                                         return;
                                                      }
                                                      _loc1_++;
                                                      addr234:
                                                      §§goto(addr221);
                                                      addr240:
                                                   }
                                                }
                                                §§goto(addr231);
                                             }
                                             §§goto(addr234);
                                          }
                                          §§goto(addr225);
                                       }
                                       this.§!>§(_loc1_);
                                       §§goto(addr240);
                                    }
                                    §§goto(addr130);
                                 }
                              }
                              §§goto(addr132);
                           }
                           if(_loc2_)
                           {
                              continue loop2;
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr129);
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      private function §'g§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§=z§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§=z§);
                     addr73:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.SOUND_COMPLETE,this.§'g§);
                        addr78:
                        while(true)
                        {
                        }
                     }
                  }
                  addr71:
               }
               for(; §7!#§; §§goto(addr78))
               {
                  if(_loc3_)
                  {
                     if(_loc2_ && param1)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        AngryBirdsFP11.playThemeMusic();
                        addr65:
                        break;
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr65);
               }
               return;
            }
            §§goto(addr73);
         }
         §§goto(addr65);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §%!i§ == "";
            while(true)
            {
               super.deActivate();
               addr103:
               while(true)
               {
                  this.§;!9§.stop();
               }
            }
            addr108:
         }
         loop2:
         while(true)
         {
            this.§%!!§();
            while(true)
            {
               §'!Q§.getItemByName("MovieClip_StartPlaying").mClip.scaleX = 1;
               addr90:
               while(true)
               {
                  §'!Q§.getItemByName("MovieClip_StartPlaying").mClip.scaleY = 1;
                  continue loop2;
               }
               addr36:
               if(_loc2_ && this)
               {
                  continue;
               }
               if(_loc1_)
               {
                  return;
               }
               §§goto(addr103);
            }
         }
      }
      
      private function §%!!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.mChapterTween0);
            if(!_loc1_)
            {
               if(§§pop() != null)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.mChapterTween0);
                     addr157:
                     while(true)
                     {
                        §§pop().stop();
                        addr158:
                        addr148:
                        while(true)
                        {
                           addr137:
                           this.mChapterTween0 = null;
                           continue loop0;
                        }
                        addr148:
                        while(true)
                        {
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(this.mChapterTween1);
                  if(!_loc1_)
                  {
                     if(§§pop() != null)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.mChapterTween1);
                           addr133:
                           loop13:
                           while(true)
                           {
                              §§pop().stop();
                              loop14:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    this.mChapterTween1 = null;
                                    loop15:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.mChapterTween2);
                                             if(!_loc1_)
                                             {
                                                if(§§pop() != null)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         continue loop15;
                                                      }
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         continue loop14;
                                                      }
                                                      §§push(this.mChapterTween2);
                                                      while(true)
                                                      {
                                                         §§pop().stop();
                                                         addr106:
                                                         while(true)
                                                         {
                                                            this.mChapterTween2 = null;
                                                            addr84:
                                                            while(true)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                            }
                                                            continue loop13;
                                                         }
                                                      }
                                                   }
                                                   continue loop15;
                                                   addr94:
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§?p§);
                                                   if(!(_loc1_ && this))
                                                   {
                                                      if(§§pop() == null)
                                                      {
                                                         return;
                                                      }
                                                      loop6:
                                                      for(; !_loc1_; if(!(_loc2_ || this))
                                                      {
                                                         continue;
                                                      },if(_loc1_)
                                                      {
                                                         §§goto(addr94);
                                                      })
                                                      {
                                                         §§push(this.§?p§);
                                                         while(true)
                                                         {
                                                            §§pop().stop();
                                                            while(!(_loc1_ && _loc2_))
                                                            {
                                                               this.§?p§ = null;
                                                               if(!_loc1_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                            }
                                                            §§goto(addr106);
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr61);
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr105);
                                             continue loop15;
                                          }
                                          §§goto(addr158);
                                          addr87:
                                       }
                                       else
                                       {
                                          §§goto(addr158);
                                       }
                                    }
                                    §§goto(addr137);
                                 }
                                 §§goto(addr141);
                              }
                           }
                        }
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr133);
                  §§goto(addr148);
               }
            }
            §§goto(addr157);
         }
         §§goto(addr148);
      }
      
      private function §!>§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§8K§ = LevelManager.§!!A§(param1);
         if(_loc4_)
         {
            if(_loc2_ != null)
            {
               loop0:
               while(true)
               {
                  §'!Q§.setText(AngryBirdsFP11.sUserProgress.§0q§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§>9§(_loc2_),"Textfield_CollectedStars" + param1);
                  do
                  {
                     if(!(_loc4_ || param1))
                     {
                        continue loop0;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        continue;
                     }
                  }
                  while(§'!Q§.setText(AngryBirdsFP11.sUserProgress.§;C§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§^!9§(_loc2_),"Textfield_ME_Score" + param1), _loc3_ && _loc2_);
                  
                  §§goto(addr63);
               }
            }
            return;
         }
         addr63:
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
         if(_loc4_ || _loc3_)
         {
            this.§;!9§.run(param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() == §9![§.STATE_STATUS_RUNNING)
                  {
                     while(mNextState.length > 0)
                     {
                        if(_loc4_ || this)
                        {
                           if(_loc4_ || _loc2_)
                           {
                              §§goto(addr67);
                           }
                           addr95:
                           §§push(_loc2_);
                           break loop0;
                        }
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return §9![§.STATE_STATUS_RUNNING;
                  }
                  §§goto(addr95);
               }
               break;
            }
            return §§pop();
         }
         addr67:
         return §9![§.STATE_STATUS_COMPLETED;
      }
      
      private function §-3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §+!i§.§>!y§("playClicked");
         }
      }
      
      private function §98§(param1:Event) : void
      {
      }
      
      private function §<!&§(param1:ErrorEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:int = 0;
         var _loc4_:int;
         §§push(_loc4_ = param2.indexOf("EASTER_EGG_"));
         if(_loc7_)
         {
            if(§§pop() != -1)
            {
               if(_loc7_ || param1)
               {
                  addr42:
                  _loc5_ = int(param2.substr("EASTER_EGG_".length));
                  if(_loc7_)
                  {
                     §§push(LevelManager);
                     §§push("1000-");
                     if(!_loc8_)
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§`!O§(§§pop());
                     loop9:
                     while(true)
                     {
                        mNextState = StateCutScene.§'!q§;
                        loop10:
                        while(true)
                        {
                           addr246:
                           while(true)
                           {
                              super.uiInteractionHandler(param1,param2,param3);
                              if(_loc7_ || param3)
                              {
                                 if(!(_loc8_ && this))
                                 {
                                    break;
                                 }
                                 continue loop9;
                              }
                              continue loop10;
                           }
                        }
                     }
                  }
               }
               var _loc6_:* = param2;
               if(_loc7_ || param3)
               {
                  §§push("showCredits");
                  if(_loc7_)
                  {
                     §§push(_loc6_);
                     if(_loc7_ || param1)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc8_ && param2))
                           {
                              §§push(0);
                              if(_loc8_)
                              {
                                 addr367:
                              }
                           }
                           else
                           {
                              addr329:
                              §§push(1);
                              if(!_loc7_)
                              {
                                 addr360:
                              }
                           }
                        }
                        else
                        {
                           §§push("CHAPTER0");
                           if(_loc7_)
                           {
                              §§push(_loc6_);
                              if(!_loc8_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc7_ || param1)
                                    {
                                       §§goto(addr329);
                                    }
                                    else
                                    {
                                       addr357:
                                       §§push(2);
                                       if(_loc7_)
                                       {
                                          §§goto(addr360);
                                       }
                                       §§goto(addr372);
                                    }
                                 }
                                 else
                                 {
                                    §§push("CHAPTER0OVER");
                                    if(_loc7_)
                                    {
                                       addr346:
                                       §§push(_loc6_);
                                       if(_loc8_)
                                       {
                                       }
                                       addr363:
                                       if(§§pop() === §§pop())
                                       {
                                          addr364:
                                          §§push(3);
                                          if(_loc7_)
                                          {
                                             §§goto(addr367);
                                          }
                                          §§goto(addr372);
                                       }
                                       else
                                       {
                                          addr372:
                                          loop11:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                mNextState = §<&§.§'!q§;
                                                break;
                                                addr244:
                                             case 1:
                                                this.§-3§();
                                                §-!Q§.§#3§("Menu_Confirm");
                                                LevelManager.§`^§ = 0;
                                                mNextState = §2!=§.§'!q§;
                                                addr220:
                                                break;
                                                addr236:
                                                addr220:
                                                addr230:
                                                addr225:
                                             case 2:
                                                §§push(this.mChapterTween0);
                                                if(!(_loc8_ && param1))
                                                {
                                                   addr197:
                                                   if(§§pop() != null)
                                                   {
                                                      addr198:
                                                      if(_loc7_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            if(_loc7_ || this)
                                                            {
                                                               §§push(this.mChapterTween0);
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  §§pop().stop();
                                                                  addr212:
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr214:
                                                                     while(true)
                                                                     {
                                                                        this.mChapterTween0 = §`!G§.§[U§.§-]§(§'!Q§.getItemByName("MovieClip_StartPlaying").mClip,{
                                                                           "scaleX":1.2,
                                                                           "scaleY":1.2
                                                                        },null,0.2);
                                                                        addr183:
                                                                        addr147:
                                                                        §§push(this.mChapterTween0);
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              §§pop().play();
                                                                              break loop11;
                                                                              addr155:
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        §§goto(addr214);
                                                                     }
                                                                     break loop11;
                                                                     addr156:
                                                                  }
                                                               }
                                                               addr211:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr244);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr236);
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                   §§goto(addr156);
                                                }
                                                §§goto(addr211);
                                             case 3:
                                                §§push(this.mChapterTween0);
                                                loop2:
                                                for(; _loc7_; if(_loc7_ || param2)
                                                {
                                                   §§pop().play();
                                                   if(_loc7_ || this)
                                                   {
                                                      if(!(_loc8_ && this))
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr82);
                                                            }
                                                            break loop11;
                                                         }
                                                         §§goto(addr198);
                                                      }
                                                      §§goto(addr101);
                                                   }
                                                   break loop11;
                                                })
                                                {
                                                   §§push(null);
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         loop3:
                                                         while(!_loc8_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               §§push(this.mChapterTween0);
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§pop().stop();
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(_loc7_ || param3)
                                                                     {
                                                                        if(_loc7_ || param1)
                                                                        {
                                                                           addr82:
                                                                           while(true)
                                                                           {
                                                                              this.mChapterTween0 = §`!G§.§[U§.§-]§(§'!Q§.getItemByName("MovieClip_StartPlaying").mClip,{
                                                                                 "scaleX":1,
                                                                                 "scaleY":1
                                                                              },null,0.5,§`!G§.§<W§);
                                                                              addr101:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           addr82:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr225);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr155);
                                                                     }
                                                                  }
                                                                  break loop11;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr212);
                                                            }
                                                            §§goto(addr220);
                                                         }
                                                         §§goto(addr183);
                                                      }
                                                      §§goto(addr82);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr197);
                                                   }
                                                }
                                                §§goto(addr147);
                                          }
                                          return;
                                          §§push(4);
                                       }
                                       §§goto(addr372);
                                    }
                                    addr362:
                                    §§goto(addr363);
                                    §§push(_loc6_);
                                 }
                                 §§goto(addr372);
                              }
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_ || param1)
                                 {
                                 }
                                 §§goto(addr357);
                              }
                              else
                              {
                                 §§goto(addr362);
                                 §§push("CHAPTER0OUT");
                              }
                              §§goto(addr364);
                           }
                           §§goto(addr362);
                        }
                        §§goto(addr357);
                     }
                     §§goto(addr363);
                  }
                  §§goto(addr346);
               }
               §§goto(addr357);
            }
            §§goto(addr246);
         }
         §§goto(addr42);
      }
   }
}
