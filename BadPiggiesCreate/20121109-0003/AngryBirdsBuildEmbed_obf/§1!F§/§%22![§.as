package §1!F§
{
   import §!!8§.§-!D§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §+]§.§7&§;
   import §1?§.§+!§;
   import §2!s§.§>!D§;
   import §5!`§.§ !c§;
   import §5!`§.§%!Y§;
   import §8!Q§.§2!7§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §?!4§.§=Y§;
   import §@!i§.§@!n§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §"![§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "LevelEndStateBS";
      
      private static const §]!2§:String = "ScoreLoopCountChannel";
      
      private static const §;X§:String = "EndScreenEffectChannel";
      
      protected static var §`!u§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            STATE_NAME = "LevelEndStateBS";
            if(!(_loc1_ && _loc2_))
            {
               §§goto(addr49);
            }
            §§goto(addr59);
         }
         addr49:
         if(!(_loc1_ && §"![§))
         {
            addr59:
            §;X§ = "EndScreenEffectChannel";
            if(_loc2_ || _loc1_)
            {
               §`!u§ = false;
            }
         }
      }
      
      private const §>!c§:String = "likeButton";
      
      private const §,!?§:String = "shareButton";
      
      private const §^9§:String = "nextButton";
      
      private var §#!<§:Boolean = false;
      
      private var §1!+§:Timer;
      
      private var §7H§:§%!Y§;
      
      private var §>!^§:§ !c§;
      
      private var §>!_§:Vector.<§ !c§>;
      
      public var mNewScoreCounter:int;
      
      private var §=w§:int;
      
      private var §9i§:Boolean;
      
      private var §]!4§:§2!7§;
      
      private var §47§:§=Y§;
      
      protected var §4!$§:int;
      
      public function §"![§(param1:Boolean = false, param2:String = "LevelEndStateBS")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§]!4§ = new §2!7§();
            if(!_loc3_)
            {
               addr25:
               super(param1,param2);
            }
            return;
         }
         §§goto(addr25);
      }
      
      public static function §?!W§() : Boolean
      {
         return §`!u§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.init();
            if(_loc1_)
            {
               §+!$§ = new §2U§(this);
               §+!$§.init(§=!Z§.§;K§.Views.View_LevelEndBS[0]);
               addr60:
               this.§>!_§ = new Vector.<§ !c§>();
               if(_loc1_ || this)
               {
                  §+!§.§#n§(§]!2§,1,1);
                  if(_loc1_)
                  {
                     §+!§.§#n§(§;X§,3,1);
                  }
               }
            }
            return;
         }
         §§goto(addr60);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super.activate();
         §'!V§.pause();
         this.§7H§ = new §%!Y§(0,0,0,0);
         §+!$§.movieClip.addChildAt(this.§7H§,§+!$§.movieClip.numChildren - 1);
         if(_loc2_)
         {
            this.mNewScoreCounter = 0;
            if(!_loc3_)
            {
               this.§9i§ = false;
               if(!(_loc3_ && _loc2_))
               {
                  §+!§.§4c§("LevelCompletedTheme1");
                  this.§7H§.§#[§(0.7);
                  this.§5!t§();
                  if(!_loc3_)
                  {
                     if(§+!$§.getItemByName("Button_Like"))
                     {
                        addr69:
                        §+!$§.getItemByName("Button_Like").visible = §7&§.§=n§().§4V§(this.§>!c§);
                        if(!_loc3_)
                        {
                           addr80:
                           if(!§+!$§.getItemByName("Button_Share"))
                           {
                           }
                           addr110:
                           if(§+!$§.getItemByName("Button_NextLevel"))
                           {
                              addr114:
                              §+!$§.getItemByName("Button_NextLevel").visible = §7&§.§=n§().§4V§(this.§^9§);
                           }
                           var _loc1_:Object = new Object();
                           if(!_loc3_)
                           {
                              _loc1_["scores"] = §'!V§.§?!G§.getScore();
                              if(_loc2_)
                              {
                                 addr137:
                                 _loc1_["pigsKilled"] = §'!V§.§1!2§.levelObjects.§ !q§();
                                 _loc1_["birdsShot"] = §'!V§.§1!2§.levelObjects.§6!&§();
                                 if(_loc2_)
                                 {
                                    _loc1_["valid"] = _loc1_["pigsKilled"] > 0 && _loc1_["birdsShot"] > 0;
                                    if(_loc2_)
                                    {
                                       §`!u§ = _loc1_["valid"];
                                       if(_loc3_ && _loc3_)
                                       {
                                       }
                                    }
                                    §§goto(addr201);
                                 }
                                 §-!D§.§?5§("onLevelCompleted",JSON.stringify(_loc1_));
                              }
                              addr201:
                              return;
                           }
                           §§goto(addr137);
                        }
                     }
                     §§goto(addr80);
                  }
                  §+!$§.getItemByName("Button_Share").visible = §7&§.§=n§().§4V§(this.§,!?§);
                  if(_loc2_ || this)
                  {
                     §§goto(addr110);
                  }
                  §§goto(addr114);
               }
               §§goto(addr69);
            }
         }
         §§goto(addr80);
      }
      
      private function §5!t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.setScoreData();
            if(_loc1_)
            {
               this.§1!+§ = new Timer(500);
               if(!_loc2_)
               {
                  this.§=w§ = 0;
                  if(_loc1_ || _loc1_)
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr73);
            }
         }
         addr59:
         this.§1!+§.addEventListener(TimerEvent.TIMER,this.§;#§);
         if(!(_loc2_ && _loc1_))
         {
            addr73:
            this.§1!+§.start();
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            (§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).mClip.gotoAndStop("UnLit");
            if(_loc2_ || this)
            {
               §§goto(addr59);
            }
            §§goto(addr69);
         }
         addr59:
         (§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).mClip.gotoAndStop("UnLit");
         if(!_loc1_)
         {
            addr69:
            (§+!$§.getItemByName("MovieClip_StarRight") as §%O§).mClip.gotoAndStop("UnLit");
         }
      }
      
      private function §;#§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = §'!V§.§1!2§.getCurrentLevelData().§9>§;
         var _loc5_:Number = §'!V§.§1!2§.getCurrentLevelData().§6!H§;
         if(!_loc10_)
         {
            if((§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).mClip.currentLabel == "UnLit")
            {
               if(!(_loc10_ && this))
               {
                  §+!§.§4c§("Hiscore_Count",§]!2§,100);
                  if(_loc9_ || this)
                  {
                     §+!§.§4c§("Hiscore_Star_Splash1",§;X§);
                     this.§1!+§.delay = 1000;
                     §§push(this.§]!4§);
                     if(!(_loc10_ && param1))
                     {
                        §§pop().assign(§'!V§.§?!G§.getScore());
                        §§push(this.§]!4§);
                        if(!_loc10_)
                        {
                           §§push(§§pop().getValue());
                           if(_loc9_ || _loc3_)
                           {
                              §§push(_loc4_);
                              if(_loc9_ || param1)
                              {
                                 §§push(§§pop() / §§pop());
                                 §§push(2);
                                 if(!_loc10_)
                                 {
                                    _loc6_ = Number(§§pop() * §§pop());
                                    if(_loc9_ || param1)
                                    {
                                       §§push(_loc4_);
                                       if(_loc9_)
                                       {
                                          addr123:
                                          if(§§pop() <= 0)
                                          {
                                             if(_loc9_)
                                             {
                                                §§push(1);
                                                if(!_loc10_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc9_)
                                                   {
                                                      _loc6_ = §§pop();
                                                      addr133:
                                                      this.§47§ = §>!D§.§-8§(this,{"mNewScoreCounter":this.§]!4§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                      addr147:
                                                      §§push(this.§47§);
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         §§pop().onComplete = this.§7a§;
                                                         §§push(this.§47§);
                                                      }
                                                      §§pop().play();
                                                      (§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).mClip.gotoAndStop("Lit");
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         §§push(Number((§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).x + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x));
                                                         if(!_loc10_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            _loc3_ = Number((§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).y + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y);
                                                            this.§>!^§ = new § !c§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§ !c§.§&$§);
                                                            §+!$§.addChild(this.§>!^§);
                                                            this.§>!_§.push(this.§>!^§);
                                                         }
                                                         else
                                                         {
                                                            addr443:
                                                            _loc2_ = §§pop();
                                                            _loc3_ = Number((§+!$§.getItemByName("MovieClip_StarRight") as §%O§).y + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y);
                                                            if(!_loc10_)
                                                            {
                                                               this.§>!^§ = new § !c§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§ !c§.§%p§);
                                                               if(_loc9_ || _loc2_)
                                                               {
                                                                  addr480:
                                                                  §+!$§.addChild(this.§>!^§);
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     addr491:
                                                                     this.§>!_§.push(this.§>!^§);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr526);
                                                      }
                                                      else
                                                      {
                                                         addr517:
                                                         this.§9i§ = true;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr347:
                                                      _loc3_ = §§pop();
                                                      addr348:
                                                      this.§>!^§ = new § !c§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§ !c§.§#4§);
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         addr367:
                                                         §+!$§.addChild(this.§>!^§);
                                                         if(_loc9_ || param1)
                                                         {
                                                            this.§>!_§.push(this.§>!^§);
                                                            if(_loc10_)
                                                            {
                                                               §§goto(addr491);
                                                            }
                                                            else
                                                            {
                                                               addr385:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr408:
                                                            §+!§.§4c§("Hiscore_Star_Splash3",§;X§);
                                                            if(_loc9_)
                                                            {
                                                               (§+!$§.getItemByName("MovieClip_StarRight") as §%O§).mClip.gotoAndStop("Lit");
                                                               addr422:
                                                               §§push(Number((§+!$§.getItemByName("MovieClip_StarRight") as §%O§).x + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x));
                                                               if(_loc10_ && _loc3_)
                                                               {
                                                               }
                                                               §§goto(addr443);
                                                            }
                                                            §§goto(addr480);
                                                         }
                                                         §§goto(addr491);
                                                      }
                                                   }
                                                   §§goto(addr526);
                                                }
                                                else
                                                {
                                                   §§goto(addr390);
                                                }
                                             }
                                             §§goto(addr348);
                                          }
                                          §§goto(addr133);
                                       }
                                       §§goto(addr347);
                                    }
                                    §§goto(addr491);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr390);
                           }
                        }
                        else
                        {
                           addr235:
                           §§push(§§pop().getValue());
                           if(_loc9_)
                           {
                              §§push(_loc5_);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(!(_loc10_ && _loc3_))
                                 {
                                    §§push(§§pop());
                                    if(_loc9_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc9_ || _loc3_)
                                          {
                                             §§pop();
                                             §§push((§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).mClip.currentLabel == "UnLit");
                                          }
                                          §§goto(addr499);
                                       }
                                       if(§§pop())
                                       {
                                          §+!§.§4c§("Hiscore_Star_Splash2",§;X§);
                                          if(_loc9_ || this)
                                          {
                                             (§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).mClip.gotoAndStop("Lit");
                                             if(_loc9_ || _loc2_)
                                             {
                                                §§push(Number((§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).x + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x));
                                                if(!(_loc10_ && _loc2_))
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!_loc10_)
                                                   {
                                                      §§push(Number((§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).y + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y));
                                                      if(!_loc10_)
                                                      {
                                                         §§goto(addr347);
                                                      }
                                                      §§goto(addr443);
                                                   }
                                                   §§goto(addr367);
                                                }
                                                §§goto(addr347);
                                             }
                                             §§goto(addr133);
                                          }
                                          §§goto(addr385);
                                       }
                                       else
                                       {
                                          addr388:
                                          addr390:
                                          §§push(§§pop() >= _loc4_);
                                          if(§§pop() >= _loc4_)
                                          {
                                             if(!_loc10_)
                                             {
                                                §§pop();
                                                if(_loc9_)
                                                {
                                                   §§goto(addr407);
                                                }
                                                §§goto(addr443);
                                             }
                                          }
                                          addr407:
                                          if((§+!$§.getItemByName("MovieClip_StarRight") as §%O§).mClip.currentLabel == "UnLit")
                                          {
                                             §§goto(addr408);
                                          }
                                          else
                                          {
                                             addr499:
                                             if(!this.§9i§)
                                             {
                                                if(_loc9_ || this)
                                                {
                                                   §§goto(addr517);
                                                }
                                             }
                                             else
                                             {
                                                this.§1!+§.stop();
                                                if(!_loc9_)
                                                {
                                                }
                                             }
                                             §§goto(addr526);
                                          }
                                          if(!_loc10_)
                                          {
                                             _loc7_.§=w§ = _loc8_;
                                          }
                                          return;
                                          §§push(this.§]!4§.getValue());
                                       }
                                       §§goto(addr408);
                                    }
                                    §§goto(addr390);
                                 }
                                 §§goto(addr499);
                              }
                              §§goto(addr390);
                           }
                        }
                        §§goto(addr390);
                     }
                     §§goto(addr388);
                  }
                  §§goto(addr422);
               }
               §§goto(addr526);
            }
            else
            {
               §§push(this.§]!4§);
               if(_loc9_)
               {
                  §§goto(addr235);
               }
            }
            §§goto(addr388);
         }
         §§goto(addr147);
      }
      
      private function §7a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
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
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc7_)
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
               {
                  if(_loc6_)
                  {
                     §§push(_loc2_);
                     if(_loc6_ || _loc3_)
                     {
                        return §§pop();
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr77);
               }
               else
               {
                  §+!$§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                  if(!_loc7_)
                  {
                     addr70:
                     §+!$§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                  }
               }
               §§push(0);
            }
            addr77:
            for each(_loc3_ in this.§>!_§)
            {
               if(!_loc7_)
               {
                  _loc3_.update(param1);
               }
            }
            if(!(_loc7_ && param1))
            {
               if(mNextState.length > 0)
               {
                  if(_loc6_ || this)
                  {
                     §'!V§.§1!2§.clearLevel();
                     if(!_loc6_)
                     {
                        §§goto(addr134);
                     }
                  }
                  return §;!!§.STATE_STATUS_COMPLETED;
               }
            }
            addr134:
            return §;!!§.STATE_STATUS_RUNNING;
         }
         §§goto(addr70);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.deActivate();
            this.§!>§();
            this.mNewScoreCounter = 0;
            §§push(this.§47§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  addr37:
                  this.§47§.stop();
                  this.§47§ = null;
               }
               §+!§.§+!h§(§]!2§);
               if(_loc1_)
               {
                  if(§+!$§.getItemByName("Button_Menu"))
                  {
                     (§+!$§.getItemByName("Button_Menu") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  (§+!$§.getItemByName("Button_Replay") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  if(!(_loc2_ && this))
                  {
                     §+!$§.setText("0","TextField_LevelEndScore");
                     if(_loc1_)
                     {
                        §+!$§.setText("0","TextField_LevelEndScoreEffects");
                        §§push(this.§7H§);
                        if(_loc1_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 if(§+!$§.movieClip.contains(this.§7H§))
                                 {
                                    if(_loc1_)
                                    {
                                       §+!$§.movieClip.removeChild(this.§7H§);
                                       if(_loc1_ || _loc2_)
                                       {
                                       }
                                       addr145:
                                       this.§7H§ = null;
                                    }
                                    §§goto(addr148);
                                 }
                              }
                              §§push(this.§7H§);
                           }
                           §§goto(addr148);
                        }
                        §§pop().clean();
                        if(_loc1_ || _loc2_)
                        {
                        }
                        addr148:
                        return;
                     }
                     §§goto(addr145);
                  }
               }
               §§goto(addr145);
            }
         }
         §§goto(addr37);
      }
      
      private function §!>§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§ !c§ = null;
         if(_loc4_ || _loc3_)
         {
            if(this.§1!+§)
            {
               if(_loc4_)
               {
                  this.§1!+§.stop();
                  try
                  {
                     addr39:
                     this.§1!+§.removeEventListener(TimerEvent.TIMER,this.§;#§);
                     if(_loc5_)
                     {
                     }
                  }
                  catch(e:Error)
                  {
                  }
                  §§goto(addr147);
               }
               §§goto(addr39);
            }
            var _loc2_:int = 0;
            if(!_loc5_)
            {
               var _loc3_:* = this.§>!_§;
               if(!_loc5_)
               {
                  loop0:
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     if(_loc4_ || _loc3_)
                     {
                        §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                        if(_loc4_)
                        {
                           addr127:
                           if(§+!$§.contains(splash))
                           {
                              if(!(_loc4_ || _loc1_))
                              {
                                 continue;
                              }
                           }
                           while(true)
                           {
                              §§push(§§newactivation());
                              addr128:
                              while(true)
                              {
                                 §§pop().§§slot[1].clean();
                                 continue loop0;
                              }
                           }
                           addr127:
                        }
                        §+!$§.removeChild(splash);
                        if(!_loc4_)
                        {
                           continue;
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr133);
               }
               §§goto(addr127);
            }
            addr133:
            if(!(_loc5_ && _loc3_))
            {
               this.§>!_§ = new Vector.<§ !c§>();
            }
            addr147:
            return;
         }
         §§goto(addr39);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            §§push("REPLAY");
            if(!_loc5_)
            {
               §§push(_loc4_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     §§push(0);
                  }
                  else
                  {
                     §§push("MENU");
                     if(!(_loc5_ && param3))
                     {
                        §§push(_loc4_);
                        if(_loc6_ || param3)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_ && param1)
                              {
                              }
                              §§goto(addr214);
                           }
                           else
                           {
                              §§push("FULLSCREEN_BUTTON");
                              if(!_loc5_)
                              {
                                 addr150:
                                 §§push(_loc4_);
                                 if(!(_loc5_ && param1))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          addr214:
                                          switch(1)
                                          {
                                             case 0:
                                                §@!n§.§!=§(StatePlayBS.STATE_NAME);
                                                if(_loc6_ || param1)
                                                {
                                                   mNextState = §@!n§.STATE_NAME;
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   addr64:
                                                   break;
                                                }
                                                addr105:
                                                break;
                                             case 1:
                                                §-!D§.§?5§("onLevelMenuOpened");
                                                if(!(_loc5_ && param1))
                                                {
                                                   mNextState = §6+§.STATE_NAME;
                                                   if(!(_loc5_ && param3))
                                                   {
                                                      break;
                                                   }
                                                   break;
                                                }
                                                addr83:
                                                break;
                                             case 2:
                                                §-!D§.§?5§("onFullscreenToggle");
                                                §§goto(addr64);
                                             case 3:
                                                §-!D§.§?5§("onLevelLiked");
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr105);
                                                break;
                                             case 4:
                                                §-!D§.§?5§("onLevelShared");
                                                if(!(_loc5_ && param3))
                                                {
                                                   §§goto(addr83);
                                                }
                                                else
                                                {
                                                   §§goto(addr105);
                                                }
                                             case 5:
                                                §-!D§.§?5§("onNextLevel");
                                                if(!(_loc5_ && param2))
                                                {
                                                   §§goto(addr105);
                                                }
                                          }
                                          return;
                                          §§push(2);
                                       }
                                       else
                                       {
                                          addr208:
                                          §§goto(addr214);
                                          §§push(5);
                                       }
                                       §§goto(addr214);
                                    }
                                    else
                                    {
                                       §§push("LIKE");
                                       if(_loc6_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc6_)
                                          {
                                             addr169:
                                             if(§§pop() === §§pop())
                                             {
                                                addr170:
                                                §§push(3);
                                                if(_loc6_ || param3)
                                                {
                                                }
                                                §§goto(addr214);
                                             }
                                             else
                                             {
                                                §§push("SHARE");
                                                if(_loc6_)
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr214);
                                                            §§push(4);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr208);
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      else
                                                      {
                                                         addr206:
                                                         §§push("NEXT");
                                                         §§push(_loc4_);
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                }
                                                §§goto(addr206);
                                             }
                                          }
                                       }
                                       §§goto(addr206);
                                    }
                                 }
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr208);
                                 }
                                 else
                                 {
                                    §§goto(addr214);
                                    §§push(6);
                                 }
                                 §§goto(addr214);
                              }
                              §§goto(addr206);
                           }
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr214);
               }
               §§goto(addr169);
            }
            §§goto(addr150);
         }
         §§goto(addr170);
      }
   }
}
