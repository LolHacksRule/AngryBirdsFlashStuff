package §else§
{
   import §_-20§.§_-j5§;
   import §_-6r§.§_-7P§;
   import §_-6r§.§_-h3§;
   import §_-6v§.§_-In§;
   import §_-F1§.§_-V1§;
   import §_-F1§.§_-k4§;
   import §_-F1§.§_-lq§;
   import §_-F1§.§_-qp§;
   import §_-IV§.§_-dW§;
   import §_-PD§.HighscoreSidebar;
   import §_-Qx§.§_-Sf§;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-W3§.§_-zI§;
   import §_-hU§.§_-MB§;
   import §_-mD§.§_-29§;
   import §_-ox§.§_-p4§;
   import §_-rQ§.§_-Ou§;
   import §_-sT§.§_-Da§;
   import §_-y7§.§_-VA§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §_-Rk§ extends §_-iL§
   {
      
      public static const §_-Az§:String = "LevelEndState3";
      
      public static const §_-4J§:Number = 30;
      
      private static const §_-cm§:String = "ScoreLoopCountChannel";
      
      private static const §_-lw§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §_-Az§ = "LevelEndState3";
            if(!_loc1_)
            {
               §§goto(addr33);
            }
            §§goto(addr55);
         }
         addr33:
         if(_loc2_ || §_-Rk§)
         {
            §_-cm§ = "ScoreLoopCountChannel";
            if(!_loc1_)
            {
               addr55:
               §_-lw§ = "EndScreenEffectChannel";
            }
         }
      }
      
      private var §_-fp§:§_-j5§;
      
      private var §_-1A§:Number;
      
      private var §_-QU§:Number;
      
      private var §_-1h§:Number;
      
      private var §_-Lm§:Boolean = false;
      
      private var §_-Zl§:Timer;
      
      private var §_-4W§:§_-Da§;
      
      private var §_-1X§:§_-p4§;
      
      private var §_-EC§:Vector.<§_-p4§>;
      
      public var mNewScoreCounter:int;
      
      private var §_-xg§:int;
      
      private var §_-B2§:Boolean;
      
      private var §_-6R§:§_-dW§;
      
      private var §_-cV§:Boolean;
      
      private var §_-41§:§_-j5§;
      
      public function §_-Rk§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§_-6R§ = new §_-dW§();
            if(!(_loc4_ && _loc3_))
            {
               addr45:
               super(param1,param2);
            }
            return;
         }
         §§goto(addr45);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr29);
            }
            §§goto(addr51);
         }
         addr29:
         §_-NY§ = new §_-ru§(this);
         if(!_loc2_)
         {
            §_-NY§.init(§_-BN§.native.Views.View_LevelEndRio[0]);
            addr51:
            this.§_-4W§ = new §_-Da§(0,0,0,0);
            if(_loc1_ || this)
            {
               §_-NY§.mMovieClip.addChildAt(this.§_-4W§,§_-NY§.mMovieClip.numChildren - 1);
               this.§_-EC§ = new Vector.<§_-p4§>();
               §_-Ou§.§_-Rz§(§_-cm§,1,1);
            }
            §_-Ou§.§_-Rz§(§_-lw§,16,1);
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.activate();
            if(!(_loc3_ && _loc1_))
            {
               addr24:
               §_-MB§.§_-A7§.§_-Gf§(true);
            }
            var _loc1_:* = 0;
            if(_loc2_ || _loc1_)
            {
               if(§_-1S§)
               {
                  §§push(int(§_-1S§.currentPage));
                  if(_loc2_)
                  {
                     _loc1_ = §§pop();
                     addr52:
                     this.mNewScoreCounter = 0;
                     this.§_-B2§ = false;
                     §_-Ou§.playSound("LevelCompletedTheme1");
                     this.§_-4W§.§_-Mv§(0.7);
                     if(_loc2_)
                     {
                        this.§_-Ss§();
                        if(!(_loc3_ && _loc3_))
                        {
                           addr77:
                           if(_loc1_)
                           {
                              §_-1S§.choosePage(_loc1_);
                              addr88:
                              §_-1S§.changeState(HighscoreSidebar.§_-Jf§);
                              §_-1S§.showHighscores(§_-Sf§.§_-vj§);
                           }
                           §§goto(addr88);
                        }
                        return;
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr77);
               }
               §§goto(addr52);
            }
            §§goto(addr88);
         }
         §§goto(addr24);
      }
      
      private function §_-Ss§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-Zr§();
            if(!_loc1_)
            {
               this.§_-Zl§ = new Timer(500);
               if(!_loc1_)
               {
                  this.§_-xg§ = 0;
                  if(_loc2_ || this)
                  {
                     this.§_-Zl§.addEventListener(TimerEvent.TIMER,this.§_-jh§);
                     addr44:
                     if(_loc2_)
                     {
                        this.§_-Zl§.start();
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      private function §_-Zr§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = false;
         §§push(§_-Qu§.§_-di§.§_-xN§(§_-Sf§.§_-vj§));
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push((§_-MB§.§_-Gk§ as §_-zI§).getScore());
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         this.§_-cV§ = _loc2_ > _loc1_;
         if(this.§_-cV§)
         {
            §§push(_loc2_);
            if(!(_loc9_ && _loc2_))
            {
               §§push(int(§§pop()));
               if(!(_loc9_ && _loc1_))
               {
                  _loc1_ = §§pop();
                  §_-Qu§.§_-di§.§_-ux§(§_-Sf§.§_-vj§,_loc1_);
                  §_-NY§.setText("¡Nuevo Highscore!","TextField_BestScore");
                  if(!_loc10_)
                  {
                     addr89:
                     §§push(§_-Sf§.§_-mF§(§_-Sf§.§_-vj§,_loc1_));
                     if(!_loc9_)
                     {
                        addr97:
                        _loc3_ = §§pop();
                        §§push(_loc3_);
                        if(!_loc9_)
                        {
                           var _loc8_:* = §§pop();
                           if(!(_loc9_ && _loc3_))
                           {
                              §§push(1);
                              §§push(_loc8_);
                              if(!_loc9_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    §§push(!(_loc9_ && _loc2_) ? 0 : 1);
                                 }
                                 else
                                 {
                                    §§push(2);
                                    §§push(_loc8_);
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       addr176:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             §§goto(addr179);
                                          }
                                          addr190:
                                          if(!_loc9_)
                                          {
                                             addr193:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   (§_-NY§.getItemByName("MovieClip_BestScoreStars") as §_-lq§).§_-XC§("OneStar");
                                                   addr194:
                                                   §§push(§_-MB§.§_-A7§.objects.mMightyEagleAdded);
                                                   if(!(_loc9_ && _loc2_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§push(§_-Sf§.§_-L0§(§_-Sf§.§_-vj§).§_-7R§);
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               _loc4_ = §§pop();
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  §§push(Number(Math.min(100,Math.round((§_-MB§.§_-Gk§ as §_-zI§).getScore() / _loc4_ * 100))));
                                                                  if(!_loc9_)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                  }
                                                                  §§goto(addr284);
                                                               }
                                                               §§push(§_-Qu§.§_-di§);
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(§_-Sf§.§_-vj§);
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     addr267:
                                                                     _loc6_ = Number(§§pop().§_-Qi§(§§pop()));
                                                                     §§push(_loc5_);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(§§pop() > _loc6_);
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr275:
                                                                           §§push(_loc7_ = §§pop());
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr283:
                                                                                 addr284:
                                                                                 _loc6_ = §§pop();
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr291:
                                                                                    §_-Qu§.§_-di§.§_-Li§(§_-Sf§.§_-vj§,_loc6_);
                                                                                    addr289:
                                                                                    if(!(_loc9_ && this))
                                                                                    {
                                                                                       addr300:
                                                                                       (§_-NY§.getItemByName("MovieClip_NewHighScoreBadge") as §_-lq§).setVisibility(false);
                                                                                    }
                                                                                    (§_-NY§.getItemByName("MovieClip_StarLeft") as §_-lq§).mClip.gotoAndStop("UnLit");
                                                                                    (§_-NY§.getItemByName("MovieClip_StarCenter") as §_-lq§).mClip.gotoAndStop("UnLit");
                                                                                    if(!(_loc9_ && _loc2_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 return;
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           §§goto(addr284);
                                                                        }
                                                                        §§goto(addr300);
                                                                     }
                                                                     §§goto(addr283);
                                                                  }
                                                                  §§goto(addr291);
                                                               }
                                                               §§goto(addr289);
                                                            }
                                                            §§goto(addr267);
                                                         }
                                                         §§goto(addr284);
                                                      }
                                                      §§goto(addr300);
                                                   }
                                                   §§goto(addr275);
                                                case 1:
                                                   (§_-NY§.getItemByName("MovieClip_BestScoreStars") as §_-lq§).§_-XC§("TwoStar");
                                                   if(!(_loc9_ && _loc2_))
                                                   {
                                                      §§goto(addr194);
                                                   }
                                                   break;
                                                case 2:
                                                   (§_-NY§.getItemByName("MovieClip_BestScoreStars") as §_-lq§).§_-XC§("ThreeStar");
                                                   §§goto(addr194);
                                                default:
                                                   §§goto(addr194);
                                             }
                                             (§_-NY§.getItemByName("MovieClip_StarRight") as §_-lq§).mClip.gotoAndStop("UnLit");
                                             §§goto(addr284);
                                          }
                                          §§goto(addr267);
                                       }
                                       else
                                       {
                                          addr183:
                                          if(3 !== _loc8_)
                                          {
                                             §§goto(addr190);
                                             §§push(3);
                                          }
                                          §§goto(addr190);
                                       }
                                       §§push(2);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr190);
                              }
                              §§goto(addr176);
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr193);
                        addr96:
                        addr98:
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr194);
               }
               §§goto(addr97);
            }
            §§goto(addr96);
         }
         else
         {
            §_-NY§.setText("Mejor " + _loc1_.toString(),"TextField_BestScore");
            if(!_loc9_)
            {
               §§goto(addr89);
            }
         }
         §§goto(addr98);
      }
      
      private function §_-89§(param1:§_-In§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-fp§.removeEventListener(§_-In§.COMPLETE,this.§_-89§);
            if(this.§_-cV§)
            {
               if(_loc3_ || _loc2_)
               {
                  §_-Ou§.§_-BB§(§_-lw§);
                  §_-Ou§.playSound("Hiscore_Badge",§_-lw§);
                  §_-NY§.setText("¡Nuevo Highscore!","TextField_NewHighScore");
                  addr51:
                  (§_-NY§.getItemByName("TextField_NewHighScore") as §_-V1§).setVisibility(true);
                  if(_loc3_ || _loc2_)
                  {
                     (§_-NY§.getItemByName("MovieClip_BestScoreStars") as §_-lq§).setVisibility(false);
                     if(_loc3_)
                     {
                        this.§_-Nq§();
                     }
                  }
               }
               §§goto(addr51);
            }
            else
            {
               (§_-NY§.getItemByName("TextField_BestScore") as §_-V1§).setVisibility(true);
               if(_loc3_)
               {
                  (§_-NY§.getItemByName("MovieClip_BestScoreStars") as §_-lq§).setVisibility(true);
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      private function §_-Nq§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-QU§ = (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).x;
            if(!(_loc2_ && this))
            {
               this.§_-1h§ = (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).y;
               if(_loc1_ || this)
               {
               }
               §§goto(addr62);
            }
            this.§_-1A§ = §_-4J§;
         }
         addr62:
      }
      
      private function §_-P6§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.§_-1A§ <= 0)
         {
            if(!(_loc2_ && param1))
            {
               (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).x = this.§_-QU§;
               (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).y = this.§_-1h§;
               if(!_loc3_)
               {
               }
               §§goto(addr131);
            }
            addr107:
            §§push(this);
            §§push(this.§_-1A§);
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_ || this)
               {
                  §§push(§§pop() / 10);
               }
               §§push(§§pop() - §§pop());
            }
            §§pop().§_-1A§ = §§pop();
         }
         else
         {
            §§push(§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§);
            §§push(this.§_-QU§);
            if(_loc3_)
            {
               §§push(Math.random() * (this.§_-1A§ / §_-4J§));
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() * 20);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().x = §§pop();
            §§push(§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§);
            §§push(this.§_-1h§);
            if(_loc3_)
            {
               §§push(Math.random() * (this.§_-1A§ / §_-4J§));
               if(!_loc2_)
               {
                  §§push(§§pop() * 20);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            if(_loc3_ || param1)
            {
               §§goto(addr107);
            }
         }
         addr131:
      }
      
      private function §_-jh§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:* = NaN;
         §§push(§_-Sf§.§_-L0§(§_-Sf§.§_-vj§).§for §);
         if(_loc9_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(§_-Sf§.§_-L0§(§_-Sf§.§_-vj§).§_-Xf§);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc9_)
         {
            if((§_-NY§.getItemByName("MovieClip_StarLeft") as §_-lq§).mClip.currentLabel == "UnLit")
            {
               if(_loc9_)
               {
                  §_-Ou§.playSound("Hiscore_Count",§_-cm§,100);
                  §_-Ou§.§_-BB§(§_-lw§);
                  §_-Ou§.playSound("Hiscore_Star_Splash1",§_-lw§);
                  this.§_-Zl§.delay = 1000;
                  §§push(this.§_-6R§);
                  if(_loc9_ || param1)
                  {
                     §§pop().§_-bB§(§_-MB§.§_-Gk§.getScore());
                     §§push(this.§_-6R§);
                     if(_loc9_ || _loc3_)
                     {
                        §§push(§§pop().getValue());
                        if(_loc9_ || _loc2_)
                        {
                           §§push(_loc4_);
                           if(_loc9_ || _loc2_)
                           {
                              §§push(§§pop() / §§pop() * 2);
                              if(!(_loc10_ && _loc2_))
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc6_ = §§pop();
                              this.§_-41§ = §_-29§.§_-NW§(this,{"mNewScoreCounter":this.§_-6R§.getValue()},{"mNewScoreCounter":0},_loc6_);
                              if(!_loc10_)
                              {
                                 §§push(this.§_-41§);
                                 if(_loc9_ || param1)
                                 {
                                    §§pop().onComplete = this.§_-Yh§;
                                    §§push(this.§_-41§);
                                 }
                                 §§pop().play();
                                 (§_-NY§.getItemByName("MovieClip_StarLeft") as §_-lq§).mClip.gotoAndStop("Lit");
                                 _loc2_ = (§_-NY§.getItemByName("MovieClip_StarLeft") as §_-lq§).x + (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).x;
                                 if(!_loc10_)
                                 {
                                    _loc3_ = (§_-NY§.getItemByName("MovieClip_StarLeft") as §_-lq§).y + (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).y;
                                    addr192:
                                    this.§_-1X§ = new §_-p4§(§_-Qu§.§_-1q§,§_-Qu§.§_-SP§,_loc2_,_loc3_,§_-p4§.§_-m2§);
                                    §_-NY§.addChild(this.§_-1X§);
                                    if(!_loc10_)
                                    {
                                       this.§_-EC§.push(this.§_-1X§);
                                    }
                                    else
                                    {
                                       addr383:
                                       _loc2_ = (§_-NY§.getItemByName("MovieClip_StarRight") as §_-lq§).x + (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).x;
                                       _loc3_ = (§_-NY§.getItemByName("MovieClip_StarRight") as §_-lq§).y + (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).y;
                                       if(_loc9_)
                                       {
                                          this.§_-1X§ = new §_-p4§(§_-Qu§.§_-1q§,§_-Qu§.§_-SP§,_loc2_,_loc3_,§_-p4§.§_-d7§);
                                          §_-NY§.addChild(this.§_-1X§);
                                          if(!(_loc10_ && param1))
                                          {
                                             addr438:
                                             this.§_-EC§.push(this.§_-1X§);
                                             if(_loc10_)
                                             {
                                                addr484:
                                                this.§_-fp§ = §_-29§.§_-NW§((§_-NY§.getItemByName("MovieClip_NewHighScoreBadge") as §_-lq§).mClip,{
                                                   "scaleX":1,
                                                   "scaleY":1
                                                },{
                                                   "scaleX":7,
                                                   "scaleY":7
                                                },0.1);
                                                if(!_loc10_)
                                                {
                                                   §§push(this.§_-fp§);
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      §§pop().addEventListener(§_-In§.COMPLETE,this.§_-89§);
                                                      §§push(this.§_-fp§);
                                                   }
                                                   §§pop().play();
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                   }
                                                   §§goto(addr558);
                                                }
                                             }
                                             else
                                             {
                                                addr445:
                                             }
                                          }
                                          else
                                          {
                                             addr462:
                                             if(this.§_-cV§)
                                             {
                                                if(!_loc10_)
                                                {
                                                   addr467:
                                                   (§_-NY§.getItemByName("MovieClip_NewHighScoreBadge") as §_-lq§).setVisibility(true);
                                                }
                                                §§goto(addr484);
                                             }
                                             else
                                             {
                                                (§_-NY§.getItemByName("MovieClip_NewHighScoreBadge") as §_-lq§).setVisibility(false);
                                                if(!_loc10_)
                                                {
                                                   §§goto(addr484);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr531:
                                    var _loc7_:*;
                                    §§push((_loc7_ = this).§_-xg§);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc8_:* = §§pop();
                                    if(_loc9_ || param1)
                                    {
                                       _loc7_.§_-xg§ = _loc8_;
                                    }
                                 }
                                 §§goto(addr192);
                              }
                              else
                              {
                                 addr257:
                                 §_-Ou§.playSound("Hiscore_Star_Splash2",§_-lw§);
                                 if(_loc9_ || _loc2_)
                                 {
                                    (§_-NY§.getItemByName("MovieClip_StarCenter") as §_-lq§).mClip.gotoAndStop("Lit");
                                    _loc2_ = (§_-NY§.getItemByName("MovieClip_StarCenter") as §_-lq§).x + (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).x;
                                    if(!_loc10_)
                                    {
                                       _loc3_ = (§_-NY§.getItemByName("MovieClip_StarCenter") as §_-lq§).y + (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).y;
                                       addr315:
                                       this.§_-1X§ = new §_-p4§(§_-Qu§.§_-1q§,§_-Qu§.§_-SP§,_loc2_,_loc3_,§_-p4§.§_-4p§);
                                       if(_loc9_ || _loc3_)
                                       {
                                          §_-NY§.addChild(this.§_-1X§);
                                          this.§_-EC§.push(this.§_-1X§);
                                       }
                                       else
                                       {
                                          addr371:
                                          §_-Ou§.playSound("Hiscore_Star_Splash3",§_-lw§);
                                          (§_-NY§.getItemByName("MovieClip_StarRight") as §_-lq§).mClip.gotoAndStop("Lit");
                                          §§goto(addr383);
                                       }
                                       §§goto(addr531);
                                    }
                                    §§goto(addr445);
                                 }
                              }
                              addr558:
                              return;
                           }
                           addr236:
                           §§push(§§pop() >= §§pop());
                           §§push(§§pop() >= §§pop());
                           if(_loc9_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(!_loc10_)
                                 {
                                    addr253:
                                    if((§_-NY§.getItemByName("MovieClip_StarCenter") as §_-lq§).mClip.currentLabel == "UnLit")
                                    {
                                       §_-Ou§.§_-BB§(§_-lw§);
                                       §§goto(addr257);
                                    }
                                    else
                                    {
                                       addr348:
                                       §§push(this.§_-6R§.getValue() >= _loc4_);
                                       if(!_loc10_)
                                       {
                                          addr352:
                                          if(§§pop())
                                          {
                                             §§pop();
                                             if(_loc9_)
                                             {
                                                addr365:
                                                if((§_-NY§.getItemByName("MovieClip_StarRight") as §_-lq§).mClip.currentLabel == "UnLit")
                                                {
                                                   §_-Ou§.§_-BB§(§_-lw§);
                                                   if(_loc9_)
                                                   {
                                                      §§goto(addr371);
                                                   }
                                                   else
                                                   {
                                                      addr458:
                                                   }
                                                   §§goto(addr192);
                                                }
                                                else
                                                {
                                                   §§push(this.§_-B2§);
                                                   if(_loc9_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            this.§_-B2§ = true;
                                                            if(!_loc10_)
                                                            {
                                                               §§goto(addr458);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr467);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this.§_-Zl§.stop();
                                                         §§goto(addr462);
                                                      }
                                                      §§goto(addr192);
                                                   }
                                                   §§goto(addr462);
                                                }
                                             }
                                             §§goto(addr462);
                                          }
                                          §§goto(addr365);
                                       }
                                       §§goto(addr462);
                                    }
                                 }
                                 §§goto(addr315);
                              }
                              §§goto(addr253);
                           }
                           §§goto(addr352);
                           §§goto(addr462);
                        }
                     }
                     else
                     {
                        addr225:
                        §§push(§§pop().getValue());
                        if(_loc9_)
                        {
                           §§push(_loc5_);
                           if(_loc9_ || param1)
                           {
                              §§goto(addr236);
                           }
                           §§goto(addr348);
                        }
                     }
                     §§goto(addr348);
                  }
                  §§goto(addr225);
               }
               §§goto(addr438);
            }
            else
            {
               §§push(this.§_-6R§);
               if(_loc9_ || this)
               {
                  §§goto(addr225);
               }
            }
            §§goto(addr348);
         }
         §§goto(addr192);
      }
      
      private function §_-Yh§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-Ou§.§_-BB§(§_-cm§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§_-p4§ = null;
         var _loc2_:int = super.run(param1);
         if(!(_loc6_ && _loc2_))
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               if(§§pop() != §_-VA§.STATE_STATUS_RUNNING)
               {
                  if(!_loc6_)
                  {
                     §§push(_loc2_);
                     if(_loc7_ || _loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr75);
               }
               §_-NY§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
               if(!_loc6_)
               {
                  §_-NY§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                  addr61:
               }
               §§push(0);
            }
            addr75:
            for each(_loc3_ in this.§_-EC§)
            {
               if(_loc7_)
               {
                  _loc3_.update(param1);
               }
            }
            if(_loc7_ || _loc3_)
            {
               if(this.§_-1A§ > 0)
               {
                  if(!(_loc6_ && this))
                  {
                     this.§_-P6§(param1);
                     if(_loc6_)
                     {
                     }
                  }
                  §§goto(addr135);
               }
               if(mNextState.length > 0)
               {
                  if(!_loc6_)
                  {
                     return §_-VA§.STATE_STATUS_COMPLETED;
                  }
               }
            }
            addr135:
            return §_-VA§.STATE_STATUS_RUNNING;
         }
         §§goto(addr61);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.deActivate();
         this.§_-4W§.§_-wk§(0);
         if(_loc1_)
         {
            this.§_-hp§();
            this.§_-1A§ = 0;
            if(!(_loc2_ && _loc1_))
            {
               §_-Ou§.§_-BB§(§_-cm§);
               (§_-NY§.getItemByName("Button_Menu") as §_-qp§).setComponentVisualState(§_-h3§.§_-1M§);
            }
         }
         (§_-NY§.getItemByName("Button_Replay") as §_-qp§).setComponentVisualState(§_-h3§.§_-1M§);
         §_-NY§.setText("0","TextField_LevelEndScore");
         §_-NY§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §_-hp§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§_-p4§ = null;
         if(!_loc4_)
         {
            if(this.§_-Zl§)
            {
               if(_loc5_)
               {
                  this.§_-Zl§.stop();
                  if(!_loc4_)
                  {
                     addr29:
                     this.§_-Zl§.removeEventListener(TimerEvent.TIMER,this.§_-jh§);
                  }
               }
            }
            for each(_loc1_ in this.§_-EC§)
            {
               if(_loc5_)
               {
                  if(§_-NY§.contains(_loc1_))
                  {
                     if(_loc5_)
                     {
                        addr64:
                        §_-NY§.removeChild(_loc1_);
                        if(_loc4_ && this)
                        {
                           continue;
                        }
                     }
                  }
                  _loc1_.clean();
                  continue;
               }
               §§goto(addr64);
            }
            if(_loc5_)
            {
               this.§_-EC§ = new Vector.<§_-p4§>();
               if(_loc5_)
               {
                  (§_-NY§.getItemByName("TextField_BestScore") as §_-V1§).setVisibility(false);
                  if(_loc5_)
                  {
                     (§_-NY§.getItemByName("MovieClip_BestScoreStars") as §_-lq§).setVisibility(false);
                     if(_loc5_ || this)
                     {
                     }
                     §§goto(addr127);
                  }
               }
               (§_-NY§.getItemByName("TextField_NewHighScore") as §_-V1§).setVisibility(false);
            }
            addr127:
            return;
         }
         §§goto(addr29);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.cleanup();
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.keyUp(param1);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param1)
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(!(_loc5_ && param3))
               {
                  §§push(0);
                  if(_loc5_ && param2)
                  {
                     addr121:
                  }
               }
               else
               {
                  addr111:
                  §§push(2);
                  if(_loc6_)
                  {
                     §§goto(addr121);
                  }
               }
               §§goto(addr126);
            }
            else if("REPLAY" === _loc4_)
            {
               if(!(_loc5_ && this))
               {
                  addr104:
                  §§push(1);
                  if(_loc5_)
                  {
                     §§goto(addr121);
                  }
               }
               else
               {
                  §§goto(addr111);
               }
               §§goto(addr126);
            }
            else
            {
               if("MENU" === _loc4_)
               {
                  §§goto(addr111);
               }
               else
               {
                  §§push(3);
               }
               addr126:
               switch(§§pop())
               {
                  case 0:
                     §_-Jw§.§_-GL§();
                     if(!_loc5_)
                     {
                        mNextState = StateCutScene.§_-Az§;
                        if(!(_loc5_ && param2))
                        {
                           break;
                        }
                        addr43:
                        break;
                     }
                     break;
                  case 1:
                     §_-Jw§.§_-h5§();
                     if(!_loc5_)
                     {
                        mNextState = §_-Jw§.§_-Az§;
                        if(_loc6_)
                        {
                           §§goto(addr43);
                        }
                        break;
                     }
                     break;
                  case 2:
                     mNextState = §_-pX§.§_-Az§;
                     if(!(_loc5_ && this))
                     {
                        break;
                     }
               }
               return;
            }
            §§goto(addr111);
         }
         §§goto(addr104);
      }
   }
}
