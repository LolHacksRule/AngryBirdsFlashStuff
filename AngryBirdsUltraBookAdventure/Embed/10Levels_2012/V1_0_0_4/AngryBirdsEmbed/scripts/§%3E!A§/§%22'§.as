package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §4!H§.§?_§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §87§.§1a§;
   import §87§.§<8§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §@D§.§6I§;
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import §class§.§3C§;
   import §class§.§3D§;
   import §class§.§?q§;
   import §class§.§`!6§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §"'§ extends §#!,§
   {
      
      public static const §?x§:String = "LevelEndStateRio";
      
      public static const §'[§:Number = 30;
      
      protected static const §6'§:String = "ScoreLoopCountChannel";
      
      protected static const §=W§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §?x§ = "LevelEndStateRio";
            if(_loc2_ || _loc2_)
            {
               §'[§ = 30;
               if(!_loc1_)
               {
                  §6'§ = "ScoreLoopCountChannel";
                  if(!(_loc1_ && §"'§))
                  {
                     addr69:
                     §=W§ = "EndScreenEffectChannel";
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      private var §?y§:§?!3§;
      
      private var §9!F§:Number;
      
      private var §;Y§:Number = 0.0;
      
      private var §4L§:Number = 0.0;
      
      private var §+o§:Boolean = false;
      
      private var §=z§:Timer;
      
      private var §<!4§:§<8§;
      
      protected var §5!"§:Array;
      
      protected var §?!"§:§1a§;
      
      protected var §;m§:Vector.<§1a§>;
      
      public var mNewScoreCounter:int;
      
      private var §66§:int;
      
      private var §6h§:Boolean;
      
      protected var §0A§:Boolean;
      
      private var §3f§:§?_§;
      
      protected var §>!<§:Boolean;
      
      private var §8!?§:§?!3§;
      
      protected var §<j§:Boolean;
      
      protected var §,0§:int;
      
      public function §"'§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§5!"§ = [];
            if(!_loc4_)
            {
               §§goto(addr38);
            }
            §§goto(addr44);
         }
         addr38:
         this.§3f§ = new §?_§();
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
            §[=§ = new §^3§(this);
            §[=§.init(this.getViewXML());
            this.initButtonDefaultPositions();
            if(_loc2_)
            {
               this.§;m§ = new Vector.<§1a§>();
            }
            §6I§.§"!'§(§6'§,1,1);
            §6I§.§"!'§(§=W§,3,1);
         }
      }
      
      protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§5!"§);
            if(!(_loc1_ && _loc1_))
            {
               §§pop().push((§[=§.getItemByName("Button_Menu") as §?q§).x);
               if(_loc2_)
               {
                  §§push(this.§5!"§);
                  if(_loc2_)
                  {
                     §§pop().push((§[=§.getItemByName("Button_Replay") as §?q§).x);
                     if(_loc2_ || _loc2_)
                     {
                        addr80:
                        §§push(this.§5!"§);
                        if(!_loc1_)
                        {
                           addr84:
                           §§pop().push((§[=§.getItemByName("Button_NextLevel") as §?q§).x);
                           if(_loc2_)
                           {
                              addr95:
                              this.§5!"§.push((§[=§.getItemByName("Button_CutScene") as §?q§).x);
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
         return §!I§.§7y§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§5j§.§%V§))
            {
               if(!(_loc2_ && _loc1_))
               {
                  (§[=§.getItemByName("Button_Menu") as §?q§).setVisibility(false);
               }
               (§[=§.getItemByName("Button_Replay") as §?q§).setVisibility(true);
               if(_loc1_ || this)
               {
                  (§[=§.getItemByName("Button_NextLevel") as §?q§).setVisibility(false);
                  (§[=§.getItemByName("Button_CutScene") as §?q§).setVisibility(true);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr73:
                     (§[=§.getItemByName("Button_Replay") as §?q§).x = this.§5!"§[0] + Math.abs(this.§5!"§[1] - this.§5!"§[0]) / 2;
                     (§[=§.getItemByName("Button_CutScene") as §?q§).x = this.§5!"§[1] + Math.abs(this.§5!"§[2] - this.§5!"§[1]) / 2;
                     if(_loc2_ && _loc2_)
                     {
                        addr171:
                        (§[=§.getItemByName("Button_CutScene") as §?q§).setVisibility(true);
                        (§[=§.getItemByName("Button_Menu") as §?q§).x = this.§5!"§[0];
                        if(!(_loc2_ && _loc2_))
                        {
                           (§[=§.getItemByName("Button_Replay") as §?q§).x = this.§5!"§[1];
                           (§[=§.getItemByName("Button_CutScene") as §?q§).x = this.§5!"§[2];
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
               (§[=§.getItemByName("Button_Menu") as §?q§).setVisibility(true);
               if(!_loc2_)
               {
                  (§[=§.getItemByName("Button_Replay") as §?q§).setVisibility(true);
                  if(!_loc2_)
                  {
                     (§[=§.getItemByName("Button_NextLevel") as §?q§).setVisibility(false);
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
            (§[=§.getItemByName("Button_Menu") as §?q§).setVisibility(true);
            (§[=§.getItemByName("Button_Replay") as §?q§).setVisibility(true);
            if(!_loc2_)
            {
               (§[=§.getItemByName("Button_CutScene") as §?q§).setVisibility(false);
               addr41:
               if(§5j§.§&1§())
               {
                  if(_loc1_)
                  {
                     (§[=§.getItemByName("Button_NextLevel") as §?q§).setVisibility(true);
                     (§[=§.getItemByName("Button_Menu") as §?q§).x = this.§5!"§[0];
                     if(!_loc2_)
                     {
                        (§[=§.getItemByName("Button_Replay") as §?q§).x = this.§5!"§[1];
                        (§[=§.getItemByName("Button_NextLevel") as §?q§).x = this.§5!"§[2];
                        if(!_loc1_)
                        {
                           (§[=§.getItemByName("Button_Menu") as §?q§).x = this.§5!"§[0] + Math.abs(this.§5!"§[1] - this.§5!"§[0]) / 2;
                           addr139:
                           (§[=§.getItemByName("Button_Replay") as §?q§).x = this.§5!"§[1] + Math.abs(this.§5!"§[2] - this.§5!"§[1]) / 2;
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
                  (§[=§.getItemByName("Button_NextLevel") as §?q§).setVisibility(false);
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
            this.§<j§ = false;
            if(_loc2_)
            {
               §[k§.pause();
               if(_loc2_ || this)
               {
                  this.§<!4§ = new §<8§(0,0,0,0);
                  if(!_loc1_)
                  {
                     §[=§.movieClip.addChildAt(this.§<!4§,§[=§.movieClip.numChildren - 1);
                     if(!_loc1_)
                     {
                        addr66:
                        if(§5j§.§!d§())
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              this.showButtonsCutScene();
                              addr78:
                           }
                           addr111:
                           §6I§.§ ;§("LevelCompletedTheme1");
                           if(_loc2_ || _loc2_)
                           {
                              this.§<!4§.§4J§(0.7);
                              this.§;Y§ = 0;
                              this.§4L§ = 0;
                              this.§7c§();
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
                           this.§6h§ = false;
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
      
      private function §7c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§0A§ = false;
            this.setScoreData();
            this.§=z§ = new Timer(500);
            if(_loc2_)
            {
               addr51:
               this.§66§ = 0;
               if(_loc2_ || this)
               {
                  this.§=z§.addEventListener(TimerEvent.TIMER,this.§?!'§);
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr73);
               }
               this.§=z§.start();
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
            if(AngryBirdsFP11.sUserProgress.§ !&§(§5j§.§%V§) == 100)
            {
               if(!_loc2_)
               {
                  (§[=§.getItemByName("MovieClip_ResultMEFeather") as §`!6§).mClip.gotoAndStop("On");
                  if(!_loc1_)
                  {
                  }
                  §§goto(addr71);
               }
            }
            else
            {
               (§[=§.getItemByName("MovieClip_ResultMEFeather") as §`!6§).mClip.gotoAndStop("Off");
            }
         }
         addr71:
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(this.§>!<§)
         {
            if(!(_loc5_ && _loc3_))
            {
               §§push(param1);
               if(!(_loc5_ && param1))
               {
                  §§push(int(§§pop()));
               }
               param2 = §§pop();
               AngryBirdsFP11.sUserProgress.§1!%§(§5j§.§%V§,param2);
               §[=§.setText("New Highscore!","TextField_BestScore");
               if(!(_loc4_ || param2))
               {
                  §§push(this.§,0§);
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
                        (§[=§.getItemByName("MovieClip_BestScoreStars") as §`!6§).§]?§("OneStar");
                        if(_loc4_ || this)
                        {
                           break;
                        }
                        addr126:
                        break;
                     case 1:
                        (§[=§.getItemByName("MovieClip_BestScoreStars") as §`!6§).§]?§("TwoStar");
                        if(!(_loc5_ && _loc3_))
                        {
                           break;
                        }
                        break;
                     case 2:
                        (§[=§.getItemByName("MovieClip_BestScoreStars") as §`!6§).§]?§("ThreeStar");
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
               this.§,0§ = §5j§.§"n§(§5j§.§%V§,param2);
            }
            §§goto(addr68);
         }
         else
         {
            §[=§.setText("Best " + param2.toString(),"TextField_BestScore");
         }
         §§goto(addr61);
      }
      
      protected function setScoreData() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(AngryBirdsFP11.sUserProgress.§ X§(§5j§.§%V§));
         if(_loc8_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§[k§.controller.getScore());
         if(!(_loc7_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc7_)
         {
            this.§>!<§ = _loc2_ > _loc1_;
            if(_loc8_)
            {
               this.setScoreStars(_loc2_,_loc1_);
               if(!(_loc7_ && _loc2_))
               {
                  addr63:
                  this.setMightyEagleFeather();
               }
               §§push(§[k§.controller.getEagleScore());
               if(!(_loc7_ && _loc2_))
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(AngryBirdsFP11.sUserProgress.§ !&§(§5j§.§%V§));
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
                                 §§push(§5j§.§%V§);
                                 if(_loc8_ || this)
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §§pop().§]!'§(§§pop(),§§pop());
                                       addr164:
                                       §§push(AngryBirdsFP11.sUserProgress);
                                       §§push(§5j§.§%V§);
                                       §§push(_loc2_);
                                    }
                                    §§push(§§pop().§7!"§(§§pop(),§§pop()));
                                    if(_loc8_)
                                    {
                                       addr169:
                                       var _loc6_:int = §§pop();
                                       if(!_loc7_)
                                       {
                                          (§[=§.getItemByName("MovieClip_NewHighScoreBadge") as §`!6§).setVisibility(false);
                                          if(_loc8_)
                                          {
                                             addr181:
                                             (§[=§.getItemByName("MovieClip_StarLeft") as §`!6§).mClip.gotoAndStop("UnLit");
                                             if(!(_loc7_ && this))
                                             {
                                                (§[=§.getItemByName("MovieClip_StarCenter") as §`!6§).mClip.gotoAndStop("UnLit");
                                                if(_loc8_ || this)
                                                {
                                                   addr221:
                                                   (§[=§.getItemByName("MovieClip_StarRight") as §`!6§).mClip.gotoAndStop("UnLit");
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
         if(this.§>!<§)
         {
            if(!(_loc2_ && this))
            {
               §6I§.§ ;§("Hiscore_Badge",§=W§);
               if(!_loc1_)
               {
               }
               §§goto(addr87);
            }
            §[=§.setText("New Highscore!","TextField_NewHighScore");
            (§[=§.getItemByName("TextField_NewHighScore") as §3D§).setVisibility(true);
            (§[=§.getItemByName("MovieClip_BestScoreStars") as §`!6§).setVisibility(false);
            this.§[D§();
         }
         else
         {
            (§[=§.getItemByName("TextField_BestScore") as §3D§).setVisibility(true);
            (§[=§.getItemByName("MovieClip_BestScoreStars") as §`!6§).setVisibility(true);
         }
         addr87:
      }
      
      protected function §[D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§;Y§ = 0;
            if(_loc2_)
            {
               this.§4L§ = 0;
               if(_loc1_ && this)
               {
               }
               §§goto(addr47);
            }
            this.§9!F§ = §'[§;
         }
         addr47:
      }
      
      private function §!z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).x = (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).x - this.§;Y§;
            if(_loc3_ || param1)
            {
               (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).y = (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).y - this.§4L§;
               if(!(_loc2_ && _loc2_))
               {
                  if(this.§9!F§ > 0)
                  {
                     §§push(this);
                     §§push(Math.random() - 0.5);
                     if(!(_loc2_ && param1))
                     {
                        §§push(this.§9!F§);
                        if(_loc3_ || param1)
                        {
                           §§push(§§pop() / §'[§);
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc3_)
                        {
                           addr103:
                           §§push(§§pop() * 20);
                        }
                        §§pop().§;Y§ = §§pop();
                        §§push(this);
                        §§push(Math.random() - 0.5);
                        if(!(_loc2_ && param1))
                        {
                           §§push(this.§9!F§);
                           if(_loc3_)
                           {
                              §§push(§§pop() / §'[§);
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc2_)
                           {
                              addr127:
                              §§push(§§pop() * 20);
                           }
                           §§pop().§4L§ = §§pop();
                           (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).x = (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).x + this.§;Y§;
                           (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).y = (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).y + this.§4L§;
                           if(!_loc3_)
                           {
                              addr188:
                              this.§4L§ = 0;
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr103);
                  }
                  else
                  {
                     this.§9!F§ = -1;
                     if(_loc3_ || _loc2_)
                     {
                        this.§ !0§();
                        this.§;Y§ = 0;
                     }
                     §§goto(addr191);
                  }
               }
               §§goto(addr188);
            }
         }
         addr191:
         §§push(this);
         §§push(this.§9!F§);
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() / 10);
            }
            §§push(§§pop() - §§pop());
         }
         §§pop().§9!F§ = §§pop();
      }
      
      protected function § !0§() : void
      {
      }
      
      private function §?!'§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = §5j§.§%!I§(§5j§.§%V§).§'T§;
         var _loc5_:Number = §5j§.§%!I§(§5j§.§%V§).§=N§;
         if((§[=§.getItemByName("MovieClip_StarLeft") as §`!6§).mClip.currentLabel == "UnLit")
         {
            §6I§.§ ;§("Hiscore_Count",§6'§,100);
            §6I§.§ ;§("Hiscore_Star_Splash1",§=W§);
            this.§=z§.delay = 1000;
            if(_loc10_)
            {
               §§push(this.§3f§);
               if(_loc10_ || this)
               {
                  §§pop().assign(§[k§.controller.getScore());
                  if(!(_loc9_ && param1))
                  {
                     §§push(this.§3f§);
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
                                                   this.§8!?§ = §,B§.§^n§.§2E§(this,{"mNewScoreCounter":this.§3f§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(this.§8!?§);
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         §§pop().onComplete = this.§5R§;
                                                         §§push(this.§8!?§);
                                                      }
                                                      §§pop().play();
                                                      if(!_loc9_)
                                                      {
                                                         (§[=§.getItemByName("MovieClip_StarLeft") as §`!6§).mClip.gotoAndStop("Lit");
                                                         if(!_loc9_)
                                                         {
                                                            §§push(Number((§[=§.getItemByName("MovieClip_StarLeft") as §`!6§).x + (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).x));
                                                            if(_loc10_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(_loc10_ || param1)
                                                               {
                                                                  _loc3_ = Number((§[=§.getItemByName("MovieClip_StarLeft") as §`!6§).y + (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).y);
                                                                  if(_loc10_)
                                                                  {
                                                                     this.§?!"§ = new §1a§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§1a§.§&§);
                                                                     §[=§.addChild(this.§?!"§);
                                                                     if(_loc10_)
                                                                     {
                                                                        this.§;m§.push(this.§?!"§);
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr635:
                                                                           var _loc7_:*;
                                                                           §§push((_loc7_ = this).§66§);
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                           }
                                                                           var _loc8_:* = §§pop();
                                                                           if(!_loc9_)
                                                                           {
                                                                              _loc7_.§66§ = _loc8_;
                                                                           }
                                                                           return;
                                                                           addr244:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr565:
                                                                           (§[=§.getItemByName("MovieClip_NewHighScoreBadge") as §`!6§).setVisibility(true);
                                                                           this.§?y§ = §,B§.§^n§.§2E§((§[=§.getItemByName("MovieClip_NewHighScoreBadge") as §`!6§).mClip,{
                                                                              "scaleX":1,
                                                                              "scaleY":1
                                                                           },{
                                                                              "scaleX":7,
                                                                              "scaleY":7
                                                                           },0.1);
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              addr621:
                                                                              §§push(this.§?y§);
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§pop().onComplete = this.onBadgeLanded;
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr630:
                                                                                    §§push(this.§?y§);
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
                                                                        §[=§.addChild(this.§?!"§);
                                                                        this.§;m§.push(this.§?!"§);
                                                                        if(_loc9_)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr635);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr285:
                                                                     if((§[=§.getItemByName("MovieClip_StarCenter") as §`!6§).mClip.currentLabel == "UnLit")
                                                                     {
                                                                        §6I§.§ ;§("Hiscore_Star_Splash2",§=W§);
                                                                        if(!(_loc9_ && _loc2_))
                                                                        {
                                                                           (§[=§.getItemByName("MovieClip_StarCenter") as §`!6§).mClip.gotoAndStop("Lit");
                                                                           addr306:
                                                                           §§push(Number((§[=§.getItemByName("MovieClip_StarCenter") as §`!6§).x + (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).x));
                                                                           if(_loc10_)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              §§push(Number((§[=§.getItemByName("MovieClip_StarCenter") as §`!6§).y + (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).y));
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 addr362:
                                                                                 _loc3_ = §§pop();
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr365:
                                                                                    this.§?!"§ = new §1a§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§1a§.§8U§);
                                                                                    §[=§.addChild(this.§?!"§);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       this.§;m§.push(this.§?!"§);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr635);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr541:
                                                                                       §§push(this.§>!<§);
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
                                                                                                §§push(!this.§0A§);
                                                                                             }
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§goto(addr565);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             (§[=§.getItemByName("MovieClip_NewHighScoreBadge") as §`!6§).setVisibility(false);
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
                                                                                    this.§6h§ = true;
                                                                                    §§goto(addr635);
                                                                                 }
                                                                                 §§goto(addr635);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr475:
                                                                                 _loc2_ = §§pop();
                                                                                 _loc3_ = Number((§[=§.getItemByName("MovieClip_StarRight") as §`!6§).y + (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).y);
                                                                                 this.§?!"§ = new §1a§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§1a§.§ ?§);
                                                                                 §§goto(addr503);
                                                                              }
                                                                           }
                                                                           §§goto(addr475);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr435:
                                                                           §6I§.§ ;§("Hiscore_Star_Splash3",§=W§);
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              addr446:
                                                                              (§[=§.getItemByName("MovieClip_StarRight") as §`!6§).mClip.gotoAndStop("Lit");
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr475);
                                                                                 §§push(Number((§[=§.getItemByName("MovieClip_StarRight") as §`!6§).x + (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).x));
                                                                              }
                                                                              §§goto(addr475);
                                                                           }
                                                                           §§goto(addr635);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr395:
                                                                        §§push(this.§3f§.getValue() >= _loc4_);
                                                                        if(!(_loc9_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              addr411:
                                                                              if(§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 §§push((§[=§.getItemByName("MovieClip_StarRight") as §`!6§).mClip.currentLabel == "UnLit");
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr424:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc9_ && _loc3_))
                                                                                       {
                                                                                          this.§<j§ = true;
                                                                                          §§goto(addr435);
                                                                                       }
                                                                                       §§goto(addr446);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.§6h§);
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
                                                                                             this.§=z§.stop();
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
            §§push(this.§3f§);
            if(!(_loc9_ && _loc2_))
            {
               §§goto(addr254);
            }
         }
         §§goto(addr395);
      }
      
      private function §5R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §6I§.§9w§(§6'§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§1a§ = null;
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
               if(§§pop() != §#!,§.STATE_STATUS_RUNNING)
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
                     §[=§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                     if(!(_loc7_ && _loc2_))
                     {
                        §[=§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                        addr91:
                        §§push(0);
                     }
                     §§goto(addr91);
                  }
                  for each(_loc3_ in this.§;m§)
                  {
                     if(!(_loc7_ && this))
                     {
                        _loc3_.update(param1);
                     }
                  }
                  if(!(_loc7_ && _loc3_))
                  {
                     if(this.§9!F§ > -1)
                     {
                        if(!(_loc7_ && param1))
                        {
                           this.§!z§(param1);
                           if(_loc6_ || _loc2_)
                           {
                              addr156:
                              if(mNextState.length > 0)
                              {
                                 if(_loc6_)
                                 {
                                    §[k§.§&@§.clearLevel();
                                    if(!_loc7_)
                                    {
                                       return §#!,§.STATE_STATUS_COMPLETED;
                                    }
                                 }
                              }
                           }
                           return §#!,§.STATE_STATUS_RUNNING;
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
               this.§21§();
               this.§9!F§ = 0;
               if(_loc1_ || _loc2_)
               {
                  this.mNewScoreCounter = 0;
                  if(_loc1_)
                  {
                     §§push(this.§8!?§);
                     if(!(_loc2_ && _loc1_))
                     {
                        if(§§pop())
                        {
                           addr61:
                           this.§8!?§.stop();
                           this.§8!?§ = null;
                           if(!_loc1_)
                           {
                           }
                           §§goto(addr161);
                        }
                        §§push(this.§?y§);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              addr89:
                              this.§?y§.stop();
                              this.§?y§ = null;
                           }
                           §6I§.§9w§(§6'§);
                           if(_loc1_ || this)
                           {
                              this.setButtonStates(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §[=§.setText("0","TextField_LevelEndScore");
                                 §[=§.setText("0","TextField_LevelEndScoreEffects");
                                 §§push(this.§<!4§);
                                 if(!_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       addr137:
                                       if(§[=§.movieClip.contains(this.§<!4§))
                                       {
                                          §[=§.movieClip.removeChild(this.§<!4§);
                                          addr158:
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr155:
                                             §§push(this.§<!4§);
                                          }
                                          this.§<!4§ = null;
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
            (§[=§.getItemByName("Button_Menu") as §?q§).setComponentVisualState(param1);
            if(_loc2_)
            {
               (§[=§.getItemByName("Button_Replay") as §?q§).setComponentVisualState(param1);
               §§goto(addr37);
            }
            §§goto(addr61);
         }
         addr37:
         if(!(_loc3_ && _loc3_))
         {
            addr61:
            (§[=§.getItemByName("Button_NextLevel") as §?q§).setComponentVisualState(param1);
            if(!_loc3_)
            {
               (§[=§.getItemByName("Button_CutScene") as §?q§).setComponentVisualState(param1);
            }
         }
      }
      
      private function §21§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§1a§ = null;
         if(_loc4_ || _loc1_)
         {
            if(this.§=z§)
            {
               if(!_loc5_)
               {
                  addr36:
                  this.§=z§.stop();
               }
               try
               {
                  this.§=z§.removeEventListener(TimerEvent.TIMER,this.§?!'§);
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
               var _loc3_:* = this.§;m§;
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
                        if(§[=§.contains(splash))
                        {
                           if(!_loc5_)
                           {
                              §[=§.removeChild(splash);
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
               this.§;m§ = new Vector.<§1a§>();
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
            (§[=§.getItemByName("TextField_BestScore") as §3D§).setVisibility(false);
            if(!_loc2_)
            {
               (§[=§.getItemByName("MovieClip_BestScoreStars") as §`!6§).setVisibility(false);
               if(_loc2_ && this)
               {
               }
               §§goto(addr73);
            }
            (§[=§.getItemByName("TextField_NewHighScore") as §3D§).setVisibility(false);
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
      
      protected function §]s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §,w§.§^^§();
            if(!(_loc2_ && this))
            {
               addr27:
               mNextState = this.§9N§();
            }
            return;
         }
         §§goto(addr27);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
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
                                             this.§]s§();
                                             break loop0;
                                          case 1:
                                             §,w§.§9!D§();
                                             if(_loc6_ || param2)
                                             {
                                                mNextState = this.§&[§();
                                                break loop0;
                                             }
                                             break;
                                          case 2:
                                             §,w§.§9!D§();
                                             if(!(_loc7_ && param2))
                                             {
                                                mNextState = this.§&[§();
                                                if(_loc6_)
                                                {
                                                   §§push(§[k§.§&@§);
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      §§push(§§pop().§+s§());
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
                                                         §§push(§[k§.§&@§);
                                                      }
                                                      break;
                                                   }
                                                   §§pop().§?!B§(_loc4_);
                                                   break;
                                                }
                                                break loop0;
                                             }
                                             break loop0;
                                          case 3:
                                             §6I§.§%,§();
                                             if(!(_loc7_ && this))
                                             {
                                                mNextState = this.§1o§();
                                                break loop0;
                                             }
                                             break loop0;
                                          case 4:
                                             AngryBirdsFP11.§,s§.§8!1§();
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
      
      protected function §&[§() : String
      {
         return §,w§.§?x§;
      }
      
      protected function §9N§() : String
      {
         return StateCutScene.§?x§;
      }
      
      public function §1o§() : String
      {
         return §5O§.§?x§;
      }
   }
}
