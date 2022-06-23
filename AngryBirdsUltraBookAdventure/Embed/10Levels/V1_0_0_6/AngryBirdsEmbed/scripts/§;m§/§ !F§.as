package §;m§
{
   import §#h§.§ !H§;
   import §%!6§.§'[§;
   import §'o§.§7!%§;
   import §'o§.§`K§;
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §4C§.§"m§;
   import §4C§.§1!=§;
   import §4C§.§6<§;
   import §4C§.§<k§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §?!+§.§,!G§;
   import §?!+§.§3_§;
   import §`!0§.§"?§;
   import §`!0§.§[4§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class § !F§ extends §>3§
   {
      
      public static const §-!A§:String = "LevelEndStateRio";
      
      public static const § !?§:Number = 30;
      
      protected static const §+!$§:String = "ScoreLoopCountChannel";
      
      protected static const §+p§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §-!A§ = "LevelEndStateRio";
            if(_loc2_ || _loc2_)
            {
               § !?§ = 30;
               if(!_loc1_)
               {
                  §+!$§ = "ScoreLoopCountChannel";
                  if(!(_loc1_ && § !F§))
                  {
                     addr69:
                     §+p§ = "EndScreenEffectChannel";
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      private var §?g§:§3_§;
      
      private var §7!G§:Number;
      
      private var §&!,§:Number = 0.0;
      
      private var §6!1§:Number = 0.0;
      
      private var §4=§:Boolean = false;
      
      private var §!r§:Timer;
      
      private var §=@§:§`K§;
      
      protected var §,-§:Array;
      
      protected var §4o§:§7!%§;
      
      protected var §<l§:Vector.<§7!%§>;
      
      public var mNewScoreCounter:int;
      
      private var §-;§:int;
      
      private var §3Q§:Boolean;
      
      protected var §[m§:Boolean;
      
      private var §&<§:§'[§;
      
      protected var §#>§:Boolean;
      
      private var §>o§:§3_§;
      
      protected var §3!C§:Boolean;
      
      protected var §[e§:int;
      
      public function § !F§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§,-§ = [];
            if(!_loc4_)
            {
               §§goto(addr38);
            }
            §§goto(addr44);
         }
         addr38:
         this.§&<§ = new §'[§();
         if(_loc3_)
         {
            addr44:
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            §-f§ = new §0#§(this);
            §-f§.init(this.getViewXML());
            this.initButtonDefaultPositions();
            if(_loc2_)
            {
               this.§<l§ = new Vector.<§7!%§>();
            }
            § !H§.§+z§(§+!$§,1,1);
            § !H§.§+z§(§+p§,3,1);
         }
      }
      
      protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§,-§);
            if(!(_loc1_ && _loc1_))
            {
               §§pop().push((§-f§.getItemByName("Button_Menu") as §6<§).x);
               if(_loc2_)
               {
                  §§push(this.§,-§);
                  if(_loc2_)
                  {
                     §§pop().push((§-f§.getItemByName("Button_Replay") as §6<§).x);
                     if(_loc2_ || _loc2_)
                     {
                        addr80:
                        §§push(this.§,-§);
                        if(!_loc1_)
                        {
                           addr84:
                           §§pop().push((§-f§.getItemByName("Button_NextLevel") as §6<§).x);
                           if(_loc2_)
                           {
                              addr95:
                              this.§,-§.push((§-f§.getItemByName("Button_CutScene") as §6<§).x);
                           }
                        }
                        §§goto(addr95);
                     }
                     return;
                  }
                  §§goto(addr95);
               }
               §§goto(addr80);
            }
            §§goto(addr84);
         }
         §§goto(addr95);
      }
      
      protected function getViewXML() : XML
      {
         return §06§.§-`§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§59§.§%j§))
            {
               if(!(_loc2_ && _loc1_))
               {
                  (§-f§.getItemByName("Button_Menu") as §6<§).setVisibility(false);
               }
               (§-f§.getItemByName("Button_Replay") as §6<§).setVisibility(true);
               if(_loc1_ || this)
               {
                  (§-f§.getItemByName("Button_NextLevel") as §6<§).setVisibility(false);
                  (§-f§.getItemByName("Button_CutScene") as §6<§).setVisibility(true);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr73:
                     (§-f§.getItemByName("Button_Replay") as §6<§).x = this.§,-§[0] + Math.abs(this.§,-§[1] - this.§,-§[0]) / 2;
                     (§-f§.getItemByName("Button_CutScene") as §6<§).x = this.§,-§[1] + Math.abs(this.§,-§[2] - this.§,-§[1]) / 2;
                     if(_loc2_ && _loc2_)
                     {
                        addr171:
                        (§-f§.getItemByName("Button_CutScene") as §6<§).setVisibility(true);
                        (§-f§.getItemByName("Button_Menu") as §6<§).x = this.§,-§[0];
                        if(!(_loc2_ && _loc2_))
                        {
                           (§-f§.getItemByName("Button_Replay") as §6<§).x = this.§,-§[1];
                           (§-f§.getItemByName("Button_CutScene") as §6<§).x = this.§,-§[2];
                        }
                     }
                     else
                     {
                        addr138:
                     }
                  }
                  §§goto(addr225);
               }
               §§goto(addr73);
            }
            else
            {
               (§-f§.getItemByName("Button_Menu") as §6<§).setVisibility(true);
               if(!_loc2_)
               {
                  (§-f§.getItemByName("Button_Replay") as §6<§).setVisibility(true);
                  if(!_loc2_)
                  {
                     (§-f§.getItemByName("Button_NextLevel") as §6<§).setVisibility(false);
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr171);
                     }
                  }
                  addr225:
                  return;
               }
            }
            §§goto(addr171);
         }
         §§goto(addr138);
      }
      
      protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§-f§.getItemByName("Button_Menu") as §6<§).setVisibility(true);
            (§-f§.getItemByName("Button_Replay") as §6<§).setVisibility(true);
            if(!_loc2_)
            {
               (§-f§.getItemByName("Button_CutScene") as §6<§).setVisibility(false);
               addr41:
               if(§59§.§+-§())
               {
                  if(_loc1_)
                  {
                     (§-f§.getItemByName("Button_NextLevel") as §6<§).setVisibility(true);
                     (§-f§.getItemByName("Button_Menu") as §6<§).x = this.§,-§[0];
                     if(!_loc2_)
                     {
                        (§-f§.getItemByName("Button_Replay") as §6<§).x = this.§,-§[1];
                        (§-f§.getItemByName("Button_NextLevel") as §6<§).x = this.§,-§[2];
                        if(!_loc1_)
                        {
                           (§-f§.getItemByName("Button_Menu") as §6<§).x = this.§,-§[0] + Math.abs(this.§,-§[1] - this.§,-§[0]) / 2;
                           addr139:
                           (§-f§.getItemByName("Button_Replay") as §6<§).x = this.§,-§[1] + Math.abs(this.§,-§[2] - this.§,-§[1]) / 2;
                           addr105:
                        }
                        else
                        {
                           addr97:
                        }
                        return;
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr139);
               }
               else
               {
                  (§-f§.getItemByName("Button_NextLevel") as §6<§).setVisibility(false);
               }
            }
            §§goto(addr105);
         }
         §§goto(addr41);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.activate();
         if(!_loc1_)
         {
            this.§3!C§ = false;
            if(_loc2_)
            {
               §"h§.pause();
               if(_loc2_ || this)
               {
                  this.§=@§ = new §`K§(0,0,0,0);
                  if(!_loc1_)
                  {
                     §-f§.movieClip.addChildAt(this.§=@§,§-f§.movieClip.numChildren - 1);
                     if(!_loc1_)
                     {
                        addr66:
                        if(§59§.§^G§())
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              this.showButtonsCutScene();
                              addr78:
                           }
                           addr111:
                           § !H§.§ !%§("LevelCompletedTheme1");
                           if(_loc2_ || _loc2_)
                           {
                              this.§=@§.§?`§(0.7);
                              this.§&!,§ = 0;
                              this.§6!1§ = 0;
                              this.§-!"§();
                           }
                           §§goto(addr133);
                        }
                        else
                        {
                           this.showButtonsNormal();
                        }
                        this.mNewScoreCounter = 0;
                        if(_loc2_ || _loc2_)
                        {
                           this.§3Q§ = false;
                           if(_loc1_ && this)
                           {
                           }
                           §§goto(addr133);
                        }
                     }
                     §§goto(addr111);
                  }
               }
               addr133:
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr66);
      }
      
      private function §-!"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§[m§ = false;
            this.setScoreData();
            this.§!r§ = new Timer(500);
            if(_loc2_)
            {
               addr51:
               this.§-;§ = 0;
               if(_loc2_ || this)
               {
                  this.§!r§.addEventListener(TimerEvent.TIMER,this.§`e§);
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr73);
               }
               this.§!r§.start();
            }
            addr73:
            return;
         }
         §§goto(addr51);
      }
      
      protected function setMightyEagleFeather() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(AngryBirdsFP11.sUserProgress.§4a§(§59§.§%j§) == 100)
            {
               if(!_loc2_)
               {
                  (§-f§.getItemByName("MovieClip_ResultMEFeather") as §"m§).mClip.gotoAndStop("On");
                  if(!_loc1_)
                  {
                  }
                  §§goto(addr71);
               }
            }
            else
            {
               (§-f§.getItemByName("MovieClip_ResultMEFeather") as §"m§).mClip.gotoAndStop("Off");
            }
         }
         addr71:
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(this.§#>§)
         {
            if(!(_loc5_ && _loc3_))
            {
               §§push(param1);
               if(!(_loc5_ && param1))
               {
                  §§push(int(§§pop()));
               }
               param2 = §§pop();
               AngryBirdsFP11.sUserProgress.§9h§(§59§.§%j§,param2);
               §-f§.setText("New Highscore!","TextField_BestScore");
               if(!(_loc4_ || param2))
               {
                  §§push(this.§[e§);
                  if(_loc4_)
                  {
                     var _loc3_:* = §§pop();
                     if(_loc4_ || param1)
                     {
                        §§push(1);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(_loc3_);
                           if(!(_loc5_ && _loc3_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_ || param1)
                                 {
                                    addr166:
                                    §§push(0);
                                 }
                                 else
                                 {
                                    addr191:
                                    §§push(1);
                                    if(!(_loc4_ || param2))
                                    {
                                       addr208:
                                       if(§§pop() === _loc3_)
                                       {
                                          addr210:
                                          §§push(2);
                                          if(_loc4_)
                                          {
                                             addr213:
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                 }
                                 §§goto(addr219);
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc4_)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc5_)
                                    {
                                       addr173:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc5_ && param1))
                                          {
                                             §§goto(addr191);
                                          }
                                          §§goto(addr210);
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(_loc4_ || param2)
                                          {
                                             §§goto(addr208);
                                          }
                                          §§goto(addr213);
                                       }
                                    }
                                    §§goto(addr208);
                                 }
                              }
                              §§goto(addr213);
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr210);
                  }
                  addr219:
                  switch(§§pop())
                  {
                     case 0:
                        (§-f§.getItemByName("MovieClip_BestScoreStars") as §"m§).§[!I§("OneStar");
                        if(_loc4_ || this)
                        {
                           break;
                        }
                        addr126:
                        break;
                     case 1:
                        (§-f§.getItemByName("MovieClip_BestScoreStars") as §"m§).§[!I§("TwoStar");
                        if(!(_loc5_ && _loc3_))
                        {
                           break;
                        }
                        break;
                     case 2:
                        (§-f§.getItemByName("MovieClip_BestScoreStars") as §"m§).§[!I§("ThreeStar");
                        if(_loc4_ || this)
                        {
                           §§goto(addr126);
                        }
                  }
                  return;
                  addr68:
               }
               §§goto(addr219);
            }
            else
            {
               addr61:
               this.§[e§ = §59§.§1;§(§59§.§%j§,param2);
            }
            §§goto(addr68);
         }
         else
         {
            §-f§.setText("Best " + param2.toString(),"TextField_BestScore");
         }
         §§goto(addr61);
      }
      
      protected function setScoreData() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(AngryBirdsFP11.sUserProgress.§#!H§(§59§.§%j§));
         if(_loc8_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§"h§.controller.getScore());
         if(!(_loc7_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc7_)
         {
            this.§#>§ = _loc2_ > _loc1_;
            if(_loc8_)
            {
               this.setScoreStars(_loc2_,_loc1_);
               if(!(_loc7_ && _loc2_))
               {
                  addr63:
                  this.setMightyEagleFeather();
               }
               §§push(§"h§.controller.getEagleScore());
               if(!(_loc7_ && _loc2_))
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(AngryBirdsFP11.sUserProgress.§4a§(§59§.§%j§));
               if(_loc8_ || _loc1_)
               {
                  §§push(int(§§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:*;
               if(_loc5_ = _loc3_ > _loc4_)
               {
                  if(_loc8_)
                  {
                     §§push(_loc3_);
                     if(_loc8_ || _loc2_)
                     {
                        §§push(int(§§pop()));
                        if(_loc8_ || _loc3_)
                        {
                           _loc4_ = §§pop();
                           if(_loc8_ || _loc2_)
                           {
                              §§push(AngryBirdsFP11.sUserProgress);
                              if(_loc8_ || _loc1_)
                              {
                                 §§push(§59§.§%j§);
                                 if(_loc8_ || this)
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §§pop().§9!3§(§§pop(),§§pop());
                                       addr164:
                                       §§push(AngryBirdsFP11.sUserProgress);
                                       §§push(§59§.§%j§);
                                       §§push(_loc2_);
                                    }
                                    §§push(§§pop().§1!,§(§§pop(),§§pop()));
                                    if(_loc8_)
                                    {
                                       addr169:
                                       var _loc6_:int = §§pop();
                                       if(!_loc7_)
                                       {
                                          (§-f§.getItemByName("MovieClip_NewHighScoreBadge") as §"m§).setVisibility(false);
                                          if(_loc8_)
                                          {
                                             addr181:
                                             (§-f§.getItemByName("MovieClip_StarLeft") as §"m§).mClip.gotoAndStop("UnLit");
                                             if(!(_loc7_ && this))
                                             {
                                                (§-f§.getItemByName("MovieClip_StarCenter") as §"m§).mClip.gotoAndStop("UnLit");
                                                if(_loc8_ || this)
                                                {
                                                   addr221:
                                                   (§-f§.getItemByName("MovieClip_StarRight") as §"m§).mClip.gotoAndStop("UnLit");
                                                }
                                                return;
                                             }
                                          }
                                          §§goto(addr221);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr169);
                                 }
                              }
                           }
                           §§goto(addr164);
                        }
                     }
                     §§goto(addr169);
                  }
               }
               §§goto(addr164);
            }
         }
         §§goto(addr63);
      }
      
      protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(this.§#>§)
         {
            if(!(_loc2_ && this))
            {
               § !H§.§ !%§("Hiscore_Badge",§+p§);
               if(!_loc1_)
               {
               }
               §§goto(addr87);
            }
            §-f§.setText("New Highscore!","TextField_NewHighScore");
            (§-f§.getItemByName("TextField_NewHighScore") as §<k§).setVisibility(true);
            (§-f§.getItemByName("MovieClip_BestScoreStars") as §"m§).setVisibility(false);
            this.§"<§();
         }
         else
         {
            (§-f§.getItemByName("TextField_BestScore") as §<k§).setVisibility(true);
            (§-f§.getItemByName("MovieClip_BestScoreStars") as §"m§).setVisibility(true);
         }
         addr87:
      }
      
      protected function §"<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§&!,§ = 0;
            if(_loc2_)
            {
               this.§6!1§ = 0;
               if(_loc1_ && this)
               {
               }
               §§goto(addr47);
            }
            this.§7!G§ = § !?§;
         }
         addr47:
      }
      
      private function §!!=§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).x = (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).x - this.§&!,§;
            if(_loc3_ || param1)
            {
               (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).y = (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).y - this.§6!1§;
               if(!(_loc2_ && _loc2_))
               {
                  if(this.§7!G§ > 0)
                  {
                     §§push(this);
                     §§push(Math.random() - 0.5);
                     if(!(_loc2_ && param1))
                     {
                        §§push(this.§7!G§);
                        if(_loc3_ || param1)
                        {
                           §§push(§§pop() / § !?§);
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc3_)
                        {
                           addr103:
                           §§push(§§pop() * 20);
                        }
                        §§pop().§&!,§ = §§pop();
                        §§push(this);
                        §§push(Math.random() - 0.5);
                        if(!(_loc2_ && param1))
                        {
                           §§push(this.§7!G§);
                           if(_loc3_)
                           {
                              §§push(§§pop() / § !?§);
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc2_)
                           {
                              addr127:
                              §§push(§§pop() * 20);
                           }
                           §§pop().§6!1§ = §§pop();
                           (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).x = (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).x + this.§&!,§;
                           (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).y = (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).y + this.§6!1§;
                           if(!_loc3_)
                           {
                              addr188:
                              this.§6!1§ = 0;
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr103);
                  }
                  else
                  {
                     this.§7!G§ = -1;
                     if(_loc3_ || _loc2_)
                     {
                        this.§^u§();
                        this.§&!,§ = 0;
                     }
                     §§goto(addr191);
                  }
               }
               §§goto(addr188);
            }
         }
         addr191:
         §§push(this);
         §§push(this.§7!G§);
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() / 10);
            }
            §§push(§§pop() - §§pop());
         }
         §§pop().§7!G§ = §§pop();
      }
      
      protected function §^u§() : void
      {
      }
      
      private function §`e§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = §59§.§'Y§(§59§.§%j§).§`0§;
         var _loc5_:Number = §59§.§'Y§(§59§.§%j§).§7G§;
         if((§-f§.getItemByName("MovieClip_StarLeft") as §"m§).mClip.currentLabel == "UnLit")
         {
            § !H§.§ !%§("Hiscore_Count",§+!$§,100);
            § !H§.§ !%§("Hiscore_Star_Splash1",§+p§);
            this.§!r§.delay = 1000;
            if(_loc10_)
            {
               §§push(this.§&<§);
               if(_loc10_ || this)
               {
                  §§pop().assign(§"h§.controller.getScore());
                  if(!(_loc9_ && param1))
                  {
                     §§push(this.§&<§);
                     if(_loc10_ || param1)
                     {
                        §§push(§§pop().getValue());
                        if(!_loc9_)
                        {
                           §§push(_loc4_);
                           if(_loc10_ || this)
                           {
                              §§push(§§pop() / §§pop());
                              §§push(2);
                              if(_loc10_ || this)
                              {
                                 _loc6_ = Number(§§pop() * §§pop());
                                 if(!_loc9_)
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       addr124:
                                       if(§§pop() <= 0)
                                       {
                                          §§push(1);
                                          if(!_loc9_)
                                          {
                                             addr128:
                                             §§push(Number(§§pop()));
                                             if(_loc10_)
                                             {
                                                addr131:
                                                _loc6_ = §§pop();
                                                if(_loc10_)
                                                {
                                                   addr134:
                                                   this.§>o§ = §,!G§.§@j§.§47§(this,{"mNewScoreCounter":this.§&<§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(this.§>o§);
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         §§pop().onComplete = this.§0!@§;
                                                         §§push(this.§>o§);
                                                      }
                                                      §§pop().play();
                                                      if(!_loc9_)
                                                      {
                                                         (§-f§.getItemByName("MovieClip_StarLeft") as §"m§).mClip.gotoAndStop("Lit");
                                                         if(!_loc9_)
                                                         {
                                                            §§push(Number((§-f§.getItemByName("MovieClip_StarLeft") as §"m§).x + (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).x));
                                                            if(_loc10_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(_loc10_ || param1)
                                                               {
                                                                  _loc3_ = Number((§-f§.getItemByName("MovieClip_StarLeft") as §"m§).y + (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).y);
                                                                  if(_loc10_)
                                                                  {
                                                                     this.§4o§ = new §7!%§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§7!%§.§`!A§);
                                                                     §-f§.addChild(this.§4o§);
                                                                     if(_loc10_)
                                                                     {
                                                                        this.§<l§.push(this.§4o§);
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr635:
                                                                           var _loc7_:*;
                                                                           §§push((_loc7_ = this).§-;§);
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                           }
                                                                           var _loc8_:* = §§pop();
                                                                           if(!_loc9_)
                                                                           {
                                                                              _loc7_.§-;§ = _loc8_;
                                                                           }
                                                                           return;
                                                                           addr244:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr565:
                                                                           (§-f§.getItemByName("MovieClip_NewHighScoreBadge") as §"m§).setVisibility(true);
                                                                           this.§?g§ = §,!G§.§@j§.§47§((§-f§.getItemByName("MovieClip_NewHighScoreBadge") as §"m§).mClip,{
                                                                              "scaleX":1,
                                                                              "scaleY":1
                                                                           },{
                                                                              "scaleX":7,
                                                                              "scaleY":7
                                                                           },0.1);
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              addr621:
                                                                              §§push(this.§?g§);
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§pop().onComplete = this.onBadgeLanded;
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr630:
                                                                                    §§push(this.§?g§);
                                                                                 }
                                                                                 §§goto(addr635);
                                                                              }
                                                                              §§pop().play();
                                                                              if(_loc9_)
                                                                              {
                                                                              }
                                                                           }
                                                                           §§goto(addr635);
                                                                           addr572:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr503:
                                                                        §-f§.addChild(this.§4o§);
                                                                        this.§<l§.push(this.§4o§);
                                                                        if(_loc9_)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr635);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr285:
                                                                     if((§-f§.getItemByName("MovieClip_StarCenter") as §"m§).mClip.currentLabel == "UnLit")
                                                                     {
                                                                        § !H§.§ !%§("Hiscore_Star_Splash2",§+p§);
                                                                        if(!(_loc9_ && _loc2_))
                                                                        {
                                                                           (§-f§.getItemByName("MovieClip_StarCenter") as §"m§).mClip.gotoAndStop("Lit");
                                                                           addr306:
                                                                           §§push(Number((§-f§.getItemByName("MovieClip_StarCenter") as §"m§).x + (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).x));
                                                                           if(_loc10_)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              §§push(Number((§-f§.getItemByName("MovieClip_StarCenter") as §"m§).y + (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).y));
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 addr362:
                                                                                 _loc3_ = §§pop();
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr365:
                                                                                    this.§4o§ = new §7!%§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§7!%§.§ !7§);
                                                                                    §-f§.addChild(this.§4o§);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       this.§<l§.push(this.§4o§);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr635);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr541:
                                                                                       §§push(this.§#>§);
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          addr552:
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(Boolean(§§pop()))
                                                                                          {
                                                                                             if(_loc10_ || this)
                                                                                             {
                                                                                                addr560:
                                                                                                §§pop();
                                                                                                §§push(!this.§[m§);
                                                                                             }
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§goto(addr565);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             (§-f§.getItemByName("MovieClip_NewHighScoreBadge") as §"m§).setVisibility(false);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§goto(addr565);
                                                                                             }
                                                                                             §§goto(addr635);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr560);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr532:
                                                                                    this.§3Q§ = true;
                                                                                    §§goto(addr635);
                                                                                 }
                                                                                 §§goto(addr635);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr475:
                                                                                 _loc2_ = §§pop();
                                                                                 _loc3_ = Number((§-f§.getItemByName("MovieClip_StarRight") as §"m§).y + (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).y);
                                                                                 this.§4o§ = new §7!%§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§7!%§.§"B§);
                                                                                 §§goto(addr503);
                                                                              }
                                                                           }
                                                                           §§goto(addr475);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr435:
                                                                           § !H§.§ !%§("Hiscore_Star_Splash3",§+p§);
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              addr446:
                                                                              (§-f§.getItemByName("MovieClip_StarRight") as §"m§).mClip.gotoAndStop("Lit");
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr475);
                                                                                 §§push(Number((§-f§.getItemByName("MovieClip_StarRight") as §"m§).x + (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).x));
                                                                              }
                                                                              §§goto(addr475);
                                                                           }
                                                                           §§goto(addr635);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr395:
                                                                        §§push(this.§&<§.getValue() >= _loc4_);
                                                                        if(!(_loc9_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              addr411:
                                                                              if(§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 §§push((§-f§.getItemByName("MovieClip_StarRight") as §"m§).mClip.currentLabel == "UnLit");
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr424:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc9_ && _loc3_))
                                                                                       {
                                                                                          this.§3!C§ = true;
                                                                                          §§goto(addr435);
                                                                                       }
                                                                                       §§goto(addr446);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.§3Q§);
                                                                                       if(_loc10_ || this)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                §§goto(addr532);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr565);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             this.§!r§.stop();
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§goto(addr541);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr621);
                                                                                       }
                                                                                       §§goto(addr560);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr560);
                                                                              }
                                                                              §§goto(addr424);
                                                                           }
                                                                           §§goto(addr552);
                                                                        }
                                                                     }
                                                                     §§goto(addr552);
                                                                  }
                                                               }
                                                               §§goto(addr635);
                                                            }
                                                            §§goto(addr362);
                                                         }
                                                         §§goto(addr635);
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   §§goto(addr306);
                                                }
                                                §§goto(addr365);
                                             }
                                             §§goto(addr362);
                                          }
                                          else
                                          {
                                             addr262:
                                             §§push(_loc5_);
                                             if(_loc10_)
                                             {
                                                addr265:
                                                §§push(§§pop() >= §§pop());
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc10_ || param1)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         if(!(_loc9_ && this))
                                                         {
                                                            §§goto(addr285);
                                                         }
                                                         §§goto(addr565);
                                                      }
                                                      §§goto(addr285);
                                                   }
                                                   §§goto(addr411);
                                                }
                                                §§goto(addr424);
                                             }
                                          }
                                          §§goto(addr395);
                                       }
                                       §§goto(addr134);
                                    }
                                    §§goto(addr131);
                                 }
                                 §§goto(addr365);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr265);
                        }
                        §§goto(addr128);
                     }
                     else
                     {
                        addr254:
                        §§push(§§pop().getValue());
                        if(_loc10_ || param1)
                        {
                           §§goto(addr262);
                        }
                     }
                     §§goto(addr395);
                  }
                  §§goto(addr572);
               }
               §§goto(addr254);
            }
            §§goto(addr365);
         }
         else
         {
            §§push(this.§&<§);
            if(!(_loc9_ && _loc2_))
            {
               §§goto(addr254);
            }
         }
         §§goto(addr395);
      }
      
      private function §0!@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            § !H§.§]%§(§+!$§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§7!%§ = null;
         §§push(super.run(param1));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc6_ || this)
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               if(§§pop() != §>3§.STATE_STATUS_RUNNING)
               {
                  if(_loc6_ || param1)
                  {
                     §§push(_loc2_);
                     if(_loc6_ || this)
                     {
                        §§goto(addr54);
                     }
                  }
                  else
                  {
                     addr62:
                     §-f§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                     if(!(_loc7_ && _loc2_))
                     {
                        §-f§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                        addr91:
                        §§push(0);
                     }
                     §§goto(addr91);
                  }
                  for each(_loc3_ in this.§<l§)
                  {
                     if(!(_loc7_ && this))
                     {
                        _loc3_.update(param1);
                     }
                  }
                  if(!(_loc7_ && _loc3_))
                  {
                     if(this.§7!G§ > -1)
                     {
                        if(!(_loc7_ && param1))
                        {
                           this.§!!=§(param1);
                           if(_loc6_ || _loc2_)
                           {
                              addr156:
                              if(mNextState.length > 0)
                              {
                                 if(_loc6_)
                                 {
                                    §"h§.§1C§.clearLevel();
                                    if(!_loc7_)
                                    {
                                       return §>3§.STATE_STATUS_COMPLETED;
                                    }
                                 }
                              }
                           }
                           return §>3§.STATE_STATUS_RUNNING;
                        }
                     }
                  }
                  §§goto(addr156);
               }
               §§goto(addr62);
            }
            addr54:
            return §§pop();
         }
         §§goto(addr91);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.deActivate();
            if(!(_loc2_ && _loc1_))
            {
               this.§]_§();
               this.§7!G§ = 0;
               if(_loc1_ || _loc2_)
               {
                  this.mNewScoreCounter = 0;
                  if(_loc1_)
                  {
                     §§push(this.§>o§);
                     if(!(_loc2_ && _loc1_))
                     {
                        if(§§pop())
                        {
                           addr61:
                           this.§>o§.stop();
                           this.§>o§ = null;
                           if(!_loc1_)
                           {
                           }
                           §§goto(addr161);
                        }
                        §§push(this.§?g§);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              addr89:
                              this.§?g§.stop();
                              this.§?g§ = null;
                           }
                           § !H§.§]%§(§+!$§);
                           if(_loc1_ || this)
                           {
                              this.setButtonStates(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §-f§.setText("0","TextField_LevelEndScore");
                                 §-f§.setText("0","TextField_LevelEndScoreEffects");
                                 §§push(this.§=@§);
                                 if(!_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       addr137:
                                       if(§-f§.movieClip.contains(this.§=@§))
                                       {
                                          §-f§.movieClip.removeChild(this.§=@§);
                                          addr158:
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr155:
                                             §§push(this.§=@§);
                                          }
                                          this.§=@§ = null;
                                          §§goto(addr161);
                                       }
                                       §§goto(addr155);
                                    }
                                    addr161:
                                    return;
                                 }
                                 §§pop().clean();
                                 §§goto(addr158);
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr89);
                     }
                  }
                  §§goto(addr61);
               }
            }
            §§goto(addr89);
         }
         §§goto(addr158);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§-f§.getItemByName("Button_Menu") as §6<§).setComponentVisualState(param1);
            if(_loc2_)
            {
               (§-f§.getItemByName("Button_Replay") as §6<§).setComponentVisualState(param1);
               §§goto(addr37);
            }
            §§goto(addr61);
         }
         addr37:
         if(!(_loc3_ && _loc3_))
         {
            addr61:
            (§-f§.getItemByName("Button_NextLevel") as §6<§).setComponentVisualState(param1);
            if(!_loc3_)
            {
               (§-f§.getItemByName("Button_CutScene") as §6<§).setComponentVisualState(param1);
            }
         }
      }
      
      private function §]_§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§7!%§ = null;
         if(_loc4_ || _loc1_)
         {
            if(this.§!r§)
            {
               if(!_loc5_)
               {
                  addr36:
                  this.§!r§.stop();
               }
               try
               {
                  this.§!r§.removeEventListener(TimerEvent.TIMER,this.§`e§);
                  if(_loc4_ || _loc3_)
                  {
                  }
               }
               catch(e:Error)
               {
               }
               §§goto(addr161);
            }
            var _loc2_:int = 0;
            if(_loc4_ || _loc3_)
            {
               var _loc3_:* = this.§<l§;
               if(!_loc4_)
               {
               }
               while(§§hasnext(_loc3_,_loc2_))
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc1_)
                  {
                     §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                     if(!_loc5_)
                     {
                        if(§-f§.contains(splash))
                        {
                           if(!_loc5_)
                           {
                              §-f§.removeChild(splash);
                              if(_loc5_)
                              {
                                 continue;
                              }
                           }
                        }
                     }
                     §§push(§§newactivation());
                  }
                  §§pop().§§slot[1].clean();
               }
            }
            if(!(_loc5_ && this))
            {
               this.§<l§ = new Vector.<§7!%§>();
               if(!(_loc5_ && _loc2_))
               {
                  this.hideBestScoreTexts();
               }
            }
            addr161:
            return;
         }
         §§goto(addr36);
      }
      
      protected function hideBestScoreTexts() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            (§-f§.getItemByName("TextField_BestScore") as §<k§).setVisibility(false);
            if(!_loc2_)
            {
               (§-f§.getItemByName("MovieClip_BestScoreStars") as §"m§).setVisibility(false);
               if(_loc2_ && this)
               {
               }
               §§goto(addr73);
            }
            (§-f§.getItemByName("TextField_NewHighScore") as §<k§).setVisibility(false);
         }
         addr73:
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
      
      protected function §@!0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §3'§.§+^§();
            if(!(_loc2_ && this))
            {
               addr27:
               mNextState = this.§]y§();
            }
            return;
         }
         §§goto(addr27);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:String = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(_loc6_ || this)
            {
               §§push("NEXT_LEVEL");
               if(_loc6_ || param3)
               {
                  §§push(_loc5_);
                  if(!(_loc7_ && param2))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || param3)
                        {
                           addr169:
                           §§push(0);
                           if(_loc7_)
                           {
                           }
                        }
                        else
                        {
                           addr215:
                           §§push(2);
                           if(!_loc6_)
                           {
                              addr263:
                           }
                        }
                     }
                     else
                     {
                        §§push("REPLAY");
                        if(!(_loc7_ && this))
                        {
                           addr181:
                           §§push(_loc5_);
                           if(!_loc7_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_ || param2)
                                 {
                                    §§push(1);
                                    if(!_loc7_)
                                    {
                                       addr268:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             this.§@!0§();
                                             break loop0;
                                          case 1:
                                             §3'§.§;3§();
                                             if(_loc6_ || param2)
                                             {
                                                mNextState = this.§@3§();
                                                break loop0;
                                             }
                                             break;
                                          case 2:
                                             §3'§.§;3§();
                                             if(!(_loc7_ && param2))
                                             {
                                                mNextState = this.§@3§();
                                                if(_loc6_)
                                                {
                                                   §§push(§"h§.§1C§);
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      §§push(§§pop().§2=§());
                                                      if(!(_loc7_ && param3))
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc6_)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      addr84:
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc6_ || this))
                                                         {
                                                            addr133:
                                                            break loop0;
                                                         }
                                                         §§push(§"h§.§1C§);
                                                      }
                                                      break;
                                                   }
                                                   §§pop().§-!B§(_loc4_);
                                                   break;
                                                }
                                                break loop0;
                                             }
                                             break loop0;
                                          case 3:
                                             § !H§.§[!<§();
                                             if(!(_loc7_ && this))
                                             {
                                                mNextState = this.§52§();
                                                break loop0;
                                             }
                                             break loop0;
                                          case 4:
                                             AngryBirdsFP11.§0P§.§<h§();
                                             if(!(_loc7_ && this))
                                             {
                                                §§goto(addr133);
                                             }
                                       }
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    addr248:
                                    §§push(3);
                                    if(_loc7_ && param3)
                                    {
                                       §§goto(addr263);
                                    }
                                 }
                                 §§goto(addr268);
                              }
                              else
                              {
                                 §§push("WATCH_REPLAY");
                                 if(_loc6_ || this)
                                 {
                                    §§push(_loc5_);
                                    if(_loc6_ || param1)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             §§goto(addr215);
                                          }
                                          §§goto(addr268);
                                       }
                                       else
                                       {
                                          §§push("MENU");
                                          if(!_loc7_)
                                          {
                                             addr222:
                                             §§push(_loc5_);
                                             if(!(_loc7_ && param3))
                                             {
                                                addr230:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc6_ || param2)
                                                   {
                                                      §§goto(addr248);
                                                   }
                                                   else
                                                   {
                                                      addr260:
                                                      §§push(4);
                                                      if(!_loc7_)
                                                      {
                                                         §§goto(addr263);
                                                      }
                                                      §§goto(addr268);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push("FULLSCREEN_BUTTON");
                                                }
                                                §§goto(addr260);
                                             }
                                             addr259:
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr260);
                                             }
                                             else
                                             {
                                                §§goto(addr268);
                                                §§push(5);
                                             }
                                             §§goto(addr268);
                                          }
                                          §§goto(addr259);
                                          §§push(_loc5_);
                                       }
                                       §§goto(addr260);
                                    }
                                    §§goto(addr259);
                                 }
                                 §§goto(addr222);
                              }
                           }
                           §§goto(addr230);
                        }
                        §§goto(addr222);
                     }
                     §§goto(addr268);
                  }
                  §§goto(addr222);
               }
               §§goto(addr181);
            }
            §§goto(addr169);
         }
      }
      
      protected function §@3§() : String
      {
         return §3'§.§-!A§;
      }
      
      protected function §]y§() : String
      {
         return StateCutScene.§-!A§;
      }
      
      public function §52§() : String
      {
         return §>!B§.§-!A§;
      }
   }
}
