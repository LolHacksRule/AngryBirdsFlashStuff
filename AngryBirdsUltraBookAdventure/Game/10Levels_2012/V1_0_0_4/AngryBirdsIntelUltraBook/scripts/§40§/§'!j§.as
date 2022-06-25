package §40§
{
   import §"R§.§ !Q§;
   import §0!N§.§4n§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §3!8§.§5!C§;
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §7=§.§&,§;
   import §9!5§.§ B§;
   import §9!5§.§!1§;
   import §9!5§.StateCutScene;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §<&§.§^b§;
   import §@i§.§=r§;
   import com.angrybirds.friendsbar.§`Y§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import §true§.§ _§;
   
   public class §'!j§ extends §?Y§
   {
      
      public static var §`]§:String = "";
      
      public static const §?h§:String = "ChapterSelectionState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §`]§ = "";
         }
         do
         {
            §?h§ = "ChapterSelectionState";
         }
         while(_loc1_);
         
      }
      
      private var mChapterTween0:§4!Z§ = null;
      
      private var mChapterTween1:§4!Z§ = null;
      
      private var mChapterTween2:§4!Z§ = null;
      
      private var §',§:§4!Z§ = null;
      
      private var §9!Y§:§4!Z§ = null;
      
      private var §;!n§:§5!C§;
      
      private var §#A§:§&,§;
      
      public function §'!j§(param1:Boolean, param2:String = "ChapterSelectionState")
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
         if(_loc1_)
         {
            super.init();
            while(true)
            {
               §5!P§ = new §'!^§(this);
            }
            addr86:
         }
         loop1:
         while(true)
         {
            §5!P§.init(§[!'§.§+@§.Views.View_ChapterFacebookSelection[0]);
            while(!_loc2_)
            {
               this.§#A§ = new §&,§(§5!P§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               if(_loc1_)
               {
                  break loop1;
               }
               §§goto(addr86);
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate();
         }
         loop0:
         while(true)
         {
            §§push(§ _§.§1s§);
            while(true)
            {
               (§§pop() as §@!9§).§6!H§.§default§ = false;
               loop2:
               while(true)
               {
                  §§push(§ _§.§1s§);
                  if(_loc2_ && _loc1_)
                  {
                     break;
                  }
                  (§§pop() as §@!9§).§>!+§("");
                  loop3:
                  while(true)
                  {
                     §§push(§^b§.§9E§);
                     if(_loc3_ || _loc1_)
                     {
                        if(!§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§push(§ _§.§!6§);
                              loop6:
                              while(true)
                              {
                                 §§pop().§2!d§(false);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§ _§.§!6§);
                                    if(!_loc2_)
                                    {
                                       §§pop().clearLevel();
                                       loop8:
                                       while(true)
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             while(§`]§ != "")
                                             {
                                                AngryBirdsFP11.playThemeMusic();
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(true)
                                                   {
                                                      break loop6;
                                                   }
                                                   continue;
                                                   continue;
                                                }
                                                addr58:
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   if(_loc2_ && _loc2_)
                                                   {
                                                      break loop8;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop7;
                                             }
                                             continue;
                                          }
                                       }
                                       continue loop5;
                                       addr86:
                                    }
                                    continue loop6;
                                 }
                                 continue loop2;
                              }
                              addr159:
                              var _loc1_:int = 0;
                              addr225:
                              if(_loc1_ > 3)
                              {
                                 addr229:
                                 §5!P§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
                                 §5!P§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
                                 addr215:
                                 if(!_loc2_)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       (§ _§.§1s§ as §@!9§).§>=§(§`Y§.§`j§);
                                       addr188:
                                       if(_loc3_)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             this.§#A§.start();
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                if(_loc2_)
                                                {
                                                   _loc1_++;
                                                   addr238:
                                                   §§goto(addr225);
                                                   addr244:
                                                }
                                                return;
                                             }
                                             §§goto(addr188);
                                          }
                                          §§goto(addr238);
                                       }
                                       §§goto(addr215);
                                    }
                                    §§goto(addr229);
                                 }
                                 addr235:
                                 §§goto(addr235);
                              }
                              this.§@!R§(_loc1_);
                              §§goto(addr244);
                           }
                           continue loop0;
                           addr94:
                        }
                        while(true)
                        {
                           §§push(§^b§.§9E§);
                           §§goto(addr86);
                        }
                     }
                     while(true)
                     {
                        §§pop().start();
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      private function §!!H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§2c§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  addr27:
                  AngryBirdsFP11.playThemeMusic();
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`]§ == "";
            while(true)
            {
               super.deActivate();
               while(true)
               {
                  this.§#A§.stop();
                  loop2:
                  while(true)
                  {
                     this.§&q§();
                     addr94:
                     while(true)
                     {
                        §5!P§.getItemByName("MovieClip_StartPlaying").mClip.scaleX = 1;
                        continue loop2;
                     }
                  }
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                     addr36:
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      private function §&q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.mChapterTween0);
            if(_loc1_)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.mChapterTween0);
                     addr176:
                     while(true)
                     {
                        §§pop().stop();
                        addr177:
                        while(true)
                        {
                           this.mChapterTween0 = null;
                           addr167:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr174:
               }
               while(true)
               {
                  §§push(this.mChapterTween1);
                  if(_loc1_ || _loc2_)
                  {
                     if(§§pop() != null)
                     {
                        loop2:
                        for(; !(_loc2_ && this); if(_loc2_ && this)
                        {
                           continue;
                        },§§goto(addr129))
                        {
                           §§push(this.mChapterTween1);
                           while(true)
                           {
                              §§pop().stop();
                              addr162:
                              loop13:
                              while(true)
                              {
                                 this.mChapterTween1 = null;
                                 addr120:
                                 addr129:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop13;
                                 }
                                 addr129:
                              }
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        §§push(this.mChapterTween2);
                        if(_loc1_ || this)
                        {
                           if(§§pop() != null)
                           {
                              loop17:
                              while(true)
                              {
                                 §§push(this.mChapterTween2);
                                 addr112:
                                 while(true)
                                 {
                                    §§pop().stop();
                                    loop10:
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          this.mChapterTween2 = null;
                                          loop11:
                                          while(true)
                                          {
                                             addr58:
                                             while(true)
                                             {
                                                §§push(this.§',§);
                                                if(_loc1_ || this)
                                                {
                                                   if(§§pop() != null)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§',§);
                                                         addr72:
                                                         while(true)
                                                         {
                                                            §§pop().stop();
                                                            while(true)
                                                            {
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  continue loop17;
                                                               }
                                                               continue loop10;
                                                            }
                                                            continue loop10;
                                                         }
                                                         if(!(_loc1_ || _loc1_))
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc1_ || this))
                                                         {
                                                            continue loop11;
                                                         }
                                                         if(!(_loc2_ && _loc1_))
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               §§goto(addr19);
                                                            }
                                                            §§goto(addr174);
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                   }
                                                   addr19:
                                                   return;
                                                }
                                                §§goto(addr72);
                                                continue loop11;
                                             }
                                             §§goto(addr120);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr120);
                                       }
                                       §§goto(addr122);
                                    }
                                    §§goto(addr162);
                                 }
                              }
                              addr110:
                           }
                           §§goto(addr58);
                        }
                        §§goto(addr112);
                        §§goto(addr129);
                     }
                  }
                  §§goto(addr161);
               }
            }
            §§goto(addr176);
         }
         §§goto(addr110);
      }
      
      private function §@!R§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4n§ = LevelManager.§`!-§(param1);
         if(_loc3_)
         {
            if(_loc2_ == null)
            {
               if(_loc3_ || _loc3_)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr87);
               }
               addr99:
            }
            while(true)
            {
               §5!P§.setText(AngryBirdsFP11.sUserProgress.§&!N§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§#O§(_loc2_),"Textfield_CollectedStars" + param1);
               §§goto(addr99);
            }
         }
         addr87:
         while(true)
         {
            §5!P§.setText(AngryBirdsFP11.sUserProgress.§`!8§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§'!O§(_loc2_),"Textfield_ME_Score" + param1);
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            this.§#A§.run(param1);
            while(true)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  break;
               }
               if(§§pop() != §?Y§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     continue;
                  }
                  while(true)
                  {
                  }
                  return §?Y§.STATE_STATUS_RUNNING;
                  addr36:
                  addr103:
               }
               while(true)
               {
                  if(mNextState.length > 0)
                  {
                     if(!(_loc4_ && this))
                     {
                        if(_loc3_)
                        {
                           §§goto(addr66);
                        }
                        continue;
                     }
                  }
                  §§goto(addr36);
               }
            }
            return §§pop();
         }
         addr66:
         return §?Y§.STATE_STATUS_COMPLETED;
      }
      
      private function §8!F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §=r§.§[!3§("playClicked");
         }
      }
      
      private function §]7§(param1:Event) : void
      {
      }
      
      private function §3!H§(param1:ErrorEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:int = 0;
         var _loc4_:int;
         §§push(_loc4_ = param2.indexOf("EASTER_EGG_"));
         if(_loc8_)
         {
            if(§§pop() != -1)
            {
               if(!_loc7_)
               {
                  addr38:
                  _loc5_ = int(param2.substr("EASTER_EGG_".length));
                  if(!(_loc7_ && param1))
                  {
                     §§push(LevelManager);
                     §§push("1000-");
                     if(_loc8_ || param3)
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§1!+§(§§pop());
                  }
               }
               while(true)
               {
                  mNextState = StateCutScene.§?h§;
                  addr267:
                  while(true)
                  {
                  }
                  addr254:
                  if(!(_loc8_ || param3))
                  {
                     continue;
                  }
                  var _loc6_:* = param2;
                  if(!(_loc7_ && param3))
                  {
                     §§push("showCredits");
                     if(_loc8_ || this)
                     {
                        §§push(_loc6_);
                        if(_loc8_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc7_)
                              {
                                 §§push(0);
                                 if(!_loc8_)
                                 {
                                    addr358:
                                 }
                              }
                              else
                              {
                                 addr355:
                                 §§push(3);
                                 if(!_loc7_)
                                 {
                                    §§goto(addr358);
                                 }
                              }
                              §§goto(addr363);
                           }
                           else
                           {
                              §§push("CHAPTER0");
                              if(_loc8_)
                              {
                                 addr314:
                                 §§push(_loc6_);
                                 if(!(_loc7_ && param2))
                                 {
                                    §§goto(addr322);
                                 }
                              }
                              §§goto(addr354);
                           }
                        }
                        addr322:
                        if(§§pop() === §§pop())
                        {
                           if(_loc8_)
                           {
                              §§push(1);
                              if(!_loc8_)
                              {
                              }
                           }
                           else
                           {
                              addr348:
                              §§push(2);
                              if(_loc7_)
                              {
                                 §§goto(addr358);
                              }
                           }
                        }
                        else
                        {
                           §§push("CHAPTER0OVER");
                           if(_loc8_)
                           {
                              §§push(_loc6_);
                              if(!_loc7_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       §§goto(addr348);
                                    }
                                    else
                                    {
                                       §§goto(addr355);
                                    }
                                 }
                                 else
                                 {
                                    addr354:
                                    if("CHAPTER0OUT" === _loc6_)
                                    {
                                       §§goto(addr355);
                                    }
                                    else
                                    {
                                       §§push(4);
                                    }
                                 }
                                 §§goto(addr355);
                              }
                           }
                           §§goto(addr354);
                        }
                        addr363:
                        loop9:
                        switch(§§pop())
                        {
                           case 0:
                              mNextState = §!1§.§?h§;
                              break;
                              addr245:
                           case 1:
                              this.§8!F§();
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    § !Q§.playSound("Menu_Confirm");
                                    LevelManager.§>!§ = 0;
                                    continue;
                                    addr229:
                                 }
                                 §§goto(addr245);
                              }
                              break;
                           case 2:
                              addr195:
                              addr194:
                              if(this.mChapterTween0 != null)
                              {
                                 if(_loc8_ || param1)
                                 {
                                    addr205:
                                    this.mChapterTween0.stop();
                                 }
                                 addr206:
                              }
                              this.mChapterTween0 = §,!b§.§<d§.§>a§(§5!P§.getItemByName("MovieClip_StartPlaying").mClip,{
                                 "scaleX":1.2,
                                 "scaleY":1.2
                              },null,0.2);
                              if(!(_loc7_ && this))
                              {
                                 addr150:
                                 this.mChapterTween0.play();
                                 addr151:
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 §§goto(addr212);
                              }
                              break;
                           case 3:
                              §§push(this.mChapterTween0);
                              loop4:
                              while(!(_loc7_ && param1))
                              {
                                 if(_loc8_)
                                 {
                                    §§push(null);
                                    if(!_loc7_)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             §§push(this.mChapterTween0);
                                             loop5:
                                             while(true)
                                             {
                                                if(_loc8_ || param3)
                                                {
                                                   §§pop().stop();
                                                   loop6:
                                                   for(; _loc8_ || param2; while(true)
                                                   {
                                                      if(!(_loc7_ && param3))
                                                      {
                                                         if(!(_loc8_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop6;
                                                   },§§goto(addr217))
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         break loop5;
                                                      }
                                                      while(true)
                                                      {
                                                         this.mChapterTween0 = §,!b§.§<d§.§>a§(§5!P§.getItemByName("MovieClip_StartPlaying").mClip,{
                                                            "scaleX":1,
                                                            "scaleY":1
                                                         },null,0.5,§,!b§.§8!k§);
                                                         continue loop6;
                                                      }
                                                   }
                                                   §§goto(addr151);
                                                }
                                                else
                                                {
                                                   §§goto(addr205);
                                                }
                                                if(_loc8_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§pop().play();
                                                      if(_loc8_ || param1)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(_loc8_ || param2)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr73);
                                                               }
                                                               break loop9;
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                         §§goto(addr92);
                                                      }
                                                      break loop9;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             §§goto(addr206);
                                          }
                                          break loop9;
                                       }
                                       §§goto(addr73);
                                    }
                                    else
                                    {
                                       §§goto(addr195);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr194);
                                 }
                                 §§goto(addr195);
                              }
                              §§goto(addr150);
                        }
                        return;
                     }
                     §§goto(addr314);
                  }
                  §§goto(addr348);
                  addr261:
               }
            }
            while(true)
            {
               super.uiInteractionHandler(param1,param2,param3);
               if(_loc8_)
               {
                  §§goto(addr254);
               }
               §§goto(addr267);
            }
            §§goto(addr261);
         }
         §§goto(addr38);
      }
   }
}
