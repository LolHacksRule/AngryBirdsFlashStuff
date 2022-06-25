package §0o§
{
   import § !k§.§6!5§;
   import § !k§.§6!U§;
   import § !k§.StateCutScene;
   import § !x§.§4F§;
   import § !x§.§5+§;
   import §!!§.§@+§;
   import §!!§.LevelManager;
   import §-2§.§[s§;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   import §;!q§.§+F§;
   import §=R§.§7!"§;
   import §@4§.§,!]§;
   import com.angrybirds.friendsbar.§&E§;
   
   public class §;%§ extends §+_§
   {
      
      public static var §2s§:String = "";
      
      public static const §3F§:String = "ChapterSelectionState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §2s§ = "";
         }
         do
         {
            §3F§ = "ChapterSelectionState";
         }
         while(_loc2_ && _loc1_);
         
      }
      
      private var mChapterTween0:§4F§ = null;
      
      private var mChapterTween1:§4F§ = null;
      
      private var mChapterTween2:§4F§ = null;
      
      private var §^!0§:§4F§ = null;
      
      private var §>!b§:§4F§ = null;
      
      private var §0!d§:§+F§;
      
      private var §;5§:§[s§;
      
      public function §;%§(param1:Boolean, param2:String = "ChapterSelectionState")
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
               §`-§ = new § C§(this);
            }
            addr91:
         }
         while(true)
         {
            §`-§.init(dynamic.§[6§.Views.View_ChapterFacebookSelection[0]);
            for(; !_loc2_; this.§;5§ = new §[s§(§`-§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4),if(!(_loc2_ && this))
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
               §§push(§4!]§.§7!G§);
               while(true)
               {
                  (§§pop() as §[!m§).§7!6§.§?0§ = false;
                  loop2:
                  while(true)
                  {
                     §§push(§4!]§.§7!G§);
                     if(!(_loc3_ || _loc3_))
                     {
                        break;
                     }
                     (§§pop() as §[!m§).§ _§("");
                     while(true)
                     {
                        §§push(§,!]§.§!9§);
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              while(_loc3_)
                              {
                                 §§push(§,!]§.§!9§);
                                 while(true)
                                 {
                                    §§pop().start();
                                    addr126:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr32:
                                 if(!(_loc3_ || this))
                                 {
                                    continue;
                                 }
                                 if(!(_loc3_ || this))
                                 {
                                    continue loop2;
                                 }
                                 if(false)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       if(§2s§ == "")
                                       {
                                          if(_loc3_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §6!H§.playSound("Intel_StartPlay",§6!H§.§8!$§,0,-1,this.§7d§);
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(§4!]§.§8C§);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§pop().clearLevel();
                                                   while(true)
                                                   {
                                                      if(_loc2_ && _loc1_)
                                                      {
                                                         §§goto(addr126);
                                                         break loop9;
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr154:
                                                   var _loc1_:int = 0;
                                                   addr208:
                                                   if(_loc1_ > 3)
                                                   {
                                                      addr212:
                                                      §`-§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
                                                      addr218:
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §`-§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
                                                         addr193:
                                                         if(_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               (§4!]§.§7!G§ as §[!m§).§ P§(§&E§.§'g§);
                                                               addr181:
                                                               if(_loc3_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     this.§;5§.start();
                                                                     if(!(_loc3_ || _loc2_))
                                                                     {
                                                                        §§goto(addr181);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr218);
                                                               }
                                                               §§goto(addr193);
                                                            }
                                                            _loc1_++;
                                                            addr228:
                                                            §§goto(addr208);
                                                            addr234:
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                   this.§33§(_loc1_);
                                                   §§goto(addr234);
                                                   addr84:
                                                   addr72:
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§pop().§1B§(false);
                                                §§goto(addr114);
                                             }
                                             addr114:
                                             addr112:
                                          }
                                          break;
                                       }
                                       AngryBirdsFP11.playThemeMusic();
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       §§goto(addr32);
                                    }
                                    if(_loc2_ && this)
                                    {
                                       §§goto(addr84);
                                    }
                                    §§goto(addr72);
                                    addr48:
                                 }
                                 §§goto(addr154);
                              }
                              continue;
                           }
                           while(true)
                           {
                              §§goto(addr112);
                              §§goto(addr126);
                           }
                        }
                        §§goto(addr125);
                     }
                  }
               }
            }
         }
         §§goto(addr126);
      }
      
      private function §7d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(§@!"§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  AngryBirdsFP11.playThemeMusic();
               }
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §2s§ == "";
            loop0:
            while(true)
            {
               super.deActivate();
               addr118:
               loop1:
               while(true)
               {
                  this.§;5§.stop();
                  while(true)
                  {
                     this.§?6§();
                     while(true)
                     {
                        if(_loc1_ || this)
                        {
                           while(true)
                           {
                              §`-§.getItemByName("MovieClip_StartPlaying").mClip.scaleX = 1;
                              continue loop0;
                           }
                           return;
                           addr65:
                           addr109:
                        }
                        break;
                        addr46:
                        if(_loc1_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      private function §?6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.mChapterTween0);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.mChapterTween0);
                     addr166:
                     while(true)
                     {
                        §§pop().stop();
                        addr167:
                        while(true)
                        {
                           this.mChapterTween0 = null;
                           addr157:
                           while(true)
                           {
                           }
                        }
                     }
                     loop10:
                     while(true)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(this.§^!0§);
                              if(_loc1_)
                              {
                                 if(§§pop() == null)
                                 {
                                    return;
                                 }
                                 if(!_loc2_)
                                 {
                                    addr46:
                                    this.§^!0§.stop();
                                 }
                                 while(true)
                                 {
                                    if(!(_loc1_ || _loc2_))
                                    {
                                       continue loop10;
                                    }
                                    if(_loc1_ || _loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       addr86:
                                       loop4:
                                       while(!(_loc2_ && _loc1_))
                                       {
                                          §§push(this.mChapterTween2);
                                          while(true)
                                          {
                                             §§pop().stop();
                                             addr108:
                                             loop9:
                                             while(true)
                                             {
                                                if(!(_loc2_ && this))
                                                {
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         this.mChapterTween2 = null;
                                                         continue loop10;
                                                      }
                                                      §§goto(addr167);
                                                   }
                                                   §§goto(addr157);
                                                }
                                                addr149:
                                                while(true)
                                                {
                                                   §§push(this.mChapterTween1);
                                                   addr151:
                                                   while(true)
                                                   {
                                                      §§pop().stop();
                                                      break loop9;
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                             addr152:
                                             while(true)
                                             {
                                                this.mChapterTween1 = null;
                                                break loop4;
                                             }
                                          }
                                       }
                                       while(_loc2_)
                                       {
                                          §§goto(addr152);
                                       }
                                       addr141:
                                       while(true)
                                       {
                                          §§push(this.mChapterTween2);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             if(§§pop() == null)
                                             {
                                                continue loop6;
                                             }
                                             §§goto(addr98);
                                          }
                                          §§goto(addr107);
                                          §§goto(addr141);
                                       }
                                       addr98:
                                    }
                                    §§goto(addr108);
                                 }
                                 continue loop10;
                              }
                              §§goto(addr46);
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr166);
                  }
               }
               while(true)
               {
                  §§push(this.mChapterTween1);
                  if(_loc1_)
                  {
                     if(§§pop() != null)
                     {
                        §§goto(addr149);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr151);
                  §§goto(addr157);
               }
            }
            §§goto(addr166);
         }
         §§goto(addr167);
      }
      
      private function §33§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@+§ = LevelManager.§'v§(param1);
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ != null)
            {
               loop0:
               while(true)
               {
                  §`-§.setText(AngryBirdsFP11.sUserProgress.§^!E§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§[y§(_loc2_),"Textfield_CollectedStars" + param1);
                  while(!(_loc4_ && this))
                  {
                     §`-§.setText(AngryBirdsFP11.sUserProgress.§<!=§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§%!u§(_loc2_),"Textfield_ME_Score" + param1);
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
               }
               return;
            }
            return;
         }
         §§goto(addr104);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.§;5§.run(param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() != §+_§.STATE_STATUS_RUNNING)
                  {
                     if(_loc3_)
                     {
                        §§push(_loc2_);
                        break;
                     }
                     while(true)
                     {
                        addr74:
                        if(!(_loc3_ || _loc2_))
                        {
                           continue;
                        }
                        return §+_§.STATE_STATUS_RUNNING;
                        addr31:
                     }
                     addr93:
                  }
                  while(true)
                  {
                     if(mNextState.length > 0)
                     {
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        §§goto(addr74);
                     }
                     break;
                     §§goto(addr93);
                  }
                  §§goto(addr31);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr81);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
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
               if(!_loc8_)
               {
                  addr37:
                  _loc5_ = int(param2.substr("EASTER_EGG_".length));
                  if(!(_loc8_ && param3))
                  {
                     §§push(LevelManager);
                     §§push("1000-");
                     if(!_loc8_)
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§9!d§(§§pop());
                  }
               }
               while(true)
               {
                  mNextState = StateCutScene.§3F§;
                  loop1:
                  while(_loc7_ || param1)
                  {
                     while(true)
                     {
                        super.uiInteractionHandler(param1,param2,param3);
                        if(_loc7_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     var _loc6_:* = param2;
                     if(_loc7_)
                     {
                        §§push("showCredits");
                        if(!(_loc8_ && param1))
                        {
                           §§push(_loc6_);
                           if(!_loc8_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    §§push(0);
                                    if(!(_loc7_ || param3))
                                    {
                                       addr311:
                                    }
                                 }
                                 else
                                 {
                                    addr341:
                                    §§push(2);
                                    if(_loc7_ || param3)
                                    {
                                       addr349:
                                    }
                                 }
                              }
                              else
                              {
                                 §§push("CHAPTER0");
                                 if(!(_loc8_ && this))
                                 {
                                    addr287:
                                    §§push(_loc6_);
                                    if(_loc7_ || this)
                                    {
                                       addr295:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc8_ && param3))
                                          {
                                             addr303:
                                             §§push(1);
                                             if(_loc7_ || param1)
                                             {
                                                §§goto(addr311);
                                             }
                                             else
                                             {
                                                §§goto(addr349);
                                             }
                                          }
                                          §§goto(addr341);
                                          §§goto(addr361);
                                       }
                                       else
                                       {
                                          §§push("CHAPTER0OVER");
                                          if(_loc7_ || param2)
                                          {
                                             §§push(_loc6_);
                                             if(_loc7_ || param1)
                                             {
                                                addr338:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§goto(addr341);
                                                   }
                                                }
                                                else
                                                {
                                                   addr352:
                                                   if("CHAPTER0OUT" !== _loc6_)
                                                   {
                                                      addr361:
                                                      loop8:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            mNextState = §6!5§.§3F§;
                                                            break;
                                                            addr218:
                                                         case 1:
                                                            §6!H§.playSound("Menu_Confirm");
                                                            LevelManager.§;`§ = 0;
                                                            addr196:
                                                            if(_loc7_ || param2)
                                                            {
                                                               mNextState = §6!U§.§3F§;
                                                               break;
                                                               addr191:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr218);
                                                            }
                                                            break;
                                                            addr210:
                                                         case 2:
                                                            addr166:
                                                            if(this.mChapterTween0 != null)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  addr182:
                                                                  this.mChapterTween0.stop();
                                                               }
                                                               addr183:
                                                               if(_loc7_)
                                                               {
                                                                  addr143:
                                                                  this.mChapterTween0 = §5+§.§^Z§.§=!a§(§`-§.getItemByName("MovieClip_StartPlaying").mClip,{
                                                                     "scaleX":1.2,
                                                                     "scaleY":1.2
                                                                  },null,0.2);
                                                                  addr139:
                                                                  this.mChapterTween0.play();
                                                                  if(_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr160:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr210);
                                                               }
                                                               §§goto(addr191);
                                                            }
                                                            §§goto(addr143);
                                                         case 3:
                                                            §§push(this.mChapterTween0);
                                                            loop3:
                                                            while(true)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  §§push(null);
                                                                  if(!_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.mChapterTween0);
                                                                        loop5:
                                                                        while(_loc7_)
                                                                        {
                                                                           §§pop().stop();
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 do
                                                                                 {
                                                                                    this.mChapterTween0 = §5+§.§^Z§.§=!a§(§`-§.getItemByName("MovieClip_StartPlaying").mClip,{
                                                                                       "scaleX":1,
                                                                                       "scaleY":1
                                                                                    },null,0.5,§5+§.§>!u§);
                                                                                    while(_loc7_ || param2)
                                                                                    {
                                                                                       if(!(_loc8_ && param1))
                                                                                       {
                                                                                          §§push(this.mChapterTween0);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                       §§goto(addr183);
                                                                                    }
                                                                                    §§goto(addr160);
                                                                                 }
                                                                                 while(false);
                                                                                 
                                                                                 break loop8;
                                                                                 addr76:
                                                                              }
                                                                              §§goto(addr196);
                                                                           }
                                                                           break loop8;
                                                                        }
                                                                        §§goto(addr139);
                                                                     }
                                                                     addr121:
                                                                  }
                                                                  §§goto(addr76);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr166);
                                                               }
                                                            }
                                                            §§goto(addr166);
                                                      }
                                                      return;
                                                      §§push(4);
                                                   }
                                                }
                                                §§goto(addr361);
                                                §§goto(addr361);
                                             }
                                          }
                                          §§goto(addr352);
                                       }
                                    }
                                    §§goto(addr338);
                                 }
                                 §§goto(addr352);
                              }
                              §§goto(addr361);
                           }
                           §§goto(addr295);
                        }
                        §§goto(addr287);
                     }
                     §§goto(addr303);
                  }
               }
            }
            §§goto(addr220);
         }
         §§goto(addr37);
      }
   }
}
