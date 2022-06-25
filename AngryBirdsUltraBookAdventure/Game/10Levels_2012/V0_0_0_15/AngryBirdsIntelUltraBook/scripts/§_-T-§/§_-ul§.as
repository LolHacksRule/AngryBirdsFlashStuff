package §_-T-§
{
   import §_-0A-§.§_-08e§;
   import §_-0Ar§.§_-0F0§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-k6§;
   import §_-7§.§_-Ce§;
   import §_-7§.§_-EJ§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-wU§;
   import §_-Y8§.§_-05J§;
   import §_-Yl§.§_-vB§;
   import §_-ad§.§_-08x§;
   import §_-eS§.§_-OY§;
   import §_-mh§.§_-09d§;
   import §_-qO§.§ in§;
   import §_-ry§.UserProgressEvent;
   import com.angrybirds.friendsbar.§_-ri§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-ul§ extends §_-08x§
   {
       
      
      private var §_-tp§:§_-Ce§;
      
      private var §_-j-§:String;
      
      private var §_-gd§:String;
      
      protected var §_-Dl§:Boolean = false;
      
      private var §_-Py§:Boolean = false;
      
      public function §_-ul§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
         }
         do
         {
            §_-s0§.getItemByName("Button_Fullscreen").setVisibility(false);
         }
         while(_loc1_ && _loc1_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               (§ in§.§_-HY§ as §_-rG§).§_-KA§(§_-ri§.§_-02b§);
               while(true)
               {
                  § in§.§_-Dc§.background.§_-Ye§();
                  loop2:
                  for(; !(_loc1_ && _loc2_); while(true)
                  {
                     if(_loc1_ && _loc2_)
                     {
                        continue loop2;
                     }
                     §§goto(addr20);
                  })
                  {
                     if(LevelManager.§_-1a§().name != "1000")
                     {
                        while(this.§_-Dl§)
                        {
                           if(!(_loc2_ || _loc2_))
                           {
                              continue loop2;
                           }
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           if(_loc2_ || _loc1_)
                           {
                              while(true)
                              {
                                 this.§_-Vu§();
                                 continue loop2;
                              }
                              addr54:
                           }
                        }
                        addr20:
                        return;
                        addr24:
                     }
                     while(true)
                     {
                        §_-s0§.getItemByName("Button_NextLevel").setVisibility(false);
                        continue loop0;
                        §§goto(addr37);
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-s0§.getItemByName("Button_Share_Default").setVisibility(false);
            while(true)
            {
               §_-s0§.getItemByName("Button_Share_Crown").setVisibility(false);
               loop2:
               while(_loc1_ || this)
               {
                  this.§_-Py§ = false;
                  do
                  {
                     super.deActivate();
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  if(_loc1_ || _loc2_)
                  {
                     addr50:
                     if(!(_loc1_ || _loc2_))
                     {
                        while(true)
                        {
                           §_-s0§.getItemByName("Button_Share_Stars").setVisibility(false);
                           continue loop2;
                           §§goto(addr50);
                        }
                        addr93:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      protected function §_-Vu§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-s0§.getItemByName("Button_Share_Default").setVisibility(false);
            while(true)
            {
               §_-s0§.getItemByName("Button_Share_Crown").setVisibility(false);
               §§goto(addr80);
            }
         }
         addr80:
         while(true)
         {
            §_-s0§.getItemByName("Button_Share_Stars").setVisibility(false);
            do
            {
               §_-s0§.getItemByName("Button_Embed").setVisibility(false);
            }
            while(!_loc2_);
            
            if(!(_loc1_ && this))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_ || _loc2_)
         {
            super.onBadgeLanded();
         }
         §§push((AngryBirdsFP11.sUserProgress as §_-09d§).§_-06N§(LevelManager.§_-HM§));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §_-09d§).getEagleScoreForLevel(LevelManager.§_-HM§);
         if(!_loc6_)
         {
            §§push(this.§_-Dl§);
            if(!_loc6_)
            {
               if(§§pop())
               {
                  this.§_-Vu§();
                  if(!_loc6_)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           if(!_loc5_)
                           {
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    this.§_-gd§ = "stars";
                                    while(true)
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          if(_loc5_ || this)
                                          {
                                             §_-s0§.getItemByName("Button_Share_Default").setVisibility(false);
                                             loop2:
                                             while(true)
                                             {
                                                §_-s0§.getItemByName("Button_Share_Crown").setVisibility(false);
                                                addr269:
                                                while(true)
                                                {
                                                   §_-s0§.getItemByName("Button_Share_Stars").setVisibility(true);
                                                   continue loop2;
                                                }
                                             }
                                          }
                                          §§goto(addr431);
                                       }
                                       §§goto(addr373);
                                       while(!(_loc6_ && _loc3_))
                                       {
                                          §_-Oo§ = new §_-0F0§(AngryBirdsFP11.§_-Uj§,AngryBirdsFP11.§_-06d§,_loc3_,_loc4_,§_-0F0§.§_-J1§,20);
                                          §§goto(addr178);
                                       }
                                    }
                                 }
                                 §§goto(addr353);
                              }
                           }
                           §§goto(addr52);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr86);
               }
               §§goto(addr456);
            }
            §§goto(addr458);
         }
         §§goto(addr373);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         var _loc7_:* = 0;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if(_loc10_)
         {
            §§push(AngryBirdsFP11.sUserProgress);
            loop0:
            while(true)
            {
               §§push((§§pop() as §_-09d§).§_-HO§);
               addr148:
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc9_ && param2))
                  {
                     if(§§pop())
                     {
                        loop9:
                        while(true)
                        {
                           §§pop();
                           addr159:
                           addr134:
                           while(true)
                           {
                              §§push(_loc4_.indexOf(param2) == -1);
                              if(!_loc10_)
                              {
                                 break;
                              }
                              if(_loc10_)
                              {
                                 §§push(!§§pop());
                                 break;
                              }
                              continue loop9;
                           }
                           if(!_loc10_)
                           {
                              continue loop1;
                           }
                        }
                        addr158:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           do
                           {
                              super.uiInteractionHandler(param1,param2,param3);
                           }
                           while(!(_loc10_ || param2));
                           
                           if(_loc9_ && param1)
                           {
                              while(_loc9_)
                              {
                              }
                              return;
                              addr106:
                           }
                           if(_loc10_ || param3)
                           {
                              var _loc8_:* = param2;
                              if(!(_loc9_ && param2))
                              {
                                 §§push("FRIENDS_BUTTON");
                                 if(!(_loc9_ && param3))
                                 {
                                    §§push(_loc8_);
                                    if(_loc10_ || this)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             §§push(0);
                                             if(_loc9_ && param2)
                                             {
                                                addr432:
                                             }
                                          }
                                          else
                                          {
                                             addr469:
                                             §§push(4);
                                             if(!(_loc9_ && param2))
                                             {
                                                addr477:
                                             }
                                          }
                                          §§goto(addr482);
                                       }
                                       §§push("SHARE_CROWN");
                                       if(_loc10_ || param2)
                                       {
                                          §§push(_loc8_);
                                          if(!(_loc9_ && param2))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc9_)
                                                {
                                                   addr401:
                                                   §§push(1);
                                                   if(_loc9_ && this)
                                                   {
                                                   }
                                                   §§goto(addr482);
                                                }
                                                else
                                                {
                                                   §§goto(addr424);
                                                }
                                             }
                                             else
                                             {
                                                §§push("SHARE_STARS");
                                                if(!_loc9_)
                                                {
                                                   addr413:
                                                   §§push(_loc8_);
                                                   if(_loc10_ || this)
                                                   {
                                                      addr421:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            addr424:
                                                            §§push(2);
                                                            if(!(_loc10_ || param3))
                                                            {
                                                               §§goto(addr477);
                                                            }
                                                            §§goto(addr482);
                                                         }
                                                         else
                                                         {
                                                            addr457:
                                                            §§push(3);
                                                            if(_loc10_ || this)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("SHARE_DEFAULT");
                                                         if(_loc10_)
                                                         {
                                                            addr436:
                                                            §§push(_loc8_);
                                                            if(_loc10_ || param3)
                                                            {
                                                               addr444:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§goto(addr457);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr469);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr467:
                                                                  §§push("EMBED");
                                                                  §§push(_loc8_);
                                                               }
                                                               §§goto(addr469);
                                                            }
                                                            if(§§pop() === §§pop())
                                                            {
                                                               §§goto(addr469);
                                                            }
                                                            else
                                                            {
                                                               addr482:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     _loc5_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
                                                                     if(_loc10_)
                                                                     {
                                                                        addr45:
                                                                        §_-OY§.§_-7i§(_loc5_);
                                                                        §_-rG§.§_-rY§.§_-DE§();
                                                                        addr49:
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr45);
                                                                              }
                                                                              _loc6_ = new URLRequest(_loc5_);
                                                                              if(_loc10_)
                                                                              {
                                                                                 navigateToURL(_loc6_,"_blank");
                                                                              }
                                                                              break;
                                                                              addr341:
                                                                           }
                                                                           §§goto(addr49);
                                                                        }
                                                                        break;
                                                                     }
                                                                     break;
                                                                  case 1:
                                                                     addr335:
                                                                     AngryBirdsFP11.§_-07§.§_-DE§();
                                                                     §§push((AngryBirdsFP11.sUserProgress as §_-09d§).§_-06N§(LevelManager.§_-HM§));
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                     addr327:
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(§_-05J§);
                                                                        §§push("shareCrown");
                                                                        §§push(LevelManager.§_-HM§);
                                                                        §§push(LevelManager.§_-1a§().writtenName + "-");
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() + §_-08e§.§_-i8§(LevelManager.§_-HM§));
                                                                        }
                                                                        §§pop().§_-0At§(§§pop(),§§pop(),§§pop(),_loc7_,§ in§.§_-03s§.getScore());
                                                                        addr307:
                                                                        if(_loc9_ && param1)
                                                                        {
                                                                           §§goto(addr327);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr341);
                                                                     addr336:
                                                                  case 2:
                                                                     §§push(AngryBirdsFP11.§_-07§);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§pop().§_-DE§();
                                                                        §§push(§_-05J§);
                                                                        §§push("shareThreeStars");
                                                                        §§push(LevelManager.§_-HM§);
                                                                        §§push(LevelManager.§_-1a§().writtenName + "-");
                                                                        if(_loc10_ || param1)
                                                                        {
                                                                           §§push(§§pop() + §_-08e§.§_-i8§(LevelManager.§_-HM§));
                                                                        }
                                                                        §§pop().§_-0At§(§§pop(),§§pop(),§§pop(),§ in§.§_-03s§.getScore());
                                                                        addr273:
                                                                        if(_loc10_)
                                                                        {
                                                                           addr205:
                                                                           break;
                                                                        }
                                                                        §§goto(addr307);
                                                                        addr284:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr335);
                                                                     }
                                                                     §§goto(addr335);
                                                                  case 3:
                                                                     §§push(§_-05J§);
                                                                     §§push("shareDefault");
                                                                     §§push(LevelManager.§_-HM§);
                                                                     §§push(LevelManager.§_-1a§().writtenName + "-");
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(§§pop() + §_-08e§.§_-i8§(LevelManager.§_-HM§));
                                                                     }
                                                                     §§pop().§_-0At§(§§pop(),§§pop(),§§pop(),§ in§.§_-03s§.getScore(),true);
                                                                     addr229:
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr284);
                                                                     break;
                                                                  case 4:
                                                                     §§push(§_-EJ§);
                                                                     §§push(LevelManager.§_-HM§);
                                                                     §§push(LevelManager.§_-1a§().writtenName + "-");
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(§§pop() + §_-08e§.§_-i8§(LevelManager.§_-HM§));
                                                                     }
                                                                     §§pop().§_-05y§(§§pop(),§§pop(),§ in§.§_-03s§.getScore(),this.§_-gd§);
                                                                     if(_loc10_ || param3)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr205);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr336);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr273);
                                                                        }
                                                                        §§goto(addr307);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr229);
                                                                     }
                                                               }
                                                               return;
                                                               §§push(5);
                                                            }
                                                            §§goto(addr482);
                                                         }
                                                         §§goto(addr467);
                                                      }
                                                   }
                                                   §§goto(addr444);
                                                }
                                                §§goto(addr436);
                                             }
                                             §§goto(addr482);
                                          }
                                          §§goto(addr444);
                                       }
                                       §§goto(addr436);
                                       §§goto(addr469);
                                    }
                                    §§goto(addr421);
                                 }
                                 §§goto(addr413);
                              }
                              §§goto(addr401);
                           }
                           else
                           {
                              loop4:
                              while(true)
                              {
                                 if(_loc10_)
                                 {
                                    if(!(_loc10_ || param2))
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 addr138:
                                 while(true)
                                 {
                                    this.§_-tp§ = §_-EJ§.§_-9a§();
                                    continue loop4;
                                 }
                              }
                              §§goto(addr159);
                              addr113:
                           }
                           while(true)
                           {
                              this.§_-j-§ = param2;
                              §§goto(addr113);
                           }
                        }
                        §§goto(addr138);
                        §§goto(addr134);
                     }
                     continue;
                  }
                  §§goto(addr158);
               }
            }
            addr145:
         }
         while(true)
         {
            §§push(AngryBirdsFP11.sUserProgress);
            if(!(_loc9_ && param2))
            {
               (§§pop() as §_-09d§).addEventListener(UserProgressEvent.§_-Wl§,this.§_-Yd§);
               §§goto(addr106);
            }
            else
            {
               §§goto(addr145);
            }
         }
      }
      
      protected function §_-Yd§(param1:UserProgressEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            (AngryBirdsFP11.sUserProgress as §_-09d§).removeEventListener(UserProgressEvent.§_-Wl§,this.§_-Yd§);
            loop0:
            while(true)
            {
               §§push(this.§_-tp§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§_-tp§);
                        addr105:
                        loop4:
                        while(true)
                        {
                           §§pop().close();
                           addr106:
                           while(true)
                           {
                              this.§_-tp§ = null;
                              addr94:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                              }
                              continue loop4;
                           }
                        }
                        addr64:
                        if(_loc3_ || this)
                        {
                           return;
                        }
                     }
                  }
                  while(true)
                  {
                     this.uiInteractionHandler(-1,this.§_-j-§,null);
                     do
                     {
                        this.§_-j-§ = null;
                     }
                     while(_loc2_ && _loc3_);
                     
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                     if(_loc3_ || this)
                     {
                        §§goto(addr64);
                     }
                     §§goto(addr106);
                  }
                  continue;
               }
               §§goto(addr105);
            }
         }
         §§goto(addr106);
      }
      
      protected function saveLevelProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            (§ in§.§_-HY§ as §_-rG§).newUserScore(LevelManager.§_-HM§);
            do
            {
               (AngryBirdsFP11.sUserProgress as §_-09d§).saveLevelProgress(LevelManager.§_-HM§);
            }
            while(_loc2_);
            
         }
      }
      
      override protected function setScoreData() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
         if(!(_loc6_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§_-HM§));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§ in§.§_-03s§.getScore());
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc7_)
         {
            §_-Cm§ = _loc3_ > _loc2_;
            if(_loc7_ || _loc2_)
            {
               §_-00K§(_loc3_,_loc2_);
            }
         }
         §§push(AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§_-HM§,_loc3_));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && _loc2_))
         {
            (§_-s0§.getItemByName("MovieClip_NewHighScoreBadge") as §_-k6§).setVisibility(false);
            while(true)
            {
               (§_-s0§.getItemByName("MovieClip_StarLeft") as §_-k6§).mClip.gotoAndStop("UnLit");
               loop1:
               while(true)
               {
                  (§_-s0§.getItemByName("MovieClip_StarCenter") as §_-k6§).mClip.gotoAndStop("UnLit");
                  loop2:
                  while(true)
                  {
                     (§_-s0§.getItemByName("MovieClip_StarRight") as §_-k6§).mClip.gotoAndStop("UnLit");
                     loop3:
                     while(true)
                     {
                        addr124:
                        while(true)
                        {
                           if(§_-Cm§)
                           {
                              while(!_loc6_)
                              {
                                 if(_loc6_)
                                 {
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    this.saveLevelProgress();
                                    addr133:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              continue loop3;
                              addr127:
                           }
                           while(true)
                           {
                              (§ in§.§_-HY§ as §_-rG§).§_-0C7§.§_-LA§ = false;
                              if(!(_loc6_ && _loc1_))
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr133);
                           }
                           continue loop1;
                        }
                        continue loop1;
                     }
                  }
               }
               if(!(_loc6_ && _loc3_))
               {
                  if(false)
                  {
                     §§goto(addr124);
                  }
                  §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
                  if(_loc7_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  return;
               }
            }
         }
         §§goto(addr131);
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setComponentVisualState(param1);
            while(true)
            {
               (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setComponentVisualState(param1);
               addr49:
               if(!_loc3_)
               {
                  continue;
               }
               return;
               addr61:
            }
         }
         while(true)
         {
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setComponentVisualState(param1);
            while(!_loc2_)
            {
               (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setComponentVisualState(param1);
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr49);
            }
         }
         §§goto(addr61);
      }
      
      override protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-tl§.push((§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x);
            while(true)
            {
               §_-tl§.push((§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x);
               while(!(_loc1_ && this))
               {
                  §_-tl§.push((§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).x);
                  do
                  {
                     §_-tl§.push((§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).x);
                  }
                  while(_loc1_ && _loc2_);
                  
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr57:
               }
            }
         }
         §§goto(addr57);
      }
      
      override protected function getViewXML() : XML
      {
         return §_-vB§.§_-ky§.Views.View_LevelEnd[0];
      }
      
      override protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(AngryBirdsFP11.sUserProgress.§_-Z3§(LevelManager.§_-HM§))
            {
               (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setVisibility(true);
               loop0:
               while(true)
               {
                  if(_loc2_ || _loc2_)
                  {
                     (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setVisibility(true);
                     loop1:
                     while(true)
                     {
                        (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
                        loop2:
                        while(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(true);
                              loop3:
                              while(!(_loc1_ && _loc2_))
                              {
                                 (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x = §_-tl§[0];
                                 loop4:
                                 while(true)
                                 {
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc1_)
                                          {
                                             if(!(_loc2_ || _loc2_))
                                             {
                                                break;
                                             }
                                             (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x = §_-tl§[1];
                                             while(!_loc1_)
                                             {
                                                (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).x = §_-tl§[2];
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   continue loop4;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 if(_loc1_ && this)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr20);
                              }
                              (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(true);
                           }
                           (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x = §_-tl§[0] + Math.abs(§_-tl§[1] - §_-tl§[0]) / 2;
                           break;
                        }
                        (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).x = §_-tl§[1] + Math.abs(§_-tl§[2] - §_-tl§[1]) / 2;
                        §§goto(addr186);
                     }
                  }
               }
               while(true)
               {
                  (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setVisibility(true);
                  §§goto(addr253);
                  §§goto(addr186);
               }
               §§goto(addr193);
               addr267:
            }
         }
         (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setVisibility(false);
         §§goto(addr267);
      }
      
      override protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setVisibility(true);
            loop0:
            while(true)
            {
               (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setVisibility(true);
               loop1:
               while(true)
               {
                  (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(false);
                  loop2:
                  while(true)
                  {
                     if(!LevelManager.§_-xE§())
                     {
                        (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
                        loop3:
                        while(true)
                        {
                           (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x = §_-tl§[0] + Math.abs(§_-tl§[1] - §_-tl§[0]) / 2;
                           loop4:
                           for(; _loc1_ || this; while(true)
                           {
                              (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x = §_-tl§[1] + Math.abs(§_-tl§[2] - §_-tl§[1]) / 2;
                              if(_loc1_ || _loc1_)
                              {
                                 continue loop3;
                              }
                              continue loop4;
                           })
                           {
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              addr148:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).x = §_-tl§[2];
                                    break loop4;
                                    addr150:
                                 }
                                 addr161:
                                 addr175:
                                 while(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 while(!_loc2_)
                                 {
                                    (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(true);
                                    addr177:
                                    while(true)
                                    {
                                       (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x = §_-tl§[0];
                                       §§goto(addr161);
                                       §§goto(addr177);
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           while(_loc2_ && _loc1_)
                           {
                              §§goto(addr194);
                              §§goto(addr150);
                           }
                           addr19:
                           return;
                           if(_loc1_ || _loc2_)
                           {
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr175);
                  }
               }
            }
         }
         §§goto(addr108);
      }
   }
}
