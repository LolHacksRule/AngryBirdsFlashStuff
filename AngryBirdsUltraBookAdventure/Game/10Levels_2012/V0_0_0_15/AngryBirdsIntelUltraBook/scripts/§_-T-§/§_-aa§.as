package §_-T-§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-0Ea§.§_-AY§;
   import §_-4g§.§_-pX§;
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-0C5§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-ad§.StateCutScene;
   import §_-ad§.§_-7A§;
   import §_-ad§.§_-UO§;
   import §_-hX§.§_-Gc§;
   import §_-qO§.§ in§;
   import §_-wA§.§_-IO§;
   import §_-x8§.§_-nG§;
   import com.angrybirds.friendsbar.§_-ri§;
   
   public class §_-aa§ extends §_-nG§
   {
      
      public static var §_-yr§:String = "";
      
      public static const §_-pk§:String = "ChapterSelectionState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-yr§ = "";
         }
         do
         {
            §_-pk§ = "ChapterSelectionState";
         }
         while(_loc1_ && _loc2_);
         
      }
      
      private var mChapterTween0:§_-dd§ = null;
      
      private var mChapterTween1:§_-dd§ = null;
      
      private var mChapterTween2:§_-dd§ = null;
      
      private var §_-DS§:§_-dd§ = null;
      
      private var §_-0F-§:§_-dd§ = null;
      
      private var §_-n2§:§_-Gc§;
      
      private var §_-XP§:§_-IO§;
      
      public function §_-aa§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
            do
            {
               §_-s0§ = new §_-5q§(this);
               do
               {
                  §_-s0§.init(§_-vB§.§_-ky§.Views.View_ChapterFacebookSelection[0]);
                  do
                  {
                     this.§_-XP§ = new §_-IO§(§_-s0§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
                  }
                  while(!(_loc2_ || _loc2_));
                  
               }
               while(!_loc2_);
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§ in§.§_-HY§);
               loop1:
               while(true)
               {
                  (§§pop() as §_-rG§).§_-0C7§.§_-LA§ = false;
                  addr160:
                  loop2:
                  while(true)
                  {
                     §§push(§ in§.§_-HY§);
                     if(!(_loc3_ || _loc2_))
                     {
                        continue loop1;
                     }
                     (§§pop() as §_-rG§).§_-Cw§("");
                     loop3:
                     while(true)
                     {
                        §§push(§_-AY§.§_-un§);
                        if(_loc3_ || this)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(§_-AY§.§_-un§);
                                 addr128:
                                 while(true)
                                 {
                                    §§pop().start();
                                    addr129:
                                    while(true)
                                    {
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          continue loop2;
                                       }
                                       addr136:
                                    }
                                 }
                                 addr75:
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 var _loc1_:int = 0;
                                 addr228:
                                 if(_loc1_ > 3)
                                 {
                                    addr232:
                                    §_-s0§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §_-s0§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
                                       addr208:
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          if(!_loc2_)
                                          {
                                             (§ in§.§_-HY§ as §_-rG§).§_-KA§(§_-ri§.§_-f0§);
                                             addr186:
                                             if(_loc3_ || _loc2_)
                                             {
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   this.§_-XP§.start();
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr186);
                                                   }
                                                   return;
                                                }
                                                §§goto(addr232);
                                             }
                                             §§goto(addr208);
                                          }
                                          _loc1_++;
                                          addr248:
                                          §§goto(addr228);
                                          addr254:
                                       }
                                       §§goto(addr232);
                                    }
                                    §§goto(addr248);
                                 }
                                 this.§_-lA§(_loc1_);
                                 §§goto(addr254);
                                 addr82:
                              }
                           }
                           while(true)
                           {
                              §§push(§ in§.§_-Dc§);
                              loop6:
                              while(true)
                              {
                                 §§pop().§_-Vf§(false);
                                 while(true)
                                 {
                                    §§push(§ in§.§_-Dc§);
                                    if(!_loc2_)
                                    {
                                       §§pop().clearLevel();
                                       do
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                       while(!_loc3_);
                                       
                                       §_-pX§.playSound("Intel_StartPlay",§_-pX§.§_-02H§,0,-1,this.§_-eq§);
                                       addr68:
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop6;
                                 }
                                 §§goto(addr75);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr82);
                        }
                        §§goto(addr128);
                     }
                  }
               }
            }
         }
         §§goto(addr160);
      }
      
      private function §_-eq§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(§_-rE§)
            {
               if(_loc1_)
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §_-yr§ == "";
         }
         while(true)
         {
            super.deActivate();
            loop1:
            while(true)
            {
               this.§_-XP§.stop();
               loop2:
               while(true)
               {
                  this.§_-8V§();
                  loop3:
                  while(true)
                  {
                     §_-s0§.getItemByName("MovieClip_StartPlaying").mClip.scaleX = 1;
                     while(true)
                     {
                        §_-s0§.getItemByName("MovieClip_StartPlaying").mClip.scaleY = 1;
                        while(_loc2_)
                        {
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                           §_-UO§.§_-yr§ = §_-pk§;
                           if(!(_loc1_ && this))
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            if(_loc1_ && _loc2_)
            {
               continue;
            }
            §§goto(addr88);
         }
      }
      
      private function §_-8V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
                     addr162:
                     while(true)
                     {
                        §§pop().stop();
                        addr163:
                        while(true)
                        {
                           this.mChapterTween0 = null;
                           addr153:
                           while(true)
                           {
                           }
                        }
                     }
                     addr141:
                     loop2:
                     while(true)
                     {
                        if(!(_loc2_ || _loc2_))
                        {
                           continue loop0;
                        }
                        this.mChapterTween1 = null;
                        while(!(_loc1_ && _loc1_))
                        {
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
                                       addr98:
                                       while(true)
                                       {
                                          §§pop().stop();
                                          addr99:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop2;
                                             }
                                             this.mChapterTween2 = null;
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                    }
                                    addr96:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§_-DS§);
                                    if(!_loc1_)
                                    {
                                       if(§§pop() != null)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§_-DS§);
                                             addr65:
                                             while(true)
                                             {
                                                §§pop().stop();
                                                while(true)
                                                {
                                                   if(_loc1_ && _loc2_)
                                                   {
                                                      break loop2;
                                                   }
                                                   this.§_-DS§ = null;
                                                   if(!(_loc1_ && this))
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr65);
                                    §§goto(addr88);
                                 }
                                 return;
                              }
                              §§goto(addr98);
                           }
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr163);
                  }
               }
               while(true)
               {
                  §§push(this.mChapterTween1);
                  if(!(_loc1_ && this))
                  {
                     if(§§pop() != null)
                     {
                        if(!_loc1_)
                        {
                           addr140:
                           this.mChapterTween1.stop();
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr140);
                  §§goto(addr153);
               }
            }
            §§goto(addr162);
         }
         §§goto(addr163);
      }
      
      private function §_-lA§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-0C5§ = LevelManager.§_-h8§(param1);
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ != null)
            {
               while(true)
               {
                  §_-s0§.setText(AngryBirdsFP11.sUserProgress.§_-Zh§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§_-C§(_loc2_),"Textfield_CollectedStars" + param1);
                  while(_loc3_ || _loc3_)
                  {
                     §_-s0§.setText(AngryBirdsFP11.sUserProgress.§_-80§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§_-q4§(_loc2_),"Textfield_ME_Score" + param1);
                     if(!_loc3_)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        return;
                        addr64:
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr64);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || param1)
         {
            this.§_-XP§.run(param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  if(§§pop() == §_-nG§.STATE_STATUS_RUNNING)
                  {
                     while(mNextState.length > 0)
                     {
                        if(!_loc3_)
                        {
                           if(_loc4_ || this)
                           {
                              return §_-nG§.STATE_STATUS_COMPLETED;
                           }
                           addr97:
                           addr97:
                           §§push(_loc2_);
                           break loop0;
                        }
                        if(_loc4_ || param1)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     return §_-nG§.STATE_STATUS_RUNNING;
                  }
                  §§goto(addr97);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr97);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
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
               if(_loc8_ || param2)
               {
                  addr43:
                  _loc5_ = int(param2.substr("EASTER_EGG_".length));
                  if(!_loc7_)
                  {
                     §§push(LevelManager);
                     §§push("1000-");
                     if(!(_loc7_ && this))
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§_-s8§(§§pop());
                  }
               }
               while(true)
               {
                  mNextState = StateCutScene.§_-pk§;
                  addr239:
                  while(_loc8_)
                  {
                  }
               }
            }
            while(true)
            {
               super.uiInteractionHandler(param1,param2,param3);
               if(_loc8_)
               {
                  break;
               }
               §§goto(addr239);
            }
            var _loc6_:* = param2;
            if(!_loc7_)
            {
               §§push("showCredits");
               if(_loc8_ || param3)
               {
                  §§push(_loc6_);
                  if(_loc8_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc8_)
                        {
                           §§push(0);
                           if(!_loc8_)
                           {
                              addr302:
                           }
                        }
                        else
                        {
                           addr339:
                           §§push(3);
                           if(_loc7_ && param1)
                           {
                           }
                        }
                        §§goto(addr352);
                     }
                     else
                     {
                        §§push("CHAPTER0");
                        if(_loc8_)
                        {
                           §§push(_loc6_);
                           if(_loc8_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc8_ || this)
                                 {
                                    §§push(1);
                                    if(_loc8_ || param3)
                                    {
                                       §§goto(addr302);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr339);
                                 }
                                 §§goto(addr352);
                              }
                              else
                              {
                                 §§push("CHAPTER0OVER");
                                 if(_loc8_)
                                 {
                                    addr306:
                                    §§push(_loc6_);
                                    if(_loc7_ && param1)
                                    {
                                    }
                                    §§goto(addr338);
                                 }
                                 addr337:
                                 addr338:
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr339);
                                 }
                                 else
                                 {
                                    §§push(4);
                                 }
                                 addr352:
                                 loop14:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       mNextState = §_-7A§.§_-pk§;
                                       break;
                                       addr224:
                                    case 1:
                                       §_-pX§.playSound("Menu_Confirm");
                                       LevelManager.§_-07s§ = 0;
                                       mNextState = §_-UO§.§_-pk§;
                                       addr204:
                                       break;
                                       addr204:
                                       addr216:
                                       addr209:
                                    case 2:
                                       §§push(this.mChapterTween0);
                                       loop3:
                                       while(true)
                                       {
                                          §§push(null);
                                          addr194:
                                          while(true)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(this.mChapterTween0);
                                                   addr197:
                                                   while(true)
                                                   {
                                                      §§pop().stop();
                                                      addr198:
                                                      while(true)
                                                      {
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                }
                                                addr195:
                                             }
                                             while(true)
                                             {
                                                this.mChapterTween0 = §_-cx§.§_-3S§.§_-Wf§(§_-s0§.getItemByName("MovieClip_StartPlaying").mClip,{
                                                   "scaleX":1.2,
                                                   "scaleY":1.2
                                                },null,0.2);
                                                if(_loc8_)
                                                {
                                                   if(_loc8_ || this)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         §§push(this.mChapterTween0);
                                                         continue loop3;
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   §§goto(addr204);
                                                }
                                                break loop14;
                                             }
                                          }
                                       }
                                       break;
                                    case 3:
                                       §§push(this.mChapterTween0);
                                       if(!_loc7_)
                                       {
                                          §§push(null);
                                          if(_loc8_ || param1)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                loop4:
                                                while(!(_loc7_ && param3))
                                                {
                                                   if(_loc8_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         §§push(this.mChapterTween0);
                                                         loop11:
                                                         while(_loc8_ || param2)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               §§pop().stop();
                                                               if(_loc8_)
                                                               {
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     do
                                                                     {
                                                                        this.mChapterTween0 = §_-cx§.§_-3S§.§_-Wf§(§_-s0§.getItemByName("MovieClip_StartPlaying").mClip,{
                                                                           "scaleX":1,
                                                                           "scaleY":1
                                                                        },null,0.5,§_-cx§.§_-Kl§);
                                                                        while(true)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              §§push(this.mChapterTween0);
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§pop().play();
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    break loop14;
                                                                                 }
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           §§goto(addr195);
                                                                        }
                                                                     }
                                                                     while(false);
                                                                     
                                                                     break loop14;
                                                                     addr59:
                                                                  }
                                                                  §§goto(addr224);
                                                               }
                                                               break loop14;
                                                            }
                                                            §§goto(addr197);
                                                         }
                                                         §§goto(addr140);
                                                         addr117:
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                   §§goto(addr198);
                                                }
                                                §§goto(addr148);
                                             }
                                             §§goto(addr59);
                                          }
                                          §§goto(addr194);
                                       }
                                       §§goto(addr117);
                                 }
                                 return;
                                 §§push(_loc6_);
                              }
                              §§goto(addr339);
                           }
                           if(§§pop() === §§pop())
                           {
                              if(_loc8_ || param3)
                              {
                                 addr332:
                                 §§push(2);
                                 if(!_loc8_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr339);
                              }
                              §§goto(addr352);
                           }
                           else
                           {
                              §§goto(addr337);
                              §§push("CHAPTER0OUT");
                           }
                           §§goto(addr339);
                        }
                        §§goto(addr306);
                     }
                  }
                  §§goto(addr306);
               }
               §§goto(addr337);
            }
            §§goto(addr332);
         }
         §§goto(addr43);
      }
   }
}
