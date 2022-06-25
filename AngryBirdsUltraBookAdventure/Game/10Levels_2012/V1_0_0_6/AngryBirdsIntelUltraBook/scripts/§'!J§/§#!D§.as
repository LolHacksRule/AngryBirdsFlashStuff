package §'!J§
{
   import §!!K§.§else§;
   import §%t§.§3!d§;
   import §+0§.§,!E§;
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §3!G§.§<!#§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §5!c§.§try§;
   import §8!;§.§4I§;
   import §;!o§.§>!l§;
   import §;H§.§!y§;
   import §;H§.§9!3§;
   import §;H§.StateCutScene;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import com.angrybirds.friendsbar.§1!R§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §#!D§ extends §,!E§
   {
      
      public static var §9!c§:String = "";
      
      public static const §"!s§:String = "ChapterSelectionState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9!c§ = "";
         }
         do
         {
            §"!s§ = "ChapterSelectionState";
         }
         while(_loc2_ && _loc1_);
         
      }
      
      private var mChapterTween0:§!q§ = null;
      
      private var mChapterTween1:§!q§ = null;
      
      private var mChapterTween2:§!q§ = null;
      
      private var §6!i§:§!q§ = null;
      
      private var §^!q§:§!q§ = null;
      
      private var §">§:§3!d§;
      
      private var §!!V§:§4I§;
      
      private var §55§:§try§;
      
      public function §#!D§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.init();
            while(true)
            {
               §&!m§ = new §4`§(this);
            }
            addr91:
         }
         while(true)
         {
            §&!m§.init(§ !I§.§3!a§.Views.View_ChapterFacebookSelection[0]);
            for(; !_loc2_; this.§!!V§ = new §4I§(§&!m§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4),if(!(_loc2_ && this))
            {
               return;
            })
            {
               if(_loc1_)
               {
                  continue;
               }
               §§goto(addr91);
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§^!c§.§2!w§);
               loop1:
               while(true)
               {
                  (§§pop() as §[!P§).§99§.§&§ = false;
                  addr161:
                  while(true)
                  {
                     §§push(§^!c§.§2!w§);
                     if(_loc3_ || _loc2_)
                     {
                        (§§pop() as §[!P§).§;! §("");
                        loop3:
                        while(_loc3_ || this)
                        {
                           §§push(§else§.§^!A§);
                           if(!_loc2_)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(§else§.§^!A§);
                                    addr129:
                                    while(true)
                                    {
                                       §§pop().start();
                                       addr130:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr86:
                                    if(!(_loc3_ || this))
                                    {
                                       continue;
                                    }
                                    addr93:
                                    loop9:
                                    while(true)
                                    {
                                       this.§55§.addEventListener(Event.SOUND_COMPLETE,this.§!b§);
                                       loop11:
                                       while(!_loc3_)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                if(_loc2_ && _loc1_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr86);
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(§9!c§ == "")
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop10;
                                                   }
                                                   AngryBirdsFP11.playThemeMusic();
                                                   if(!(_loc3_ || this))
                                                   {
                                                      continue loop11;
                                                   }
                                                   if(false)
                                                   {
                                                      continue loop9;
                                                   }
                                                   addr165:
                                                   var _loc1_:int = 0;
                                                   addr229:
                                                   if(_loc1_ > 3)
                                                   {
                                                      addr233:
                                                      §&!m§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
                                                      if(_loc3_)
                                                      {
                                                         §&!m§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
                                                         addr209:
                                                         if(_loc3_)
                                                         {
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               (§^!c§.§2!w§ as §[!P§).§;e§(§1!R§.§7!U§);
                                                               addr199:
                                                               if(!_loc2_)
                                                               {
                                                                  this.§!!V§.start();
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     if(!(_loc3_ || _loc2_))
                                                                     {
                                                                        §§goto(addr209);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr199);
                                                               }
                                                               §§goto(addr233);
                                                            }
                                                            _loc1_++;
                                                            addr244:
                                                            §§goto(addr229);
                                                            addr250:
                                                         }
                                                         §§goto(addr233);
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   this.§2c§(_loc1_);
                                                   §§goto(addr250);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§^!c§.§5!Y§);
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      §§pop().clearLevel();
                                                      continue loop8;
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().§@!v§(false);
                                                      §§goto(addr120);
                                                   }
                                                   addr120:
                                                   addr108:
                                                }
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr130);
                                       }
                                       §§goto(addr165);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr108);
                                 §§goto(addr130);
                              }
                           }
                           §§goto(addr129);
                        }
                        continue;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr161);
      }
      
      private function §!b§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§55§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§55§);
                     addr83:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.SOUND_COMPLETE,this.§!b§);
                        addr88:
                        while(true)
                        {
                        }
                     }
                     addr63:
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     §§goto(addr25);
                  }
               }
               loop1:
               for(; §=F§; §§goto(addr88))
               {
                  if(_loc3_ || _loc2_)
                  {
                     while(true)
                     {
                        AngryBirdsFP11.playThemeMusic();
                     }
                     addr49:
                  }
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue loop1;
                     }
                     §§goto(addr63);
                  }
               }
               addr25:
               return;
            }
            §§goto(addr83);
         }
         §§goto(addr49);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9!c§ == "";
            loop0:
            while(true)
            {
               super.deActivate();
               loop1:
               while(true)
               {
                  this.§!!V§.stop();
                  while(true)
                  {
                     this.§3!1§();
                     loop3:
                     while(true)
                     {
                        §&!m§.getItemByName("MovieClip_StartPlaying").mClip.scaleX = 1;
                        while(true)
                        {
                           §&!m§.getItemByName("MovieClip_StartPlaying").mClip.scaleY = 1;
                           continue loop3;
                           addr29:
                           if(_loc1_ || _loc2_)
                           {
                              if(_loc1_)
                              {
                                 return;
                                 addr38:
                              }
                              continue loop0;
                           }
                        }
                     }
                     if(!(_loc2_ && _loc2_))
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      private function §3!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.mChapterTween0);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() != null)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.mChapterTween0);
                     addr172:
                     while(true)
                     {
                        §§pop().stop();
                        addr173:
                        while(true)
                        {
                           this.mChapterTween0 = null;
                           continue loop0;
                        }
                        continue loop0;
                     }
                  }
               }
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
                           addr145:
                           while(true)
                           {
                              §§pop().stop();
                              addr146:
                              while(true)
                              {
                                 this.mChapterTween1 = null;
                                 addr120:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        addr133:
                     }
                     loop3:
                     while(true)
                     {
                        §§push(this.mChapterTween2);
                        if(_loc2_)
                        {
                           if(§§pop() != null)
                           {
                              while(true)
                              {
                                 §§push(this.mChapterTween2);
                                 addr107:
                                 while(true)
                                 {
                                    §§pop().stop();
                                    addr108:
                                    while(!(_loc1_ && _loc2_))
                                    {
                                       this.mChapterTween2 = null;
                                       while(true)
                                       {
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                              addr105:
                           }
                           while(true)
                           {
                              §§push(this.§6!i§);
                              if(!_loc1_)
                              {
                                 if(§§pop() != null)
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(!(_loc1_ && this))
                                       {
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             if(_loc2_)
                                             {
                                                if(_loc2_ || _loc1_)
                                                {
                                                   addr87:
                                                   this.§6!i§.stop();
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr173);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr105);
                                                      }
                                                   }
                                                   continue;
                                                   addr88:
                                                }
                                                §§goto(addr151);
                                             }
                                             else
                                             {
                                                §§goto(addr133);
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr108);
                                    }
                                    §§goto(addr88);
                                 }
                                 §§goto(addr20);
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr107);
                     }
                  }
                  §§goto(addr145);
                  §§goto(addr158);
               }
            }
            §§goto(addr172);
         }
         §§goto(addr146);
      }
      
      private function §2c§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§<!#§ = LevelManager.§'J§(param1);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ == null)
            {
               if(!_loc4_)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr80);
               }
            }
            addr80:
            §§goto(addr79);
         }
         addr79:
         while(true)
         {
            §&!m§.setText(AngryBirdsFP11.sUserProgress.§^P§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§&!^§(_loc2_),"Textfield_CollectedStars" + param1);
            do
            {
               §&!m§.setText(AngryBirdsFP11.sUserProgress.§0,§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§'!8§(_loc2_),"Textfield_ME_Score" + param1);
            }
            while(!_loc3_);
            
            if(_loc3_ || _loc3_)
            {
               break;
            }
            continue loop0;
         }
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
         if(_loc4_)
         {
            this.§!!V§.run(param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(!(_loc3_ && param1))
               {
                  if(§§pop() != §,!E§.STATE_STATUS_RUNNING)
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_)
                        {
                           §§goto(addr93);
                        }
                        continue;
                     }
                     addr94:
                     while(true)
                     {
                        break loop0;
                     }
                  }
                  break;
               }
               addr93:
               return _loc2_;
            }
            while(mNextState.length > 0)
            {
               if(!(_loc4_ || _loc3_))
               {
                  break;
               }
               if(_loc4_)
               {
                  return §,!E§.STATE_STATUS_COMPLETED;
               }
               §§goto(addr94);
            }
            return §,!E§.STATE_STATUS_RUNNING;
         }
         §§goto(addr94);
      }
      
      private function §;!6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §>!l§.§ a§("playClicked");
         }
      }
      
      private function §+4§(param1:Event) : void
      {
      }
      
      private function §0e§(param1:ErrorEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
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
               if(_loc7_ || param3)
               {
                  addr47:
                  _loc5_ = int(param2.substr("EASTER_EGG_".length));
                  if(_loc7_)
                  {
                     §§push(LevelManager);
                     §§push("1000-");
                     if(!(_loc8_ && this))
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§@3§(§§pop());
                     loop14:
                     while(true)
                     {
                        mNextState = StateCutScene.§"!s§;
                        addr264:
                        addr266:
                        while(_loc8_)
                        {
                           continue loop14;
                        }
                        while(true)
                        {
                           addr251:
                           while(true)
                           {
                              super.uiInteractionHandler(param1,param2,param3);
                              if(!_loc8_)
                              {
                                 break;
                              }
                              §§goto(addr264);
                           }
                        }
                     }
                  }
                  var _loc6_:* = param2;
                  if(_loc7_ || this)
                  {
                     §§push("showCredits");
                     if(_loc7_ || param3)
                     {
                        §§push(_loc6_);
                        if(!(_loc8_ && this))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc7_ || param1)
                              {
                                 addr316:
                                 §§push(0);
                                 if(_loc8_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr339:
                                 §§push(1);
                                 if(_loc8_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push("CHAPTER0");
                              if(_loc7_)
                              {
                                 §§push(_loc6_);
                                 if(_loc7_ || param3)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc7_ || param3)
                                       {
                                          §§goto(addr339);
                                       }
                                       else
                                       {
                                          addr377:
                                          §§push(2);
                                          if(_loc8_)
                                          {
                                             addr392:
                                          }
                                          §§goto(addr397);
                                       }
                                    }
                                    else
                                    {
                                       §§push("CHAPTER0OVER");
                                       if(_loc7_ || param2)
                                       {
                                          addr351:
                                          §§push(_loc6_);
                                          if(!(_loc8_ && param1))
                                          {
                                             addr359:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc7_ || param1)
                                                {
                                                   §§goto(addr377);
                                                }
                                             }
                                             else
                                             {
                                                addr383:
                                                if("CHAPTER0OUT" !== _loc6_)
                                                {
                                                   addr397:
                                                   loop15:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         mNextState = §9!3§.§"!s§;
                                                         if(_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         break;
                                                      case 1:
                                                         this.§;!6§();
                                                         loop3:
                                                         while(true)
                                                         {
                                                            §9'§.playSound("Menu_Confirm");
                                                            if(!(_loc7_ || param2))
                                                            {
                                                               break loop15;
                                                            }
                                                            LevelManager.§>!$§ = 0;
                                                            if(_loc8_ && param1)
                                                            {
                                                               break loop15;
                                                            }
                                                            mNextState = §!y§.§"!s§;
                                                            addr202:
                                                            while(true)
                                                            {
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  break loop15;
                                                               }
                                                               continue loop3;
                                                            }
                                                         }
                                                         break;
                                                      case 2:
                                                         §§push(this.mChapterTween0);
                                                         if(!(_loc8_ && this))
                                                         {
                                                            addr182:
                                                            if(§§pop() != null)
                                                            {
                                                               addr195:
                                                               this.mChapterTween0.stop();
                                                               while(true)
                                                               {
                                                               }
                                                               addr196:
                                                            }
                                                            loop4:
                                                            while(true)
                                                            {
                                                               this.mChapterTween0 = §-!,§.§7!j§.§,!`§(§&!m§.getItemByName("MovieClip_StartPlaying").mClip,{
                                                                  "scaleX":1.2,
                                                                  "scaleY":1.2
                                                               },null,0.2);
                                                               addr161:
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  §§push(this.mChapterTween0);
                                                                  while(true)
                                                                  {
                                                                     §§pop().play();
                                                                     if(_loc8_)
                                                                     {
                                                                        break loop15;
                                                                     }
                                                                     if(_loc7_)
                                                                     {
                                                                        break loop15;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  addr138:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr202);
                                                               }
                                                            }
                                                            addr144:
                                                         }
                                                         §§goto(addr195);
                                                      case 3:
                                                         §§push(this.mChapterTween0);
                                                         while(true)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(null);
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_ || param3)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(this.mChapterTween0);
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().stop();
                                                                                    addr134:
                                                                                    while(true)
                                                                                    {
                                                                                       addr89:
                                                                                       while(true)
                                                                                       {
                                                                                          this.mChapterTween0 = §-!,§.§7!j§.§,!`§(§&!m§.getItemByName("MovieClip_StartPlaying").mClip,{
                                                                                             "scaleX":1,
                                                                                             "scaleY":1
                                                                                          },null,0.5,§-!,§.§;!z§);
                                                                                          continue loop9;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr195);
                                                                              }
                                                                           }
                                                                           break;
                                                                           addr80:
                                                                           if(!(_loc7_ || param3))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(true)
                                                                           {
                                                                              break loop15;
                                                                           }
                                                                           §§goto(addr89);
                                                                        }
                                                                        §§goto(addr161);
                                                                     }
                                                                     §§goto(addr89);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr182);
                                                                  }
                                                               }
                                                               §§goto(addr195);
                                                            }
                                                            break;
                                                            if(!(_loc8_ && this))
                                                            {
                                                               §§pop().play();
                                                               if(!_loc8_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        §§goto(addr80);
                                                                     }
                                                                     §§goto(addr134);
                                                                  }
                                                                  §§goto(addr108);
                                                               }
                                                               break loop15;
                                                            }
                                                         }
                                                         §§goto(addr138);
                                                   }
                                                   return;
                                                   §§push(4);
                                                }
                                             }
                                             §§goto(addr397);
                                             §§goto(addr397);
                                          }
                                          §§goto(addr383);
                                       }
                                    }
                                    §§goto(addr397);
                                 }
                                 §§goto(addr359);
                              }
                              §§goto(addr383);
                           }
                           §§goto(addr397);
                        }
                        §§goto(addr359);
                     }
                     §§goto(addr351);
                  }
                  §§goto(addr316);
               }
               §§goto(addr266);
            }
            §§goto(addr251);
         }
         §§goto(addr47);
      }
   }
}
