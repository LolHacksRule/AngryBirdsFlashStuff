package §_-ad§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-0Ar§.§_-0AO§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-k6§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-iz§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "LevelEndEagleState";
      
      private static const §_-07E§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §_-pk§ = "LevelEndEagleState";
         }
         do
         {
            §_-07E§ = "ScoreLoopCountChannel";
         }
         while(!_loc1_);
         
      }
      
      private var §_-P3§:§_-dd§;
      
      private var §_-ny§:§_-0AO§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §_-08s§:Number;
      
      protected var §_-0EO§:int;
      
      public function §_-iz§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
         while(true)
         {
            §_-s0§ = new §_-5q§(this);
            loop1:
            for(; _loc2_; if(!(_loc2_ || _loc2_))
            {
               continue;
            },§§goto(addr81))
            {
               §_-s0§.init(§_-vB§.§_-ky§.Views.View_LevelEndEagle[0]);
               loop2:
               while(true)
               {
                  this.§_-08s§ = (§_-s0§.getItemByName("MovieClip_EagleMeterFill") as §_-k6§).width;
                  while(true)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        continue loop1;
                     }
                     continue loop2;
                     addr81:
                     §_-pX§.§_-UJ§(§_-07E§,1,1);
                     if(_loc2_ || _loc2_)
                     {
                        return;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.activate();
            loop0:
            while(true)
            {
               this.§_-ny§ = new §_-0AO§(0,0,0,0);
               while(true)
               {
                  §_-s0§.movieClip.addChildAt(this.§_-ny§,§_-s0§.movieClip.numChildren - 1);
                  loop2:
                  for(; !_loc3_; while(_loc4_ || _loc3_)
                  {
                     while(true)
                     {
                        §_-pX§.playSound("LevelCompletedTheme1");
                        addr45:
                        while(_loc4_)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                        }
                        §§goto(addr70);
                     }
                  })
                  {
                     §_-s0§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
                     while(true)
                     {
                        §_-s0§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§_-ny§.§_-Zs§(0.7);
            if(!(_loc3_ && _loc1_))
            {
               if(!_loc3_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr41);
               }
               §§goto(addr56);
            }
            §§goto(addr45);
         }
         §§push(§ in§.§_-03s§.getEagleScore());
         if(_loc4_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.§_-0EO§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§_-HM§);
         }
         var _loc2_:* = _loc1_ > this.§_-0EO§;
         if(_loc4_)
         {
            if(_loc2_)
            {
               while(true)
               {
                  this.§_-0Bv§(_loc1_);
                  addr236:
                  while(true)
                  {
                  }
               }
               addr233:
            }
            loop10:
            while(true)
            {
               (§_-s0§.getItemByName("TextField_EaglePercentage") as §_-0Eo§).§_-ab§.text = _loc1_ + "%";
               loop11:
               while(true)
               {
                  §_-pX§.playSound("Hiscore_Count",§_-07E§,100);
                  loop12:
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        break loop11;
                     }
                     §§push(this);
                     §§push(§_-cx§.§_-3S§);
                     §§push(this);
                     §§push({"mEagleScoreCounter":_loc1_});
                     §§push({"mEagleScoreCounter":0});
                     §§push(_loc1_ / 100);
                     if(!_loc3_)
                     {
                        §§push(§§pop() * 4);
                     }
                     §§pop().§_-P3§ = §§pop().§_-Wf§(§§pop(),§§pop(),§§pop(),§§pop());
                     while(_loc4_)
                     {
                        loop16:
                        while(_loc4_ || _loc3_)
                        {
                           addr176:
                           §§push(this.§_-P3§);
                           if(_loc4_)
                           {
                              §§pop().play();
                              if(!_loc3_)
                              {
                                 continue loop12;
                              }
                              continue;
                           }
                           addr166:
                           while(true)
                           {
                              §§pop().onComplete = this.§_-Dm§;
                              continue loop16;
                              §§goto(addr176);
                           }
                        }
                     }
                     continue loop10;
                  }
               }
               §§goto(addr233);
            }
         }
         while(true)
         {
            §§goto(addr166);
         }
         §§goto(addr162);
      }
      
      protected function §_-0Bv§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            AngryBirdsFP11.sUserProgress.§_-09c§(LevelManager.§_-HM§,param1);
         }
      }
      
      protected function §_-Dm§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GlowFilter = null;
         if(_loc3_)
         {
            §_-pX§.§_-0B7§(§_-07E§);
            if(!(_loc2_ && _loc1_))
            {
               if(this.mEagleScoreCounter == 100)
               {
                  if(_loc3_ || _loc1_)
                  {
                     addr53:
                     §_-pX§.playSound("Hiscore_Badge",§_-07E§);
                     addr57:
                     _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
                     if(!(_loc2_ && _loc2_))
                     {
                        (§_-s0§.getItemByName("MovieClip_EagleMeterEffect") as §_-k6§).setVisibility(true);
                        if(_loc3_ || _loc1_)
                        {
                        }
                        §§goto(addr107);
                     }
                     (§_-s0§.getItemByName("MovieClip_EagleMeterFill") as §_-k6§).mClip.filters = [_loc1_];
                  }
                  §§goto(addr57);
               }
               addr107:
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr53);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(super.run(param1));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() == §_-nG§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     if(int(this.mEagleScoreCounter) <= this.§_-0EO§)
                     {
                        (§_-s0§.getItemByName("TextField_EaglePercentage") as §_-0Eo§).§_-ab§.text = int(this.§_-0EO§) + "%";
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                        }
                        while(true)
                        {
                           if(!(_loc5_ || _loc3_))
                           {
                              continue loop0;
                           }
                           §§goto(addr143);
                        }
                        addr136:
                     }
                     if(_loc5_ || _loc3_)
                     {
                        (§_-s0§.getItemByName("TextField_EaglePercentage") as §_-0Eo§).§_-ab§.text = int(this.mEagleScoreCounter) + "%";
                        §§goto(addr136);
                     }
                  }
                  §§goto(addr153);
               }
               return _loc2_;
            }
         }
         §§goto(addr152);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§_-ny§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §_-pX§.§_-0B7§(§_-07E§);
                        loop9:
                        while(true)
                        {
                           this.mEagleScoreCounter = 0;
                           addr166:
                           loop10:
                           while(true)
                           {
                              §§push(this.§_-P3§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(§§pop())
                                 {
                                    loop11:
                                    while(_loc1_)
                                    {
                                       §§push(this.§_-P3§);
                                       while(true)
                                       {
                                          §§pop().stop();
                                          loop18:
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop10;
                                             }
                                             if(!_loc1_)
                                             {
                                                break;
                                             }
                                             if(!_loc2_)
                                             {
                                                this.§_-P3§ = null;
                                                while(true)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   addr138:
                                                   while(true)
                                                   {
                                                      (§_-s0§.getItemByName("MovieClip_EagleMeterFill") as §_-k6§).mClip.filters = [];
                                                      while(_loc1_)
                                                      {
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            (§_-s0§.getItemByName("MovieClip_EagleMeterEffect") as §_-k6§).setVisibility(false);
                                                            loop14:
                                                            while(!(_loc2_ && this))
                                                            {
                                                               (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                               while(true)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(!_loc1_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                  while(true)
                                                                  {
                                                                     if(_loc1_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               continue loop18;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(!§_-s0§.movieClip.contains(this.§_-ny§))
                                                               {
                                                                  continue loop1;
                                                               }
                                                            }
                                                            addr203:
                                                         }
                                                         while(true)
                                                         {
                                                            §_-s0§.movieClip.removeChild(this.§_-ny§);
                                                         }
                                                      }
                                                      addr198:
                                                      while(true)
                                                      {
                                                         this.§_-ny§ = null;
                                                         break loop11;
                                                      }
                                                      §§goto(addr138);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                continue loop1;
                                             }
                                          }
                                          continue loop9;
                                       }
                                    }
                                    continue loop8;
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr154);
                           }
                        }
                     }
                  }
                  §§goto(addr203);
               }
            }
         }
         §§goto(addr166);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            §§push("NEXT_LEVEL");
            if(!_loc6_)
            {
               §§push(_loc4_);
               if(!(_loc6_ && param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc6_ && param3))
                     {
                        addr120:
                        §§push(0);
                        if(!_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr176:
                        §§push(2);
                        if(_loc5_)
                        {
                           addr179:
                        }
                     }
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(_loc5_)
                     {
                        addr127:
                        §§push(_loc4_);
                        if(_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_ || param2)
                              {
                                 §§push(1);
                                 if(_loc5_ || param2)
                                 {
                                    §§goto(addr196);
                                 }
                                 else
                                 {
                                    §§goto(addr179);
                                 }
                              }
                              §§goto(addr196);
                           }
                           else
                           {
                              §§push("MENU");
                              if(_loc5_ || param1)
                              {
                                 §§push(_loc4_);
                                 if(_loc5_ || param1)
                                 {
                                    addr173:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr176);
                                       }
                                    }
                                    else
                                    {
                                       addr182:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr196:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §_-MG§.§_-4t§();
                                                if(_loc5_)
                                                {
                                                   mNextState = StateCutScene.§_-pk§;
                                                   break;
                                                   addr76:
                                                }
                                                break;
                                             case 1:
                                                §_-MG§.§_-0Eg§();
                                                mNextState = §_-MG§.§_-pk§;
                                                break;
                                                addr70:
                                                addr64:
                                             case 2:
                                                §_-pX§.§_-j4§();
                                                if(!_loc6_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      addr39:
                                                      mNextState = §_-UO§.§_-pk§;
                                                      if(_loc5_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr76);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr70);
                                                      }
                                                   }
                                                   §§goto(addr64);
                                                }
                                                break;
                                             case 3:
                                                AngryBirdsFP11.§_-07§.§_-0De§();
                                                if(_loc5_ || param1)
                                                {
                                                   if(_loc5_ || param3)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr39);
                                                   }
                                                   §§goto(addr39);
                                                }
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr196);
                                 }
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr196);
                        }
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr196);
               }
               §§goto(addr173);
            }
            §§goto(addr127);
         }
         §§goto(addr120);
      }
   }
}
