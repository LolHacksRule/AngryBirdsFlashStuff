package §[!$§
{
   import § 3§.FacebookUserProgress;
   import §!!0§.SoundEngine;
   import §0!Q§.UIEventListenerRovio;
   import §5=§.§9F§;
   import §6a§.UIContainerRovio;
   import §6a§.UIRepeaterRovio;
   import §6a§.UITextFieldRovio;
   import §7t§.StateChapterSelection;
   import §7t§.StateCreditsNew;
   import §7t§.StateCutScene;
   import §7t§.StateLevelSelection;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.ChapterModel;
   import §>!_§.LevelManager;
   import §?!Y§.§`S§;
   import §]B§.BackGroundAnimator;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class StateFacebookLevelSelection extends StateLevelSelection
   {
      
      public static var sForceGoToPage:int = -1;
      
      {
         var sForceGoToPage:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && sForceGoToPage))
         {
            do
            {
               sForceGoToPage = -1;
            }
            while(_loc2_ && StateFacebookLevelSelection);
            
         }
      }
      
      private var §9$§:Boolean = false;
      
      private var §,!1§:Number = 41.666666666666664;
      
      private var §4c§:int = 0;
      
      private var §,4§:BackGroundAnimator;
      
      public function StateFacebookLevelSelection(initState:Boolean = false, name:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_ || name)
         {
            loop0:
            do
            {
               while(true)
               {
                  while(!(_loc3_ && _loc3_))
                  {
                     super(initState,name);
                     while(!_loc4_)
                     {
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc4_ || initState));
            
         }
      }
      
      override public function init() : void
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
               super.init();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §`=§.getItemByName("Button_Fullscreen").setVisibility(false);
                     loop3:
                     while(_loc1_)
                     {
                        while(true)
                        {
                           if(_loc1_)
                           {
                              if(_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      override protected function initView() : void
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
               §`=§ = new §`X§(this);
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §`=§.init(§+q§.§%M§.Views.View_LevelSelection[0]);
                     addr152:
                     while(true)
                     {
                        continue loop0;
                     }
                     addr99:
                     if(!(_loc2_ && this))
                     {
                        §@@§ = §`=§.getItemByName("Container_LevelSelection") as UIContainerRovio;
                        loop7:
                        while(!_loc2_)
                        {
                           loop8:
                           while(true)
                           {
                              this.§,4§ = new BackGroundAnimator(§`=§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
                              while(true)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    addr92:
                                    addr92:
                                    while(!(_loc2_ && this))
                                    {
                                       §§goto(addr99);
                                    }
                                    continue loop0;
                                 }
                                 continue loop8;
                              }
                              continue loop7;
                           }
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr53:
                  while(true)
                  {
                     addr39:
                     while(true)
                     {
                        super.activate();
                        continue loop0;
                     }
                  }
                  addr30:
                  if(_loc3_ && cName)
                  {
                     continue;
                  }
                  while(false)
                  {
                     §§goto(addr39);
                  }
                  var episode:ChapterModel = LevelManager.§!]§();
                  if(_loc4_)
                  {
                     loop6:
                     while(true)
                     {
                        if(episode == null)
                        {
                           if(_loc3_)
                           {
                           }
                        }
                        else
                        {
                           loop7:
                           while(true)
                           {
                              §`=§.visible = true;
                              while(true)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(§`S§.§=F§);
                                    while(true)
                                    {
                                       (§§pop() as AngryBirdsUltraBook).§^!c§.§8!k§ = false;
                                       addr212:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(§`S§.§=F§);
                                             loop13:
                                             while(true)
                                             {
                                                (§§pop() as AngryBirdsUltraBook).§,!@§("");
                                                addr198:
                                                while(true)
                                                {
                                                   addr185:
                                                   while(_loc4_)
                                                   {
                                                      continue loop13;
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         continue loop6;
                                                      }
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                             addr161:
                                             while(!(_loc3_ && _loc3_))
                                             {
                                                continue loop9;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr182);
               }
            }
         }
         §§goto(addr37);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            while(true)
            {
               this.§,4§.stop();
               addr92:
               while(true)
               {
               }
               addr76:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               addr83:
               if(_loc2_)
               {
                  addr52:
                  if(!(_loc2_ || _loc2_))
                  {
                     while(true)
                     {
                        super.deActivate();
                        addr74:
                        while(_loc2_)
                        {
                           §§goto(addr76);
                           §§goto(addr83);
                        }
                        §§goto(addr92);
                        §§goto(addr52);
                     }
                     addr86:
                  }
                  return;
               }
               §§goto(addr74);
            }
         }
         §§goto(addr86);
      }
      
      protected function §0p§(tmc:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || tmc)
         {
         }
         if(_loc3_ && tFrame)
         {
         }
         while(true)
         {
            while(true)
            {
               while(!(_loc4_ || this))
               {
               }
               if(_loc3_ && tmc)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var tFrame:int = tmc.currentFrame + 1;
               if(!(_loc3_ && tFrame))
               {
                  loop3:
                  while(true)
                  {
                     §§push(tFrame);
                     loop4:
                     while(true)
                     {
                        if(§§pop() < tmc.totalFrames)
                        {
                           loop9:
                           while(true)
                           {
                              tmc.gotoAndStop(tFrame);
                              addr100:
                              loop10:
                              for(; _loc4_ || this; while(_loc3_ && _loc3_)
                              {
                                 continue loop10;
                              },return)
                              {
                                 if(_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       continue;
                                    }
                                    addr147:
                                    while(true)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       break loop10;
                                    }
                                    addr141:
                                 }
                              }
                              while(!_loc3_)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop9;
                                 }
                                 continue loop3;
                                 §§goto(addr100);
                              }
                              continue loop4;
                           }
                        }
                        §§goto(addr147);
                     }
                  }
               }
               §§goto(addr121);
            }
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && deltaTime))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(!this.§9$§)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(this.§,4§.run(deltaTime));
                        loop7:
                        while(!_loc3_)
                        {
                           §§pop();
                           loop8:
                           while(!(_loc3_ && _loc2_))
                           {
                              if(!_loc3_)
                              {
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 if(!(_loc3_ && this))
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             addr64:
                                             if(!(_loc3_ && deltaTime))
                                             {
                                                §§push(super.run(deltaTime));
                                                if(_loc2_ || deltaTime)
                                                {
                                                   return §§pop();
                                                }
                                                continue loop7;
                                             }
                                             addr211:
                                             while(true)
                                             {
                                                §§goto(addr64);
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§4c§ += deltaTime;
                                             continue loop0;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§4c§ = 0;
                                          }
                                          addr117:
                                       }
                                    }
                                    while(true)
                                    {
                                    }
                                 }
                                 loop14:
                                 while(true)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       continue loop6;
                                    }
                                    addr144:
                                    addr171:
                                    while(!(_loc3_ && deltaTime))
                                    {
                                       if(_loc3_ && deltaTime)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr117);
                                       continue loop14;
                                    }
                                    while(!_loc3_)
                                    {
                                       this.§0p§(§`=§.getItemByName("MovieClip_LeftCorner").mClip);
                                       §§goto(addr127);
                                    }
                                    addr127:
                                    while(true)
                                    {
                                       this.§0p§(§`=§.getItemByName("MovieClip_RightCorner").mClip);
                                       break loop8;
                                    }
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           loop9:
                           while(true)
                           {
                              if(_loc2_ || this)
                              {
                                 §§goto(addr144);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop9;
                                 }
                                 addr170:
                              }
                           }
                        }
                        addr167:
                        while(§§pop() >= this.§,!1§)
                        {
                           §§goto(addr170);
                        }
                     }
                  }
                  §§goto(addr211);
               }
            }
         }
         while(true)
         {
            §§goto(addr167);
         }
      }
      
      override public function initLevelsRepeater() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var levels:Array = null;
         if(_loc6_ || i)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  addr38:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              if(_loc6_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr38);
         }
         var offsetX:Number = 0;
         if(_loc6_)
         {
            loop5:
            while(true)
            {
               §1!I§ = [];
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     §4h§ = [];
                     loop8:
                     while(!_loc5_)
                     {
                        while(true)
                        {
                           §=&§ = LevelManager.§7Z§(LevelManager.§]!U§).§0N§;
                           continue loop7;
                           addr66:
                           if(_loc5_ && offsetX)
                           {
                              continue;
                           }
                           if(false)
                           {
                              loop17:
                              while(true)
                              {
                                 trace("We are at page: " + §=&§);
                                 addr83:
                                 loop18:
                                 while(!(_loc5_ && offsetX))
                                 {
                                    if(_loc5_)
                                    {
                                       continue;
                                    }
                                    if(_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          while(!_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop6;
                                             }
                                             while(true)
                                             {
                                                §]Y§ = §=&§;
                                                addr99:
                                                while(true)
                                                {
                                                   if(!(_loc5_ && offsetX))
                                                   {
                                                      break loop18;
                                                   }
                                                   break;
                                                }
                                             }
                                          }
                                          while(!_loc5_)
                                          {
                                             while(true)
                                             {
                                                §2R§ = §=&§;
                                                §§goto(addr115);
                                             }
                                          }
                                          addr115:
                                          continue loop8;
                                          addr122:
                                       }
                                       if(_loc5_)
                                       {
                                          break loop17;
                                       }
                                       §§goto(addr66);
                                    }
                                    §§goto(addr99);
                                 }
                                 while(true)
                                 {
                                    continue loop17;
                                    §§goto(addr83);
                                 }
                              }
                              continue loop7;
                           }
                           var chapter:ChapterModel = LevelManager.§7Z§(LevelManager.§]!U§);
                           if(_loc5_ && chapter)
                           {
                           }
                           var i:* = Number(0);
                           addr304:
                           if(i < chapter.pageIndexes.length)
                           {
                              if(_loc6_)
                              {
                                 if(_loc6_)
                                 {
                                    levels = chapter.§2!<§(chapter.pageIndexes[i]);
                                    if(!_loc6_)
                                    {
                                    }
                                    §1!I§.push(chapter.§]!>§(i));
                                    §4h§.push(chapter.§-f§(i));
                                    addr287:
                                    addr303:
                                    addr292:
                                    if(_loc6_)
                                    {
                                       addr274:
                                       if(!_loc5_)
                                       {
                                          if(!_loc5_)
                                          {
                                             addr270:
                                             offsetX = this.addLevelPage(levels,i,offsetX,chapter);
                                             addr243:
                                             addr269:
                                             if(!_loc5_)
                                             {
                                                if(!(_loc5_ && chapter))
                                                {
                                                   if(!(_loc5_ && offsetX))
                                                   {
                                                      §§push(i);
                                                      if(!(_loc5_ && offsetX))
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(_loc6_ || chapter)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr231:
                                                               §§push(Number(§§pop()));
                                                               if(!_loc5_)
                                                               {
                                                                  i = §§pop();
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr243);
                                                                     }
                                                                     §§goto(addr304);
                                                                  }
                                                                  §§goto(addr243);
                                                               }
                                                               §§goto(addr270);
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                      }
                                                      §§goto(addr231);
                                                   }
                                                   §§goto(addr287);
                                                }
                                                §§goto(addr274);
                                             }
                                             addr271:
                                             §§goto(addr271);
                                          }
                                          §§goto(addr303);
                                       }
                                       §§goto(addr292);
                                    }
                                    addr301:
                                    §§goto(addr301);
                                 }
                                 addr400:
                                 if(sPreviousState == StateCutScene.STATE_NAME)
                                 {
                                    addr394:
                                    if(!_loc5_)
                                    {
                                       sPreviousState = "";
                                       §'z§(§]Y§);
                                       addr361:
                                       if(_loc5_ && i)
                                       {
                                          §§goto(addr394);
                                       }
                                       addr320:
                                       return;
                                       addr381:
                                       addr386:
                                    }
                                    §§goto(addr400);
                                 }
                                 §'z§(§=&§,true);
                                 addr348:
                                 if(_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc6_)
                                       {
                                          if(_loc6_)
                                          {
                                             if(_loc6_ || chapter)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr394);
                                                }
                                                §§goto(addr320);
                                             }
                                             §§goto(addr381);
                                          }
                                          §§goto(addr348);
                                          addr354:
                                       }
                                       §§goto(addr400);
                                       addr404:
                                    }
                                    §§goto(addr386);
                                 }
                                 §§goto(addr361);
                              }
                              §§goto(addr394);
                           }
                           if(_loc6_ || offsetX)
                           {
                              if(_loc6_)
                              {
                                 §]d§();
                                 §§goto(addr404);
                              }
                              §§goto(addr354);
                           }
                           §§goto(addr394);
                        }
                     }
                     continue loop5;
                  }
               }
            }
         }
         §§goto(addr124);
      }
      
      override protected function addLevelPage(levels:Array, pageNum:int, offsetX:Number, chapter:ChapterModel) : Number
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         if(!_loc15_)
         {
         }
         var repeaterXML:XML = null;
         var key:String = null;
         var isOpen:Boolean = false;
         var clip:MovieClip = null;
         var but:XML = null;
         if(!(_loc16_ && pageNum))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop4:
                     while(_loc15_ || offsetX)
                     {
                        while(true)
                        {
                           if(!(_loc15_ || offsetX))
                           {
                              continue loop4;
                           }
                           if(!_loc16_)
                           {
                              continue loop1;
                           }
                           addr111:
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               while(!(_loc16_ && levels))
               {
                  §§goto(addr52);
               }
            }
         }
         §§goto(addr111);
      }
      
      override protected function makeButtonForLevel(level:String, isOpen:Boolean, buttonClass:Class, index:int, pageNum:int) : MovieClip
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || level)
         {
         }
         var crown:MovieClip = null;
         if(_loc9_ || isOpen)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     for(; _loc9_; loop5:
                     for(; !(_loc10_ && buttonClass); while(!(_loc10_ && this))
                     {
                        if(!_loc9_)
                        {
                           continue loop2;
                        }
                        if(!_loc9_)
                        {
                           continue;
                        }
                        if(_loc9_)
                        {
                           if(!_loc9_)
                           {
                              continue loop0;
                           }
                           while(false)
                           {
                              §§goto(addr46);
                           }
                           var clip:MovieClip = super.makeButtonForLevel(level,isOpen,buttonClass,index,pageNum);
                           if(_loc10_)
                           {
                           }
                           §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).§"8§(level));
                           if(_loc9_)
                           {
                              §§push(int(§§pop()));
                           }
                           var userRankForLevel:* = §§pop();
                           if(!(_loc10_ && isOpen))
                           {
                              if(_loc9_)
                              {
                                 §§push(userRankForLevel);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop10:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc9_ || this)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             §§pop();
                                             if(_loc10_)
                                             {
                                                break;
                                                addr122:
                                             }
                                             while(true)
                                             {
                                                §§push(userRankForLevel);
                                                if(_loc10_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() <= 3);
                                                if(!(_loc10_ && this))
                                                {
                                                   continue loop11;
                                                }
                                                addr153:
                                                if(!(_loc9_ || this))
                                                {
                                                   continue loop10;
                                                }
                                             }
                                             continue loop9;
                                          }
                                          §§goto(addr315);
                                       }
                                       while(§§pop())
                                       {
                                          if(_loc9_ || isOpen)
                                          {
                                             if(_loc9_)
                                             {
                                                if(!_loc10_)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr122);
                                                   }
                                                   else
                                                   {
                                                      crown = new AssetCache.§%p§("LevelSelectionCrown")();
                                                      if(_loc9_ || this)
                                                      {
                                                         crown.gotoAndStop(userRankForLevel);
                                                         crown.x = -78;
                                                         addr289:
                                                         addr291:
                                                         if(!_loc10_)
                                                         {
                                                            addr261:
                                                            if(!_loc10_)
                                                            {
                                                               crown.y = -102;
                                                               addr256:
                                                               if(!_loc10_)
                                                               {
                                                                  addr244:
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     addr222:
                                                                     clip.addChild(crown);
                                                                     if(_loc9_ || buttonClass)
                                                                     {
                                                                        if(_loc9_ || buttonClass)
                                                                        {
                                                                           if(!(_loc10_ && level))
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr222);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr256);
                                                                           }
                                                                           §§goto(addr222);
                                                                           addr241:
                                                                        }
                                                                        §§goto(addr289);
                                                                     }
                                                                     §§goto(addr244);
                                                                  }
                                                                  §§goto(addr261);
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                            §§goto(addr289);
                                                         }
                                                         addr273:
                                                         §§goto(addr273);
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr315);
                                       }
                                       clip.TextField_LevelNum.text.text = index + 1 + pageNum * LevelManager.§6X§(level).levelsPerPage;
                                       if(!(_loc10_ && buttonClass))
                                       {
                                          §§goto(addr314);
                                       }
                                    }
                                 }
                                 addr193:
                              }
                              addr315:
                              return clip;
                           }
                           §§goto(addr193);
                        }
                        else
                        {
                           §§goto(addr70);
                        }
                     })
                     {
                        while(true)
                        {
                           continue loop5;
                        }
                        §§goto(addr70);
                     })
                     {
                        while(true)
                        {
                           addr58:
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_)
         {
         }
         var ultrabookURL:String = null;
         var urlReq:URLRequest = null;
         if(!_loc8_)
         {
            while(true)
            {
               addr184:
               while(true)
               {
               }
            }
            addr186:
         }
         loop2:
         while(true)
         {
            while(true)
            {
               if(_loc7_ || component)
               {
                  if(!_loc7_)
                  {
                     break;
                  }
                  continue;
               }
               continue loop2;
            }
            §§goto(addr184);
         }
         §§push(eventName);
         loop4:
         while(true)
         {
            var _loc6_:* = §§pop();
            if(_loc7_ || this)
            {
               §§push("BACK");
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
                              addr326:
                              §§push(0);
                              if(!(_loc7_ || component))
                              {
                                 addr365:
                              }
                           }
                           else
                           {
                              addr362:
                              §§push(1);
                              if(_loc7_)
                              {
                                 §§goto(addr365);
                              }
                           }
                        }
                        else
                        {
                           §§push("FRIENDS_BUTTON");
                           if(_loc7_)
                           {
                              if(_loc7_ || component)
                              {
                                 addr346:
                                 §§push(_loc6_);
                                 if(!(_loc8_ && eventIndex))
                                 {
                                    addr354:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc8_ && eventName))
                                       {
                                          §§goto(addr362);
                                       }
                                       addr405:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             loop10:
                                             while(true)
                                             {
                                                SoundEngine.§-!h§("Menu_Back");
                                                addr142:
                                                while(true)
                                                {
                                                   addr135:
                                                   while(true)
                                                   {
                                                      StateFacebookEpisodeSelection.sPreviousState = STATE_NAME;
                                                      continue loop10;
                                                   }
                                                }
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                mNextState = StateChapterSelection.STATE_NAME;
                                                addr120:
                                                while(true)
                                                {
                                                   continue loop11;
                                                }
                                             }
                                             break loop4;
                                          case 1:
                                             continue;
                                          case 2:
                                             loop5:
                                             for(; !(_loc8_ && this); if(!(_loc7_ || component))
                                             {
                                                continue;
                                             },§§goto(addr221))
                                             {
                                                mNextState = StateCreditsNew.STATE_NAME;
                                                loop6:
                                                while(_loc7_)
                                                {
                                                   while(!_loc8_)
                                                   {
                                                      continue loop5;
                                                      loop9:
                                                      while(!(_loc8_ && this))
                                                      {
                                                         if(_loc8_ && eventIndex)
                                                         {
                                                            break loop6;
                                                            addr283:
                                                         }
                                                         if(!(_loc7_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                            if(true)
                                                            {
                                                               break loop4;
                                                            }
                                                            while(true)
                                                            {
                                                               trace("Really going to credits screen");
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                       }
                                    }
                                    else
                                    {
                                       §§push("showCredits");
                                       if(_loc7_ || eventIndex)
                                       {
                                          addr385:
                                          if(§§pop() === _loc6_)
                                          {
                                             if(!_loc8_)
                                             {
                                                §§push(2);
                                                if(!_loc7_)
                                                {
                                                   addr403:
                                                }
                                             }
                                          }
                                          else if(true)
                                          {
                                             §§goto(addr405);
                                             §§push(3);
                                          }
                                          §§goto(addr405);
                                       }
                                       §§goto(addr385);
                                    }
                                    §§push(3);
                                    if(_loc7_ || eventIndex)
                                    {
                                       §§goto(addr403);
                                    }
                                    §§goto(addr405);
                                 }
                              }
                              §§goto(addr385);
                           }
                           §§goto(addr346);
                        }
                        §§goto(addr405);
                     }
                     §§goto(addr354);
                  }
                  §§goto(addr346);
               }
               §§goto(addr385);
            }
            §§goto(addr326);
         }
      }
      
      override protected function updatePageNumber(index:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            while(true)
            {
               while(!(_loc2_ && this))
               {
                  (§`=§.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).§,![§.text = (index + 1).toString();
                  while(!_loc3_)
                  {
                  }
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  return;
                  addr69:
               }
            }
         }
         §§goto(addr69);
      }
   }
}
