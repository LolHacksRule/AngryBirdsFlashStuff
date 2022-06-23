package § !@§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import §#X§.§,!F§;
   import §%4§.§4!=§;
   import §%4§.§7-§;
   import §%4§.§9O§;
   import §%4§.§`a§;
   import §+!B§.§<!M§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §0,§.§4V§;
   import §0,§.§9!C§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §+W§ extends §1Q§
   {
      
      public static const §>9§:String = "LevelEndStateRio";
      
      public static const §!w§:Number = 30;
      
      protected static const §4]§:String = "ScoreLoopCountChannel";
      
      protected static const §`!@§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §>9§ = "LevelEndStateRio";
            if(!(_loc2_ && §+W§))
            {
               §!w§ = 30;
               if(_loc1_)
               {
                  §4]§ = "ScoreLoopCountChannel";
                  if(_loc1_)
                  {
                     addr48:
                     §`!@§ = "EndScreenEffectChannel";
                  }
               }
               §§goto(addr48);
            }
            return;
         }
         §§goto(addr48);
      }
      
      private var §0a§:§ !=§;
      
      private var §1!"§:Number;
      
      private var §[§:Number = 0.0;
      
      private var §#!H§:Number = 0.0;
      
      private var §5!5§:Boolean = false;
      
      private var §1_§:Timer;
      
      private var §+f§:§4V§;
      
      protected var §'!9§:Array;
      
      protected var §2i§:§9!C§;
      
      protected var §]6§:Vector.<§9!C§>;
      
      public var mNewScoreCounter:int;
      
      private var §>!5§:int;
      
      private var §7!9§:Boolean;
      
      protected var §%!>§:Boolean;
      
      private var §<!K§:§<!M§;
      
      protected var §6g§:Boolean;
      
      private var § I§:§ !=§;
      
      protected var §^!%§:Boolean;
      
      protected var §;d§:int;
      
      public function §+W§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§'!9§ = [];
            if(!_loc4_)
            {
               this.§<!K§ = new §<!M§();
               if(_loc4_ && this)
               {
               }
               §§goto(addr48);
            }
            super(param1,param2);
         }
         addr48:
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.init();
         §]F§ = new §4!,§(this);
         if(_loc2_)
         {
            §]F§.init(this.getViewXML());
            if(_loc2_ || _loc1_)
            {
               this.initButtonDefaultPositions();
               if(!(_loc1_ && _loc2_))
               {
                  addr66:
                  this.§]6§ = new Vector.<§9!C§>();
                  addr72:
                  §,!F§.§@o§(§4]§,1,1);
               }
               §,!F§.§@o§(§`!@§,3,1);
               return;
            }
            §§goto(addr72);
         }
         §§goto(addr66);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§'!9§);
            if(!_loc1_)
            {
               §§pop().push((§]F§.getItemByName("Button_Menu") as §7-§).x);
               if(!(_loc1_ && _loc2_))
               {
                  addr47:
                  §§push(this.§'!9§);
                  if(!_loc1_)
                  {
                     §§pop().push((§]F§.getItemByName("Button_Replay") as §7-§).x);
                     if(!(_loc1_ && this))
                     {
                        §§push(this.§'!9§);
                        if(_loc1_)
                        {
                        }
                        addr95:
                        §§pop().push((§]F§.getItemByName("Button_CutScene") as §7-§).x);
                        §§goto(addr102);
                     }
                     addr102:
                     return;
                  }
                  §§pop().push((§]F§.getItemByName("Button_NextLevel") as §7-§).x);
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr95);
                     §§push(this.§'!9§);
                  }
               }
            }
            §§goto(addr95);
         }
         §§goto(addr47);
      }
      
      protected function getViewXML() : XML
      {
         return §5A§.§;L§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§[4§.§"!>§))
         {
            if(_loc2_ || _loc1_)
            {
               (§]F§.getItemByName("Button_Menu") as §7-§).setVisibility(false);
               if(_loc2_ || _loc2_)
               {
                  (§]F§.getItemByName("Button_Replay") as §7-§).setVisibility(true);
                  if(!(_loc1_ && this))
                  {
                     (§]F§.getItemByName("Button_NextLevel") as §7-§).setVisibility(false);
                     if(!(_loc1_ && _loc1_))
                     {
                        (§]F§.getItemByName("Button_CutScene") as §7-§).setVisibility(true);
                        (§]F§.getItemByName("Button_Replay") as §7-§).x = this.§'!9§[0] + Math.abs(this.§'!9§[1] - this.§'!9§[0]) / 2;
                        addr79:
                        if(_loc2_)
                        {
                           §§goto(addr115);
                        }
                        §§goto(addr146);
                     }
                     addr115:
                     (§]F§.getItemByName("Button_CutScene") as §7-§).x = this.§'!9§[1] + Math.abs(this.§'!9§[2] - this.§'!9§[1]) / 2;
                     if(_loc1_ && _loc2_)
                     {
                        addr163:
                        (§]F§.getItemByName("Button_NextLevel") as §7-§).setVisibility(false);
                        if(_loc2_)
                        {
                           addr172:
                           (§]F§.getItemByName("Button_CutScene") as §7-§).setVisibility(true);
                           if(!_loc1_)
                           {
                              (§]F§.getItemByName("Button_Menu") as §7-§).x = this.§'!9§[0];
                           }
                           (§]F§.getItemByName("Button_Replay") as §7-§).x = this.§'!9§[1];
                           if(!_loc1_)
                           {
                              addr213:
                              (§]F§.getItemByName("Button_CutScene") as §7-§).x = this.§'!9§[2];
                           }
                        }
                     }
                     else
                     {
                        addr146:
                     }
                     return;
                  }
                  §§goto(addr163);
               }
               §§goto(addr213);
            }
            §§goto(addr79);
         }
         else
         {
            (§]F§.getItemByName("Button_Menu") as §7-§).setVisibility(true);
            if(!_loc1_)
            {
               (§]F§.getItemByName("Button_Replay") as §7-§).setVisibility(true);
               §§goto(addr163);
            }
         }
         §§goto(addr172);
      }
      
      protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            (§]F§.getItemByName("Button_Menu") as §7-§).setVisibility(true);
         }
         (§]F§.getItemByName("Button_Replay") as §7-§).setVisibility(true);
         if(!_loc2_)
         {
            (§]F§.getItemByName("Button_CutScene") as §7-§).setVisibility(false);
            if(!_loc2_)
            {
               if(§[4§.§4E§())
               {
                  if(!_loc2_)
                  {
                     addr53:
                     (§]F§.getItemByName("Button_NextLevel") as §7-§).setVisibility(true);
                     if(_loc1_ || this)
                     {
                        (§]F§.getItemByName("Button_Menu") as §7-§).x = this.§'!9§[0];
                     }
                     (§]F§.getItemByName("Button_Replay") as §7-§).x = this.§'!9§[1];
                     addr97:
                     (§]F§.getItemByName("Button_NextLevel") as §7-§).x = this.§'!9§[2];
                  }
                  §§goto(addr97);
               }
               else
               {
                  (§]F§.getItemByName("Button_NextLevel") as §7-§).setVisibility(false);
                  (§]F§.getItemByName("Button_Menu") as §7-§).x = this.§'!9§[0] + Math.abs(this.§'!9§[1] - this.§'!9§[0]) / 2;
                  if(_loc1_ || _loc1_)
                  {
                     (§]F§.getItemByName("Button_Replay") as §7-§).x = this.§'!9§[1] + Math.abs(this.§'!9§[2] - this.§'!9§[1]) / 2;
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.activate();
         if(_loc1_)
         {
            this.§^!%§ = false;
            §=w§.pause();
            if(_loc1_)
            {
               this.§+f§ = new §4V§(0,0,0,0);
               if(!_loc2_)
               {
                  §]F§.movieClip.addChildAt(this.§+f§,§]F§.movieClip.numChildren - 1);
                  if(§[4§.§`v§())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        this.showButtonsCutScene();
                        this.mNewScoreCounter = 0;
                        addr78:
                        if(_loc1_ || this)
                        {
                           this.§7!9§ = false;
                           §,!F§.§;v§(this.§6Y§);
                           addr105:
                           this.§+f§.§[!'§(0.7);
                        }
                        addr68:
                     }
                     §§goto(addr105);
                  }
                  else
                  {
                     this.showButtonsNormal();
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr78);
                     }
                  }
                  this.§[§ = 0;
                  this.§#!H§ = 0;
                  if(_loc1_)
                  {
                     addr117:
                     this.§,'§();
                  }
                  return;
               }
               §§goto(addr117);
            }
            §§goto(addr68);
         }
         §§goto(addr105);
      }
      
      protected function get §6Y§() : String
      {
         return "LevelCompletedTheme1";
      }
      
      private function §,'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§%!>§ = false;
            this.setScoreData();
            if(_loc1_)
            {
               addr35:
               this.§1_§ = new Timer(500);
               this.§>!5§ = 0;
               this.§1_§.addEventListener(TimerEvent.TIMER,this.§0!!§);
            }
            this.§1_§.start();
            return;
         }
         §§goto(addr35);
      }
      
      protected function setMightyEagleFeather() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(AngryBirdsFP11.sUserProgress.§3I§(§[4§.§"!>§) == 100)
            {
               if(_loc1_)
               {
                  addr47:
                  (§]F§.getItemByName("MovieClip_ResultMEFeather") as §9O§).mClip.gotoAndStop("On");
                  if(_loc1_ || this)
                  {
                  }
                  §§goto(addr71);
               }
            }
            else
            {
               (§]F§.getItemByName("MovieClip_ResultMEFeather") as §9O§).mClip.gotoAndStop("Off");
            }
            addr71:
            return;
         }
         §§goto(addr47);
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(this.§6g§)
         {
            if(_loc4_)
            {
               §§push(param1);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(int(§§pop()));
               }
               param2 = §§pop();
               if(_loc4_)
               {
                  AngryBirdsFP11.sUserProgress.§'`§(§[4§.§"!>§,param2);
                  if(!_loc5_)
                  {
                     §]F§.setText("New Highscore!","TextField_BestScore");
                     if(_loc5_ && param2)
                     {
                        addr69:
                        §§push(this.§;d§);
                        if(_loc4_ || param2)
                        {
                           var _loc3_:* = §§pop();
                           if(_loc4_ || this)
                           {
                              §§push(1);
                              if(!_loc5_)
                              {
                                 §§push(_loc3_);
                                 if(!_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          addr151:
                                          §§push(0);
                                          if(_loc5_ && param1)
                                          {
                                             addr197:
                                          }
                                       }
                                       else
                                       {
                                          addr182:
                                          §§push(1);
                                          if(!_loc4_)
                                          {
                                             §§goto(addr197);
                                          }
                                       }
                                       §§goto(addr197);
                                    }
                                    else
                                    {
                                       §§push(2);
                                       §§push(_loc3_);
                                       if(!(_loc5_ && param1))
                                       {
                                          addr179:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                §§goto(addr182);
                                             }
                                             else
                                             {
                                                addr196:
                                                §§goto(addr197);
                                                §§push(2);
                                             }
                                             §§goto(addr197);
                                          }
                                          else
                                          {
                                             §§goto(addr202);
                                          }
                                       }
                                       if(§§pop() === §§pop())
                                       {
                                          §§goto(addr196);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                    addr202:
                                    §§goto(addr203);
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr197);
                           }
                           §§goto(addr151);
                        }
                        addr203:
                        §§push(3);
                        if(_loc4_ || param2)
                        {
                           §§push(_loc3_);
                        }
                        switch(§§pop())
                        {
                           case 0:
                              (§]F§.getItemByName("MovieClip_BestScoreStars") as §9O§).§3!;§("OneStar");
                              if(!_loc5_)
                              {
                                 break;
                              }
                              addr101:
                              break;
                           case 1:
                              (§]F§.getItemByName("MovieClip_BestScoreStars") as §9O§).§3!;§("TwoStar");
                              if(!_loc4_)
                              {
                                 addr117:
                                 break;
                              }
                              §§goto(addr101);
                              break;
                           case 2:
                              (§]F§.getItemByName("MovieClip_BestScoreStars") as §9O§).§3!;§("ThreeStar");
                              if(!(_loc5_ && param1))
                              {
                                 §§goto(addr117);
                              }
                        }
                        return;
                        addr69:
                     }
                     else
                     {
                        addr52:
                     }
                     §§goto(addr202);
                  }
               }
               §§goto(addr69);
            }
            §§goto(addr52);
         }
         else
         {
            §]F§.setText("Best " + param2.toString(),"TextField_BestScore");
            if(!_loc5_)
            {
               this.§;d§ = §[4§.§"r§(§[4§.§"!>§,param2);
            }
         }
         §§goto(addr69);
      }
      
      protected function setScoreData() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(AngryBirdsFP11.sUserProgress.§0!3§(§[4§.§"!>§));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§=w§.controller.getScore());
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc7_ && _loc2_))
         {
            this.§6g§ = _loc2_ > _loc1_;
            if(_loc8_)
            {
               this.setScoreStars(_loc2_,_loc1_);
               if(_loc8_)
               {
                  this.setMightyEagleFeather();
               }
            }
         }
         §§push(§=w§.controller.getEagleScore());
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(AngryBirdsFP11.sUserProgress.§3I§(§[4§.§"!>§));
         if(!_loc7_)
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
               if(!_loc7_)
               {
                  §§push(int(§§pop()));
                  if(_loc8_)
                  {
                     _loc4_ = §§pop();
                     if(!_loc7_)
                     {
                        addr98:
                        §§push(AngryBirdsFP11.sUserProgress);
                        if(!_loc7_)
                        {
                           §§push(§[4§.§"!>§);
                           if(_loc8_)
                           {
                              §§push(_loc4_);
                              if(!_loc7_)
                              {
                                 §§pop().§7z§(§§pop(),§§pop());
                                 addr114:
                                 §§push(AngryBirdsFP11.sUserProgress);
                                 §§push(§[4§.§"!>§);
                                 §§push(_loc2_);
                              }
                              §§push(§§pop().§%i§(§§pop(),§§pop()));
                              if(_loc8_)
                              {
                                 addr119:
                                 var _loc6_:int = §§pop();
                                 if(_loc8_)
                                 {
                                    (§]F§.getItemByName("MovieClip_NewHighScoreBadge") as §9O§).setVisibility(false);
                                    if(!(_loc7_ && this))
                                    {
                                       addr136:
                                       (§]F§.getItemByName("MovieClip_StarLeft") as §9O§).mClip.gotoAndStop("UnLit");
                                       if(!(_loc7_ && _loc1_))
                                       {
                                          (§]F§.getItemByName("MovieClip_StarCenter") as §9O§).mClip.gotoAndStop("UnLit");
                                          if(!(_loc7_ && _loc1_))
                                          {
                                             (§]F§.getItemByName("MovieClip_StarRight") as §9O§).mClip.gotoAndStop("UnLit");
                                          }
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr119);
                           }
                        }
                     }
                     §§goto(addr114);
                  }
               }
               §§goto(addr119);
            }
            §§goto(addr98);
         }
         §§goto(addr114);
      }
      
      protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§6g§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §,!F§.§;v§("Hiscore_Badge",§`!@§);
                  §]F§.setText("New Highscore!","TextField_NewHighScore");
                  (§]F§.getItemByName("TextField_NewHighScore") as §`a§).setVisibility(true);
               }
               (§]F§.getItemByName("MovieClip_BestScoreStars") as §9O§).setVisibility(false);
               this.§0L§();
               if(!(_loc2_ && _loc2_))
               {
                  addr79:
               }
            }
            else
            {
               (§]F§.getItemByName("TextField_BestScore") as §`a§).setVisibility(true);
               (§]F§.getItemByName("MovieClip_BestScoreStars") as §9O§).setVisibility(true);
            }
            return;
         }
         §§goto(addr79);
      }
      
      protected function §0L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§[§ = 0;
            if(_loc1_ || _loc1_)
            {
               this.§#!H§ = 0;
               if(!_loc2_)
               {
                  addr48:
                  this.§1!"§ = §!w§;
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      private function §1C§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).x = (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).x - this.§[§;
            (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).y = (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).y - this.§#!H§;
            if(this.§1!"§ > 0)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§push(this);
                  §§push(Math.random() - 0.5);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this.§1!"§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() / §!w§);
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc2_)
                     {
                        addr85:
                        §§push(§§pop() * 20);
                     }
                     §§pop().§[§ = §§pop();
                     §§push(this);
                     §§push(Math.random() - 0.5);
                     if(_loc2_ || param1)
                     {
                        §§push(this.§1!"§);
                        if(_loc2_ || param1)
                        {
                           §§push(§§pop() / §!w§);
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc2_)
                        {
                           §§push(§§pop() * 20);
                        }
                     }
                     §§pop().§#!H§ = §§pop();
                     if(_loc2_ || param1)
                     {
                        (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).x = (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).x + this.§[§;
                        if(_loc2_)
                        {
                           (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).y = (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).y + this.§#!H§;
                           addr190:
                           §§push(this);
                           §§push(this.§1!"§);
                           if(_loc2_ || this)
                           {
                              §§push(param1);
                              if(_loc2_)
                              {
                                 §§push(§§pop() / 10);
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§pop().§1!"§ = §§pop();
                           §§goto(addr207);
                        }
                        addr207:
                        return;
                     }
                     addr187:
                     this.§#!H§ = 0;
                     §§goto(addr190);
                     §§goto(addr190);
                  }
                  §§goto(addr85);
               }
               §§goto(addr190);
            }
            else
            {
               this.§1!"§ = -1;
               this.§ !G§();
               if(_loc2_)
               {
                  this.§[§ = 0;
                  §§goto(addr187);
               }
            }
         }
         §§goto(addr190);
      }
      
      protected function § !G§() : void
      {
      }
      
      private function §0!!§(param1:TimerEvent) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc4_:Number = §[4§.§!_§(§[4§.§"!>§).§4!6§;
         var _loc5_:Number = §[4§.§!_§(§[4§.§"!>§).§!x§;
         if(!(_loc13_ && this))
         {
            if((§]F§.getItemByName("MovieClip_StarLeft") as §9O§).mClip.currentLabel == "UnLit")
            {
               §,!F§.§;v§("Hiscore_Count",§4]§,100);
               this.§1_§.delay = 1000;
               §§push(this.§<!K§);
               if(!_loc13_)
               {
                  §§pop().assign(§=w§.controller.getScore());
                  if(!(_loc13_ && _loc3_))
                  {
                     §§push(this.§<!K§);
                     if(!_loc13_)
                     {
                        addr86:
                        §§push(§§pop().getValue());
                        if(!_loc13_)
                        {
                           §§push(_loc4_);
                           if(_loc12_)
                           {
                              §§push(§§pop() / §§pop());
                              if(_loc12_)
                              {
                                 §§push(2);
                                 if(!_loc13_)
                                 {
                                    §§push(Number(§§pop() * §§pop()));
                                    if(_loc12_ || param1)
                                    {
                                       _loc6_ = §§pop();
                                       §§push(_loc4_);
                                       if(_loc12_ || this)
                                       {
                                          addr117:
                                          if(§§pop() <= 0)
                                          {
                                             §§push(1);
                                             if(!(_loc13_ && _loc2_))
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc12_ || _loc3_)
                                                {
                                                   addr134:
                                                   _loc6_ = §§pop();
                                                   if(!_loc13_)
                                                   {
                                                      addr137:
                                                      this.§ I§ = §@7§.§@6§.§3!%§(this,{"mNewScoreCounter":this.§<!K§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                      §§push(this.§ I§);
                                                      if(!(_loc13_ && _loc2_))
                                                      {
                                                         §§pop().onComplete = this.§<!F§;
                                                         §§push(this.§ I§);
                                                      }
                                                      §§pop().play();
                                                      if(!(_loc13_ && this))
                                                      {
                                                         §§push(this.§"!M§());
                                                         if(!(_loc13_ && _loc2_))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(!(_loc13_ && _loc3_))
                                                            {
                                                               _loc7_ = §§pop();
                                                               §§push(Number((§]F§.getItemByName("MovieClip_StarLeft") as §9O§).x + (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).x));
                                                               if(_loc12_)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  _loc3_ = (§]F§.getItemByName("MovieClip_StarLeft") as §9O§).y + (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).y;
                                                                  this.§2i§ = new §9!C§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§9!C§.§0T§,§9!C§.§9!H§,_loc7_);
                                                                  §]F§.addChild(this.§2i§);
                                                                  if(!(_loc13_ && _loc3_))
                                                                  {
                                                                     addr250:
                                                                     this.§]6§.push(this.§2i§);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr480:
                                                                     §]F§.addChild(this.§2i§);
                                                                     this.§]6§.push(this.§2i§);
                                                                  }
                                                                  §§goto(addr608);
                                                               }
                                                               else
                                                               {
                                                                  addr336:
                                                                  _loc2_ = §§pop();
                                                                  if(!_loc13_)
                                                                  {
                                                                     addr353:
                                                                     _loc3_ = (§]F§.getItemByName("MovieClip_StarCenter") as §9O§).y + (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).y;
                                                                     this.§2i§ = new §9!C§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§9!C§.§>!9§,§9!C§.§9!H§,_loc8_);
                                                                     §]F§.addChild(this.§2i§);
                                                                     if(_loc12_ || param1)
                                                                     {
                                                                        this.§]6§.push(this.§2i§);
                                                                        if(!_loc13_)
                                                                        {
                                                                           §§goto(addr608);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr545:
                                                                           this.§0a§ = §@7§.§@6§.§3!%§((§]F§.getItemByName("MovieClip_NewHighScoreBadge") as §9O§).mClip,{
                                                                              "scaleX":1,
                                                                              "scaleY":1
                                                                           },{
                                                                              "scaleX":7,
                                                                              "scaleY":7
                                                                           },0.1);
                                                                           if(!(_loc13_ && _loc2_))
                                                                           {
                                                                              addr574:
                                                                              §§push(this.§0a§);
                                                                              if(_loc12_ || this)
                                                                              {
                                                                                 §§pop().onComplete = this.onBadgeLanded;
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§push(this.§0a§);
                                                                                 }
                                                                                 §§goto(addr608);
                                                                              }
                                                                              §§pop().play();
                                                                              if(_loc12_ || this)
                                                                              {
                                                                                 §§goto(addr608);
                                                                              }
                                                                           }
                                                                           addr608:
                                                                           var _loc10_:*;
                                                                           §§push((_loc10_ = this).§>!5§);
                                                                           if(_loc12_)
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                           }
                                                                           var _loc11_:* = §§pop();
                                                                           if(_loc12_)
                                                                           {
                                                                              _loc10_.§>!5§ = _loc11_;
                                                                           }
                                                                           return;
                                                                           addr530:
                                                                        }
                                                                        §§goto(addr608);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr510:
                                                                        §§push(this.§%!>§);
                                                                        if(_loc12_ || _loc3_)
                                                                        {
                                                                           addr519:
                                                                           §§push(!§§pop());
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           addr521:
                                                                           (§]F§.getItemByName("MovieClip_NewHighScoreBadge") as §9O§).setVisibility(true);
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§goto(addr530);
                                                                           }
                                                                           §§goto(addr574);
                                                                        }
                                                                        else
                                                                        {
                                                                           (§]F§.getItemByName("MovieClip_NewHighScoreBadge") as §9O§).setVisibility(false);
                                                                           if(!(_loc13_ && _loc2_))
                                                                           {
                                                                              §§goto(addr545);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr608);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr419:
                                                                     this.§^!%§ = true;
                                                                     _loc9_ = this.§%!2§();
                                                                     §§push(Number((§]F§.getItemByName("MovieClip_StarRight") as §9O§).x + (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).x));
                                                                     if(!_loc13_)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        addr457:
                                                                        _loc3_ = (§]F§.getItemByName("MovieClip_StarRight") as §9O§).y + (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).y;
                                                                        this.§2i§ = new §9!C§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§9!C§.§=0§,§9!C§.§9!H§,_loc9_);
                                                                        if(!(_loc13_ && this))
                                                                        {
                                                                           §§goto(addr480);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr496:
                                                                        }
                                                                     }
                                                                     §§goto(addr457);
                                                                  }
                                                               }
                                                               §§goto(addr480);
                                                            }
                                                            else
                                                            {
                                                               addr277:
                                                               §§push(§§pop());
                                                               if(_loc12_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        §§pop();
                                                                        §§push((§]F§.getItemByName("MovieClip_StarCenter") as §9O§).mClip.currentLabel == "UnLit");
                                                                        if(!(_loc13_ && param1))
                                                                        {
                                                                           addr310:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc12_ || _loc3_)
                                                                              {
                                                                                 addr318:
                                                                                 _loc8_ = this.§#!"§();
                                                                                 §§goto(addr336);
                                                                                 §§push(Number((§]F§.getItemByName("MovieClip_StarCenter") as §9O§).x + (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).x));
                                                                              }
                                                                              §§goto(addr419);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr392:
                                                                              §§push(this.§<!K§.getValue() >= _loc4_);
                                                                              if(_loc12_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    addr398:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          §§pop();
                                                                                          §§push((§]F§.getItemByName("MovieClip_StarRight") as §9O§).mClip.currentLabel == "UnLit");
                                                                                          if(_loc12_ || param1)
                                                                                          {
                                                                                          }
                                                                                          addr505:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                §§pop();
                                                                                                §§goto(addr510);
                                                                                             }
                                                                                             §§goto(addr519);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr510);
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§goto(addr419);
                                                                                    }
                                                                                    else if(!this.§7!9§)
                                                                                    {
                                                                                       this.§7!9§ = true;
                                                                                       §§goto(addr496);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.§1_§.stop();
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          §§goto(addr505);
                                                                                          §§push(Boolean(this.§6g§));
                                                                                       }
                                                                                       §§goto(addr510);
                                                                                    }
                                                                                    §§goto(addr608);
                                                                                 }
                                                                              }
                                                                              §§goto(addr505);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr419);
                                                                  }
                                                                  §§goto(addr310);
                                                               }
                                                               §§goto(addr398);
                                                            }
                                                         }
                                                         §§goto(addr419);
                                                      }
                                                      §§goto(addr318);
                                                   }
                                                   §§goto(addr250);
                                                }
                                                §§goto(addr353);
                                             }
                                             else
                                             {
                                                addr268:
                                                §§push(_loc5_);
                                                if(_loc12_ || _loc2_)
                                                {
                                                   addr276:
                                                   §§goto(addr277);
                                                   §§push(§§pop() >= §§pop());
                                                }
                                             }
                                             §§goto(addr392);
                                          }
                                          §§goto(addr137);
                                       }
                                       §§goto(addr353);
                                    }
                                    §§goto(addr457);
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr276);
                        }
                     }
                     §§goto(addr392);
                  }
                  §§goto(addr137);
               }
               §§goto(addr86);
            }
            else
            {
               §§push(this.§<!K§);
               if(_loc12_)
               {
                  §§push(§§pop().getValue());
                  if(!(_loc13_ && _loc3_))
                  {
                     §§goto(addr268);
                  }
                  §§goto(addr392);
               }
            }
            §§goto(addr392);
         }
         §§goto(addr521);
      }
      
      protected function §"!M§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,!F§.§;v§("Hiscore_Star_Splash1",§`!@§);
            if(!(_loc2_ && this))
            {
               (§]F§.getItemByName("MovieClip_StarLeft") as §9O§).mClip.gotoAndStop("Lit");
            }
         }
         return false;
      }
      
      protected function §#!"§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,!F§.§;v§("Hiscore_Star_Splash2",§`!@§);
            if(!(_loc2_ && _loc2_))
            {
               addr39:
               (§]F§.getItemByName("MovieClip_StarCenter") as §9O§).mClip.gotoAndStop("Lit");
            }
            return false;
         }
         §§goto(addr39);
      }
      
      protected function §%!2§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §,!F§.§;v§("Hiscore_Star_Splash3",§`!@§);
            if(!_loc1_)
            {
               (§]F§.getItemByName("MovieClip_StarRight") as §9O§).mClip.gotoAndStop("Lit");
            }
         }
         return false;
      }
      
      private function §<!F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,!F§.§@!9§(§4]§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§9!C§ = null;
         §§push(super.run(param1));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_)
         {
            §§push(_loc2_);
            if(_loc7_ || this)
            {
               if(§§pop() != §1Q§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc6_ && this))
                  {
                     addr47:
                     §§push(_loc2_);
                     if(_loc7_ || param1)
                     {
                        return §§pop();
                     }
                     addr93:
                     for each(_loc3_ in this.§]6§)
                     {
                        if(_loc7_ || _loc3_)
                        {
                           _loc3_.update(param1);
                        }
                     }
                     if(!(_loc6_ && param1))
                     {
                        if(this.§1!"§ > -1)
                        {
                           if(_loc7_ || this)
                           {
                              addr137:
                              this.§1C§(param1);
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§goto(addr157);
                              }
                              §§goto(addr178);
                           }
                        }
                        addr157:
                        if(mNextState.length > 0)
                        {
                           if(_loc7_ || param1)
                           {
                              §=w§.§ o§.clearLevel();
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§goto(addr178);
                              }
                           }
                           addr178:
                           return §1Q§.STATE_STATUS_COMPLETED;
                        }
                        return §1Q§.STATE_STATUS_RUNNING;
                     }
                     §§goto(addr137);
                  }
                  else
                  {
                     §]F§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                     addr76:
                  }
                  §§goto(addr93);
               }
               else
               {
                  §]F§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                  if(_loc7_ || _loc2_)
                  {
                     §§goto(addr76);
                  }
               }
               §§push(0);
            }
            §§goto(addr93);
         }
         §§goto(addr47);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.deActivate();
         this.§`U§();
         this.§1!"§ = 0;
         this.mNewScoreCounter = 0;
         if(_loc2_)
         {
            §§push(this.§ I§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  addr36:
                  this.§ I§.stop();
                  this.§ I§ = null;
               }
               §§push(this.§0a§);
               if(_loc2_ || _loc1_)
               {
                  if(§§pop())
                  {
                     §§goto(addr52);
                  }
                  §§goto(addr75);
               }
               addr52:
               this.§0a§.stop();
               if(_loc2_ || this)
               {
                  this.§0a§ = null;
                  if(!_loc1_)
                  {
                     addr75:
                     §,!F§.§@!9§(§4]§);
                     this.setButtonStates(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     if(_loc2_)
                     {
                        §§goto(addr84);
                     }
                     §§goto(addr134);
                  }
               }
               addr84:
               §]F§.setText("0","TextField_LevelEndScore");
               §]F§.setText("0","TextField_LevelEndScoreEffects");
               if(!_loc1_)
               {
                  §§push(this.§+f§);
                  if(_loc2_ || this)
                  {
                     if(§§pop())
                     {
                        if(§]F§.movieClip.contains(this.§+f§))
                        {
                           if(_loc2_ || this)
                           {
                              §]F§.movieClip.removeChild(this.§+f§);
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr147);
                  }
                  §§pop().clean();
                  if(_loc2_ || _loc1_)
                  {
                  }
               }
               §§goto(addr147);
            }
            §§goto(addr36);
         }
         addr147:
         if(!_loc1_)
         {
            addr134:
            §§push(this.§+f§);
         }
         this.§+f§ = null;
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            (§]F§.getItemByName("Button_Menu") as §7-§).setComponentVisualState(param1);
            if(!(_loc3_ && _loc3_))
            {
               (§]F§.getItemByName("Button_Replay") as §7-§).setComponentVisualState(param1);
               if(!(_loc3_ && this))
               {
                  addr71:
                  (§]F§.getItemByName("Button_NextLevel") as §7-§).setComponentVisualState(param1);
                  if(_loc3_)
                  {
                  }
                  §§goto(addr87);
               }
               (§]F§.getItemByName("Button_CutScene") as §7-§).setComponentVisualState(param1);
               addr87:
               return;
            }
         }
         §§goto(addr71);
      }
      
      private function §`U§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var splash:§9!C§ = null;
         if(!(_loc4_ && this))
         {
            if(this.§1_§)
            {
               if(!(_loc4_ && this))
               {
                  addr42:
                  this.§1_§.stop();
               }
               try
               {
                  this.§1_§.removeEventListener(TimerEvent.TIMER,this.§0!!§);
                  if(!_loc4_)
                  {
                     addr78:
                     var _loc2_:int = 0;
                     if(_loc5_)
                     {
                        var _loc3_:* = this.§]6§;
                        if(_loc5_)
                        {
                           loop0:
                           while(§§hasnext(_loc3_,_loc2_))
                           {
                              §§push(§§newactivation());
                              if(!_loc4_)
                              {
                                 §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                                 if(_loc5_)
                                 {
                                    while(true)
                                    {
                                       if(§]F§.contains(splash))
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             while(true)
                                             {
                                                §]F§.removeChild(splash);
                                                if(_loc4_ && _loc2_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             addr112:
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          addr134:
                                          while(true)
                                          {
                                             §§pop().§§slot[1].clean();
                                             continue loop0;
                                          }
                                       }
                                    }
                                    addr100:
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr134);
                           }
                           addr139:
                           if(!_loc4_)
                           {
                              this.§]6§ = new Vector.<§9!C§>();
                              if(_loc5_)
                              {
                                 addr150:
                                 this.hideBestScoreTexts();
                                 §§goto(addr152);
                              }
                              addr152:
                              return;
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr150);
               }
               catch(e:Error)
               {
               }
               §§goto(addr150);
            }
            §§goto(addr78);
         }
         §§goto(addr42);
      }
      
      protected function hideBestScoreTexts() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            (§]F§.getItemByName("TextField_BestScore") as §`a§).setVisibility(false);
            if(_loc2_)
            {
               (§]F§.getItemByName("MovieClip_BestScoreStars") as §9O§).setVisibility(false);
               if(_loc2_ || _loc1_)
               {
               }
               §§goto(addr74);
            }
            (§]F§.getItemByName("TextField_NewHighScore") as §`a§).setVisibility(false);
         }
         addr74:
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.cleanup();
         }
      }
      
      protected function §@a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §^!K§.§+!4§();
            if(_loc2_)
            {
               addr28:
               mNextState = this.§`!A§();
            }
            return;
         }
         §§goto(addr28);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:String = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(_loc6_ || param2)
            {
               §§push("NEXT_LEVEL");
               if(!(_loc7_ && this))
               {
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc7_ && param1))
                        {
                           §§push(0);
                           if(_loc7_)
                           {
                              addr152:
                           }
                        }
                        else
                        {
                           addr212:
                           §§push(4);
                           if(_loc7_)
                           {
                           }
                        }
                        addr220:
                        switch(§§pop())
                        {
                           case 0:
                              this.§@a§();
                              break loop0;
                           case 1:
                              §^!K§.§@!<§();
                              mNextState = this.§@!5§();
                              break loop0;
                           case 2:
                              §^!K§.§@!<§();
                              mNextState = this.§@!5§();
                              §§push(§=w§.§ o§);
                              if(_loc6_)
                              {
                                 §§push(§§pop().§>y§());
                                 if(_loc6_)
                                 {
                                    §§push(§§pop());
                                    if(_loc7_)
                                    {
                                       if(§§pop())
                                       {
                                          addr61:
                                          §=w§.§ o§.§8U§(_loc4_);
                                       }
                                       break loop0;
                                    }
                                    addr58:
                                 }
                                 continue;
                              }
                              §§goto(addr61);
                           case 3:
                              §,!F§.§?X§();
                              mNextState = this.§6!9§();
                              if(!_loc7_)
                              {
                                 break loop0;
                              }
                              break loop0;
                           case 4:
                              AngryBirdsFP11.§ y§.§-!$§();
                              if(!_loc7_)
                              {
                                 break loop0;
                              }
                        }
                     }
                     else
                     {
                        §§push("REPLAY");
                        if(!(_loc7_ && param1))
                        {
                           §§push(_loc5_);
                           if(!_loc7_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc7_ && param3))
                                 {
                                    addr144:
                                    §§push(1);
                                    if(_loc6_ || param1)
                                    {
                                       §§goto(addr152);
                                    }
                                    else
                                    {
                                       addr180:
                                    }
                                 }
                                 else
                                 {
                                    addr177:
                                    §§push(2);
                                    if(_loc6_)
                                    {
                                       §§goto(addr180);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push("WATCH_REPLAY");
                                 if(_loc6_ || param1)
                                 {
                                    addr161:
                                    §§push(_loc5_);
                                    if(_loc6_ || param2)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc6_ || this)
                                          {
                                             §§goto(addr177);
                                          }
                                          else
                                          {
                                             addr205:
                                             §§push(3);
                                             if(_loc7_)
                                             {
                                             }
                                             §§goto(addr220);
                                          }
                                       }
                                       else
                                       {
                                          §§push("MENU");
                                          if(!(_loc7_ && param3))
                                          {
                                             addr199:
                                             §§push(_loc5_);
                                             if(!_loc7_)
                                             {
                                                addr202:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr205);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr212);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push("FULLSCREEN_BUTTON");
                                                }
                                                §§goto(addr212);
                                             }
                                             addr211:
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr212);
                                             }
                                             else
                                             {
                                                §§goto(addr220);
                                                §§push(5);
                                             }
                                             §§goto(addr220);
                                          }
                                          §§goto(addr211);
                                          §§push(_loc5_);
                                       }
                                       §§goto(addr220);
                                    }
                                    §§goto(addr211);
                                 }
                                 §§goto(addr199);
                              }
                              §§goto(addr220);
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr212);
                  }
                  §§goto(addr199);
               }
               §§goto(addr161);
            }
            §§goto(addr144);
         }
      }
      
      protected function §@!5§() : String
      {
         return §^!K§.§>9§;
      }
      
      protected function §`!A§() : String
      {
         return StateCutScene.§>9§;
      }
      
      public function §6!9§() : String
      {
         return §6!@§.§>9§;
      }
   }
}
