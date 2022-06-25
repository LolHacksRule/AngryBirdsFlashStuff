package §<!S§
{
   import § D§.§]!B§;
   import §"!@§.§!!8§;
   import §"!@§.StarSplash;
   import §"L§.LevelManager;
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §7p§.Integer;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.§6#§;
   import §]!6§.UIButtonRovio;
   import §]!6§.UIContainerRovio;
   import §]!6§.UITextFieldRovio;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class StateLevelEndRio extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
      
      public static const SHAKE_COUNT:Number = 30;
      
      protected static const LOOP_CHANNEL_NAME:String = "ScoreLoopCountChannel";
      
      protected static const EFFECT_CHANNEL_NAME:String = "EndScreenEffectChannel";
      
      {
         var STATE_NAME:Boolean = false;
         var SHAKE_COUNT:Boolean = true;
         if(!(STATE_NAME && STATE_NAME))
         {
            loop0:
            while(true)
            {
               STATE_NAME = "LevelEndStateRio";
               loop1:
               while(true)
               {
                  addr99:
                  while(!STATE_NAME)
                  {
                     SHAKE_COUNT = 30;
                     while(true)
                     {
                        addr35:
                        if(SHAKE_COUNT || StateLevelEndRio)
                        {
                           return;
                           addr52:
                        }
                     }
                     if(!STATE_NAME)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr91);
      }
      
      private var §<!J§:§!T§;
      
      private var §^!N§:Number;
      
      private var §&!9§:Number = 0.0;
      
      private var §1!#§:Number = 0.0;
      
      private var §6T§:Boolean = false;
      
      private var §,!C§:Timer;
      
      private var § !A§:§!!8§;
      
      protected var §0!Z§:Array;
      
      protected var §7!`§:StarSplash;
      
      protected var §[w§:Vector.<StarSplash>;
      
      public var mNewScoreCounter:int;
      
      private var §1z§:int;
      
      private var §`!f§:Boolean;
      
      protected var §%!b§:Boolean;
      
      private var §1!`§:Integer;
      
      protected var §]u§:Boolean;
      
      private var §9x§:§!T§;
      
      protected var §#A§:Boolean;
      
      protected var §<U§:int;
      
      public function StateLevelEndRio(initState:Boolean = false, name:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_ || this)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  for(; _loc3_; if(_loc3_ || this)
                  {
                     loop6:
                     while(_loc3_)
                     {
                        while(true)
                        {
                           super(initState,name);
                           while(!_loc3_)
                           {
                           }
                           if(!(_loc4_ && this))
                           {
                              break;
                           }
                           continue loop6;
                        }
                        return;
                     }
                     while(!(_loc4_ && name))
                     {
                        §§goto(addr77);
                     }
                     continue loop0;
                     addr70:
                  })
                  {
                     this.§0!Z§ = [];
                     while(true)
                     {
                        continue loop0;
                        addr77:
                        if(!(_loc4_ && _loc3_))
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            while(true)
            {
               super.init();
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §5!M§ = new §6"§(this);
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §5!M§.init(this.getViewXML());
                           addr163:
                           while(true)
                           {
                              while(true)
                              {
                                 this.initButtonDefaultPositions();
                                 addr150:
                                 while(!_loc1_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop2;
                                 addr46:
                                 if(_loc2_ || this)
                                 {
                                    return;
                                    addr53:
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(!(_loc2_ && _loc1_))
         {
            while(true)
            {
               §§push(this.§0!Z§);
               loop1:
               while(true)
               {
                  §§pop().push((§5!M§.getItemByName("Button_Menu") as UIButtonRovio).x);
                  addr201:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§0!Z§);
                        while(true)
                        {
                           §§pop().push((§5!M§.getItemByName("Button_Replay") as UIButtonRovio).x);
                           addr184:
                           while(true)
                           {
                              continue loop3;
                           }
                           addr71:
                           if(_loc1_ || _loc2_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               while(!(_loc2_ && _loc2_))
               {
                  §§goto(addr115);
               }
            }
         }
         §§goto(addr60);
      }
      
      protected function getViewXML() : XML
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         return §>!^§.§8'§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_)
         {
            loop0:
            do
            {
               §§push(AngryBirdsFP11.sUserProgress.§7n§(LevelManager.§var§));
               if(_loc1_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
                  loop1:
                  for(; _loc1_; while(true)
                  {
                     if(!(_loc1_ || this))
                     {
                        continue loop1;
                     }
                     if(_loc1_ || _loc2_)
                     {
                        (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).x = this.§0!Z§[2];
                        continue;
                     }
                     §§goto(addr361);
                  },§§goto(addr23))
                  {
                     loop2:
                     while(!_loc2_)
                     {
                        (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
                        loop3:
                        while(!(_loc2_ && this))
                        {
                           loop4:
                           while(_loc1_)
                           {
                              (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       while(_loc1_)
                                       {
                                          (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
                                          loop7:
                                          while(true)
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).x = this.§0!Z§[0];
                                                while(!_loc2_)
                                                {
                                                   loop10:
                                                   while(!(_loc2_ && this))
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§0!Z§[1];
                                                         while(true)
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            continue loop10;
                                                            addr31:
                                                            if(!(_loc2_ && this))
                                                            {
                                                               §§goto(addr23);
                                                            }
                                                         }
                                                         (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).x = this.§0!Z§[1] + Math.abs(this.§0!Z§[2] - this.§0!Z§[1]) / 2;
                                                         addr281:
                                                         break loop2;
                                                         addr281:
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                                continue loop4;
                                             }
                                          }
                                          addr59:
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          if(!_loc1_)
                                          {
                                             continue loop3;
                                          }
                                          addr68:
                                          if(_loc2_)
                                          {
                                             while(true)
                                             {
                                                if(_loc2_ && _loc1_)
                                                {
                                                   continue loop1;
                                                }
                                                §§goto(addr59);
                                                §§goto(addr68);
                                             }
                                             continue loop3;
                                             addr52:
                                          }
                                          §§goto(addr31);
                                       }
                                       continue loop2;
                                    }
                                    addr405:
                                    while(true)
                                    {
                                       break loop3;
                                    }
                                 }
                                 break;
                                 if(_loc2_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 if(_loc1_ || _loc2_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr281);
                              }
                              (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§0!Z§[0] + Math.abs(this.§0!Z§[1] - this.§0!Z§[0]) / 2;
                              break loop1;
                           }
                           loop23:
                           while(_loc1_ || _loc1_)
                           {
                              (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
                              while(_loc2_ && _loc1_)
                              {
                                 while(true)
                                 {
                                    addr419:
                                    while(true)
                                    {
                                       (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(false);
                                       §§goto(addr405);
                                       addr373:
                                       while(_loc1_ || this)
                                       {
                                          while(true)
                                          {
                                             (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
                                             break loop23;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr315);
                           }
                           while(!_loc2_)
                           {
                              §§goto(addr337);
                           }
                           addr337:
                           §§goto(addr373);
                        }
                        while(true)
                        {
                           (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
                           §§goto(addr373);
                        }
                     }
                     continue loop0;
                  }
                  while(!_loc1_)
                  {
                     §§goto(addr327);
                     §§goto(addr315);
                  }
                  §§goto(addr281);
               }
               §§goto(addr418);
            }
            while(!_loc1_);
            
            addr23:
            return;
         }
         §§goto(addr419);
      }
      
      protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(true)
            {
               (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
               loop1:
               while(true)
               {
                  while(true)
                  {
                     (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
                     while(true)
                     {
                        continue loop1;
                        addr198:
                        if(_loc1_ || _loc2_)
                        {
                           addr28:
                           return;
                           addr205:
                        }
                     }
                     loop6:
                     for(; _loc1_ || _loc2_; if(_loc2_ && _loc2_)
                     {
                        continue;
                     },(§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true),§§goto(addr265))
                     {
                        if(LevelManager.§>!1§())
                        {
                           addr272:
                           if(_loc1_ || _loc1_)
                           {
                              continue;
                           }
                           continue loop1;
                        }
                        addr158:
                        (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
                        while(_loc1_)
                        {
                           continue loop0;
                        }
                        loop18:
                        while(true)
                        {
                           if(!(_loc2_ && this))
                           {
                              (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§0!Z§[1];
                              while(true)
                              {
                                 addr208:
                                 addr309:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       addr210:
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).x = this.§0!Z§[2];
                                       while(_loc2_ && _loc2_)
                                       {
                                          §§goto(addr212);
                                       }
                                       addr212:
                                       §§goto(addr198);
                                    }
                                    else
                                    {
                                       addr265:
                                       while(true)
                                       {
                                       }
                                       addr265:
                                    }
                                    while(true)
                                    {
                                       (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).x = this.§0!Z§[0];
                                       §§goto(addr265);
                                    }
                                    §§goto(addr210);
                                 }
                                 while(true)
                                 {
                                    continue loop6;
                                 }
                                 §§goto(addr205);
                              }
                              addr236:
                              addr226:
                           }
                           while(true)
                           {
                              continue loop18;
                           }
                           §§goto(addr236);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr309);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(!(_loc2_ && this))
         {
            while(true)
            {
               super.activate();
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§#A§ = false;
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §]!B§.pause();
                           while(true)
                           {
                              while(true)
                              {
                                 this.§ !A§ = new §!!8§(0,0,0,0);
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §5!M§.movieClip.addChildAt(this.§ !A§,§5!M§.movieClip.numChildren - 1);
                                       addr263:
                                       loop9:
                                       while(!_loc2_)
                                       {
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                this.showButtonsCutScene();
                                                continue loop8;
                                             }
                                             continue loop9;
                                          }
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                              loop18:
                              for(; _loc1_ || _loc1_; loop21:
                              for(; !(_loc2_ && _loc2_); if(_loc2_ && _loc2_)
                              {
                                 continue;
                              },§§goto(addr62))
                              {
                                 loop22:
                                 while(true)
                                 {
                                    this.§&!9§ = 0;
                                    while(!_loc2_)
                                    {
                                       loop24:
                                       while(_loc1_)
                                       {
                                          this.§1!#§ = 0;
                                          loop25:
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                continue loop22;
                                             }
                                             continue loop24;
                                             addr62:
                                             loop26:
                                             while(true)
                                             {
                                                if(!(_loc1_ || _loc2_))
                                                {
                                                   continue loop25;
                                                }
                                                if(_loc1_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      this.§3G§();
                                                      while(true)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            continue loop26;
                                                         }
                                                         if(_loc1_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr150);
                                                      }
                                                      §§goto(addr184);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr131);
                                             }
                                             §§goto(addr165);
                                          }
                                          continue loop21;
                                       }
                                       §§goto(addr168);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          return;
                                       }
                                    }
                                    continue loop2;
                                 }
                              })
                              {
                                 SoundEngine.§9!X§("LevelCompletedTheme1");
                                 while(true)
                                 {
                                    addr131:
                                    while(!_loc2_)
                                    {
                                       this.§ !A§.§6k§(0.7);
                                       continue loop18;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr248);
         }
      }
      
      private function §3G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            loop0:
            while(true)
            {
               this.§%!b§ = false;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.setScoreData();
                     loop3:
                     while(true)
                     {
                        addr157:
                        while(!_loc2_)
                        {
                           this.§,!C§ = new Timer(500);
                           continue loop1;
                        }
                        continue loop0;
                        addr92:
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        this.§,!C§.start();
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              addr113:
                              if(_loc1_)
                              {
                                 addr65:
                                 if(!(_loc1_ || _loc2_))
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              while(!(_loc2_ && this))
                              {
                                 this.§,!C§.addEventListener(TimerEvent.TIMER,this.§[^§);
                              }
                              continue loop1;
                              addr113:
                           }
                           while(true)
                           {
                              addr85:
                              loop11:
                              while(true)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    §§goto(addr92);
                                 }
                                 else
                                 {
                                    while(!_loc2_)
                                    {
                                       §§goto(addr113);
                                       continue loop11;
                                    }
                                    §§goto(addr157);
                                    addr125:
                                 }
                              }
                              continue loop3;
                           }
                        }
                        while(true)
                        {
                           this.§1z§ = 0;
                           §§goto(addr125);
                           §§goto(addr65);
                        }
                     }
                     if(!(_loc2_ && this))
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr130);
         }
      }
      
      protected function §5?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(!(_loc2_ && _loc1_))
         {
            do
            {
               if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§var§) != 100)
               {
                  (§5!M§.getItemByName("MovieClip_ResultMEFeather") as §6#§).mClip.gotoAndStop("Off");
                  loop1:
                  for(; !(_loc2_ && this); if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr33);
                  })
                  {
                     if(_loc1_ || _loc2_)
                     {
                        continue;
                     }
                     addr130:
                     while(true)
                     {
                        (§5!M§.getItemByName("MovieClip_ResultMEFeather") as §6#§).mClip.gotoAndStop("On");
                        break loop1;
                     }
                  }
                  while(!(_loc1_ || _loc2_))
                  {
                     §§goto(addr130);
                  }
                  continue;
               }
               §§goto(addr130);
            }
            while(_loc2_);
            
         }
         addr33:
      }
      
      protected function §<!X§(newScore:int, highScore:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(_loc5_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(this.§]u§)
                  {
                     addr254:
                     continue loop1;
                  }
                  §5!M§.setText("Best " + highScore.toString(),"TextField_BestScore");
                  loop3:
                  while(!(_loc5_ && this))
                  {
                     while(_loc4_)
                     {
                        continue loop0;
                        this.§<U§ = LevelManager.§+y§(LevelManager.§var§,highScore);
                        if(_loc5_ && _loc3_)
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           continue loop3;
                        }
                        if(_loc4_)
                        {
                           break loop2;
                        }
                        §§goto(addr254);
                     }
                     while(true)
                     {
                        §5!M§.setText("New Highscore!","TextField_BestScore");
                        break loop3;
                        addr220:
                     }
                     continue loop1;
                  }
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        if(_loc4_ || newScore)
                        {
                           §§goto(addr379);
                        }
                        continue loop1;
                     }
                     addr213:
                     while(_loc5_ && this)
                     {
                        loop7:
                        while(true)
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              continue loop2;
                           }
                           addr249:
                           while(true)
                           {
                              continue loop7;
                           }
                        }
                        continue loop2;
                     }
                     §§goto(addr220);
                  }
               }
               §§push(this.§<U§);
               if(_loc4_ || newScore)
               {
                  var _loc3_:* = §§pop();
                  if(!(_loc5_ && this))
                  {
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
                                 if(_loc4_ || this)
                                 {
                                    §§push(0);
                                    if(_loc5_)
                                    {
                                       addr351:
                                    }
                                 }
                                 else
                                 {
                                    addr365:
                                    §§push(2);
                                    if(_loc5_)
                                    {
                                       addr374:
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(2);
                                 if(!_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc5_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             addr333:
                                             §§push(1);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§goto(addr351);
                                             }
                                             addr376:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   (§5!M§.getItemByName("MovieClip_BestScoreStars") as §6#§).§;!G§("OneStar");
                                                   addr117:
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr117);
                                                   }
                                                   break;
                                                   addr98:
                                                case 1:
                                                   (§5!M§.getItemByName("MovieClip_BestScoreStars") as §6#§).§;!G§("TwoStar");
                                                   addr90:
                                                   if(_loc5_ && this)
                                                   {
                                                      §§goto(addr90);
                                                   }
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr98);
                                                   break;
                                                   addr95:
                                                case 2:
                                                   if(_loc4_)
                                                   {
                                                      addr41:
                                                      (§5!M§.getItemByName("MovieClip_BestScoreStars") as §6#§).§;!G§("ThreeStar");
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc4_ || newScore)
                                                         {
                                                            if(_loc4_ || newScore)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr41);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr117);
                                                         }
                                                         §§goto(addr41);
                                                      }
                                                      §§goto(addr90);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr95);
                                                   }
                                             }
                                             addr379:
                                             return;
                                             addr376:
                                          }
                                          else
                                          {
                                             §§goto(addr365);
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(_loc5_ && highScore)
                                          {
                                          }
                                       }
                                       §§goto(addr376);
                                    }
                                    addr362:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr365);
                                       }
                                    }
                                    else if(true)
                                    {
                                       §§goto(addr376);
                                       §§push(3);
                                    }
                                    §§goto(addr376);
                                    §§goto(addr376);
                                 }
                                 §§goto(addr362);
                                 §§push(_loc3_);
                              }
                              §§goto(addr376);
                           }
                           §§goto(addr362);
                        }
                        §§goto(addr351);
                     }
                     §§goto(addr365);
                  }
               }
               §§goto(addr333);
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_)
         {
         }
         if(_loc8_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr47:
                  while(_loc8_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr30);
      }
      
      protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || _loc2_)
         {
            loop0:
            do
            {
               if(!this.§]u§)
               {
                  (§5!M§.getItemByName("TextField_BestScore") as UITextFieldRovio).setVisibility(true);
                  loop1:
                  while(!(_loc2_ && _loc2_))
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        loop2:
                        while(_loc1_ || this)
                        {
                           (§5!M§.getItemByName("MovieClip_BestScoreStars") as §6#§).setVisibility(true);
                           while(_loc1_ || _loc2_)
                           {
                              if(_loc1_)
                              {
                                 if(!(_loc1_ || this))
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc1_)
                                 {
                                    continue loop1;
                                 }
                                 if(_loc1_)
                                 {
                                    §§goto(addr28);
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    SoundEngine.§9!X§("Hiscore_Badge",EFFECT_CHANNEL_NAME);
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §5!M§.setText("New Highscore!","TextField_NewHighScore");
                                          addr203:
                                          while(_loc1_)
                                          {
                                             while(true)
                                             {
                                                addr178:
                                                addr195:
                                                while(_loc2_ && _loc2_)
                                                {
                                                   continue loop4;
                                                }
                                                (§5!M§.getItemByName("TextField_NewHighScore") as UITextFieldRovio).setVisibility(true);
                                             }
                                          }
                                       }
                                       addr149:
                                       while(_loc1_ || this)
                                       {
                                          break loop1;
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           if(_loc1_)
                           {
                              (§5!M§.getItemByName("MovieClip_BestScoreStars") as §6#§).setVisibility(false);
                              §§goto(addr149);
                           }
                           §§goto(addr203);
                        }
                        addr159:
                     }
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr159);
                        }
                        §§goto(addr178);
                        §§goto(addr195);
                     }
                  }
                  while(true)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        this.§@?§();
                        continue loop0;
                     }
                     §§goto(addr149);
                  }
               }
               §§goto(addr222);
            }
            while(!(_loc1_ || _loc2_));
            
            addr28:
            return;
         }
         §§goto(addr205);
      }
      
      protected function §@?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               this.§&!9§ = 0;
               loop1:
               for(; !(_loc2_ && _loc1_); if(_loc2_ && this)
               {
                  continue;
               },§§goto(addr53))
               {
                  loop2:
                  while(true)
                  {
                     this.§1!#§ = 0;
                     while(true)
                     {
                        loop4:
                        while(_loc1_)
                        {
                           if(_loc1_)
                           {
                              while(true)
                              {
                                 this.§^!N§ = SHAKE_COUNT;
                                 while(_loc1_ || _loc1_)
                                 {
                                    if(_loc1_ || _loc2_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 continue loop4;
                              }
                              return;
                              addr53:
                              addr83:
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      private function §&! §(deltaTime:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x = (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x - this.§&!9§;
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y = (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y - this.§1!#§;
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              if(this.§^!N§ > 0)
                              {
                                 if(_loc2_ && _loc3_)
                                 {
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(Math.random() - 0.5);
                                    if(!_loc2_)
                                    {
                                       §§push(this.§^!N§);
                                       if(_loc3_ || this)
                                       {
                                          §§push(§§pop() / SHAKE_COUNT);
                                       }
                                       §§push(§§pop() * §§pop());
                                       if(_loc3_ || this)
                                       {
                                          §§push(§§pop() * 20);
                                       }
                                    }
                                    §§pop().§&!9§ = §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc2_ && deltaTime)
                                       {
                                          continue loop6;
                                       }
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(Math.random() - 0.5);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§push(this.§^!N§);
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                §§push(§§pop() / SHAKE_COUNT);
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc2_ && this))
                                             {
                                                §§push(§§pop() * 20);
                                             }
                                          }
                                          §§pop().§1!#§ = §§pop();
                                          continue loop1;
                                          addr143:
                                          loop18:
                                          while(true)
                                          {
                                             if(_loc2_ && _loc3_)
                                             {
                                                continue loop8;
                                             }
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§^!N§);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§push(deltaTime);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() / 10);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                §§pop().§^!N§ = §§pop();
                                                addr67:
                                                loop15:
                                                while(_loc3_ || this)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   addr32:
                                                   if(_loc3_ || this)
                                                   {
                                                      addr39:
                                                      if(_loc3_)
                                                      {
                                                         addr41:
                                                         if(_loc3_ || deltaTime)
                                                         {
                                                            return;
                                                         }
                                                         addr113:
                                                         while(true)
                                                         {
                                                            if(_loc2_ && _loc3_)
                                                            {
                                                               continue loop18;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               while(_loc3_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue loop2;
                                                               addr194:
                                                            }
                                                            §§goto(addr41);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               this.§1!#§ = 0;
                                                               break loop15;
                                                            }
                                                            break;
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop4;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      continue loop1;
                                                      §§goto(addr32);
                                                   }
                                                   §§goto(addr39);
                                                   addr77:
                                                }
                                                while(true)
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§goto(addr77);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop3;
                                                      }
                                                      addr191:
                                                   }
                                                   §§goto(addr67);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              else
                              {
                                 this.§&!9§ = 0;
                                 §§goto(addr113);
                              }
                              §§goto(addr251);
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x = (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x + this.§&!9§;
            §§goto(addr191);
         }
      }
      
      private function §[^§(e:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc9_ && this)
         {
         }
         var posX:* = NaN;
         var posY:* = NaN;
         var countTime:* = NaN;
         if(_loc10_)
         {
            while(true)
            {
               while(!_loc9_)
               {
                  while(true)
                  {
                  }
                  addr57:
                  if(!(_loc10_ || this))
                  {
                     continue;
                  }
                  if(_loc10_ || posY)
                  {
                     if(_loc10_)
                     {
                        if(false)
                        {
                           loop4:
                           while(true)
                           {
                              addr50:
                              while(true)
                              {
                                 if(_loc10_ || e)
                                 {
                                    §§goto(addr57);
                                 }
                                 addr67:
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                              §§goto(addr70);
                           }
                        }
                        var goldScore:Number = LevelManager.§;!a§(LevelManager.§var§).§;!L§;
                        if(!_loc10_)
                        {
                        }
                        var silverScore:Number = LevelManager.§;!a§(LevelManager.§var§).§^]§;
                        if(_loc10_)
                        {
                           loop6:
                           while((§5!M§.getItemByName("MovieClip_StarLeft") as §6#§).mClip.currentLabel != "UnLit")
                           {
                              §§push(this.§1!`§);
                              loop7:
                              for(; _loc10_ || e; §§push(this.§1!`§),if(!(_loc10_ || posX))
                              {
                                 continue;
                              },if(_loc10_)
                              {
                                 §§goto(addr837);
                              },§§goto(addr1338))
                              {
                                 §§push(§§pop().getValue());
                                 loop8:
                                 while(true)
                                 {
                                    if(!(_loc9_ && posX))
                                    {
                                       §§push(silverScore);
                                       while(true)
                                       {
                                          §§push(§§pop() >= §§pop());
                                          addr1081:
                                          loop10:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop15:
                                                            while(!_loc9_)
                                                            {
                                                               §§push((§5!M§.getItemByName("MovieClip_StarCenter") as §6#§).mClip.currentLabel == "UnLit");
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  addr1054:
                                                                  while(true)
                                                                  {
                                                                     addr1055:
                                                                     addr1056:
                                                                     while(!§§pop())
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     addr1057:
                                                                     §§push(SoundEngine.§9!X§("Hiscore_Star_Splash2",EFFECT_CHANNEL_NAME));
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        addr1362:
                                                                        if(_loc10_)
                                                                        {
                                                                           §§pop();
                                                                           addr1033:
                                                                           if(!(_loc9_ && e))
                                                                           {
                                                                              (§5!M§.getItemByName("MovieClip_StarCenter") as §6#§).mClip.gotoAndStop("Lit");
                                                                              loop74:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr986:
                                                                                    §§push(Number((§5!M§.getItemByName("MovieClip_StarCenter") as §6#§).x + (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x));
                                                                                    if(_loc10_ || posY)
                                                                                    {
                                                                                       posX = §§pop();
                                                                                       addr994:
                                                                                       loop68:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc9_ && e)
                                                                                          {
                                                                                             continue loop74;
                                                                                          }
                                                                                          if(_loc10_ || posX)
                                                                                          {
                                                                                             addr939:
                                                                                             §§push(Number((§5!M§.getItemByName("MovieClip_StarCenter") as §6#§).y + (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y));
                                                                                             if(_loc10_ || posY)
                                                                                             {
                                                                                                posY = §§pop();
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§7!`§ = new StarSplash(AngryBirdsFP11.§8!6§,AngryBirdsFP11.§1[§,posX,posY,StarSplash.STARSPLASH_CENTER);
                                                                                                      addr899:
                                                                                                      addr896:
                                                                                                      §5!M§.addChild(this.§7!`§);
                                                                                                      if(!(_loc9_ && e))
                                                                                                      {
                                                                                                         this.§[w§.push(this.§7!`§);
                                                                                                         addr1400:
                                                                                                         var _loc7_:*;
                                                                                                         §§push((_loc7_ = this).§1z§);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                         }
                                                                                                         var _loc8_:* = §§pop();
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            _loc7_.§1z§ = _loc8_;
                                                                                                         }
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            addr1417:
                                                                                                         }
                                                                                                         return;
                                                                                                         addr878:
                                                                                                      }
                                                                                                      §§goto(addr1057);
                                                                                                   }
                                                                                                   addr919:
                                                                                                }
                                                                                                §§goto(addr1417);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      posY = §§pop();
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         addr1139:
                                                                                                         if(_loc10_ || posY)
                                                                                                         {
                                                                                                            this.§7!`§ = new StarSplash(AngryBirdsFP11.§8!6§,AngryBirdsFP11.§1[§,posX,posY,StarSplash.STARSPLASH_LEFT);
                                                                                                            §5!M§.addChild(this.§7!`§);
                                                                                                            addr1107:
                                                                                                            if(_loc10_ || posY)
                                                                                                            {
                                                                                                               this.§[w§.push(this.§7!`§);
                                                                                                               break loop68;
                                                                                                               addr1099:
                                                                                                            }
                                                                                                            addr1353:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr1349:
                                                                                                               addr1350:
                                                                                                               SoundEngine.§9!X§("Hiscore_Star_Splash1",EFFECT_CHANNEL_NAME);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§,!C§.delay = 1000;
                                                                                                                  addr1338:
                                                                                                                  this.§1!`§.assign(§]!B§.controller.getScore());
                                                                                                                  addr1329:
                                                                                                                  addr1220:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr1319:
                                                                                                                     break loop7;
                                                                                                                  }
                                                                                                                  while(!(_loc9_ && e))
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        addr1194:
                                                                                                                        §§push(Number((§5!M§.getItemByName("MovieClip_StarLeft") as §6#§).x + (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           posX = §§pop();
                                                                                                                           break loop15;
                                                                                                                        }
                                                                                                                        addr1194:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr1329);
                                                                                                                     }
                                                                                                                     §§goto(addr1139);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1107);
                                                                                                            }
                                                                                                            addr1134:
                                                                                                            addr1117:
                                                                                                         }
                                                                                                         §§goto(addr1220);
                                                                                                      }
                                                                                                      §§goto(addr1417);
                                                                                                      addr1171:
                                                                                                   }
                                                                                                   loop59:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      countTime = §§pop();
                                                                                                      addr1316:
                                                                                                      §§push(goldScore);
                                                                                                      addr1288:
                                                                                                      loop60:
                                                                                                      while(!_loc9_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            if(§§pop() <= §§pop())
                                                                                                            {
                                                                                                               break loop8;
                                                                                                               addr1294:
                                                                                                               addr1295:
                                                                                                            }
                                                                                                            loop63:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§9x§ = TweenManager.§8!X§.§8m§(this,{"mNewScoreCounter":this.§1!`§.getValue()},{"mNewScoreCounter":0},countTime);
                                                                                                               while(!_loc9_)
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     break loop6;
                                                                                                                     addr1240:
                                                                                                                     addr1230:
                                                                                                                  }
                                                                                                                  §§push(this.§9x§);
                                                                                                                  loop65:
                                                                                                                  do
                                                                                                                  {
                                                                                                                     §§pop().onComplete = this.§with§;
                                                                                                                     addr1250:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop65;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(§§push(this.§9x§), _loc9_);
                                                                                                                  
                                                                                                                  §§pop().play();
                                                                                                                  while(_loc10_)
                                                                                                                  {
                                                                                                                     (§5!M§.getItemByName("MovieClip_StarLeft") as §6#§).mClip.gotoAndStop("Lit");
                                                                                                                     §§goto(addr1220);
                                                                                                                     break loop15;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1278:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop63;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            break loop60;
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop59;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr1282:
                                                                                                while(!_loc9_)
                                                                                                {
                                                                                                   countTime = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr1278);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1288);
                                                                                             }
                                                                                             addr1166:
                                                                                          }
                                                                                          §§goto(addr1250);
                                                                                          §§goto(addr994);
                                                                                       }
                                                                                       addr994:
                                                                                       §§goto(addr1400);
                                                                                       addr1096:
                                                                                       addr952:
                                                                                    }
                                                                                    §§goto(addr1194);
                                                                                 }
                                                                                 §§goto(addr1096);
                                                                              }
                                                                              addr1015:
                                                                              addr1012:
                                                                           }
                                                                           §§goto(addr1166);
                                                                           §§push(Number((§5!M§.getItemByName("MovieClip_StarLeft") as §6#§).y + (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y));
                                                                           addr1174:
                                                                        }
                                                                        §§pop();
                                                                        if(!(_loc9_ && e))
                                                                        {
                                                                           §§goto(addr1353);
                                                                           addr1370:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr1362);
                                                                           §§goto(addr1362);
                                                                        }
                                                                        §§goto(addr1370);
                                                                        addr1373:
                                                                     }
                                                                     §§goto(addr1349);
                                                                  }
                                                                  addr371:
                                                                  if(_loc9_ && posX)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(!§§pop());
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     addr386:
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr388:
                                                                        if(!(_loc9_ && posX))
                                                                        {
                                                                           addr396:
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr398:
                                                                              if(!(_loc10_ || e))
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              loop33:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    (§5!M§.getItemByName("MovieClip_NewHighScoreBadge") as §6#§).setVisibility(false);
                                                                                    loop34:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             loop35:
                                                                                             while(_loc10_ || this)
                                                                                             {
                                                                                                if(_loc10_ || e)
                                                                                                {
                                                                                                   loop36:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§<!J§ = TweenManager.§8!X§.§8m§((§5!M§.getItemByName("MovieClip_NewHighScoreBadge") as §6#§).mClip,{
                                                                                                         "scaleX":1,
                                                                                                         "scaleY":1
                                                                                                      },{
                                                                                                         "scaleX":7,
                                                                                                         "scaleY":7
                                                                                                      },0.1);
                                                                                                      loop37:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(_loc10_ || this)
                                                                                                            {
                                                                                                               if(_loc10_ || posY)
                                                                                                               {
                                                                                                                  if(!(_loc9_ && posX))
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           if(!(_loc9_ && posX))
                                                                                                                           {
                                                                                                                              if(!(_loc9_ && posY))
                                                                                                                              {
                                                                                                                                 §§push(this.§<!J§);
                                                                                                                                 loop38:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().onComplete = this.onBadgeLanded;
                                                                                                                                    if(!(_loc10_ || this))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ && e))
                                                                                                                                          {
                                                                                                                                             if(_loc10_ || e)
                                                                                                                                             {
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§<!J§);
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().play();
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc10_ || posY))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop37;
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc9_ && e))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc9_ && posY))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc10_ || posX)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc9_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc10_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc10_ || e)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(false)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc9_ && posY))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(SoundEngine.§9!X§("Hiscore_Star_Splash3",EFFECT_CHANNEL_NAME));
                                                                                                                                                                                                      if(_loc10_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr754:
                                                                                                                                                                                                                  if(!(_loc9_ && posY))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     (§5!M§.getItemByName("MovieClip_StarRight") as §6#§).mClip.gotoAndStop("Lit");
                                                                                                                                                                                                                     break loop37;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr878);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1319);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1240);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break loop38;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1057);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                   addr582:
                                                                                                                                                                                                   if(!(_loc10_ || this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc10_ || posX)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc9_ && posX))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr551:
                                                                                                                                                                                                         if(!(_loc9_ && posX))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop50:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc9_ && posY))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc10_ || e)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop51:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §5!M§.addChild(this.§7!`§);
                                                                                                                                                                                                                              §§goto(addr582);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              loop48:
                                                                                                                                                                                                                              while(!_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr698:
                                                                                                                                                                                                                                       §§push(Number((§5!M§.getItemByName("MovieClip_StarRight") as §6#§).y + (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y));
                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          posY = §§pop();
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc9_ && e))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr642:
                                                                                                                                                                                                                                                if(_loc10_ || posY)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   this.§7!`§ = new StarSplash(AngryBirdsFP11.§8!6§,AngryBirdsFP11.§1[§,posX,posY,StarSplash.STARSPLASH_RIGHT);
                                                                                                                                                                                                                                                   continue loop50;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                loop24:
                                                                                                                                                                                                                                                while(_loc10_ || posX)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push((§5!M§.getItemByName("MovieClip_StarRight") as §6#§).mClip.currentLabel == "UnLit");
                                                                                                                                                                                                                                                   loop25:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                         loop26:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            loop27:
                                                                                                                                                                                                                                                            while(!§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§`!f§);
                                                                                                                                                                                                                                                               while(_loc10_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                                                                                                                  loop29:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr517:
                                                                                                                                                                                                                                                                           if(!(_loc9_ && posX))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr527:
                                                                                                                                                                                                                                                                                 if(!(_loc9_ && posY))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    this.§`!f§ = true;
                                                                                                                                                                                                                                                                                    §§goto(addr1400);
                                                                                                                                                                                                                                                                                    addr502:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1294);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1015);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           this.§,!C§.stop();
                                                                                                                                                                                                                                                                           loop30:
                                                                                                                                                                                                                                                                           while(!(_loc9_ && posY))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc10_ || e)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(this.§]u§);
                                                                                                                                                                                                                                                                                    loop32:
                                                                                                                                                                                                                                                                                    while(_loc10_ || posX)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                       if(_loc10_ || posY)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop27;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc9_ && e))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr447:
                                                                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                if(_loc10_ || e)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc10_ || posX))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop13;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop12;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop33;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   loop43:
                                                                                                                                                                                                                                                                                                   for(; _loc10_; if(!(_loc9_ && posX))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop32;
                                                                                                                                                                                                                                                                                                   })
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop30;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop51;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(this.§%!b§);
                                                                                                                                                                                                                                                                                                         if(!(_loc9_ && posX))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop43;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr386);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                         addr859:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                            addr860:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop29;
                                                                                                                                                                                                                                                                                                   addr464:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr860);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break loop25;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop26;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr447);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr464);
                                                                                                                                                                                                                                                                                       if(_loc9_ && this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr371);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop11;
                                                                                                                                                                                                                                                                                    addr407:
                                                                                                                                                                                                                                                                                    while(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          (§5!M§.getItemByName("MovieClip_NewHighScoreBadge") as §6#§).setVisibility(true);
                                                                                                                                                                                                                                                                                          addr337:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc9_ && e))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop36;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1205);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr542:
                                                                                                                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1285);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr952);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1400);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr919);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr474:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr1362);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr899);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1350);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr859);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop10;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1055);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr816:
                                                                                                                                                                                                                                                            while(!_loc9_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  this.§#A§ = true;
                                                                                                                                                                                                                                                                  §§goto(addr798);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1099);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr899);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                      §§goto(addr388);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                      continue loop24;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr816);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr672:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc10_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc10_ || posY)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   posX = §§pop();
                                                                                                                                                                                                                                                   continue loop48;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr986);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                             §§goto(addr698);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr939);
                                                                                                                                                                                                                                          addr718:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr939);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1295);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1171);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1107);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr994);
                                                                                                                                                                                                                        addr606:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr672);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1316);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc9_ && posY))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc10_ || posY)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§[w§.push(this.§7!`§);
                                                                                                                                                                                                                  §§goto(addr542);
                                                                                                                                                                                                                  addr574:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1056);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1056);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr896);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr606);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1316);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr994);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr798:
                                                                                                                                                                                                §§goto(addr1338);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1400);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr692);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr517);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr527);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr337);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1243);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr582);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr467);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr407);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            continue loop38;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1417);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr819);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr754);
                                                                                                                                                }
                                                                                                                                                addr736:
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr718);
                                                                                                                                                   §§push(Number((§5!M§.getItemByName("MovieClip_StarRight") as §6#§).x + (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x));
                                                                                                                                                }
                                                                                                                                                §§goto(addr1338);
                                                                                                                                             }
                                                                                                                                             §§goto(addr415);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop6;
                                                                                                                                    }
                                                                                                                                    continue loop35;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1400);
                                                                                                                              }
                                                                                                                              §§goto(addr1373);
                                                                                                                              addr1397:
                                                                                                                           }
                                                                                                                           §§goto(addr896);
                                                                                                                        }
                                                                                                                        §§goto(addr642);
                                                                                                                     }
                                                                                                                     §§goto(addr1417);
                                                                                                                  }
                                                                                                                  §§goto(addr1253);
                                                                                                               }
                                                                                                               §§goto(addr1134);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop34;
                                                                                                      }
                                                                                                      §§goto(addr736);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1033);
                                                                                             }
                                                                                             §§goto(addr1012);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr502);
                                                                                    }
                                                                                    §§goto(addr1117);
                                                                                 }
                                                                                 §§goto(addr407);
                                                                              }
                                                                           }
                                                                           §§goto(addr858);
                                                                        }
                                                                        §§goto(addr811);
                                                                     }
                                                                     §§goto(addr509);
                                                                  }
                                                                  §§goto(addr396);
                                                               }
                                                            }
                                                            if(_loc10_ || this)
                                                            {
                                                               §§goto(addr1174);
                                                            }
                                                            §§goto(addr1230);
                                                         }
                                                      }
                                                      §§goto(addr1054);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr1080:
                                    }
                                    §§push(§§pop().getValue());
                                    addr837:
                                    break;
                                    if(!(_loc10_ || e))
                                    {
                                       continue;
                                    }
                                    if(!_loc9_)
                                    {
                                       §§push(goldScore);
                                       if(_loc10_)
                                       {
                                          addr1304:
                                          if(!(_loc9_ && posY))
                                          {
                                             §§goto(addr858);
                                             §§push(§§pop() >= §§pop());
                                          }
                                          §§push(§§pop() / §§pop());
                                          if(_loc10_ || posX)
                                          {
                                             §§goto(addr1313);
                                             §§push(2);
                                          }
                                          §§goto(addr1288);
                                       }
                                       else
                                       {
                                          §§goto(addr1080);
                                       }
                                    }
                                    §§goto(addr1304);
                                    §§push(goldScore);
                                 }
                                 §§goto(addr1282);
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr1303);
                              §§push(§§pop().getValue());
                           }
                           while(true)
                           {
                              §§goto(addr1397);
                           }
                        }
                        §§goto(addr574);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr50);
               }
            }
         }
         §§goto(addr67);
      }
      
      private function §with§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || _loc1_)
         {
            while(true)
            {
               SoundEngine.§'!B§(LOOP_CHANNEL_NAME);
               while(_loc1_ || this)
               {
                  if(!_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr56:
               }
            }
         }
         §§goto(addr56);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc6_)
         {
         }
         var splash:StarSplash = null;
         if(!_loc7_)
         {
            while(true)
            {
               while(!_loc7_)
               {
                  loop2:
                  while(true)
                  {
                     while(_loc7_)
                     {
                     }
                     if(_loc7_ && this)
                     {
                        break;
                     }
                     while(false)
                     {
                        continue loop2;
                     }
                     §§push(super.run(deltaTime));
                     if(_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                     var superReturn:* = §§pop();
                     if(!(_loc7_ && deltaTime))
                     {
                        loop5:
                        while(true)
                        {
                           §§push(superReturn);
                           if(!_loc7_)
                           {
                              if(§§pop() != StateBase.STATE_STATUS_RUNNING)
                              {
                                 continue;
                              }
                              loop6:
                              while(true)
                              {
                                 §5!M§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                                 loop7:
                                 while(_loc6_)
                                 {
                                    while(true)
                                    {
                                       loop20:
                                       while(true)
                                       {
                                          loop21:
                                          while(true)
                                          {
                                             §5!M§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc6_ || splash)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop20;
                                                         }
                                                         continue loop21;
                                                      }
                                                      continue;
                                                   }
                                                   if(!(_loc7_ && this))
                                                   {
                                                      continue loop6;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop20;
                                             }
                                             continue loop7;
                                          }
                                       }
                                       break loop5;
                                    }
                                 }
                                 addr146:
                                 §§push(superReturn);
                                 if(!_loc7_)
                                 {
                                    return §§pop();
                                 }
                                 break loop5;
                              }
                           }
                           break;
                        }
                        for each(splash in this.§[w§)
                        {
                           if(!(_loc7_ && deltaTime))
                           {
                              loop9:
                              while(true)
                              {
                                 addr183:
                                 while(true)
                                 {
                                    splash.update(deltaTime);
                                    continue loop9;
                                 }
                              }
                              addr190:
                           }
                           while(true)
                           {
                              if(!(_loc6_ || splash))
                              {
                                 continue;
                              }
                              if(!_loc7_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr190);
                              }
                              §§goto(addr183);
                           }
                        }
                        if(!_loc7_)
                        {
                           loop12:
                           while(true)
                           {
                              if(this.§^!N§ >= 0)
                              {
                                 while(true)
                                 {
                                    addr293:
                                    while(true)
                                    {
                                       this.§&! §(deltaTime);
                                       addr284:
                                       loop15:
                                       for(; _loc6_; if(!(_loc7_ && this))
                                       {
                                          return StateBase.STATE_STATUS_COMPLETED;
                                          addr246:
                                       })
                                       {
                                          while(true)
                                          {
                                             addr265:
                                             if(!_loc7_)
                                             {
                                                continue loop15;
                                             }
                                          }
                                       }
                                       continue loop12;
                                    }
                                 }
                                 addr292:
                              }
                              while(mNextState.length > 0)
                              {
                                 if(_loc6_)
                                 {
                                    while(true)
                                    {
                                       §]!B§.§>F§.clearLevel();
                                       if(_loc6_)
                                       {
                                          §§goto(addr265);
                                       }
                                       else
                                       {
                                          §§goto(addr293);
                                       }
                                    }
                                    §§goto(addr246);
                                    addr275:
                                 }
                                 else
                                 {
                                    §§goto(addr292);
                                 }
                                 §§goto(addr293);
                                 §§goto(addr278);
                              }
                              return StateBase.STATE_STATUS_RUNNING;
                           }
                        }
                        §§goto(addr275);
                     }
                     §§goto(addr106);
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               super.deActivate();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§ F§();
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           this.§^!N§ = 0;
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 this.mNewScoreCounter = 0;
                                 while(true)
                                 {
                                    continue loop6;
                                    addr185:
                                    if(_loc2_ && this)
                                    {
                                       continue;
                                    }
                                    §5!M§.movieClip.removeChild(this.§ !A§);
                                    loop35:
                                    while(_loc1_ || _loc1_)
                                    {
                                       loop36:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             addr126:
                                             if(_loc1_ || _loc1_)
                                             {
                                                if(_loc2_)
                                                {
                                                   continue loop0;
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§ !A§);
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop().clean();
                                                   continue loop36;
                                                }
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      return;
                                                   }
                                                   addr28:
                                                   continue loop2;
                                                }
                                                loop14:
                                                while(_loc1_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         addr355:
                                                         while(true)
                                                         {
                                                            §§push(this.§<!J§);
                                                            if(!(_loc2_ && this))
                                                            {
                                                               §§pop().stop();
                                                               break loop35;
                                                            }
                                                            break;
                                                         }
                                                         addr350:
                                                         addr50:
                                                         while(true)
                                                         {
                                                            continue loop14;
                                                         }
                                                         if(_loc2_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            if(_loc1_ || this)
                                                            {
                                                               continue loop4;
                                                            }
                                                            addr387:
                                                            while(true)
                                                            {
                                                               addr388:
                                                               while(true)
                                                               {
                                                                  §§push(this.§9x§);
                                                                  if(_loc1_)
                                                                  {
                                                                     §§pop().stop();
                                                                     addr374:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ && _loc1_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§9x§ = null;
                                                                           addr363:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     addr374:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        break loop14;
                                                                     }
                                                                     addr385:
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            addr347:
                                                            while(true)
                                                            {
                                                               §§goto(addr350);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      SoundEngine.§'!B§(LOOP_CHANNEL_NAME);
                                                      break loop36;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr387);
                                                   }
                                                   §§goto(addr347);
                                                }
                                                addr196:
                                             }
                                             break;
                                          }
                                          addr305:
                                          loop26:
                                          while(true)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                addr270:
                                                if(_loc1_ || this)
                                                {
                                                   addr277:
                                                   if(_loc1_ || this)
                                                   {
                                                      loop27:
                                                      while(true)
                                                      {
                                                         §5!M§.setText("0","TextField_LevelEndScoreEffects");
                                                         loop28:
                                                         while(true)
                                                         {
                                                            continue loop27;
                                                            addr85:
                                                            if(!(_loc1_ || _loc1_))
                                                            {
                                                               continue;
                                                            }
                                                            addr92:
                                                            if(_loc1_ || _loc2_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  loop39:
                                                                  while(true)
                                                                  {
                                                                     if(_loc1_ || _loc1_)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           this.§ !A§ = null;
                                                                           while(true)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 break loop39;
                                                                              }
                                                                              §§goto(addr85);
                                                                              §§goto(addr92);
                                                                           }
                                                                           continue loop28;
                                                                           addr83:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr176:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           if(!(_loc1_ || _loc1_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr185);
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop36;
                                                                  }
                                                                  continue loop35;
                                                                  addr95:
                                                               }
                                                               addr43:
                                                               if(_loc1_ || this)
                                                               {
                                                                  §§goto(addr50);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc1_ || _loc1_)
                                                                  {
                                                                     while(!_loc2_)
                                                                     {
                                                                        §§goto(addr306);
                                                                        §§goto(addr277);
                                                                     }
                                                                     §§goto(addr355);
                                                                     addr316:
                                                                  }
                                                                  break;
                                                                  §§goto(addr43);
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§<!J§ = null;
                                                                  §§goto(addr323);
                                                               }
                                                               addr323:
                                                               addr333:
                                                            }
                                                            §§goto(addr83);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr316);
                                                }
                                                break;
                                             }
                                             addr287:
                                             while(true)
                                             {
                                                §5!M§.setText("0","TextField_LevelEndScore");
                                                continue loop26;
                                             }
                                          }
                                          while(true)
                                          {
                                             this.setButtonStates(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                             continue loop1;
                                             §§goto(addr270);
                                          }
                                          §§goto(addr306);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr305);
                                          §§goto(addr126);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr333);
                                       §§goto(addr144);
                                    }
                                    addr144:
                                 }
                              }
                           }
                        }
                        if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        }
                        §§goto(addr176);
                     }
                  }
               }
            }
         }
         §§goto(addr388);
      }
      
      protected function setButtonStates(state:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               addr152:
               while(true)
               {
                  (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
                  addr147:
                  while(_loc2_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         loop3:
         while(true)
         {
            (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
            while(true)
            {
               loop5:
               while(_loc2_)
               {
                  (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue loop3;
                     }
                     continue loop5;
                  }
                  continue loop3;
               }
               §§goto(addr147);
               addr75:
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).setComponentVisualState(state);
                  while(_loc3_ && this)
                  {
                  }
                  addr84:
                  if(!(_loc3_ && _loc2_))
                  {
                     return;
                     addr73:
                  }
                  while(true)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr75);
                     }
                     else
                     {
                        §§goto(addr96);
                     }
                     §§goto(addr84);
                  }
                  continue;
               }
               §§goto(addr152);
            }
         }
      }
      
      private function § F§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(_loc5_)
         {
         }
         var splash:StarSplash = null;
         loop0:
         while(true)
         {
            while(this.§,!C§)
            {
               continue loop0;
               addr40:
               if(!(_loc4_ || this))
               {
                  continue;
               }
               if(false)
               {
                  loop4:
                  while(true)
                  {
                     this.§,!C§.stop();
                     while(!_loc4_)
                     {
                     }
                     if(!_loc5_)
                     {
                        addr33:
                        if(_loc5_ && _loc2_)
                        {
                           continue loop0;
                        }
                        §§goto(addr40);
                     }
                     else
                     {
                        while(true)
                        {
                           continue loop4;
                        }
                        addr68:
                     }
                  }
                  continue;
               }
               try
               {
                  this.§,!C§.removeEventListener(TimerEvent.TIMER,this.§[^§);
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     addr295:
                     if(_loc4_ || _loc2_)
                     {
                        if(!(_loc4_ || cleanSplashes$0))
                        {
                           this.§"!9§();
                           addr308:
                           if(_loc4_ || cleanSplashes$0)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 §§goto(addr295);
                              }
                              this.§[w§ = new Vector.<StarSplash>();
                              §§goto(addr308);
                              addr310:
                           }
                           addr298:
                           §§goto(addr298);
                        }
                        return;
                     }
                  }
                  §§goto(addr308);
               }
               catch(e:Error)
               {
                  if(_loc4_)
                  {
                     if(_loc5_)
                     {
                     }
                     addr115:
                     if(!(_loc5_ && _loc3_))
                     {
                        break;
                     }
                     break;
                  }
                  trace("No timer available found");
                  §§goto(addr115);
               }
               §§goto(addr295);
            }
            var _loc2_:int = 0;
            if(!_loc5_)
            {
               var _loc3_:* = this.§[w§;
               if(_loc4_ || _loc2_)
               {
                  addr234:
                  if(§§hasnext(_loc3_,_loc2_))
                  {
                     addr228:
                     splash = §§nextvalue(_loc2_,_loc3_);
                     addr224:
                     addr233:
                     if(§5!M§.contains(splash))
                     {
                        addr218:
                        if(_loc4_)
                        {
                           §5!M§.removeChild(splash);
                           addr210:
                           if(_loc4_ || _loc3_)
                           {
                              if(_loc4_ || this)
                              {
                                 addr171:
                                 §§push(§§newactivation());
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§pop().§§slot[1].clean();
                                    addr183:
                                    if(!_loc5_)
                                    {
                                       if(!(_loc5_ && cleanSplashes$0))
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(_loc4_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr171);
                                                }
                                                §§goto(addr234);
                                             }
                                             §§goto(addr218);
                                          }
                                          §§goto(addr210);
                                       }
                                       §§goto(addr183);
                                    }
                                    §§goto(addr210);
                                 }
                                 §§goto(addr228);
                                 addr202:
                              }
                              §§goto(addr224);
                           }
                           §§goto(addr218);
                        }
                        §§goto(addr233);
                     }
                     §§goto(addr171);
                  }
                  addr237:
                  if(_loc4_ || this)
                  {
                  }
                  §§goto(addr310);
               }
               §§goto(addr202);
            }
            §§goto(addr237);
         }
      }
      
      protected function §"!9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            loop0:
            while(true)
            {
               (§5!M§.getItemByName("TextField_BestScore") as UITextFieldRovio).setVisibility(false);
               while(true)
               {
                  addr98:
                  while(!(_loc1_ && _loc1_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         loop5:
         while(true)
         {
            (§5!M§.getItemByName("TextField_NewHighScore") as UITextFieldRovio).setVisibility(false);
            while(!_loc1_)
            {
               if(_loc1_)
               {
                  continue;
               }
               if(!_loc1_)
               {
                  break loop5;
               }
               §§goto(addr98);
            }
            §§goto(addr71);
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               super.cleanup();
               loop1:
               while(!(_loc1_ && _loc1_))
               {
                  while(!(_loc2_ || _loc1_))
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      protected function §=!!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               StateLevelLoadClassic.§[!6§();
               while(!_loc2_)
               {
                  while(_loc1_ || _loc2_)
                  {
                     mNextState = this.§"!b§();
                     while(_loc2_)
                     {
                     }
                     if(_loc1_ || _loc1_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr72);
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         var data:* = null;
         if(!(_loc6_ && component))
         {
            do
            {
               while(_loc6_)
               {
               }
            }
            while(!_loc7_);
            
         }
         §§push(eventName);
         loop2:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               §§push("NEXT_LEVEL");
               if(_loc7_)
               {
                  if(!_loc6_)
                  {
                     §§push(_loc5_);
                     if(_loc7_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc6_)
                           {
                              §§push(0);
                              if(!_loc7_)
                              {
                                 addr407:
                              }
                           }
                           else
                           {
                              addr453:
                              §§push(5);
                              if(!(_loc6_ && this))
                              {
                                 addr461:
                              }
                           }
                           §§goto(addr463);
                        }
                        §§push("REPLAY");
                        if(_loc7_ || eventName)
                        {
                           if(!(_loc6_ && eventIndex))
                           {
                              §§push(_loc5_);
                              if(_loc7_ || component)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc6_ && eventName))
                                    {
                                       §§push(1);
                                       if(!(_loc7_ || this))
                                       {
                                          addr438:
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr453);
                                    }
                                    §§goto(addr463);
                                 }
                                 else
                                 {
                                    §§push("WATCH_REPLAY");
                                    if(!(_loc6_ && eventIndex))
                                    {
                                       if(_loc7_ || this)
                                       {
                                          addr388:
                                          §§push(_loc5_);
                                          if(!_loc6_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc6_ && eventName))
                                                {
                                                   §§push(2);
                                                   if(!(_loc6_ && component))
                                                   {
                                                      §§goto(addr407);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr461);
                                                   }
                                                }
                                                else
                                                {
                                                   addr447:
                                                   §§push(4);
                                                   if(_loc6_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push("MENU");
                                                if(_loc7_ || eventName)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc7_)
                                                      {
                                                         addr422:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§push(3);
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr438);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr461);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr453);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("FULLSCREEN_BUTTON");
                                                            if(_loc7_)
                                                            {
                                                               addr443:
                                                               if(§§pop() === _loc5_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§goto(addr447);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr453);
                                                                  }
                                                               }
                                                               else if(false)
                                                               {
                                                                  §§goto(addr453);
                                                               }
                                                               else
                                                               {
                                                                  §§push(5);
                                                               }
                                                               §§goto(addr453);
                                                               addr442:
                                                            }
                                                            §§goto(addr443);
                                                         }
                                                         §§goto(addr453);
                                                      }
                                                   }
                                                   §§goto(addr443);
                                                }
                                                §§goto(addr442);
                                             }
                                             addr463:
                                             loop20:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   this.§=!!§();
                                                   addr288:
                                                   break;
                                                   addr283:
                                                   addr288:
                                                   addr294:
                                                case 1:
                                                   StateLevelLoadClassic.§7!R§();
                                                   mNextState = this.§4#§();
                                                   addr275:
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr275);
                                                   }
                                                   break;
                                                   addr266:
                                                   addr280:
                                                case 2:
                                                   while(true)
                                                   {
                                                      StateLevelLoadClassic.§7!R§();
                                                      loop4:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc7_ || eventIndex)
                                                            {
                                                               mNextState = this.§4#§();
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§]!B§.§>F§);
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§2D§());
                                                                        if(!(_loc6_ && component))
                                                                        {
                                                                           §§push(§§pop());
                                                                           while(true)
                                                                           {
                                                                              data = §§pop();
                                                                              continue loop4;
                                                                              addr169:
                                                                              if(_loc7_ || eventName)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             break loop8;
                                                                                          }
                                                                                          loop11:
                                                                                          while(_loc7_ || eventIndex)
                                                                                          {
                                                                                             continue loop8;
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc6_ && eventIndex))
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr283);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(data);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§goto(addr169);
                                                                                          }
                                                                                          addr193:
                                                                                       }
                                                                                    }
                                                                                    addr178:
                                                                                 }
                                                                                 addr120:
                                                                                 break loop20;
                                                                              }
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr275);
                                                            }
                                                            §§pop().§5!a§(data);
                                                            if(_loc6_ && eventIndex)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc7_)
                                                            {
                                                               §§goto(addr129);
                                                            }
                                                            §§goto(addr288);
                                                         }
                                                         break loop20;
                                                      }
                                                   }
                                                   break;
                                                case 3:
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         SoundEngine.§;!8§();
                                                         continue;
                                                      }
                                                      §§goto(addr294);
                                                   }
                                                   break;
                                                case 4:
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(_loc7_ || component)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            loop15:
                                                            do
                                                            {
                                                               AngryBirdsFP11.§5V§.§>J§();
                                                               while(true)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc7_)
                                                                           {
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 §§goto(addr178);
                                                                              }
                                                                              §§goto(addr129);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr112);
                                                                           }
                                                                        }
                                                                        §§goto(addr106);
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop14;
                                                               }
                                                               §§goto(addr89);
                                                            }
                                                            while(false);
                                                            
                                                            break loop20;
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      §§goto(addr83);
                                                   }
                                                   §§goto(addr275);
                                             }
                                             return;
                                          }
                                          §§goto(addr422);
                                       }
                                    }
                                    §§goto(addr443);
                                 }
                              }
                              §§goto(addr443);
                           }
                        }
                        §§goto(addr388);
                        §§goto(addr453);
                     }
                  }
                  §§goto(addr443);
               }
               §§goto(addr388);
            }
            §§goto(addr447);
         }
      }
      
      protected function §4#§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function §"!b§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return StateCutScene.STATE_NAME;
      }
      
      public function §-!5§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(_loc1_ && this)
         {
         }
         return StateLevelSelection.STATE_NAME;
      }
   }
}
