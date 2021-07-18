package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§;!j§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §-!0§.§1^§;
   import §1?§.§+!§;
   import §5!`§.§ !c§;
   import §5!`§.§%!Y§;
   import §8!Q§.§2!7§;
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §0k§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
      
      public static const §0#§:Number = 30;
      
      protected static const §]!2§:String = "ScoreLoopCountChannel";
      
      protected static const §;X§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §0k§)
         {
            STATE_NAME = "LevelEndStateRio";
            if(_loc2_)
            {
               §0#§ = 30;
               if(!_loc1_)
               {
                  §§goto(addr44);
               }
            }
            §§goto(addr54);
         }
         addr44:
         if(!(_loc1_ && _loc2_))
         {
            addr54:
            §;X§ = "EndScreenEffectChannel";
         }
      }
      
      private var §9!t§:§0Y§;
      
      private var §#H§:Number;
      
      private var §?!H§:Number = 0.0;
      
      private var §4!q§:Number = 0.0;
      
      private var §#!<§:Boolean = false;
      
      private var §1!+§:Timer;
      
      private var §7H§:§%!Y§;
      
      private var §@W§:Array;
      
      protected var §>!^§:§ !c§;
      
      protected var §>!_§:Vector.<§ !c§>;
      
      public var mNewScoreCounter:int;
      
      private var §=w§:int;
      
      private var §9i§:Boolean;
      
      protected var §>H§:Boolean;
      
      private var §]!4§:§2!7§;
      
      protected var §8!_§:Boolean;
      
      private var §47§:§0Y§;
      
      protected var §^!-§:Boolean;
      
      protected var §4!$§:int;
      
      public function §0k§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§@W§ = [];
            if(_loc4_)
            {
               this.§]!4§ = new §2!7§();
               if(!(_loc3_ && param2))
               {
                  super(param1,param2);
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§>!_§ = new Vector.<§ !c§>();
         §+!§.§#n§(§]!2§,1,1);
         §+!§.§#n§(§;X§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§@W§);
            if(!_loc2_)
            {
               §§pop().push((§+!$§.getItemByName("Button_Menu") as §#!'§).x);
               if(_loc1_)
               {
                  addr31:
                  §§push(this.§@W§);
                  if(_loc1_ || _loc2_)
                  {
                     addr50:
                     §§pop().push((§+!$§.getItemByName("Button_Replay") as §#!'§).x);
                     if(_loc1_ || _loc1_)
                     {
                        §§push(this.§@W§);
                        if(_loc1_ || this)
                        {
                           §§pop().push((§+!$§.getItemByName("Button_NextLevel") as §#!'§).x);
                           if(_loc1_)
                           {
                              addr94:
                              this.§@W§.push((§+!$§.getItemByName("Button_CutScene") as §#!'§).x);
                              addr92:
                           }
                           return;
                        }
                     }
                     §§goto(addr92);
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr50);
         }
         §§goto(addr31);
      }
      
      protected function getViewXML() : XML
      {
         return §=!Z§.§;K§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§1^§.§ ]§))
         {
            (§+!$§.getItemByName("Button_Menu") as §#!'§).setVisibility(false);
            (§+!$§.getItemByName("Button_Replay") as §#!'§).setVisibility(true);
            (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setVisibility(false);
            if(_loc2_)
            {
               (§+!$§.getItemByName("Button_CutScene") as §#!'§).setVisibility(true);
               if(!(_loc1_ && _loc2_))
               {
                  (§+!$§.getItemByName("Button_Replay") as §#!'§).x = this.§@W§[0] + Math.abs(this.§@W§[1] - this.§@W§[0]) / 2;
                  if(!_loc1_)
                  {
                     (§+!$§.getItemByName("Button_CutScene") as §#!'§).x = this.§@W§[1] + Math.abs(this.§@W§[2] - this.§@W§[1]) / 2;
                  }
                  else
                  {
                     addr194:
                     (§+!$§.getItemByName("Button_CutScene") as §#!'§).x = this.§@W§[2];
                  }
                  §§goto(addr204);
               }
               else
               {
                  addr139:
                  (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setVisibility(false);
               }
               §§goto(addr204);
            }
            (§+!$§.getItemByName("Button_CutScene") as §#!'§).setVisibility(true);
            if(!_loc1_)
            {
               addr155:
               (§+!$§.getItemByName("Button_Menu") as §#!'§).x = this.§@W§[0];
               if(!_loc1_)
               {
                  (§+!$§.getItemByName("Button_Replay") as §#!'§).x = this.§@W§[1];
                  if(_loc2_ || _loc2_)
                  {
                  }
                  §§goto(addr204);
               }
               §§goto(addr194);
            }
         }
         else
         {
            (§+!$§.getItemByName("Button_Menu") as §#!'§).setVisibility(true);
            if(_loc2_)
            {
               (§+!$§.getItemByName("Button_Replay") as §#!'§).setVisibility(true);
               if(!_loc1_)
               {
                  §§goto(addr139);
               }
               §§goto(addr155);
            }
         }
         addr204:
      }
      
      protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            (§+!$§.getItemByName("Button_Menu") as §#!'§).setVisibility(true);
            if(!_loc2_)
            {
               addr27:
               (§+!$§.getItemByName("Button_Replay") as §#!'§).setVisibility(true);
               if(_loc1_)
               {
                  (§+!$§.getItemByName("Button_CutScene") as §#!'§).setVisibility(false);
                  if(_loc1_ || _loc1_)
                  {
                     if(§1^§.§`!L§())
                     {
                        (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setVisibility(true);
                        if(_loc1_ || _loc1_)
                        {
                           (§+!$§.getItemByName("Button_Menu") as §#!'§).x = this.§@W§[0];
                           (§+!$§.getItemByName("Button_Replay") as §#!'§).x = this.§@W§[1];
                           (§+!$§.getItemByName("Button_NextLevel") as §#!'§).x = this.§@W§[2];
                           if(!_loc1_)
                           {
                              addr153:
                              (§+!$§.getItemByName("Button_Replay") as §#!'§).x = this.§@W§[1] + Math.abs(this.§@W§[2] - this.§@W§[1]) / 2;
                           }
                        }
                     }
                     else
                     {
                        (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setVisibility(false);
                        (§+!$§.getItemByName("Button_Menu") as §#!'§).x = this.§@W§[0] + Math.abs(this.§@W§[1] - this.§@W§[0]) / 2;
                        if(_loc1_)
                        {
                           §§goto(addr153);
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.activate();
            this.§^!-§ = false;
            if(!_loc1_)
            {
               §'!V§.pause();
               if(_loc2_ || _loc2_)
               {
                  this.§7H§ = new §%!Y§(0,0,0,0);
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr65);
                  }
                  §§goto(addr97);
               }
               addr65:
               §+!$§.movieClip.addChildAt(this.§7H§,§+!$§.movieClip.numChildren - 1);
               if(§1^§.§`!?§())
               {
                  addr77:
                  this.showButtonsCutScene();
               }
               else
               {
                  this.showButtonsNormal();
               }
               this.mNewScoreCounter = 0;
               if(!_loc1_)
               {
                  addr97:
                  this.§9i§ = false;
                  if(_loc2_ || _loc1_)
                  {
                     addr107:
                     §+!§.§4c§("LevelCompletedTheme1");
                     this.§7H§.§#[§(0.7);
                     if(!_loc1_)
                     {
                        this.§?!H§ = 0;
                     }
                     this.§4!q§ = 0;
                  }
               }
               this.§5!t§();
               return;
            }
            §§goto(addr77);
         }
         §§goto(addr107);
      }
      
      private function §5!t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>H§ = false;
            if(!(_loc2_ && _loc2_))
            {
               this.setScoreData();
               if(_loc1_)
               {
                  this.§1!+§ = new Timer(500);
                  if(!_loc1_)
                  {
                  }
                  §§goto(addr64);
               }
               this.§=w§ = 0;
               if(!_loc1_)
               {
               }
               §§goto(addr64);
            }
         }
         addr64:
         this.§1!+§.addEventListener(TimerEvent.TIMER,this.§;#§);
         if(!_loc2_)
         {
            this.§1!+§.start();
         }
      }
      
      protected function setMightyEagleFeather() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(AngryBirdsFP11.sUserProgress.§8!O§(§1^§.§ ]§) == 100)
            {
               if(!(_loc1_ && _loc2_))
               {
                  (§+!$§.getItemByName("MovieClip_ResultMEFeather") as §%O§).mClip.gotoAndStop("On");
                  if(_loc2_ || _loc1_)
                  {
                     addr73:
                  }
               }
               §§goto(addr73);
            }
            else
            {
               (§+!$§.getItemByName("MovieClip_ResultMEFeather") as §%O§).mClip.gotoAndStop("Off");
            }
            return;
         }
         §§goto(addr73);
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(this.§8!_§)
         {
            if(_loc4_)
            {
               §§push(param1);
               if(_loc4_ || param1)
               {
                  §§push(int(§§pop()));
               }
               param2 = §§pop();
               if(!_loc5_)
               {
                  AngryBirdsFP11.sUserProgress.§8!f§(§1^§.§ ]§,param2);
                  §+!$§.setText("New Highscore!","TextField_BestScore");
                  if(!(_loc4_ || param2))
                  {
                     §§push(this.§4!$§);
                     if(!(_loc5_ && param2))
                     {
                        var _loc3_:* = §§pop();
                        if(!(_loc5_ && param2))
                        {
                           §§push(1);
                           if(_loc4_ || param2)
                           {
                              §§push(_loc3_);
                              if(!(_loc5_ && param2))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    §§push(_loc4_ || this ? 0 : 2);
                                 }
                                 else
                                 {
                                    §§push(2);
                                    if(!_loc5_)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc5_)
                                       {
                                          addr167:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                §§push(1);
                                                if(!(_loc5_ && this))
                                                {
                                                   addr206:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         (§+!$§.getItemByName("MovieClip_BestScoreStars") as §%O§).§-!a§("OneStar");
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         break;
                                                      case 1:
                                                         (§+!$§.getItemByName("MovieClip_BestScoreStars") as §%O§).§-!a§("TwoStar");
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         addr115:
                                                         break;
                                                      case 2:
                                                         (§+!$§.getItemByName("MovieClip_BestScoreStars") as §%O§).§-!a§("ThreeStar");
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§goto(addr115);
                                                         }
                                                   }
                                                   return;
                                                   addr205:
                                                   addr188:
                                                }
                                                §§goto(addr205);
                                             }
                                             else
                                             {
                                                §§goto(addr199);
                                             }
                                          }
                                          else
                                          {
                                             §§push(3);
                                             if(!(_loc5_ && param1))
                                             {
                                                addr198:
                                                if(§§pop() === _loc3_)
                                                {
                                                   §§goto(addr199);
                                                }
                                                else
                                                {
                                                   §§goto(addr205);
                                                   §§push(3);
                                                }
                                                §§goto(addr205);
                                             }
                                          }
                                          §§goto(addr199);
                                       }
                                       §§goto(addr198);
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr199);
                     }
                     §§goto(addr206);
                     addr67:
                  }
                  §§goto(addr206);
               }
            }
            else
            {
               addr60:
               this.§4!$§ = §1^§.§>6§(§1^§.§ ]§,param2);
            }
         }
         else
         {
            §+!$§.setText("Best " + param2.toString(),"TextField_BestScore");
            if(!_loc5_)
            {
               §§goto(addr60);
            }
         }
         §§goto(addr67);
      }
      
      protected function setScoreData() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(AngryBirdsFP11.sUserProgress.§!7§(§1^§.§ ]§));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§'!V§.§?!G§.getScore());
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc8_)
         {
            this.§8!_§ = _loc2_ > _loc1_;
            if(!_loc8_)
            {
               this.setScoreStars(_loc2_,_loc1_);
               if(_loc7_)
               {
                  addr47:
                  this.setMightyEagleFeather();
               }
            }
            §§push(§'!V§.§?!G§.getEagleScore());
            if(!_loc8_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(AngryBirdsFP11.sUserProgress.§8!O§(§1^§.§ ]§));
            if(_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:*;
            if(_loc5_ = _loc3_ > _loc4_)
            {
               if(!_loc8_)
               {
                  §§push(_loc3_);
                  if(_loc7_ || _loc1_)
                  {
                     §§push(int(§§pop()));
                     if(_loc7_ || _loc1_)
                     {
                        addr99:
                        _loc4_ = §§pop();
                        if(_loc7_ || this)
                        {
                           addr107:
                           §§push(AngryBirdsFP11.sUserProgress);
                           if(!_loc8_)
                           {
                              §§push(§1^§.§ ]§);
                              if(_loc7_ || this)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc8_ && this))
                                 {
                                    §§pop().§]!L§(§§pop(),§§pop());
                                    addr133:
                                    §§push(AngryBirdsFP11.sUserProgress);
                                    §§push(§1^§.§ ]§);
                                    §§push(_loc2_);
                                 }
                                 §§push(§§pop().§"!%§(§§pop(),§§pop()));
                                 if(_loc8_ && _loc2_)
                                 {
                                 }
                                 §§goto(addr143);
                              }
                           }
                        }
                        §§goto(addr133);
                     }
                     addr143:
                     var _loc6_:int = §§pop();
                     if(!(_loc8_ && _loc3_))
                     {
                        (§+!$§.getItemByName("MovieClip_NewHighScoreBadge") as §%O§).setVisibility(false);
                        if(!(_loc8_ && _loc1_))
                        {
                           (§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).mClip.gotoAndStop("UnLit");
                           if(_loc7_ || _loc2_)
                           {
                              (§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).mClip.gotoAndStop("UnLit");
                              if(!_loc7_)
                              {
                              }
                           }
                           §§goto(addr208);
                        }
                        (§+!$§.getItemByName("MovieClip_StarRight") as §%O§).mClip.gotoAndStop("UnLit");
                     }
                     addr208:
                     return;
                  }
                  §§goto(addr99);
               }
               §§goto(addr107);
            }
            §§goto(addr133);
         }
         §§goto(addr47);
      }
      
      protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§8!_§)
            {
               §+!§.§4c§("Hiscore_Badge",§;X§);
               §+!$§.setText("New Highscore!","TextField_NewHighScore");
               (§+!$§.getItemByName("TextField_NewHighScore") as §;!j§).setVisibility(true);
               (§+!$§.getItemByName("MovieClip_BestScoreStars") as §%O§).setVisibility(false);
               addr29:
               if(!(_loc2_ && _loc1_))
               {
                  this.§77§();
               }
               else
               {
                  addr87:
                  (§+!$§.getItemByName("MovieClip_BestScoreStars") as §%O§).setVisibility(true);
               }
            }
            else
            {
               (§+!$§.getItemByName("TextField_BestScore") as §;!j§).setVisibility(true);
               if(_loc1_ || _loc2_)
               {
                  §§goto(addr87);
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      protected function §77§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§?!H§ = 0;
            if(_loc1_)
            {
               this.§4!q§ = 0;
               if(!_loc1_)
               {
               }
               §§goto(addr31);
            }
            this.§#H§ = §0#§;
         }
         addr31:
      }
      
      private function §'!O§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x = (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x - this.§?!H§;
         (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y = (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y - this.§4!q§;
         if(!(_loc2_ && param1))
         {
            if(this.§#H§ > 0)
            {
               if(_loc3_ || _loc3_)
               {
                  §§push(this);
                  §§push(Math.random() - 0.5);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(this.§#H§);
                     if(_loc3_)
                     {
                        §§push(§§pop() / §0#§);
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() * 20);
                     }
                  }
                  §§pop().§?!H§ = §§pop();
                  §§push(this);
                  §§push(Math.random() - 0.5);
                  if(_loc3_)
                  {
                     §§push(this.§#H§);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() / §0#§);
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() * 20);
                     }
                  }
                  §§pop().§4!q§ = §§pop();
                  (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x = (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x + this.§?!H§;
               }
               (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y = (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y + this.§4!q§;
            }
            else
            {
               this.§?!H§ = 0;
               if(_loc3_ || _loc2_)
               {
                  addr184:
                  this.§4!q§ = 0;
               }
            }
            §§push(this);
            §§push(this.§#H§);
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() / 10);
               }
               §§push(§§pop() - §§pop());
            }
            §§pop().§#H§ = §§pop();
            return;
         }
         §§goto(addr184);
      }
      
      private function §;#§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = §1^§.§'!_§(§1^§.§ ]§).§9>§;
         var _loc5_:Number = §1^§.§'!_§(§1^§.§ ]§).§6!H§;
         if((§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).mClip.currentLabel == "UnLit")
         {
            if(_loc10_ || this)
            {
               §+!§.§4c§("Hiscore_Count",§]!2§,100);
               §+!§.§4c§("Hiscore_Star_Splash1",§;X§);
               this.§1!+§.delay = 1000;
               §§push(this.§]!4§);
               if(!(_loc9_ && _loc3_))
               {
                  §§pop().assign(§'!V§.§?!G§.getScore());
                  §§push(this.§]!4§);
                  if(!(_loc9_ && _loc2_))
                  {
                     §§push(§§pop().getValue());
                     if(!(_loc9_ && _loc2_))
                     {
                        §§push(_loc4_);
                        if(!(_loc9_ && this))
                        {
                           §§push(§§pop() / §§pop());
                           §§push(2);
                           if(_loc10_ || _loc3_)
                           {
                              §§push(Number(§§pop() * §§pop()));
                              if(!_loc9_)
                              {
                                 _loc6_ = §§pop();
                                 if(_loc10_ || _loc3_)
                                 {
                                    addr127:
                                    if(_loc4_ <= 0)
                                    {
                                       §§push(1);
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          addr136:
                                          _loc6_ = Number(§§pop());
                                          addr138:
                                          this.§47§ = §@!T§.§`!t§.§8!"§(this,{"mNewScoreCounter":this.§]!4§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§push(this.§47§);
                                             if(_loc10_)
                                             {
                                                §§pop().onComplete = this.§7a§;
                                                §§push(this.§47§);
                                             }
                                             §§pop().play();
                                             if(_loc10_)
                                             {
                                                (§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).mClip.gotoAndStop("Lit");
                                                _loc2_ = Number((§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).x + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x);
                                                addr195:
                                                §§push(Number((§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).y + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y));
                                                if(_loc10_ || _loc3_)
                                                {
                                                   addr216:
                                                   _loc3_ = §§pop();
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      this.§>!^§ = new § !c§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§ !c§.§&$§);
                                                      if(_loc10_)
                                                      {
                                                         §+!$§.addChild(this.§>!^§);
                                                         this.§>!_§.push(this.§>!^§);
                                                      }
                                                      else
                                                      {
                                                         addr276:
                                                         if((§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).mClip.currentLabel == "UnLit")
                                                         {
                                                            §+!§.§4c§("Hiscore_Star_Splash2",§;X§);
                                                            (§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).mClip.gotoAndStop("Lit");
                                                            addr322:
                                                            _loc2_ = Number((§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).x + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x);
                                                            if(_loc10_ || this)
                                                            {
                                                               §§push(Number((§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).y + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y));
                                                               if(!_loc9_)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  addr347:
                                                                  this.§>!^§ = new § !c§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§ !c§.§#4§);
                                                                  §+!$§.addChild(this.§>!^§);
                                                                  this.§>!_§.push(this.§>!^§);
                                                                  addr615:
                                                                  var _loc7_:*;
                                                                  §§push((_loc7_ = this).§=w§);
                                                                  if(_loc10_ || param1)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                  }
                                                                  var _loc8_:* = §§pop();
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     _loc7_.§=w§ = _loc8_;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr443:
                                                                  _loc2_ = §§pop();
                                                                  if(_loc10_ || _loc2_)
                                                                  {
                                                                     addr465:
                                                                     _loc3_ = Number((§+!$§.getItemByName("MovieClip_StarRight") as §%O§).y + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y);
                                                                     if(!_loc9_)
                                                                     {
                                                                        this.§>!^§ = new § !c§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§ !c§.§%p§);
                                                                        if(_loc9_ && this)
                                                                        {
                                                                           addr549:
                                                                           (§+!$§.getItemByName("MovieClip_NewHighScoreBadge") as §%O§).setVisibility(true);
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr566:
                                                                              this.§9!t§ = §@!T§.§`!t§.§8!"§((§+!$§.getItemByName("MovieClip_NewHighScoreBadge") as §%O§).mClip,{
                                                                                 "scaleX":1,
                                                                                 "scaleY":1
                                                                              },{
                                                                                 "scaleX":7,
                                                                                 "scaleY":7
                                                                              },0.1);
                                                                              §§push(this.§9!t§);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§pop().onComplete = this.onBadgeLanded;
                                                                                 §§goto(addr640);
                                                                              }
                                                                              §§pop().play();
                                                                              §§goto(addr615);
                                                                           }
                                                                           §§goto(addr566);
                                                                        }
                                                                        §§goto(addr615);
                                                                     }
                                                                     §§goto(addr549);
                                                                  }
                                                                  §+!$§.addChild(this.§>!^§);
                                                                  this.§>!_§.push(this.§>!^§);
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     §§goto(addr615);
                                                                  }
                                                               }
                                                               §§goto(addr640);
                                                            }
                                                            §§goto(addr566);
                                                         }
                                                         else
                                                         {
                                                            addr373:
                                                            §§push(this.§]!4§.getValue() >= _loc4_);
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc9_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     §§pop();
                                                                     if(_loc10_)
                                                                     {
                                                                        addr397:
                                                                        if((§+!$§.getItemByName("MovieClip_StarRight") as §%O§).mClip.currentLabel == "UnLit")
                                                                        {
                                                                           addr398:
                                                                           this.§^!-§ = true;
                                                                           §+!§.§4c§("Hiscore_Star_Splash3",§;X§);
                                                                           if(_loc10_)
                                                                           {
                                                                              (§+!$§.getItemByName("MovieClip_StarRight") as §%O§).mClip.gotoAndStop("Lit");
                                                                              if(_loc10_ || _loc2_)
                                                                              {
                                                                              }
                                                                              §§goto(addr640);
                                                                           }
                                                                           §§push(Number((§+!$§.getItemByName("MovieClip_StarRight") as §%O§).x + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x));
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              §§goto(addr443);
                                                                           }
                                                                           §§goto(addr465);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this.§9i§);
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 this.§9i§ = true;
                                                                                 if(_loc10_ || this)
                                                                                 {
                                                                                    §§goto(addr615);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr530:
                                                                                    §§push(this.§8!_§);
                                                                                    if(!(_loc9_ && _loc3_))
                                                                                    {
                                                                                       addr539:
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr542:
                                                                                       §§pop();
                                                                                       §§push(this.§>H§);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                       }
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§goto(addr549);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       (§+!$§.getItemByName("MovieClip_NewHighScoreBadge") as §%O§).setVisibility(false);
                                                                                    }
                                                                                    §§goto(addr566);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.§1!+§.stop();
                                                                                 if(_loc10_ || param1)
                                                                                 {
                                                                                    §§goto(addr530);
                                                                                 }
                                                                                 §§goto(addr615);
                                                                              }
                                                                              §§goto(addr615);
                                                                           }
                                                                           §§goto(addr539);
                                                                        }
                                                                     }
                                                                     addr640:
                                                                     if(!(_loc9_ && _loc3_))
                                                                     {
                                                                        §§push(this.§9!t§);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr397);
                                                               }
                                                               §§goto(addr530);
                                                            }
                                                            §§goto(addr397);
                                                         }
                                                      }
                                                      §§goto(addr615);
                                                   }
                                                   §§goto(addr398);
                                                }
                                                §§goto(addr322);
                                             }
                                             §§goto(addr549);
                                          }
                                          §§goto(addr397);
                                       }
                                       else
                                       {
                                          addr260:
                                          §§push(_loc5_);
                                          if(_loc10_)
                                          {
                                             addr263:
                                             §§push(§§pop() >= §§pop());
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc9_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                   }
                                                   §§goto(addr276);
                                                }
                                                §§goto(addr530);
                                             }
                                             §§goto(addr542);
                                          }
                                       }
                                       §§goto(addr373);
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr195);
                              }
                              §§goto(addr216);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr263);
                     }
                     §§goto(addr136);
                  }
                  else
                  {
                     addr252:
                     §§push(§§pop().getValue());
                     if(_loc10_ || this)
                     {
                        §§goto(addr260);
                     }
                  }
               }
               §§goto(addr373);
            }
            §§goto(addr347);
         }
         else
         {
            §§push(this.§]!4§);
            if(!_loc9_)
            {
               §§goto(addr252);
            }
         }
         §§goto(addr373);
      }
      
      private function §7a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+!§.§+!h§(§]!2§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§ !c§ = null;
         §§push(super.run(param1));
         if(_loc6_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc7_ && _loc3_))
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
               {
                  if(_loc6_)
                  {
                     §§push(_loc2_);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§goto(addr54);
                     }
                  }
                  else
                  {
                     §+!$§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                     addr81:
                     §§push(0);
                     addr65:
                  }
                  for each(_loc3_ in this.§>!_§)
                  {
                     if(_loc6_)
                     {
                        _loc3_.update(param1);
                     }
                  }
                  if(!(_loc7_ && this))
                  {
                     if(this.§#H§ >= 0)
                     {
                        if(_loc6_ || param1)
                        {
                           this.§'!O§(param1);
                           if(_loc6_)
                           {
                              addr136:
                              if(mNextState.length > 0)
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    §'!V§.§1!2§.clearLevel();
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§goto(addr157);
                                    }
                                 }
                                 §§goto(addr157);
                              }
                           }
                        }
                        return §;!!§.STATE_STATUS_RUNNING;
                     }
                     §§goto(addr136);
                  }
                  addr157:
                  return §;!!§.STATE_STATUS_COMPLETED;
               }
               §+!$§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
               if(!_loc7_)
               {
                  §§goto(addr65);
               }
               §§goto(addr81);
            }
            addr54:
            return §§pop();
         }
         §§goto(addr81);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.deActivate();
         this.§!>§();
         if(_loc2_ || _loc1_)
         {
            this.§#H§ = 0;
            if(!(_loc1_ && this))
            {
               this.mNewScoreCounter = 0;
               if(!(_loc1_ && this))
               {
                  §§push(this.§47§);
                  if(!(_loc1_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        addr70:
                        this.§47§.stop();
                        this.§47§ = null;
                        if(!_loc1_)
                        {
                           addr76:
                           §§push(this.§9!t§);
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 addr83:
                                 this.§9!t§.stop();
                                 if(_loc2_)
                                 {
                                    addr86:
                                    this.§9!t§ = null;
                                 }
                                 addr121:
                                 §§push(this.§7H§);
                                 if(_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc1_)
                                       {
                                          if(§+!$§.movieClip.contains(this.§7H§))
                                          {
                                             §+!$§.movieClip.removeChild(this.§7H§);
                                             if(!_loc2_)
                                             {
                                             }
                                             §§goto(addr147);
                                          }
                                          addr143:
                                          this.§7H§.clean();
                                          this.§7H§ = null;
                                       }
                                    }
                                    addr147:
                                    return;
                                 }
                                 §§goto(addr143);
                              }
                              §+!§.§+!h§(§]!2§);
                              this.setButtonStates(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              addr96:
                              §+!$§.setText("0","TextField_LevelEndScore");
                              §+!$§.setText("0","TextField_LevelEndScoreEffects");
                              if(_loc2_ || this)
                              {
                                 §§goto(addr121);
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr76);
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr83);
         }
         §§goto(addr96);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§+!$§.getItemByName("Button_Menu") as §#!'§).setComponentVisualState(param1);
            if(!(_loc2_ && _loc2_))
            {
               (§+!$§.getItemByName("Button_Replay") as §#!'§).setComponentVisualState(param1);
               addr43:
               if(_loc3_ || param1)
               {
                  §§goto(addr67);
               }
               §§goto(addr81);
            }
            addr67:
            (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setComponentVisualState(param1);
            if(_loc3_ || this)
            {
               addr81:
               (§+!$§.getItemByName("Button_CutScene") as §#!'§).setComponentVisualState(param1);
            }
            return;
         }
         §§goto(addr43);
      }
      
      private function §!>§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§ !c§ = null;
         if(_loc4_)
         {
            if(this.§1!+§)
            {
               if(!(_loc5_ && _loc2_))
               {
                  this.§1!+§.stop();
                  try
                  {
                     addr39:
                     this.§1!+§.removeEventListener(TimerEvent.TIMER,this.§;#§);
                     if(_loc5_ && _loc2_)
                     {
                     }
                  }
                  catch(e:Error)
                  {
                  }
                  §§goto(addr149);
               }
               §§goto(addr39);
            }
            var _loc2_:int = 0;
            if(_loc4_ || _loc3_)
            {
               var _loc3_:* = this.§>!_§;
               if(!_loc5_)
               {
                  loop0:
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     if(!_loc5_)
                     {
                        §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                        if(_loc4_ || this)
                        {
                           if(§+!$§.contains(splash))
                           {
                              addr132:
                              if(!_loc4_)
                              {
                              }
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 addr133:
                                 while(true)
                                 {
                                    §§pop().§§slot[1].clean();
                                    continue loop0;
                                 }
                              }
                              addr132:
                           }
                           §§goto(addr132);
                        }
                        §+!$§.removeChild(splash);
                        if(!_loc4_)
                        {
                           continue;
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr138);
               }
               §§goto(addr132);
            }
            addr138:
            if(_loc4_)
            {
               this.§>!_§ = new Vector.<§ !c§>();
               if(!_loc4_)
               {
               }
               §§goto(addr149);
            }
            addr149:
            this.hideBestScoreTexts();
            return;
         }
         §§goto(addr39);
      }
      
      protected function hideBestScoreTexts() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§+!$§.getItemByName("TextField_BestScore") as §;!j§).setVisibility(false);
            if(!_loc2_)
            {
               (§+!$§.getItemByName("MovieClip_BestScoreStars") as §%O§).setVisibility(false);
               if(!_loc1_)
               {
               }
               §§goto(addr53);
            }
            (§+!$§.getItemByName("TextField_NewHighScore") as §;!j§).setVisibility(false);
         }
         addr53:
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      protected function §5U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §26§.§=0§();
            if(_loc2_ || _loc2_)
            {
               mNextState = this.§54§();
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(!_loc6_)
            {
               §§push("NEXT_LEVEL");
               if(_loc7_ || param3)
               {
                  §§push(_loc5_);
                  if(_loc7_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc7_)
                        {
                           §§push(0);
                           if(_loc7_)
                           {
                              addr247:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.§5U§();
                                    if(_loc7_)
                                    {
                                       break loop0;
                                    }
                                    addr32:
                                    mNextState = this.§3m§();
                                    if(!(_loc6_ && param2))
                                    {
                                       break loop0;
                                    }
                                    addr54:
                                    mNextState = this.§3m§();
                                    break;
                                 case 1:
                                    §26§.§!=§();
                                    if(!_loc6_)
                                    {
                                       §§goto(addr32);
                                    }
                                    break;
                                 case 2:
                                    §26§.§!=§();
                                    if(!(_loc7_ || this))
                                    {
                                       addr97:
                                       break loop0;
                                    }
                                    §§goto(addr54);
                                    break;
                                 case 3:
                                    §+!§.§'!Q§();
                                    mNextState = this.§3! §();
                                    §§goto(addr97);
                                 case 4:
                                    AngryBirdsFP11.§`!d§.§!5§();
                              }
                              §§push(§'!V§.§1!2§);
                              if(_loc7_ || param1)
                              {
                                 §§push(§§pop().§8!§());
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop());
                                    if(_loc7_)
                                    {
                                       §§push(_loc4_ = §§pop());
                                       if(!_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc7_ || param2)
                                             {
                                                addr87:
                                                §'!V§.§1!2§.§8V§(_loc4_);
                                             }
                                          }
                                          break;
                                       }
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr87);
                           }
                        }
                        else
                        {
                           addr166:
                           §§push(1);
                           if(_loc6_ && param2)
                           {
                           }
                        }
                        §§goto(addr247);
                     }
                     else
                     {
                        §§push("REPLAY");
                        if(!(_loc6_ && this))
                        {
                           §§push(_loc5_);
                           if(!(_loc6_ && param1))
                           {
                              addr158:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_ || param1)
                                 {
                                    §§goto(addr166);
                                 }
                                 else
                                 {
                                    addr194:
                                    §§push(2);
                                    if(!_loc7_)
                                    {
                                    }
                                    §§goto(addr247);
                                 }
                              }
                              else
                              {
                                 §§push("WATCH_REPLAY");
                                 if(!_loc6_)
                                 {
                                    addr178:
                                    §§push(_loc5_);
                                    if(_loc7_ || param3)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc6_ && param2))
                                          {
                                             §§goto(addr194);
                                          }
                                          else
                                          {
                                             addr227:
                                             §§push(3);
                                             if(!_loc7_)
                                             {
                                             }
                                             §§goto(addr247);
                                          }
                                       }
                                       else
                                       {
                                          §§push("MENU");
                                          if(_loc7_ || this)
                                          {
                                             addr206:
                                             §§push(_loc5_);
                                             if(_loc7_)
                                             {
                                                addr209:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc7_ || param1)
                                                   {
                                                      §§goto(addr227);
                                                   }
                                                }
                                                else
                                                {
                                                   addr233:
                                                   if("FULLSCREEN_BUTTON" !== _loc5_)
                                                   {
                                                      §§goto(addr247);
                                                      §§push(5);
                                                   }
                                                }
                                                §§goto(addr247);
                                                §§goto(addr247);
                                             }
                                          }
                                          §§goto(addr233);
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr209);
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr247);
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr178);
                     }
                  }
                  §§goto(addr158);
               }
               §§goto(addr206);
            }
            §§goto(addr194);
         }
      }
      
      protected function §3m§() : String
      {
         return §26§.STATE_NAME;
      }
      
      protected function §54§() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function §3! §() : String
      {
         return §?&§.STATE_NAME;
      }
   }
}
