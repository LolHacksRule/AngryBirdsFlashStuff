package §0![§
{
   import § "@§.§%!3§;
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'@§.§^J§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!T§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §6" §.§<8§;
   import §[!w§.§4!i§;
   import §[!w§.§@!I§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §@8§ extends §5y§
   {
      
      public static const §'=§:String = "LevelEndStateBS";
      
      private static const §2!_§:String = "ScoreLoopCountChannel";
      
      private static const §^!4§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'=§ = "LevelEndStateBS";
            do
            {
               §2!_§ = "ScoreLoopCountChannel";
               do
               {
                  §^!4§ = "EndScreenEffectChannel";
               }
               while(_loc2_ && §@8§);
               
            }
            while(!(_loc1_ || §@8§));
            
         }
      }
      
      private const §#"7§:String = "likeButton";
      
      private const §]!!§:String = "shareButton";
      
      private const §8h§:String = "nextButton";
      
      private var §=l§:Boolean = false;
      
      private var §^K§:Timer;
      
      private var §?!+§:§4!i§;
      
      private var §7d§:§@!I§;
      
      private var § !Q§:Vector.<§@!I§>;
      
      public var mNewScoreCounter:int;
      
      private var §@!6§:int;
      
      private var §!!S§:Boolean;
      
      private var §3!z§:§^J§;
      
      private var §^!9§:§3^§;
      
      protected var §=!1§:int;
      
      public function §@8§(param1:Boolean = false, param2:String = "LevelEndStateBS")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§3!z§ = new §^J§();
         }
         do
         {
            super(param1,param2);
         }
         while(_loc4_);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.init();
            while(true)
            {
               §?E§ = new §'s§(this);
               while(!(_loc1_ && _loc1_))
               {
                  §?E§.init(§`7§.§>"?§.Views.View_LevelEndBS[0]);
                  while(_loc2_)
                  {
                     this.§ !Q§ = new Vector.<§@!I§>();
                     loop3:
                     while(_loc2_ || _loc2_)
                     {
                        §5!U§.§2R§(§2!_§,3,1);
                        while(true)
                        {
                           §5!U§.§2R§(§^!4§,3,1);
                           if(_loc2_ || _loc1_)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §=!X§.pause();
               while(true)
               {
                  this.§?!+§ = new §4!i§(0,0,0,0);
                  loop2:
                  while(true)
                  {
                     §?E§.movieClip.addChildAt(this.§?!+§,§?E§.movieClip.numChildren - 1);
                     loop3:
                     while(true)
                     {
                        this.mNewScoreCounter = 0;
                        while(true)
                        {
                           this.§!!S§ = false;
                           while(!_loc1_)
                           {
                              §5!U§.playSound("LevelCompletedTheme1");
                              loop6:
                              while(true)
                              {
                                 this.§?!+§.§>=§(0.7);
                                 addr147:
                                 while(_loc2_)
                                 {
                                    this.§!_§();
                                    continue loop6;
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop3;
                           if(_loc2_ || _loc1_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §!_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§""1§();
            while(true)
            {
               this.§^K§ = new Timer(500);
               loop1:
               while(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     this.§@!6§ = 0;
                     while(!_loc1_)
                     {
                        this.§^K§.addEventListener(TimerEvent.TIMER,this.§`"0§);
                        do
                        {
                           this.§^K§.start();
                        }
                        while(!_loc2_);
                        
                        if(_loc2_)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      protected function §""1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            (§?E§.getItemByName("MovieClip_StarLeft") as §%+§).mClip.gotoAndStop("UnLit");
            while(true)
            {
               (§?E§.getItemByName("MovieClip_StarCenter") as §%+§).mClip.gotoAndStop("UnLit");
               while(!(_loc1_ && _loc1_))
               {
                  (§?E§.getItemByName("MovieClip_StarRight") as §%+§).mClip.gotoAndStop("UnLit");
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr55:
               }
            }
         }
         §§goto(addr55);
      }
      
      private function §`"0§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §=!X§.§!'§.§49§().mScoreGold;
         var _loc5_:Number = §=!X§.§!'§.§49§().mScoreSilver;
         if(!_loc10_)
         {
            if((§?E§.getItemByName("MovieClip_StarLeft") as §%+§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§3!z§);
               loop0:
               while(_loc9_)
               {
                  §§push(§§pop().getValue());
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     addr476:
                     loop2:
                     while(_loc9_)
                     {
                        §§push(§§pop() >= §§pop());
                        while(true)
                        {
                           §§push(§§pop());
                           addr480:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr482:
                                    loop6:
                                    while(_loc9_ || param1)
                                    {
                                       §§push((§?E§.getItemByName("MovieClip_StarCenter") as §%+§).mClip.currentLabel == "UnLit");
                                       while(true)
                                       {
                                          addr452:
                                          while(!§§pop())
                                          {
                                             §§push(this.§3!z§);
                                             if(_loc10_)
                                             {
                                                continue loop0;
                                             }
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                continue loop1;
                                             }
                                             addr629:
                                             §§push(§§pop().getValue());
                                             loop25:
                                             while(true)
                                             {
                                                break loop2;
                                                addr616:
                                                §§push(_loc4_);
                                                if(_loc9_ || _loc3_)
                                                {
                                                   addr624:
                                                   _loc6_ = §§pop();
                                                   addr586:
                                                   this.§^!9§ = §7!E§.§2=§.§<!C§(this,{"mNewScoreCounter":this.§3!z§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                   do
                                                   {
                                                      §§push(this.§^!9§);
                                                      do
                                                      {
                                                         §§pop().onComplete = this.§9!y§;
                                                         §§push(this.§^!9§);
                                                      }
                                                      while(_loc10_);
                                                      
                                                      §§pop().play();
                                                      while(true)
                                                      {
                                                         (§?E§.getItemByName("MovieClip_StarLeft") as §%+§).mClip.gotoAndStop("Lit");
                                                         break loop6;
                                                      }
                                                      loop27:
                                                      while(true)
                                                      {
                                                         addr635:
                                                         _loc6_ = §§pop();
                                                         while(true)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               addr605:
                                                               §§push(_loc4_);
                                                               §§push(0);
                                                               if(!_loc10_)
                                                               {
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§goto(addr616);
                                                                           §§push(1);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr652:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§3!z§);
                                                                              break loop0;
                                                                           }
                                                                           addr652:
                                                                        }
                                                                     }
                                                                     §§goto(addr625);
                                                                  }
                                                                  break;
                                                               }
                                                               addr633:
                                                               while(true)
                                                               {
                                                                  continue loop27;
                                                               }
                                                            }
                                                            addr646:
                                                            while(true)
                                                            {
                                                               §§goto(addr629);
                                                            }
                                                         }
                                                         §§goto(addr586);
                                                      }
                                                      continue loop25;
                                                   }
                                                   while(!(_loc9_ || _loc3_));
                                                   
                                                   addr625:
                                                   this.§7d§ = new §@!I§(AngryBirdsFP11.§>!U§,AngryBirdsFP11.§>Y§,_loc2_,_loc3_,§@!I§.§;0§);
                                                   §?E§.addChild(this.§7d§);
                                                   this.§ !Q§.push(this.§7d§);
                                                   addr674:
                                                   var _loc7_:*;
                                                   §§push((_loc7_ = this).§@!6§);
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(!_loc10_)
                                                   {
                                                      _loc7_.§@!6§ = _loc8_;
                                                   }
                                                   return;
                                                   addr516:
                                                   addr496:
                                                   addr502:
                                                }
                                             }
                                          }
                                          addr453:
                                          addr457:
                                          §5!U§.playSound("Hiscore_Star_Splash2",§^!4§);
                                          if(_loc9_ || this)
                                          {
                                             if(!_loc10_)
                                             {
                                                (§?E§.getItemByName("MovieClip_StarCenter") as §%+§).mClip.gotoAndStop("Lit");
                                                addr438:
                                                if(!_loc10_)
                                                {
                                                   addr423:
                                                   §§push(Number((§?E§.getItemByName("MovieClip_StarCenter") as §%+§).x + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x));
                                                   if(_loc9_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         addr386:
                                                         §§push(Number((§?E§.getItemByName("MovieClip_StarCenter") as §%+§).y + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y));
                                                         if(!_loc10_)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               if(_loc9_ || this)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  addr398:
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!(_loc10_ && this))
                                                                     {
                                                                        this.§7d§ = new §@!I§(AngryBirdsFP11.§>!U§,AngryBirdsFP11.§>Y§,_loc2_,_loc3_,§@!I§.§<!-§);
                                                                        addr363:
                                                                        if(_loc9_ || _loc2_)
                                                                        {
                                                                           §?E§.addChild(this.§7d§);
                                                                           addr325:
                                                                           if(_loc9_ || _loc2_)
                                                                           {
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 this.§ !Q§.push(this.§7d§);
                                                                                 addr305:
                                                                                 if(_loc9_ || _loc2_)
                                                                                 {
                                                                                    if(!(_loc9_ || _loc3_))
                                                                                    {
                                                                                       §§goto(addr453);
                                                                                    }
                                                                                    §§goto(addr674);
                                                                                 }
                                                                                 §§goto(addr325);
                                                                              }
                                                                              §§goto(addr516);
                                                                           }
                                                                           §§goto(addr363);
                                                                        }
                                                                        §§goto(addr398);
                                                                     }
                                                                     §5!U§.playSound("Hiscore_Star_Splash1",§^!4§);
                                                                     this.§^K§.delay = 1000;
                                                                     §§goto(addr652);
                                                                     addr658:
                                                                     addr673:
                                                                  }
                                                                  §§goto(addr496);
                                                               }
                                                               addr632:
                                                               §§goto(addr633);
                                                               §§push(2);
                                                            }
                                                            §§goto(addr605);
                                                         }
                                                         §§goto(addr624);
                                                         addr428:
                                                      }
                                                      §§goto(addr635);
                                                   }
                                                   addr556:
                                                   if(!_loc10_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      addr559:
                                                      if(_loc9_)
                                                      {
                                                         addr532:
                                                         _loc3_ = Number((§?E§.getItemByName("MovieClip_StarLeft") as §%+§).y + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y);
                                                         §§goto(addr533);
                                                      }
                                                      §§goto(addr578);
                                                   }
                                                   §§goto(addr634);
                                                }
                                                §§goto(addr658);
                                             }
                                             §§goto(addr585);
                                          }
                                          §§goto(addr533);
                                       }
                                    }
                                    §§goto(addr556);
                                 }
                                 addr481:
                              }
                              §§goto(addr451);
                           }
                        }
                     }
                     §§goto(addr632);
                  }
               }
               while(true)
               {
                  §§pop().§&!Y§(§=!X§.§#H§.getScore());
                  §§goto(addr646);
                  §§goto(addr652);
               }
            }
            §§goto(addr668);
         }
         §§goto(addr241);
      }
      
      private function §9!y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §5!U§.§+!7§(§2!_§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§@!I§ = null;
         §§push(super.run(param1));
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc6_ || this)
         {
            §§push(_loc2_);
            if(!(_loc7_ && param1))
            {
               if(§§pop() == §5y§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §?E§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                     while(!(_loc7_ && this))
                     {
                        §?E§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                        if(!_loc6_)
                        {
                           continue;
                        }
                        if(_loc6_ || _loc3_)
                        {
                           while(true)
                           {
                              if(true)
                              {
                                 §§push(0);
                              }
                              continue loop0;
                           }
                           addr50:
                        }
                     }
                  }
                  §§goto(addr94);
               }
               §§push(_loc2_);
               if(_loc7_)
               {
                  addr94:
                  for each(_loc3_ in this.§ !Q§)
                  {
                     if(!_loc7_)
                     {
                        _loc3_.update(param1);
                     }
                  }
                  if(!(_loc7_ && _loc3_))
                  {
                     if(mNextState.length <= 0)
                     {
                        return §5y§.STATE_STATUS_RUNNING;
                     }
                     §=!X§.§!'§.clearLevel();
                  }
                  return §5y§.STATE_STATUS_COMPLETED;
               }
            }
            return §§pop();
         }
         §§goto(addr50);
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
               this.§#!x§();
               loop1:
               while(true)
               {
                  this.mNewScoreCounter = 0;
                  while(true)
                  {
                     §§push(this.§^!9§);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           while(_loc1_)
                           {
                              §§push(this.§^!9§);
                              while(true)
                              {
                                 §§pop().stop();
                                 addr193:
                                 while(true)
                                 {
                                    this.§^!9§ = null;
                                    addr179:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                           }
                           continue;
                           addr188:
                        }
                        while(true)
                        {
                           §5!U§.§+!7§(§2!_§);
                           loop5:
                           while(!(_loc2_ && _loc2_))
                           {
                              if(§?E§.getItemByName("Button_Menu"))
                              {
                                 if(!_loc2_)
                                 {
                                    (§?E§.getItemByName("Button_Menu") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                 }
                                 while(true)
                                 {
                                    loop13:
                                    for(; _loc1_ || this; if(_loc2_ && this)
                                    {
                                       continue;
                                    },§§goto(addr62))
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(this.§?!+§);
                                          loop14:
                                          while(§§pop())
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                if(§?E§.movieClip.contains(this.§?!+§))
                                                {
                                                   if(_loc1_)
                                                   {
                                                      if(!(_loc1_ || _loc2_))
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §?E§.movieClip.removeChild(this.§?!+§);
                                                      addr106:
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               addr115:
                                                               while(true)
                                                               {
                                                                  §§push(this.§?!+§);
                                                                  if(!_loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§pop().clean();
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     continue loop17;
                                                                     addr62:
                                                                     this.§?!+§ = null;
                                                                     if(_loc2_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        break loop14;
                                                                     }
                                                                     §§goto(addr193);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  §§goto(addr115);
                                                               }
                                                               continue loop14;
                                                               addr42:
                                                            }
                                                            §§goto(addr146);
                                                            §?E§.setText("0","TextField_LevelEndScore");
                                                         }
                                                         addr136:
                                                         while(true)
                                                         {
                                                            §?E§.setText("0","TextField_LevelEndScoreEffects");
                                                            continue loop13;
                                                         }
                                                      }
                                                      addr106:
                                                   }
                                                   §§goto(addr106);
                                                }
                                                §§goto(addr42);
                                             }
                                             §§goto(addr106);
                                          }
                                          return;
                                       }
                                       §§goto(addr188);
                                    }
                                 }
                                 addr162:
                              }
                              while(true)
                              {
                                 (§?E§.getItemByName("Button_Replay") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                 §§goto(addr146);
                                 §§goto(addr162);
                              }
                           }
                           §§goto(addr179);
                        }
                        continue loop0;
                     }
                     §§goto(addr192);
                  }
               }
            }
         }
         §§goto(addr136);
      }
      
      private function §#!x§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§@!I§ = null;
         if(!(_loc5_ && _loc1_))
         {
            if(this.§^K§)
            {
               if(!(_loc5_ && _loc2_))
               {
                  this.§^K§.stop();
                  try
                  {
                     §§goto(addr44);
                  }
                  catch(e:Error)
                  {
                  }
               }
               §§goto(addr44);
            }
            §§goto(addr72);
         }
         addr44:
         this.§^K§.removeEventListener(TimerEvent.TIMER,this.§`"0§);
         if(!(_loc5_ && _loc1_))
         {
            addr72:
            var _loc2_:int = 0;
            if(!_loc5_)
            {
               var _loc3_:* = this.§ !Q§;
               if(!_loc5_)
               {
                  loop0:
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     loop1:
                     while(true)
                     {
                        §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                        loop2:
                        while(true)
                        {
                           addr120:
                           while(true)
                           {
                              if(!§?E§.contains(splash))
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                                 §?E§.removeChild(splash);
                                 addr130:
                                 while(!_loc5_)
                                 {
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr145);
               }
               while(true)
               {
                  §§goto(addr93);
               }
            }
            addr145:
            if(!(_loc5_ && _loc3_))
            {
               this.§ !Q§ = new Vector.<§@!I§>();
            }
            §§goto(addr169);
         }
         addr169:
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("REPLAY" === _loc4_)
            {
               if(!_loc6_)
               {
                  §§push(0);
                  if(_loc6_)
                  {
                     addr170:
                  }
               }
               else
               {
                  addr167:
                  §§push(3);
                  if(!_loc6_)
                  {
                     §§goto(addr170);
                  }
               }
            }
            else
            {
               if("MENU" === _loc4_)
               {
                  if(!_loc6_)
                  {
                     §§push(1);
                     if(!(_loc5_ || param3))
                     {
                        addr201:
                     }
                  }
               }
               else if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  if(_loc5_ || param3)
                  {
                     §§push(2);
                     if(!(_loc6_ && param3))
                     {
                        §§goto(addr206);
                     }
                     else
                     {
                        §§goto(addr201);
                     }
                  }
                  else
                  {
                     addr181:
                     §§push(4);
                     if(!_loc5_)
                     {
                     }
                     §§goto(addr206);
                  }
               }
               else if("LIKE" === _loc4_)
               {
                  if(_loc5_)
                  {
                     §§goto(addr167);
                  }
                  else
                  {
                     §§goto(addr181);
                  }
               }
               else
               {
                  if("SHARE" === _loc4_)
                  {
                     if(_loc5_ || param2)
                     {
                        §§goto(addr181);
                     }
                  }
                  else if("NEXT" !== _loc4_)
                  {
                     addr206:
                     switch(§§pop())
                     {
                        case 0:
                           §%!3§.§4[§(StatePlayBS.§'=§);
                           mNextState = §%!3§.§'=§;
                           addr95:
                           break;
                           addr112:
                           addr95:
                        case 1:
                           §4m§.doJsCall("onLevelMenuOpened");
                           if(!(_loc6_ && this))
                           {
                              mNextState = §^! §.§'=§;
                              break;
                              addr75:
                           }
                           break;
                        case 2:
                           §4m§.doJsCall("onFullscreenToggle");
                           addr55:
                           if(!(_loc6_ && this))
                           {
                              if(_loc5_ || this)
                              {
                                 break;
                              }
                              §§goto(addr112);
                           }
                           else
                           {
                              §§goto(addr75);
                           }
                           break;
                        case 3:
                           §4m§.doJsCall("onLevelLiked");
                           addr46:
                           if(_loc5_)
                           {
                              addr31:
                              break;
                           }
                           §§goto(addr95);
                           break;
                        case 4:
                           §4m§.doJsCall("onLevelShared");
                           addr37:
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§goto(addr46);
                           break;
                        case 5:
                           §4m§.doJsCall("onNextLevel");
                           if(!_loc6_)
                           {
                              if(!_loc6_)
                              {
                                 if(_loc5_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr31);
                                 }
                                 else
                                 {
                                    §§goto(addr55);
                                 }
                              }
                              else
                              {
                                 §§goto(addr37);
                              }
                              §§goto(addr95);
                           }
                     }
                     return;
                     §§push(6);
                  }
                  §§goto(addr206);
               }
               §§goto(addr206);
               if(!_loc6_)
               {
                  §§goto(addr201);
               }
            }
            §§goto(addr206);
         }
         §§goto(addr167);
      }
   }
}
