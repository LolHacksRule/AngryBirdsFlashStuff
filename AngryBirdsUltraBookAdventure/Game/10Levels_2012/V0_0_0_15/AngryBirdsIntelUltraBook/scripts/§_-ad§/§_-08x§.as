package §_-ad§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-0Ar§.§_-0AO§;
   import §_-0Ar§.§_-0F0§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-gt§;
   import §_-6C§.§_-k6§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-eS§.§_-BK§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §_-08x§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "LevelEndStateRio";
      
      public static const §_-0CH§:Number = 30;
      
      protected static const §_-07E§:String = "ScoreLoopCountChannel";
      
      protected static const §_-6b§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §_-08x§)
         {
            §_-pk§ = "LevelEndStateRio";
            while(true)
            {
               §_-0CH§ = 30;
            }
            addr82:
         }
         loop1:
         while(true)
         {
            §_-07E§ = "ScoreLoopCountChannel";
            while(_loc1_ || _loc2_)
            {
               §_-6b§ = "EndScreenEffectChannel";
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break loop1;
               }
               §§goto(addr82);
            }
         }
      }
      
      private var §_-10§:§_-dd§;
      
      private var §_-ef§:Number;
      
      private var §_-IL§:Number = 0.0;
      
      private var §_-Jn§:Number = 0.0;
      
      private var §_-RV§:Boolean = false;
      
      private var §_-08g§:Timer;
      
      private var §_-ny§:§_-0AO§;
      
      protected var §_-tl§:Array;
      
      protected var §_-Oo§:§_-0F0§;
      
      protected var §_-0Bc§:Vector.<§_-0F0§>;
      
      public var mNewScoreCounter:int;
      
      private var §_-li§:int;
      
      private var §_-0CJ§:Boolean;
      
      protected var §_-su§:Boolean;
      
      private var §_-Co§:§_-BK§;
      
      protected var §_-Cm§:Boolean;
      
      private var §_-vG§:§_-dd§;
      
      protected var §_-08Y§:Boolean;
      
      protected var §_-wh§:int;
      
      public function §_-08x§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§_-tl§ = [];
            do
            {
               this.§_-Co§ = new §_-BK§();
               do
               {
                  super(param1,param2);
               }
               while(!_loc3_);
               
            }
            while(!(_loc3_ || param2));
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            §_-s0§ = new §_-5q§(this);
            while(true)
            {
               §_-s0§.init(this.getViewXML());
               loop2:
               do
               {
                  this.initButtonDefaultPositions();
                  loop3:
                  while(true)
                  {
                     this.§_-0Bc§ = new Vector.<§_-0F0§>();
                     while(!_loc2_)
                     {
                        §_-pX§.§_-UJ§(§_-07E§,1,1);
                        while(!(_loc2_ && _loc2_))
                        {
                           continue loop3;
                           §_-pX§.§_-UJ§(§_-6b§,3,1);
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
               while(_loc2_ && this);
               
               return;
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr81);
            }
         }
      }
      
      protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§_-tl§);
            loop0:
            while(true)
            {
               §§pop().push((§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x);
               loop1:
               while(true)
               {
                  §§push(this.§_-tl§);
                  while(true)
                  {
                     §§pop().push((§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x);
                     loop3:
                     while(!_loc1_)
                     {
                        §§push(this.§_-tl§);
                        loop4:
                        while(_loc2_)
                        {
                           §§pop().push((§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).x);
                           while(!_loc1_)
                           {
                              continue loop4;
                              §§pop().push((§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).x);
                              if(_loc2_ || this)
                              {
                                 return;
                                 addr60:
                              }
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                     continue loop1;
                     addr29:
                     if(_loc1_ && this)
                     {
                        continue;
                     }
                     §§goto(addr36);
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§_-tl§);
            if(!_loc1_)
            {
               §§goto(addr29);
            }
            §§goto(addr64);
         }
         §§goto(addr60);
      }
      
      protected function getViewXML() : XML
      {
         return §_-vB§.§_-ky§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(AngryBirdsFP11.sUserProgress.§_-Z3§(LevelManager.§_-HM§))
            {
               (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setVisibility(true);
               loop0:
               for(; _loc2_; do
               {
                  if(_loc1_ && this)
                  {
                     continue loop0;
                  }
                  if(_loc2_ || this)
                  {
                     continue;
                  }
                  §§goto(addr245);
               }
               while((§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).x = this.§_-tl§[2], !(_loc2_ || this));
               ,if(!_loc2_)
               {
                  §§goto(addr87);
               },§§goto(addr25))
               {
                  (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setVisibility(true);
                  loop1:
                  while(!_loc1_)
                  {
                     (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
                     while(!_loc1_)
                     {
                        (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(true);
                        loop3:
                        while(_loc2_)
                        {
                           if(_loc1_ && _loc1_)
                           {
                              (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(true);
                              while(true)
                              {
                                 (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x = this.§_-tl§[0] + Math.abs(this.§_-tl§[1] - this.§_-tl§[0]) / 2;
                                 break loop0;
                              }
                              addr25:
                              return;
                              addr236:
                              addr217:
                              addr182:
                           }
                           while(true)
                           {
                              (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x = this.§_-tl§[0];
                              addr87:
                              while(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x = this.§_-tl§[1];
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                     }
                     loop6:
                     while(true)
                     {
                        (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setVisibility(true);
                        addr245:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              break loop6;
                           }
                           continue loop6;
                        }
                     }
                     (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
                     §§goto(addr236);
                  }
                  while(true)
                  {
                     if(_loc1_)
                     {
                        §§goto(addr217);
                     }
                     §§goto(addr182);
                  }
               }
               while(true)
               {
                  (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).x = this.§_-tl§[1] + Math.abs(this.§_-tl§[2] - this.§_-tl§[1]) / 2;
                  §§goto(addr180);
               }
            }
            §§goto(addr254);
         }
         §§goto(addr109);
      }
      
      protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setVisibility(true);
            while(true)
            {
               (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setVisibility(true);
               loop1:
               for(; !_loc1_; while(true)
               {
                  if(_loc1_ && _loc1_)
                  {
                     continue loop1;
                  }
                  §§goto(addr161);
               })
               {
                  (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(false);
                  loop2:
                  while(true)
                  {
                     if(LevelManager.§_-xE§())
                     {
                        if(_loc2_ || _loc1_)
                        {
                           continue;
                        }
                        addr197:
                        while(true)
                        {
                           (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x = this.§_-tl§[0];
                           continue loop1;
                        }
                        addr197:
                     }
                     else
                     {
                        (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
                        while(true)
                        {
                           if(_loc1_)
                           {
                              break loop2;
                           }
                           (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x = this.§_-tl§[0] + Math.abs(this.§_-tl§[1] - this.§_-tl§[0]) / 2;
                           while(!_loc1_)
                           {
                              (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x = this.§_-tl§[1] + Math.abs(this.§_-tl§[2] - this.§_-tl§[1]) / 2;
                              if(_loc2_)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§goto(addr25);
                                 }
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop1;
                                    }
                                    if(_loc2_)
                                    {
                                       (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).x = this.§_-tl§[2];
                                       break loop2;
                                    }
                                    §§goto(addr197);
                                    addr161:
                                    (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x = this.§_-tl§[1];
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
                  addr25:
                  return;
               }
            }
         }
         while(true)
         {
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(true);
            §§goto(addr197);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.activate();
            loop0:
            while(true)
            {
               this.§_-08Y§ = false;
               loop1:
               while(true)
               {
                  § in§.pause();
                  loop2:
                  while(true)
                  {
                     this.§_-ny§ = new §_-0AO§(0,0,0,0);
                     while(true)
                     {
                        §_-s0§.movieClip.addChildAt(this.§_-ny§,§_-s0§.movieClip.numChildren - 1);
                        loop4:
                        while(true)
                        {
                           if(LevelManager.§_-z2§())
                           {
                              addr146:
                              while(true)
                              {
                                 this.showButtonsCutScene();
                              }
                              addr146:
                           }
                           else
                           {
                              this.showButtonsNormal();
                              while(true)
                              {
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    addr148:
                                    while(true)
                                    {
                                    }
                                    addr148:
                                 }
                                 while(true)
                                 {
                                    this.mNewScoreCounter = 0;
                                    while(true)
                                    {
                                       this.§_-0CJ§ = false;
                                       addr114:
                                       while(_loc1_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    §§goto(addr148);
                                 }
                                 addr67:
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    if(_loc1_)
                                    {
                                       this.§_-IL§ = 0;
                                       do
                                       {
                                          this.§_-Jn§ = 0;
                                          while(true)
                                          {
                                             if(_loc1_ || this)
                                             {
                                                if(!_loc1_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             addr91:
                                             while(!_loc2_)
                                             {
                                                continue loop4;
                                             }
                                             §§goto(addr114);
                                          }
                                          §§goto(addr146);
                                       }
                                       while(!_loc1_);
                                       
                                       if(!(_loc2_ && this))
                                       {
                                          return;
                                       }
                                       continue;
                                       continue;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr148);
                        }
                        if(!(_loc1_ || this))
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                        this.§_-ny§.§_-Zs§(0.7);
                        §§goto(addr67);
                     }
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      private function §var§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§_-su§ = false;
            while(true)
            {
               this.setScoreData();
               loop1:
               for(; _loc2_ || _loc1_; while(true)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     continue;
                  }
                  continue loop1;
               },§§goto(addr97))
               {
                  this.§_-08g§ = new Timer(500);
                  while(true)
                  {
                     this.§_-li§ = 0;
                     §§goto(addr90);
                  }
               }
            }
         }
         addr90:
         while(true)
         {
            this.§_-08g§.addEventListener(TimerEvent.TIMER,this.§_-jG§);
            continue loop1;
            addr40:
            if(_loc2_)
            {
               continue loop2;
            }
         }
         addr59:
      }
      
      protected function §_-V7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§_-HM§) != 100)
            {
               (§_-s0§.getItemByName("MovieClip_ResultMEFeather") as §_-k6§).mClip.gotoAndStop("Off");
               if(_loc1_)
               {
                  addr85:
               }
               return;
            }
            if(!(_loc1_ && this))
            {
               (§_-s0§.getItemByName("MovieClip_ResultMEFeather") as §_-k6§).mClip.gotoAndStop("On");
            }
         }
         §§goto(addr85);
      }
      
      protected function §_-00K§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            if(!this.§_-Cm§)
            {
               §_-s0§.setText("Best " + param2.toString(),"TextField_BestScore");
               loop0:
               while(!(_loc4_ && param2))
               {
                  if(!_loc5_)
                  {
                     loop1:
                     while(true)
                     {
                        AngryBirdsFP11.sUserProgress.§_-eF§(LevelManager.§_-HM§,param2);
                        addr138:
                        while(true)
                        {
                           §_-s0§.setText("New Highscore!","TextField_BestScore");
                           break loop0;
                        }
                        addr128:
                        if(!_loc4_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(param1);
                           if(_loc5_)
                           {
                              §§push(int(§§pop()));
                           }
                           param2 = §§pop();
                           continue loop1;
                        }
                     }
                     return;
                  }
                  addr234:
                  this.§_-wh§ = LevelManager.§_-g0§(LevelManager.§_-HM§,param2);
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  §§push(this.§_-wh§);
                  if(!(_loc4_ && param2))
                  {
                     var _loc3_:* = §§pop();
                     if(_loc5_ || param1)
                     {
                        §§push(1);
                        if(_loc5_ || param2)
                        {
                           §§push(_loc3_);
                           if(!_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || this)
                                 {
                                    addr187:
                                    §§push(0);
                                    if(!_loc5_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr215:
                                    §§push(1);
                                    if(!_loc5_)
                                    {
                                       addr222:
                                       if(§§pop() === _loc3_)
                                       {
                                          addr224:
                                          §§push(2);
                                          if(!_loc5_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                    else
                                    {
                                       addr218:
                                    }
                                 }
                                 addr233:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       (§_-s0§.getItemByName("MovieClip_BestScoreStars") as §_-k6§).§_-0Du§("OneStar");
                                       if(!_loc4_)
                                       {
                                          addr39:
                                          break;
                                       }
                                       break;
                                    case 1:
                                       (§_-s0§.getItemByName("MovieClip_BestScoreStars") as §_-k6§).§_-0Du§("TwoStar");
                                       if(!(_loc4_ && this))
                                       {
                                          break;
                                       }
                                       break;
                                    case 2:
                                       (§_-s0§.getItemByName("MovieClip_BestScoreStars") as §_-k6§).§_-0Du§("ThreeStar");
                                       if(!_loc4_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr39);
                                       }
                                 }
                                 §§goto(addr234);
                                 addr232:
                              }
                              else
                              {
                                 §§push(2);
                                 if(!_loc4_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_)
                                    {
                                       addr207:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_ || param2)
                                          {
                                             §§goto(addr215);
                                          }
                                          §§goto(addr224);
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(!_loc4_)
                                          {
                                             §§goto(addr222);
                                          }
                                       }
                                       §§goto(addr232);
                                    }
                                    §§goto(addr222);
                                 }
                                 §§goto(addr218);
                              }
                              §§goto(addr218);
                           }
                           §§goto(addr207);
                        }
                        §§goto(addr218);
                     }
                     §§goto(addr187);
                  }
                  §§goto(addr233);
               }
               while(true)
               {
                  if(!(_loc4_ && param1))
                  {
                     §§goto(addr128);
                  }
                  §§goto(addr138);
               }
            }
         }
         §§goto(addr128);
      }
      
      protected function setScoreData() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§_-HM§));
         if(_loc7_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§ in§.§_-03s§.getScore());
         if(!(_loc8_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc8_ && this))
         {
            this.§_-Cm§ = _loc2_ > _loc1_;
            loop0:
            while(true)
            {
               addr59:
               while(true)
               {
                  this.§_-00K§(_loc2_,_loc1_);
                  continue loop0;
               }
            }
            addr70:
         }
         while(true)
         {
            this.§_-V7§();
            if(!_loc7_)
            {
               continue;
            }
            if(!_loc8_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr70);
            }
            §§goto(addr59);
         }
         §§push(§ in§.§_-03s§.getEagleScore());
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§_-HM§));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            if(_loc7_ || _loc3_)
            {
               §§push(_loc3_);
               if(_loc7_)
               {
                  §§push(int(§§pop()));
                  if(!_loc8_)
                  {
                     _loc4_ = §§pop();
                     if(_loc7_)
                     {
                        addr119:
                        §§push(AngryBirdsFP11.sUserProgress);
                        if(!_loc8_)
                        {
                           §§push(LevelManager.§_-HM§);
                           if(_loc7_ || _loc1_)
                           {
                              §§push(_loc4_);
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§pop().§_-09c§(§§pop(),§§pop());
                                 addr145:
                                 §§push(AngryBirdsFP11.sUserProgress);
                                 §§push(LevelManager.§_-HM§);
                                 §§push(_loc2_);
                              }
                              §§push(§§pop().getStarsForLevel(§§pop(),§§pop()));
                              if(_loc8_ && _loc2_)
                              {
                              }
                              §§goto(addr155);
                           }
                        }
                     }
                     §§goto(addr145);
                  }
               }
               addr155:
               var _loc6_:int = §§pop();
               if(_loc7_)
               {
                  (§_-s0§.getItemByName("MovieClip_NewHighScoreBadge") as §_-k6§).setVisibility(false);
                  while(true)
                  {
                     (§_-s0§.getItemByName("MovieClip_StarLeft") as §_-k6§).mClip.gotoAndStop("UnLit");
                     §§goto(addr223);
                  }
               }
               addr223:
               while(true)
               {
                  (§_-s0§.getItemByName("MovieClip_StarCenter") as §_-k6§).mClip.gotoAndStop("UnLit");
                  do
                  {
                     (§_-s0§.getItemByName("MovieClip_StarRight") as §_-k6§).mClip.gotoAndStop("UnLit");
                  }
                  while(!(_loc7_ || _loc2_));
                  
                  if(!(_loc8_ && _loc2_))
                  {
                     if(!(_loc8_ && _loc2_))
                     {
                        break;
                     }
                     continue loop3;
                  }
               }
               return;
            }
            §§goto(addr119);
         }
         §§goto(addr145);
      }
      
      protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!this.§_-Cm§)
            {
               (§_-s0§.getItemByName("TextField_BestScore") as §_-0Eo§).setVisibility(true);
               loop0:
               while(_loc2_ || this)
               {
                  (§_-s0§.getItemByName("MovieClip_BestScoreStars") as §_-k6§).setVisibility(true);
                  if(_loc2_ || _loc1_)
                  {
                     if(_loc1_)
                     {
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 addr129:
                                 while(true)
                                 {
                                    §_-pX§.playSound("Hiscore_Badge",§_-6b§);
                                 }
                              }
                              while(true)
                              {
                                 §_-s0§.setText("New Highscore!","TextField_NewHighScore");
                                 addr125:
                                 while(true)
                                 {
                                    (§_-s0§.getItemByName("TextField_NewHighScore") as §_-0Eo§).setVisibility(true);
                                 }
                              }
                              addr133:
                           }
                           while(!(_loc2_ || _loc1_))
                           {
                              §§goto(addr125);
                           }
                           (§_-s0§.getItemByName("MovieClip_BestScoreStars") as §_-k6§).setVisibility(false);
                           break loop0;
                        }
                        addr78:
                     }
                     return;
                  }
               }
               while(true)
               {
                  this.§_-JO§();
                  §§goto(addr78);
               }
            }
            §§goto(addr129);
         }
         §§goto(addr133);
      }
      
      protected function §_-JO§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-IL§ = 0;
            while(true)
            {
               this.§_-Jn§ = 0;
               while(!_loc2_)
               {
                  this.§_-ef§ = §_-0CH§;
                  if(!_loc2_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      private function §_-Ln§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).x = (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).x - this.§_-IL§;
            loop0:
            while(true)
            {
               (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).y = (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).y - this.§_-Jn§;
               loop1:
               while(true)
               {
                  if(this.§_-ef§ <= 0)
                  {
                     this.§_-ef§ = -1;
                     while(true)
                     {
                        if(!(_loc3_ && this))
                        {
                           this.§_-08f§();
                           loop3:
                           while(!_loc3_)
                           {
                              this.§_-IL§ = 0;
                              while(true)
                              {
                                 this.§_-Jn§ = 0;
                                 loop5:
                                 for(; !(_loc3_ && _loc2_); while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§_-ef§);
                                    if(_loc2_)
                                    {
                                       §§push(param1);
                                       if(_loc2_ || this)
                                       {
                                          §§push(§§pop() / 10);
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().§_-ef§ = §§pop();
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc2_)
                                    {
                                       return;
                                    }
                                    §§goto(addr108);
                                    §§goto(addr112);
                                 })
                                 {
                                    if(_loc2_ || param1)
                                    {
                                       continue;
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).x = (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).x + this.§_-IL§;
                                          while(!_loc3_)
                                          {
                                             (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).y = (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).y + this.§_-Jn§;
                                             while(!_loc2_)
                                             {
                                                §§goto(addr141);
                                             }
                                             addr141:
                                             if(_loc3_)
                                             {
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                continue loop5;
                                             }
                                          }
                                          continue loop0;
                                          addr139:
                                       }
                                       else
                                       {
                                          addr190:
                                       }
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(Math.random() - 0.5);
                                          if(!_loc3_)
                                          {
                                             §§push(this.§_-ef§);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop() / §_-0CH§);
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(_loc2_)
                                             {
                                                §§push(§§pop() * 20);
                                             }
                                          }
                                          §§pop().§_-IL§ = §§pop();
                                       }
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(Math.random() - 0.5);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(this.§_-ef§);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§push(§§pop() / §_-0CH§);
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc3_ && param1))
                                             {
                                                §§push(§§pop() * 20);
                                             }
                                          }
                                          §§pop().§_-Jn§ = §§pop();
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                           }
                           continue;
                        }
                        §§goto(addr139);
                     }
                  }
                  §§goto(addr190);
               }
            }
         }
         §§goto(addr112);
      }
      
      protected function §_-08f§() : void
      {
      }
      
      private function §_-jG§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = LevelManager.§_-U0§(LevelManager.§_-HM§).§_-iC§;
         var _loc5_:Number = LevelManager.§_-U0§(LevelManager.§_-HM§).§_-Td§;
         if(!_loc9_)
         {
            if((§_-s0§.getItemByName("MovieClip_StarLeft") as §_-k6§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§_-Co§);
               loop0:
               for(; !_loc9_; §§push(this.§_-Co§),if(!(_loc10_ || _loc2_))
               {
                  continue;
               },§§goto(addr495))
               {
                  if(!_loc9_)
                  {
                     §§push(§§pop().getValue());
                     loop1:
                     while(true)
                     {
                        if(!_loc9_)
                        {
                           if(_loc10_)
                           {
                              §§push(_loc5_);
                              while(true)
                              {
                                 §§push(§§pop() >= §§pop());
                                 addr662:
                                 addr503:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr663:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr665:
                                             while(!_loc9_)
                                             {
                                                §§push((§_-s0§.getItemByName("MovieClip_StarCenter") as §_-k6§).mClip.currentLabel == "UnLit");
                                                while(true)
                                                {
                                                   addr640:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop0;
                                                      }
                                                      §_-pX§.playSound("Hiscore_Star_Splash2",§_-6b§);
                                                      (§_-s0§.getItemByName("MovieClip_StarCenter") as §_-k6§).mClip.gotoAndStop("Lit");
                                                      if(_loc10_ || this)
                                                      {
                                                         addr601:
                                                         §§push(Number((§_-s0§.getItemByName("MovieClip_StarCenter") as §_-k6§).x + (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).x));
                                                         if(!(_loc9_ && this))
                                                         {
                                                            _loc2_ = §§pop();
                                                            addr609:
                                                            if(!_loc9_)
                                                            {
                                                               addr573:
                                                               §§push(Number((§_-s0§.getItemByName("MovieClip_StarCenter") as §_-k6§).y + (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).y));
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        this.§_-Oo§ = new §_-0F0§(AngryBirdsFP11.§_-Uj§,AngryBirdsFP11.§_-06d§,_loc2_,_loc3_,§_-0F0§.§_-01f§);
                                                                        §_-s0§.addChild(this.§_-Oo§);
                                                                        addr536:
                                                                        if(!(_loc9_ && _loc3_))
                                                                        {
                                                                           this.§_-0Bc§.push(this.§_-Oo§);
                                                                           §§goto(addr528);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr828:
                                                                        }
                                                                        addr824:
                                                                        addr834:
                                                                        addr828:
                                                                        this.§_-Co§.assign(§ in§.§_-03s§.getScore());
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§_-Co§);
                                                                           break loop0;
                                                                        }
                                                                        addr585:
                                                                        addr557:
                                                                     }
                                                                     §§goto(addr819);
                                                                  }
                                                                  §§goto(addr797);
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  addr809:
                                                                  §§goto(addr778);
                                                               }
                                                               addr808:
                                                            }
                                                            §§goto(addr739);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr817);
                                                         }
                                                         addr816:
                                                      }
                                                      §§goto(addr770);
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                §_-s0§.addChild(this.§_-Oo§);
                                                this.§_-0Bc§.push(this.§_-Oo§);
                                                addr674:
                                                if(_loc9_)
                                                {
                                                   §§goto(addr806);
                                                }
                                                §§goto(addr866);
                                                addr682:
                                             }
                                             §§goto(addr828);
                                          }
                                          addr664:
                                       }
                                       §§goto(addr639);
                                    }
                                 }
                                 §§push(_loc4_);
                                 if(_loc9_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc10_)
                                 {
                                    §§push(§§pop() >= §§pop());
                                    while(_loc10_)
                                    {
                                       §§push(§§pop());
                                       while(_loc10_)
                                       {
                                          if(§§pop())
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §§pop();
                                                addr521:
                                                while(true)
                                                {
                                                   §§push((§_-s0§.getItemByName("MovieClip_StarRight") as §_-k6§).mClip.currentLabel == "UnLit");
                                                   continue loop11;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc10_ || _loc2_)
                                                {
                                                   this.§_-08Y§ = true;
                                                   §§goto(addr482);
                                                }
                                                addr528:
                                                if(!_loc9_)
                                                {
                                                   addr866:
                                                   var _loc7_:*;
                                                   §§push((_loc7_ = this).§_-li§);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      _loc7_.§_-li§ = _loc8_;
                                                   }
                                                }
                                                else
                                                {
                                                   loop39:
                                                   while(true)
                                                   {
                                                      §§push(this.§_-vG§);
                                                      do
                                                      {
                                                         §§pop().onComplete = this.§_-Tv§;
                                                         §§push(this.§_-vG§);
                                                      }
                                                      while(!(_loc10_ || this));
                                                      
                                                      §§pop().play();
                                                      addr770:
                                                      while(true)
                                                      {
                                                         (§_-s0§.getItemByName("MovieClip_StarLeft") as §_-k6§).mClip.gotoAndStop("Lit");
                                                         if(_loc10_ || param1)
                                                         {
                                                            addr817:
                                                            §§push(Number((§_-s0§.getItemByName("MovieClip_StarLeft") as §_-k6§).x + (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).x));
                                                            loop37:
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               addr739:
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     addr719:
                                                                     break loop37;
                                                                  }
                                                                  §§push(Number((§_-s0§.getItemByName("MovieClip_StarLeft") as §_-k6§).y + (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).y));
                                                                  if(!_loc9_)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     this.§_-Oo§ = new §_-0F0§(AngryBirdsFP11.§_-Uj§,AngryBirdsFP11.§_-06d§,_loc2_,_loc3_,§_-0F0§.§_-CV§);
                                                                     break loop6;
                                                                     addr722:
                                                                  }
                                                                  continue loop37;
                                                               }
                                                            }
                                                            loop33:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               addr797:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc9_ && this)
                                                                  {
                                                                     break loop33;
                                                                  }
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                     addr806:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§_-vG§ = §_-cx§.§_-3S§.§_-Wf§(this,{"mNewScoreCounter":this.§_-Co§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                                     continue loop39;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               addr818:
                                                               §§push(Number(§§pop() * §§pop()));
                                                               addr819:
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  §§goto(addr820);
                                                               }
                                                               §§goto(addr797);
                                                            }
                                                            addr820:
                                                            addr817:
                                                         }
                                                      }
                                                   }
                                                }
                                                addr886:
                                                return;
                                             }
                                             §§goto(addr265);
                                             §§push(this.§_-0CJ§);
                                             §§goto(addr452);
                                          }
                                       }
                                       §§goto(addr663);
                                    }
                                    §§goto(addr662);
                                 }
                                 addr815:
                                 §§goto(addr816);
                                 §§push(§§pop() / §§pop());
                              }
                           }
                           addr814:
                           §§goto(addr815);
                           §§push(_loc4_);
                        }
                        §§push(§§pop().getValue());
                        addr495:
                        break;
                        if(!(_loc10_ || _loc2_))
                        {
                           continue;
                        }
                        §§goto(addr503);
                     }
                     §§goto(addr808);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr824);
               }
               while(true)
               {
                  §§goto(addr814);
                  §§goto(addr828);
               }
            }
            §§goto(addr860);
         }
         §§goto(addr641);
      }
      
      private function §_-Tv§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-pX§.§_-0B7§(§_-07E§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§_-0F0§ = null;
         §§push(super.run(param1));
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc6_)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               if(§§pop() == §_-nG§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §_-s0§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                     loop1:
                     while(true)
                     {
                        if(_loc6_)
                        {
                           §_-s0§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                           if(_loc7_)
                           {
                              continue;
                           }
                           if(_loc7_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              if(true)
                              {
                                 break loop1;
                              }
                              continue loop0;
                           }
                        }
                     }
                     addr74:
                     for each(_loc3_ in this.§_-0Bc§)
                     {
                        if(!(_loc7_ && param1))
                        {
                           _loc3_.update(param1);
                        }
                     }
                     if(_loc6_)
                     {
                        if(this.§_-ef§ > -1)
                        {
                           if(_loc6_)
                           {
                              addr145:
                              this.§_-Ln§(param1);
                           }
                           while(true)
                           {
                           }
                           addr148:
                        }
                        while(mNextState.length > 0)
                        {
                           if(_loc6_)
                           {
                              § in§.§_-Dc§.clearLevel();
                              return §_-nG§.STATE_STATUS_COMPLETED;
                           }
                           §§goto(addr148);
                        }
                        return §_-nG§.STATE_STATUS_RUNNING;
                     }
                     §§goto(addr145);
                  }
               }
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§goto(addr74);
               }
            }
            return §§pop();
         }
         §§goto(addr40);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               this.§_-pM§();
               loop1:
               while(true)
               {
                  this.§_-ef§ = 0;
                  loop2:
                  while(true)
                  {
                     this.mNewScoreCounter = 0;
                     loop3:
                     while(true)
                     {
                        §§push(this.§_-vG§);
                        if(!(_loc2_ && _loc1_))
                        {
                           if(§§pop())
                           {
                              continue loop2;
                           }
                           loop5:
                           while(true)
                           {
                              §§push(this.§_-10§);
                              if(_loc1_ || this)
                              {
                                 if(§§pop())
                                 {
                                    addr199:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(this.§_-10§);
                                       while(true)
                                       {
                                          §§pop().stop();
                                          addr162:
                                          while(true)
                                          {
                                             this.§_-10§ = null;
                                             addr145:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§_-vG§ = null;
                                       continue loop5;
                                    }
                                    addr199:
                                    addr157:
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    §_-pX§.§_-0B7§(§_-07E§);
                                    loop8:
                                    while(true)
                                    {
                                       this.setButtonStates(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                       loop9:
                                       while(!_loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             §_-s0§.setText("0","TextField_LevelEndScore");
                                             loop10:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   §_-s0§.setText("0","TextField_LevelEndScoreEffects");
                                                   loop11:
                                                   while(!_loc2_)
                                                   {
                                                      §§push(this.§_-ny§);
                                                      loop12:
                                                      while(§§pop())
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc1_)
                                                                  {
                                                                     if(§_-s0§.movieClip.contains(this.§_-ny§))
                                                                     {
                                                                        loop14:
                                                                        for(; !_loc2_; if(_loc1_ || this)
                                                                        {
                                                                           break loop12;
                                                                        })
                                                                        {
                                                                           §_-s0§.movieClip.removeChild(this.§_-ny§);
                                                                           while(true)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 §§goto(addr199);
                                                                              }
                                                                              addr48:
                                                                              while(!(_loc2_ && _loc1_))
                                                                              {
                                                                                 if(_loc1_ || _loc1_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 continue loop13;
                                                                                 this.§_-ny§ = null;
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§_-ny§);
                                                                        if(!_loc1_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§pop().clean();
                                                                        §§goto(addr48);
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop10;
                                                            }
                                                            continue loop11;
                                                         }
                                                         continue loop9;
                                                      }
                                                      return;
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr157);
                                          §§goto(addr162);
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                              §§goto(addr161);
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              §§pop().stop();
                           }
                           addr198:
                        }
                        §§goto(addr199);
                     }
                  }
               }
            }
         }
         §§goto(addr145);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setComponentVisualState(param1);
            do
            {
               (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setComponentVisualState(param1);
               do
               {
                  (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setComponentVisualState(param1);
                  do
                  {
                     (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setComponentVisualState(param1);
                  }
                  while(_loc3_ && param1);
                  
               }
               while(_loc3_);
               
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      private function §_-pM§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§_-0F0§ = null;
         if(_loc4_ || _loc3_)
         {
            if(this.§_-08g§)
            {
               if(_loc4_ || _loc3_)
               {
                  this.§_-08g§.stop();
                  try
                  {
                     addr44:
                     this.§_-08g§.removeEventListener(TimerEvent.TIMER,this.§_-jG§);
                     if(!(_loc5_ && _loc3_))
                     {
                        addr72:
                        var _loc2_:int = 0;
                        if(_loc4_)
                        {
                           var _loc3_:* = this.§_-0Bc§;
                           if(_loc4_ || _loc2_)
                           {
                              loop0:
                              while(§§hasnext(_loc3_,_loc2_))
                              {
                                 §§push(§§newactivation());
                                 loop1:
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                                    while(true)
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          if(§_-s0§.contains(splash))
                                          {
                                             addr128:
                                             while(true)
                                             {
                                                §_-s0§.removeChild(splash);
                                                addr132:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr128:
                                          }
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             §§pop().§§slot[1].clean();
                                             if(!(_loc5_ && _loc1_))
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      break loop3;
                                                   }
                                                   if(false)
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr128);
                                             }
                                             §§goto(addr132);
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              addr155:
                              if(!_loc5_)
                              {
                                 this.§_-0Bc§ = new Vector.<§_-0F0§>();
                                 do
                                 {
                                    this.§_-6B§();
                                 }
                                 while(!(_loc4_ || _loc2_));
                                 
                                 return;
                                 addr180:
                                 addr158:
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr158);
                  }
                  catch(e:Error)
                  {
                  }
                  §§goto(addr180);
               }
               §§goto(addr44);
            }
            §§goto(addr72);
         }
         §§goto(addr44);
      }
      
      protected function §_-6B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            (§_-s0§.getItemByName("TextField_BestScore") as §_-0Eo§).setVisibility(false);
            do
            {
               (§_-s0§.getItemByName("MovieClip_BestScoreStars") as §_-k6§).setVisibility(false);
               do
               {
                  (§_-s0§.getItemByName("TextField_NewHighScore") as §_-0Eo§).setVisibility(false);
               }
               while(!_loc2_);
               
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.cleanup();
         }
      }
      
      protected function §_-g-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-MG§.§_-4t§();
         }
         do
         {
            mNextState = this.§_-k§();
         }
         while(!(_loc2_ || this));
         
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               §§push("NEXT_LEVEL");
               if(_loc6_ || this)
               {
                  §§push(_loc5_);
                  if(_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc7_)
                        {
                           §§push(0);
                           if(_loc6_)
                           {
                              addr275:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.§_-g-§();
                                    break;
                                 case 1:
                                    §_-MG§.§_-0Eg§();
                                    addr147:
                                    if(!(_loc6_ || param1))
                                    {
                                       break;
                                    }
                                    mNextState = this.§_-Qx§();
                                    break loop0;
                                    addr141:
                                    break;
                                 case 2:
                                    §_-MG§.§_-0Eg§();
                                    loop1:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          mNextState = this.§_-Qx§();
                                          while(true)
                                          {
                                             §§push(§ in§.§_-Dc§);
                                             if(!(_loc7_ && param1))
                                             {
                                                §§push(§§pop().§_-Kd§());
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      §§push(_loc4_ = §§pop());
                                                      if(_loc6_ || param2)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               if(_loc6_ || param2)
                                                               {
                                                                  addr109:
                                                                  § in§.§_-Dc§.§_-lF§(_loc4_);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr147);
                                                               }
                                                            }
                                                            addr98:
                                                         }
                                                         break loop0;
                                                      }
                                                      break loop1;
                                                   }
                                                   break loop1;
                                                }
                                                break loop1;
                                             }
                                             §§goto(addr109);
                                          }
                                          addr117:
                                       }
                                       §§goto(addr141);
                                    }
                                    continue;
                                 case 3:
                                    §_-pX§.§_-j4§();
                                    loop2:
                                    for(; _loc6_ || this; while(true)
                                    {
                                       if(_loc7_ && param1)
                                       {
                                          continue loop2;
                                       }
                                       if(_loc6_)
                                       {
                                          if(_loc6_ || param2)
                                          {
                                             break loop0;
                                          }
                                          §§goto(addr117);
                                       }
                                       §§goto(addr98);
                                    })
                                    {
                                       while(true)
                                       {
                                          mNextState = this.§_-v0§();
                                          continue loop2;
                                       }
                                    }
                                    §§goto(addr109);
                                 case 4:
                                    AngryBirdsFP11.§_-07§.§_-0De§();
                                    if(!_loc7_)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(true)
                                          {
                                             break loop0;
                                          }
                                          §§goto(addr32);
                                       }
                                       §§goto(addr37);
                                    }
                              }
                              break;
                           }
                        }
                        else
                        {
                           addr199:
                           §§push(1);
                           if(!(_loc6_ || this))
                           {
                              addr263:
                           }
                        }
                        §§goto(addr275);
                     }
                     else
                     {
                        §§push("REPLAY");
                        if(_loc6_ || this)
                        {
                           §§push(_loc5_);
                           if(_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_)
                                 {
                                    §§goto(addr199);
                                 }
                                 else
                                 {
                                    addr260:
                                    §§push(3);
                                    if(!_loc7_)
                                    {
                                       §§goto(addr263);
                                    }
                                    §§goto(addr275);
                                 }
                              }
                              else
                              {
                                 §§push("WATCH_REPLAY");
                                 if(!(_loc7_ && param1))
                                 {
                                    addr216:
                                    §§push(_loc5_);
                                    if(_loc6_ || param3)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc7_ && param3))
                                          {
                                             §§push(2);
                                             if(!_loc6_)
                                             {
                                             }
                                          }
                                          §§goto(addr275);
                                       }
                                       else
                                       {
                                          §§push("MENU");
                                          if(_loc6_)
                                          {
                                             addr249:
                                             §§push(_loc5_);
                                             if(!(_loc7_ && param3))
                                             {
                                                addr257:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§goto(addr260);
                                                   }
                                                }
                                                else
                                                {
                                                   addr266:
                                                   if("FULLSCREEN_BUTTON" !== _loc5_)
                                                   {
                                                      §§goto(addr275);
                                                      §§push(5);
                                                   }
                                                }
                                                §§goto(addr275);
                                             }
                                          }
                                          §§goto(addr266);
                                       }
                                       §§goto(addr275);
                                    }
                                    §§goto(addr257);
                                 }
                                 §§goto(addr266);
                              }
                              §§goto(addr275);
                           }
                           §§goto(addr257);
                        }
                        §§goto(addr216);
                     }
                  }
                  §§goto(addr266);
               }
               §§goto(addr249);
            }
            §§goto(addr260);
         }
      }
      
      protected function §_-Qx§() : String
      {
         return §_-MG§.§_-pk§;
      }
      
      protected function §_-k§() : String
      {
         return StateCutScene.§_-pk§;
      }
      
      public function §_-v0§() : String
      {
         return §_-UO§.§_-pk§;
      }
   }
}
