package §9c§
{
   import §"!2§.§+,§;
   import §"!2§.UIButtonRovio;
   import §"!2§.UIContainerRovio;
   import §"!2§.UITextFieldRovio;
   import §#!X§.LevelManager;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §9!!§.Integer;
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import §^h§.§5!9§;
   import §^h§.StarSplash;
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
      
      private var §%!^§:§9h§;
      
      private var §=u§:Number;
      
      private var §1!+§:Number = 0.0;
      
      private var §+!V§:Number = 0.0;
      
      private var §7!^§:Boolean = false;
      
      private var §4!R§:Timer;
      
      private var §@!A§:§5!9§;
      
      protected var §2R§:Array;
      
      protected var §,Y§:StarSplash;
      
      protected var §'z§:Vector.<StarSplash>;
      
      public var mNewScoreCounter:int;
      
      private var §+^§:int;
      
      private var §do§:Boolean;
      
      protected var §&!Z§:Boolean;
      
      private var §?z§:Integer;
      
      protected var §#!5§:Boolean;
      
      private var §6!-§:§9h§;
      
      protected var §%#§:Boolean;
      
      protected var §<2§:int;
      
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
                     this.§2R§ = [];
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
                     §^,§ = new §-!H§(this);
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §^,§.init(this.getViewXML());
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
               §§push(this.§2R§);
               loop1:
               while(true)
               {
                  §§pop().push((§^,§.getItemByName("Button_Menu") as UIButtonRovio).x);
                  addr201:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§2R§);
                        while(true)
                        {
                           §§pop().push((§^,§.getItemByName("Button_Replay") as UIButtonRovio).x);
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
         return §3!5§.§4@§.Views.View_LevelEndRio[0];
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
               §§push(AngryBirdsFP11.sUserProgress.§41§(LevelManager.§!=§));
               if(_loc1_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
                  loop1:
                  for(; _loc1_; while(true)
                  {
                     if(!(_loc1_ || this))
                     {
                        continue loop1;
                     }
                     if(_loc1_ || _loc2_)
                     {
                        (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).x = this.§2R§[2];
                        continue;
                     }
                     §§goto(addr361);
                  },§§goto(addr23))
                  {
                     loop2:
                     while(!_loc2_)
                     {
                        (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
                        loop3:
                        while(!(_loc2_ && this))
                        {
                           loop4:
                           while(_loc1_)
                           {
                              (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       while(_loc1_)
                                       {
                                          (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
                                          loop7:
                                          while(true)
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                (§^,§.getItemByName("Button_Menu") as UIButtonRovio).x = this.§2R§[0];
                                                while(!_loc2_)
                                                {
                                                   loop10:
                                                   while(!(_loc2_ && this))
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         (§^,§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§2R§[1];
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
                                                         (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).x = this.§2R§[1] + Math.abs(this.§2R§[2] - this.§2R§[1]) / 2;
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
                              (§^,§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§2R§[0] + Math.abs(this.§2R§[1] - this.§2R§[0]) / 2;
                              break loop1;
                           }
                           loop23:
                           while(_loc1_ || _loc1_)
                           {
                              (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
                              while(_loc2_ && _loc1_)
                              {
                                 while(true)
                                 {
                                    addr419:
                                    while(true)
                                    {
                                       (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(false);
                                       §§goto(addr405);
                                       addr373:
                                       while(_loc1_ || this)
                                       {
                                          while(true)
                                          {
                                             (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
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
                           (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
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
               (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
               loop1:
               while(true)
               {
                  while(true)
                  {
                     (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
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
                     },(§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true),§§goto(addr265))
                     {
                        if(LevelManager.§`l§())
                        {
                           addr272:
                           if(_loc1_ || _loc1_)
                           {
                              continue;
                           }
                           continue loop1;
                        }
                        addr158:
                        (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
                        while(_loc1_)
                        {
                           continue loop0;
                        }
                        loop18:
                        while(true)
                        {
                           if(!(_loc2_ && this))
                           {
                              (§^,§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§2R§[1];
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
                                       (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).x = this.§2R§[2];
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
                                       (§^,§.getItemByName("Button_Menu") as UIButtonRovio).x = this.§2R§[0];
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
                     this.§%#§ = false;
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §4!T§.pause();
                           while(true)
                           {
                              while(true)
                              {
                                 this.§@!A§ = new §5!9§(0,0,0,0);
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §^,§.movieClip.addChildAt(this.§@!A§,§^,§.movieClip.numChildren - 1);
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
                                    this.§1!+§ = 0;
                                    while(!_loc2_)
                                    {
                                       loop24:
                                       while(_loc1_)
                                       {
                                          this.§+!V§ = 0;
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
                                                      this.§2u§();
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
                                 SoundEngine.§`B§("LevelCompletedTheme1");
                                 while(true)
                                 {
                                    addr131:
                                    while(!_loc2_)
                                    {
                                       this.§@!A§.§89§(0.7);
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
      
      private function §2u§() : void
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
               this.§&!Z§ = false;
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
                           this.§4!R§ = new Timer(500);
                           continue loop1;
                        }
                        continue loop0;
                        addr92:
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        this.§4!R§.start();
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
                                 this.§4!R§.addEventListener(TimerEvent.TIMER,this.§5o§);
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
                           this.§+^§ = 0;
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
      
      protected function §=!Z§() : void
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
               if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§!=§) != 100)
               {
                  (§^,§.getItemByName("MovieClip_ResultMEFeather") as §+,§).mClip.gotoAndStop("Off");
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
                        (§^,§.getItemByName("MovieClip_ResultMEFeather") as §+,§).mClip.gotoAndStop("On");
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
      
      protected function §<j§(newScore:int, highScore:int) : void
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
                  if(this.§#!5§)
                  {
                     addr254:
                     continue loop1;
                  }
                  §^,§.setText("Best " + highScore.toString(),"TextField_BestScore");
                  loop3:
                  while(!(_loc5_ && this))
                  {
                     while(_loc4_)
                     {
                        continue loop0;
                        this.§<2§ = LevelManager.§%!"§(LevelManager.§!=§,highScore);
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
                        §^,§.setText("New Highscore!","TextField_BestScore");
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
               §§push(this.§<2§);
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
                                                   (§^,§.getItemByName("MovieClip_BestScoreStars") as §+,§).§"r§("OneStar");
                                                   addr117:
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr117);
                                                   }
                                                   break;
                                                   addr98:
                                                case 1:
                                                   (§^,§.getItemByName("MovieClip_BestScoreStars") as §+,§).§"r§("TwoStar");
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
                                                      (§^,§.getItemByName("MovieClip_BestScoreStars") as §+,§).§"r§("ThreeStar");
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
               if(!this.§#!5§)
               {
                  (§^,§.getItemByName("TextField_BestScore") as UITextFieldRovio).setVisibility(true);
                  loop1:
                  while(!(_loc2_ && _loc2_))
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        loop2:
                        while(_loc1_ || this)
                        {
                           (§^,§.getItemByName("MovieClip_BestScoreStars") as §+,§).setVisibility(true);
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
                                    SoundEngine.§`B§("Hiscore_Badge",EFFECT_CHANNEL_NAME);
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §^,§.setText("New Highscore!","TextField_NewHighScore");
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
                                                (§^,§.getItemByName("TextField_NewHighScore") as UITextFieldRovio).setVisibility(true);
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
                              (§^,§.getItemByName("MovieClip_BestScoreStars") as §+,§).setVisibility(false);
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
                        this.§ !K§();
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
      
      protected function § !K§() : void
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
               this.§1!+§ = 0;
               loop1:
               for(; !(_loc2_ && _loc1_); if(_loc2_ && this)
               {
                  continue;
               },§§goto(addr53))
               {
                  loop2:
                  while(true)
                  {
                     this.§+!V§ = 0;
                     while(true)
                     {
                        loop4:
                        while(_loc1_)
                        {
                           if(_loc1_)
                           {
                              while(true)
                              {
                                 this.§=u§ = SHAKE_COUNT;
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
      
      private function §-O§(deltaTime:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x = (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x - this.§1!+§;
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y = (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y - this.§+!V§;
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              if(this.§=u§ <= 0)
                              {
                                 this.§=u§ = -1;
                                 while(true)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       while(true)
                                       {
                                          addr162:
                                          while(true)
                                          {
                                             this.§-b§();
                                             addr150:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         this.§1!+§ = 0;
                                                         addr114:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ || this))
                                                            {
                                                               continue loop12;
                                                            }
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               continue loop3;
                                                            }
                                                            addr334:
                                                            addr334:
                                                            addr287:
                                                            if(!(_loc2_ && deltaTime))
                                                            {
                                                               §§push(this);
                                                               §§push(Math.random() - 0.5);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§push(this.§=u§);
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     §§push(§§pop() / SHAKE_COUNT);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     addr274:
                                                                     §§push(§§pop() * 20);
                                                                  }
                                                                  §§pop().§+!V§ = §§pop();
                                                                  while(_loc2_ && deltaTime)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr287);
                                                                        addr326:
                                                                        §§pop().§1!+§ = §§pop();
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x = (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x + this.§1!+§;
                                                                  addr244:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        addr218:
                                                                        while(true)
                                                                        {
                                                                           (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y = (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y + this.§+!V§;
                                                                           continue loop1;
                                                                        }
                                                                        addr218:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr277);
                                                                     }
                                                                     §§goto(addr244);
                                                                  }
                                                                  addr277:
                                                                  addr244:
                                                                  addr239:
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§push(this);
                                                               §§push(Math.random() - 0.5);
                                                               if(!(_loc2_ && this))
                                                               {
                                                                  §§push(this.§=u§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(§§pop() / SHAKE_COUNT);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     addr324:
                                                                     §§push(§§pop() * 20);
                                                                  }
                                                                  §§goto(addr326);
                                                               }
                                                               §§goto(addr324);
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                      }
                                                      addr333:
                                                   }
                                                   §§goto(addr334);
                                                }
                                                §§goto(addr218);
                                             }
                                          }
                                       }
                                       addr177:
                                    }
                                    §§goto(addr239);
                                    addr74:
                                    if(!(_loc3_ || deltaTime))
                                    {
                                       continue;
                                    }
                                    if(!_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       addr85:
                                       if(!_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             loop15:
                                             while(!(_loc2_ && _loc3_))
                                             {
                                                loop16:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            this.§+!V§ = 0;
                                                            continue loop15;
                                                         }
                                                      }
                                                      continue loop4;
                                                      addr105:
                                                   }
                                                   addr90:
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§=u§);
                                                      if(!(_loc2_ && this))
                                                      {
                                                         §§push(deltaTime);
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            §§push(§§pop() / 10);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§pop().§=u§ = §§pop();
                                                      addr65:
                                                      while(true)
                                                      {
                                                         if(_loc2_ && _loc2_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr74);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr162);
                                                         }
                                                         §§goto(addr85);
                                                      }
                                                      continue loop16;
                                                      §§goto(addr90);
                                                   }
                                                   §§goto(addr334);
                                                   §§goto(addr114);
                                                }
                                             }
                                             continue loop1;
                                             addr95:
                                          }
                                          if(_loc3_ || this)
                                          {
                                             return;
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr65);
                                    }
                                    §§goto(addr244);
                                 }
                              }
                              §§goto(addr333);
                           }
                        }
                     }
                  }
               }
               if(_loc2_ && deltaTime)
               {
                  continue;
               }
               §§goto(addr105);
            }
         }
         §§goto(addr177);
      }
      
      protected function §-b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
      }
      
      private function §5o§(e:TimerEvent) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!_loc9_)
         {
         }
         var posX:* = NaN;
         var posY:* = NaN;
         var countTime:Number = NaN;
         if(_loc9_ || e)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(!(_loc10_ && posY))
                  {
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           addr45:
                           addr82:
                           while(true)
                           {
                              continue loop4;
                           }
                           var goldScore:Number = LevelManager.§<l§(LevelManager.§!=§).§&X§;
                           if(!_loc9_)
                           {
                           }
                           var silverScore:Number = LevelManager.§<l§(LevelManager.§!=§).§;!>§;
                           if(!_loc10_)
                           {
                              addr1433:
                              if((§^,§.getItemByName("MovieClip_StarLeft") as §+,§).mClip.currentLabel != "UnLit")
                              {
                                 addr1098:
                                 §§push(this.§?z§);
                                 if(!(_loc10_ && posY))
                                 {
                                    if(!_loc10_)
                                    {
                                       addr1108:
                                       §§push(§§pop().getValue());
                                       if(!(_loc10_ && posY))
                                       {
                                          if(!_loc10_)
                                          {
                                             addr1118:
                                             §§push(silverScore);
                                             if(_loc9_)
                                             {
                                                addr1121:
                                                §§push(Boolean(§§pop() >= §§pop()));
                                                if(Boolean(§§pop() >= §§pop()))
                                                {
                                                   addr1125:
                                                   §§pop();
                                                   addr1126:
                                                   §§push((§^,§.getItemByName("MovieClip_StarCenter") as §+,§).mClip.currentLabel == "UnLit");
                                                   if(!(_loc10_ && posX))
                                                   {
                                                      addr1082:
                                                      if(!§§pop())
                                                      {
                                                         §§push(this.§?z§);
                                                         if(_loc9_ || posX)
                                                         {
                                                            §§push(§§pop().getValue());
                                                            if(!(_loc10_ && posX))
                                                            {
                                                               §§push(goldScore);
                                                               if(!(_loc10_ && posY))
                                                               {
                                                                  addr809:
                                                                  §§push(§§pop() >= §§pop());
                                                                  if(_loc9_ || e)
                                                                  {
                                                                     addr817:
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!(_loc10_ && e))
                                                                     {
                                                                        addr828:
                                                                        §§push(§§pop());
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        if(_loc9_ || posX)
                                                                        {
                                                                           if(_loc9_ || e)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr843:
                                                                                 §§pop();
                                                                                 addr844:
                                                                                 if(_loc9_ || posX)
                                                                                 {
                                                                                    if(!(_loc10_ && posX))
                                                                                    {
                                                                                       if(_loc9_ || posX)
                                                                                       {
                                                                                          addr764:
                                                                                          §§push(Boolean((§^,§.getItemByName("MovieClip_StarRight") as §+,§).mClip.currentLabel == "UnLit"));
                                                                                          if(_loc9_ || posX)
                                                                                          {
                                                                                             addr771:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr773:
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      this.§%#§ = true;
                                                                                                      addr736:
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         if(_loc9_ || e)
                                                                                                         {
                                                                                                            §§push(SoundEngine.§`B§("Hiscore_Star_Splash3",EFFECT_CHANNEL_NAME));
                                                                                                            if(_loc9_ || posY)
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr698:
                                                                                                                  if(_loc9_ || posY)
                                                                                                                  {
                                                                                                                     (§^,§.getItemByName("MovieClip_StarRight") as §+,§).mClip.gotoAndStop("Lit");
                                                                                                                     addr693:
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        addr669:
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              if(!(_loc10_ && posY))
                                                                                                                              {
                                                                                                                                 addr635:
                                                                                                                                 §§push(Number((§^,§.getItemByName("MovieClip_StarRight") as §+,§).x + (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x));
                                                                                                                                 if(_loc9_ || posX)
                                                                                                                                 {
                                                                                                                                    if(!(_loc10_ && posX))
                                                                                                                                    {
                                                                                                                                       if(!(_loc10_ && e))
                                                                                                                                       {
                                                                                                                                          if(!(_loc10_ && posY))
                                                                                                                                          {
                                                                                                                                             posX = §§pop();
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                §§push(Number((§^,§.getItemByName("MovieClip_StarRight") as §+,§).y + (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y));
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ && e))
                                                                                                                                                   {
                                                                                                                                                      posY = §§pop();
                                                                                                                                                      addr608:
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            addr562:
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc10_ && this)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr773);
                                                                                                                                                               }
                                                                                                                                                               if(_loc9_ || posX)
                                                                                                                                                               {
                                                                                                                                                                  this.§,Y§ = new StarSplash(AngryBirdsFP11.§8!Z§,AngryBirdsFP11.include,posX,posY,StarSplash.STARSPLASH_RIGHT);
                                                                                                                                                                  §^,§.addChild(this.§,Y§);
                                                                                                                                                                  addr542:
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr542);
                                                                                                                                                                  }
                                                                                                                                                                  this.§'z§.push(this.§,Y§);
                                                                                                                                                                  addr519:
                                                                                                                                                                  if(!(_loc9_ || e))
                                                                                                                                                                  {
                                                                                                                                                                     addr1286:
                                                                                                                                                                     §§push(this.§6!-§);
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().play();
                                                                                                                                                                        (§^,§.getItemByName("MovieClip_StarLeft") as §+,§).mClip.gotoAndStop("Lit");
                                                                                                                                                                        addr1239:
                                                                                                                                                                        §§push(Number((§^,§.getItemByName("MovieClip_StarLeft") as §+,§).x + (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x));
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc10_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc10_ && posY))
                                                                                                                                                                              {
                                                                                                                                                                                 posX = §§pop();
                                                                                                                                                                                 addr1213:
                                                                                                                                                                                 posY = Number((§^,§.getItemByName("MovieClip_StarLeft") as §+,§).y + (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y);
                                                                                                                                                                                 addr1219:
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1184:
                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc10_ && posY))
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§,Y§ = new StarSplash(AngryBirdsFP11.§8!Z§,AngryBirdsFP11.include,posX,posY,StarSplash.STARSPLASH_LEFT);
                                                                                                                                                                                          addr1172:
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc10_ && e)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1403:
                                                                                                                                                                                                SoundEngine.§`B§("Hiscore_Count",LOOP_CHANNEL_NAME,100);
                                                                                                                                                                                                §§push(SoundEngine.§`B§("Hiscore_Star_Splash1",EFFECT_CHANNEL_NAME));
                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   this.§4!R§.delay = 1000;
                                                                                                                                                                                                   addr1355:
                                                                                                                                                                                                   this.§?z§.assign(§4!T§.controller.getScore());
                                                                                                                                                                                                   addr1371:
                                                                                                                                                                                                   if(_loc9_ || posX)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1347:
                                                                                                                                                                                                      countTime = this.§?z§.getValue() / goldScore * 2;
                                                                                                                                                                                                      addr1348:
                                                                                                                                                                                                      addr1345:
                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1327:
                                                                                                                                                                                                         §§push(goldScore);
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() <= §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1323:
                                                                                                                                                                                                               countTime = 1;
                                                                                                                                                                                                               addr1324:
                                                                                                                                                                                                               addr1332:
                                                                                                                                                                                                               addr1331:
                                                                                                                                                                                                               addr1322:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            this.§6!-§ = TweenManager.§&!'§.§3L§(this,{"mNewScoreCounter":this.§?z§.getValue()},{"mNewScoreCounter":0},countTime);
                                                                                                                                                                                                            addr1290:
                                                                                                                                                                                                            this.§6!-§.onComplete = this.§+!U§;
                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1286);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1348);
                                                                                                                                                                                                            addr1298:
                                                                                                                                                                                                            addr1316:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1345);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1371);
                                                                                                                                                                                                      addr1344:
                                                                                                                                                                                                      addr1351:
                                                                                                                                                                                                      addr1346:
                                                                                                                                                                                                      addr1343:
                                                                                                                                                                                                      addr1342:
                                                                                                                                                                                                      addr1341:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1380:
                                                                                                                                                                                                   §§goto(addr1380);
                                                                                                                                                                                                   addr1391:
                                                                                                                                                                                                   addr1377:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1403);
                                                                                                                                                                                                addr1431:
                                                                                                                                                                                                addr1394:
                                                                                                                                                                                                addr1404:
                                                                                                                                                                                                addr1407:
                                                                                                                                                                                             }
                                                                                                                                                                                             §^,§.addChild(this.§,Y§);
                                                                                                                                                                                             addr1155:
                                                                                                                                                                                             if(!(_loc9_ || e))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1155);
                                                                                                                                                                                             }
                                                                                                                                                                                             this.§'z§.push(this.§,Y§);
                                                                                                                                                                                             addr1434:
                                                                                                                                                                                             var _loc7_:*;
                                                                                                                                                                                             §§push((_loc7_ = this).§+^§);
                                                                                                                                                                                             if(!(_loc10_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + 1);
                                                                                                                                                                                             }
                                                                                                                                                                                             var _loc8_:* = §§pop();
                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc7_.§+^§ = _loc8_;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1457:
                                                                                                                                                                                                return;
                                                                                                                                                                                                addr1456:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1457);
                                                                                                                                                                                             addr1152:
                                                                                                                                                                                             addr1134:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1324);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1430:
                                                                                                                                                                                       §§goto(addr1431);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1219);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1256:
                                                                                                                                                                                 §§goto(addr1256);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1344);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1347);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1327);
                                                                                                                                                                        addr1272:
                                                                                                                                                                        addr1283:
                                                                                                                                                                        addr1259:
                                                                                                                                                                        addr1275:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1290);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1434);
                                                                                                                                                                  addr539:
                                                                                                                                                                  addr559:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1155);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr773);
                                                                                                                                                         }
                                                                                                                                                         addr1084:
                                                                                                                                                         if(!(_loc10_ && posX))
                                                                                                                                                         {
                                                                                                                                                            addr1059:
                                                                                                                                                            SoundEngine.§`B§("Hiscore_Star_Splash2",EFFECT_CHANNEL_NAME);
                                                                                                                                                            (§^,§.getItemByName("MovieClip_StarCenter") as §+,§).mClip.gotoAndStop("Lit");
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               addr1026:
                                                                                                                                                               if(!(_loc10_ && posY))
                                                                                                                                                               {
                                                                                                                                                                  addr1004:
                                                                                                                                                                  §§push(Number((§^,§.getItemByName("MovieClip_StarCenter") as §+,§).x + (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x));
                                                                                                                                                                  if(!(_loc10_ && e))
                                                                                                                                                                  {
                                                                                                                                                                     posX = §§pop();
                                                                                                                                                                     addr1012:
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc10_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              addr975:
                                                                                                                                                                              if(!(_loc10_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr971:
                                                                                                                                                                                    posY = Number((§^,§.getItemByName("MovieClip_StarCenter") as §+,§).y + (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y);
                                                                                                                                                                                    addr972:
                                                                                                                                                                                    if(!(_loc10_ && posY))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc10_ && e))
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§,Y§ = new StarSplash(AngryBirdsFP11.§8!Z§,AngryBirdsFP11.include,posX,posY,StarSplash.STARSPLASH_CENTER);
                                                                                                                                                                                          addr927:
                                                                                                                                                                                          if(_loc9_ || posY)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr903:
                                                                                                                                                                                             if(_loc9_ || posY)
                                                                                                                                                                                             {
                                                                                                                                                                                                §^,§.addChild(this.§,Y§);
                                                                                                                                                                                                addr893:
                                                                                                                                                                                                if(_loc10_ && posX)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1083:
                                                                                                                                                                                                   §§goto(addr1084);
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!(_loc10_ && e))
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§'z§.push(this.§,Y§);
                                                                                                                                                                                                   addr873:
                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1371);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1434);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1391);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr972);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1012);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1152);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1457);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1298);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1134);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1394);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1324);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1290);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1323);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1316);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1351);
                                                                                                                                                            addr1051:
                                                                                                                                                            addr1060:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1184);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1051);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1004);
                                                                                                                                                }
                                                                                                                                                §§goto(addr635);
                                                                                                                                                addr615:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1457);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1346);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1239);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1213);
                                                                                                                                 }
                                                                                                                                 §§goto(addr971);
                                                                                                                              }
                                                                                                                              §§goto(addr1272);
                                                                                                                           }
                                                                                                                           §§goto(addr903);
                                                                                                                        }
                                                                                                                        §§goto(addr693);
                                                                                                                     }
                                                                                                                     §§goto(addr1060);
                                                                                                                  }
                                                                                                                  addr733:
                                                                                                                  §§goto(addr733);
                                                                                                               }
                                                                                                               §§goto(addr1403);
                                                                                                            }
                                                                                                            §§goto(addr1059);
                                                                                                         }
                                                                                                         §§goto(addr1404);
                                                                                                      }
                                                                                                      §§goto(addr1283);
                                                                                                      addr750:
                                                                                                   }
                                                                                                   §§goto(addr873);
                                                                                                }
                                                                                                §§goto(addr844);
                                                                                             }
                                                                                             addr483:
                                                                                             §§push(this.§do§);
                                                                                             if(_loc9_ || posX)
                                                                                             {
                                                                                                if(_loc9_ || this)
                                                                                                {
                                                                                                   addr498:
                                                                                                   §§push(!§§pop());
                                                                                                   if(!(_loc10_ && posY))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr506:
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            addr509:
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               this.§do§ = true;
                                                                                                               addr448:
                                                                                                               if(_loc9_ || this)
                                                                                                               {
                                                                                                                  if(_loc9_ || posX)
                                                                                                                  {
                                                                                                                     if(_loc9_ || e)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ || e))
                                                                                                                        {
                                                                                                                           §§goto(addr1126);
                                                                                                                        }
                                                                                                                        §§goto(addr1434);
                                                                                                                     }
                                                                                                                     §§goto(addr927);
                                                                                                                  }
                                                                                                                  §§goto(addr669);
                                                                                                               }
                                                                                                               §§goto(addr542);
                                                                                                            }
                                                                                                            §§goto(addr1259);
                                                                                                         }
                                                                                                         §§goto(addr698);
                                                                                                      }
                                                                                                      this.§4!R§.stop();
                                                                                                      addr422:
                                                                                                      if(_loc9_ || e)
                                                                                                      {
                                                                                                         if(_loc9_ || e)
                                                                                                         {
                                                                                                            if(_loc9_ || posX)
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     addr368:
                                                                                                                     §§push(Boolean(this.§#!5§));
                                                                                                                     if(!(_loc10_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc10_ && this))
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                        }
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr387:
                                                                                                                              §§pop();
                                                                                                                              addr388:
                                                                                                                              if(_loc9_ || posY)
                                                                                                                              {
                                                                                                                                 if(_loc9_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§&!Z§);
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(_loc9_ || posY)
                                                                                                                                             {
                                                                                                                                                if(!(_loc10_ && posX))
                                                                                                                                                {
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_ || posX)
                                                                                                                                                               {
                                                                                                                                                                  addr347:
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     addr349:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc10_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 (§^,§.getItemByName("MovieClip_NewHighScoreBadge") as §+,§).setVisibility(true);
                                                                                                                                                                                 if(_loc9_ || e)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr222:
                                                                                                                                                                                    this.§%!^§ = TweenManager.§&!'§.§3L§((§^,§.getItemByName("MovieClip_NewHighScoreBadge") as §+,§).mClip,{
                                                                                                                                                                                       "scaleX":1,
                                                                                                                                                                                       "scaleY":1
                                                                                                                                                                                    },{
                                                                                                                                                                                       "scaleX":7,
                                                                                                                                                                                       "scaleY":7
                                                                                                                                                                                    },0.1);
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc9_ || posY)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc9_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc10_ && e))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc10_ && posY))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc9_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc10_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc9_ || posY)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr167:
                                                                                                                                                                                                               this.§%!^§.onComplete = this.onBadgeLanded;
                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc10_ && posX))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr157:
                                                                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr145:
                                                                                                                                                                                                                                 §§push(this.§%!^§);
                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().play();
                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc10_ && posY))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc10_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc10_ && e))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc10_ && e))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc10_ && posY))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(false)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr145);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1434);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1172);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr893);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr509);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr157);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1457);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1456);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr167);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1059);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr539);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr282:
                                                                                                                                                                                                                        if(!(_loc10_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr267:
                                                                                                                                                                                                                              §§goto(addr222);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1332);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr893);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1275);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr267);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1457);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1377);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr736);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr448);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr388);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr222);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1457);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1407);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1026);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr422);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1457);
                                                                                                                                                                                 addr363:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr615);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1457);
                                                                                                                                                                     }
                                                                                                                                                                     (§^,§.getItemByName("MovieClip_NewHighScoreBadge") as §+,§).setVisibility(false);
                                                                                                                                                                     §§goto(addr282);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr368);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr498);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr347);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1121);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1126);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr483);
                                                                                                                                                }
                                                                                                                                                §§goto(addr368);
                                                                                                                                             }
                                                                                                                                             §§goto(addr387);
                                                                                                                                          }
                                                                                                                                          §§goto(addr347);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1213);
                                                                                                                                    }
                                                                                                                                    §§goto(addr750);
                                                                                                                                 }
                                                                                                                                 §§goto(addr559);
                                                                                                                              }
                                                                                                                              §§goto(addr519);
                                                                                                                           }
                                                                                                                           §§goto(addr349);
                                                                                                                        }
                                                                                                                        §§goto(addr828);
                                                                                                                     }
                                                                                                                     §§goto(addr764);
                                                                                                                  }
                                                                                                                  §§goto(addr562);
                                                                                                               }
                                                                                                               §§goto(addr1457);
                                                                                                            }
                                                                                                            §§goto(addr1347);
                                                                                                         }
                                                                                                         §§goto(addr608);
                                                                                                      }
                                                                                                      §§goto(addr506);
                                                                                                   }
                                                                                                   §§goto(addr817);
                                                                                                }
                                                                                                §§goto(addr809);
                                                                                             }
                                                                                             §§goto(addr764);
                                                                                          }
                                                                                          §§goto(addr843);
                                                                                       }
                                                                                       §§goto(addr1433);
                                                                                    }
                                                                                    §§goto(addr1331);
                                                                                 }
                                                                                 §§goto(addr975);
                                                                              }
                                                                              §§goto(addr771);
                                                                           }
                                                                        }
                                                                        §§goto(addr1121);
                                                                     }
                                                                     §§goto(addr1082);
                                                                  }
                                                                  §§goto(addr1125);
                                                               }
                                                               §§goto(addr1118);
                                                            }
                                                            §§goto(addr1108);
                                                         }
                                                         §§goto(addr1098);
                                                      }
                                                      §§goto(addr1083);
                                                   }
                                                   §§goto(addr1121);
                                                }
                                                §§goto(addr1082);
                                             }
                                             §§goto(addr1343);
                                          }
                                          §§goto(addr1342);
                                       }
                                       §§goto(addr1322);
                                    }
                                    §§goto(addr1355);
                                 }
                                 §§goto(addr1341);
                              }
                              §§goto(addr1430);
                           }
                           §§goto(addr363);
                        }
                     }
                     if(!(_loc9_ || e))
                     {
                        continue;
                     }
                     if(_loc10_)
                     {
                        continue loop0;
                     }
                     if(_loc9_ || e)
                     {
                        if(false)
                        {
                           §§goto(addr45);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr47);
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      private function §+!U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc1_)
         {
            while(true)
            {
               SoundEngine.§5v§(LOOP_CHANNEL_NAME);
               while(!(_loc1_ && this))
               {
                  if(_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr57:
               }
            }
         }
         §§goto(addr57);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_ && superReturn)
         {
         }
         var splash:StarSplash = null;
         if(_loc6_)
         {
         }
         while(true)
         {
            loop1:
            while(!(_loc6_ && splash))
            {
               loop2:
               do
               {
                  while(!_loc6_)
                  {
                     if(_loc7_ || deltaTime)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(false);
               
               §§push(super.run(deltaTime));
               if(_loc7_)
               {
                  §§push(int(§§pop()));
               }
               var superReturn:* = §§pop();
               if(_loc7_ || deltaTime)
               {
                  loop4:
                  while(true)
                  {
                     §§push(superReturn);
                     loop5:
                     do
                     {
                        if(§§pop() == StateBase.STATE_STATUS_RUNNING)
                        {
                           loop6:
                           while(true)
                           {
                              §^,§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                              loop7:
                              while(true)
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    if(!_loc6_)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §^,§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                                             while(true)
                                             {
                                                if(!(_loc7_ || superReturn))
                                                {
                                                   break loop7;
                                                }
                                                if(!_loc6_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         break loop9;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                             addr161:
                                             var _loc4_:* = §§pop();
                                             var _loc5_:* = this.§'z§;
                                             addr202:
                                             for each(splash in _loc5_)
                                             {
                                                if(!(_loc6_ && superReturn))
                                                {
                                                   addr194:
                                                   splash.update(deltaTime);
                                                   addr201:
                                                   if(_loc7_ || splash)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr192:
                                                         if(false)
                                                         {
                                                            §§goto(addr194);
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   addr199:
                                                   §§goto(addr199);
                                                }
                                                §§goto(addr192);
                                             }
                                             if(!(_loc6_ && deltaTime))
                                             {
                                                if(this.§=u§ > -1)
                                                {
                                                   this.§-O§(deltaTime);
                                                   addr319:
                                                   addr312:
                                                   addr318:
                                                }
                                                addr321:
                                                if(mNextState.length > 0)
                                                {
                                                   if(!(_loc6_ && splash))
                                                   {
                                                      addr295:
                                                   }
                                                   addr296:
                                                   if(_loc7_ || superReturn)
                                                   {
                                                      §4!T§.§1t§.clearLevel();
                                                      addr255:
                                                      if(!(_loc6_ && superReturn))
                                                      {
                                                         if(_loc7_ || this)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(!(_loc6_ && superReturn))
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc6_ && deltaTime)
                                                                     {
                                                                        §§goto(addr321);
                                                                     }
                                                                     return StateBase.STATE_STATUS_COMPLETED;
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                               §§goto(addr255);
                                                            }
                                                            §§goto(addr312);
                                                         }
                                                         §§goto(addr319);
                                                      }
                                                      §§goto(addr296);
                                                   }
                                                   §§goto(addr318);
                                                }
                                                return StateBase.STATE_STATUS_RUNNING;
                                             }
                                             §§goto(addr295);
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop6;
                                    }
                                    addr139:
                                 }
                              }
                              addr157:
                              §§push(superReturn);
                              if(_loc7_)
                              {
                                 continue loop5;
                              }
                              §§goto(addr161);
                           }
                        }
                        §§goto(addr157);
                     }
                     while(_loc6_ && superReturn);
                     
                     return §§pop();
                  }
               }
               §§goto(addr139);
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc2_ || this)
         {
            loop0:
            while(true)
            {
               super.deActivate();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.§-K§();
                     addr440:
                     addr135:
                     while(true)
                     {
                        continue loop1;
                     }
                     if(!(_loc1_ && _loc1_))
                     {
                        loop36:
                        while(true)
                        {
                           §§push(this.§@!A§);
                           if(_loc2_ || _loc2_)
                           {
                              §§pop().clean();
                              loop37:
                              while(!_loc1_)
                              {
                                 if(!(_loc1_ && this))
                                 {
                                    loop38:
                                    while(true)
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          addr87:
                                          if(_loc2_ || _loc1_)
                                          {
                                             this.§@!A§ = null;
                                             loop39:
                                             while(true)
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   addr70:
                                                   if(_loc1_ && _loc1_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                loop33:
                                                while(true)
                                                {
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               §^,§.movieClip.removeChild(this.§@!A§);
                                                               break loop38;
                                                            }
                                                            addr425:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.mNewScoreCounter = 0;
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     addr402:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§6!-§);
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           addr397:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§%!^§);
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       addr345:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                addr347:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§%!^§);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§pop().stop();
                                                                                                   while(!(_loc1_ && _loc1_))
                                                                                                   {
                                                                                                      loop17:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§%!^§ = null;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr303:
                                                                                                            while(!(_loc1_ && _loc1_))
                                                                                                            {
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr293);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr341:
                                                                              }
                                                                              §§goto(addr398);
                                                                           }
                                                                           addr399:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§6!-§);
                                                                              if(!(_loc1_ && _loc1_))
                                                                              {
                                                                                 §§pop().stop();
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr171:
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     continue loop33;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                      break;
                                                   }
                                                   addr222:
                                                   while(true)
                                                   {
                                                      if(!§^,§.movieClip.contains(this.§@!A§))
                                                      {
                                                         continue loop36;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            if(_loc2_ || this)
                                                            {
                                                               §§goto(addr171);
                                                            }
                                                            §§goto(addr347);
                                                         }
                                                         §§goto(addr266);
                                                      }
                                                      §§goto(addr333);
                                                      continue loop33;
                                                   }
                                                   continue loop0;
                                                }
                                                while(_loc2_)
                                                {
                                                   §^,§.setText("0","TextField_LevelEndScore");
                                                   while(_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         §^,§.setText("0","TextField_LevelEndScoreEffects");
                                                         break loop39;
                                                         addr49:
                                                         if(_loc1_ && _loc1_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc1_)
                                                         {
                                                            §§goto(addr34);
                                                         }
                                                         §§goto(addr300);
                                                      }
                                                   }
                                                   §§goto(addr440);
                                                }
                                                §§goto(addr402);
                                             }
                                             while(true)
                                             {
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§@!A§);
                                                      break loop36;
                                                   }
                                                   addr225:
                                                }
                                                §§goto(addr399);
                                                §§goto(addr70);
                                             }
                                          }
                                          break;
                                       }
                                       continue loop37;
                                       if(_loc1_ && _loc1_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr49);
                                    }
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          break loop37;
                                       }
                                       break;
                                       §§goto(addr87);
                                    }
                                    §§goto(addr303);
                                    continue;
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    addr121:
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       if(_loc1_ && this)
                                       {
                                          break;
                                       }
                                       §§goto(addr135);
                                    }
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc1_)
                                          {
                                             §§goto(addr222);
                                          }
                                          break;
                                       }
                                       §§goto(addr225);
                                       §§goto(addr121);
                                    }
                                    §§goto(addr251);
                                    addr217:
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr350);
                           }
                           break;
                        }
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc2_ || _loc1_)
                           {
                              if(!_loc1_)
                              {
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr397);
                           }
                           §§goto(addr345);
                           §§goto(addr95);
                        }
                        addr95:
                     }
                     continue;
                     addr34:
                     return;
                  }
               }
            }
         }
         §§goto(addr398);
      }
      
      protected function setButtonStates(state:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(_loc3_ || this)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
                        while(true)
                        {
                           addr112:
                           while(!(_loc2_ && state))
                           {
                              continue loop2;
                           }
                        }
                        addr54:
                        if(_loc3_ || _loc2_)
                        {
                           return;
                           addr61:
                        }
                     }
                  }
                  if(!(_loc3_ || state))
                  {
                     continue;
                  }
                  (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
                  loop6:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        if(!(_loc2_ && state))
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setComponentVisualState(state);
                           loop8:
                           while(_loc3_)
                           {
                              while(true)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    continue loop7;
                                 }
                                 continue loop8;
                              }
                              §§goto(addr61);
                           }
                           continue loop0;
                        }
                        continue loop6;
                     }
                     §§goto(addr112);
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      private function §-K§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && cleanSplashes$0)
         {
         }
         if(_loc4_)
         {
         }
         var splash:StarSplash = null;
         loop0:
         while(true)
         {
            loop1:
            for(; this.§4!R§; if(!(_loc5_ || _loc2_))
            {
               continue;
            },if(!(_loc4_ && cleanSplashes$0))
            {
               if(false)
               {
                  §§goto(addr44);
               }
               §§goto(addr86);
            },§§goto(addr49))
            {
               if(_loc5_)
               {
                  continue loop0;
               }
               addr74:
               loop2:
               while(true)
               {
                  addr44:
                  while(true)
                  {
                     this.§4!R§.stop();
                     addr49:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
                  try
                  {
                     addr86:
                     this.§4!R§.removeEventListener(TimerEvent.TIMER,this.§5o§);
                     if(_loc5_ || _loc2_)
                     {
                        if(!(_loc4_ && cleanSplashes$0))
                        {
                           break loop1;
                        }
                        this.§<§();
                        addr309:
                        if(_loc5_ || _loc3_)
                        {
                           if(_loc5_)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(!(_loc5_ || cleanSplashes$0))
                                 {
                                    this.§'z§ = new Vector.<StarSplash>();
                                    addr321:
                                 }
                                 return;
                                 addr294:
                              }
                           }
                        }
                        §§goto(addr309);
                     }
                  }
                  catch(e:Error)
                  {
                     if(!_loc4_)
                     {
                        if(_loc4_)
                        {
                        }
                        addr131:
                        if(!(_loc4_ && _loc3_))
                        {
                           break loop1;
                        }
                        break loop1;
                     }
                     trace("No timer available found");
                     §§goto(addr131);
                  }
                  §§goto(addr294);
               }
            }
            var _loc2_:int = 0;
            if(_loc5_ || cleanSplashes$0)
            {
               var _loc3_:* = this.§'z§;
               if(!(_loc4_ && _loc3_))
               {
                  addr250:
                  if(§§hasnext(_loc3_,_loc2_))
                  {
                     addr244:
                     splash = §§nextvalue(_loc2_,_loc3_);
                     addr249:
                     addr240:
                     if(§^,§.contains(splash))
                     {
                        addr230:
                        addr229:
                        if(!(_loc4_ && _loc2_))
                        {
                           §^,§.removeChild(splash);
                           addr204:
                           addr221:
                           if(!_loc4_)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr187:
                                 §§push(§§newactivation());
                                 if(_loc5_ || cleanSplashes$0)
                                 {
                                    §§pop().§§slot[1].clean();
                                    addr199:
                                    if(!_loc4_)
                                    {
                                       if(_loc5_ || _loc2_)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc5_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr187);
                                                }
                                                §§goto(addr250);
                                             }
                                             §§goto(addr230);
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr244);
                              }
                              §§goto(addr249);
                           }
                           §§goto(addr229);
                        }
                        §§goto(addr240);
                     }
                     §§goto(addr187);
                  }
                  addr253:
                  if(!(_loc4_ && _loc2_))
                  {
                     §§goto(addr321);
                  }
                  §§goto(addr294);
               }
               §§goto(addr230);
            }
            §§goto(addr253);
         }
      }
      
      protected function §<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               (§^,§.getItemByName("TextField_BestScore") as UITextFieldRovio).setVisibility(false);
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     (§^,§.getItemByName("MovieClip_BestScoreStars") as §+,§).setVisibility(false);
                     while(!_loc1_)
                     {
                        continue loop0;
                        loop4:
                        while(!(_loc1_ && _loc1_))
                        {
                           while(true)
                           {
                              (§^,§.getItemByName("TextField_NewHighScore") as UITextFieldRovio).setVisibility(false);
                              while(!_loc2_)
                              {
                              }
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            do
            {
               super.cleanup();
               while(!_loc2_)
               {
               }
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      protected function §>]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(true)
            {
               StateLevelLoadClassic.§'8§();
               while(true)
               {
                  loop2:
                  while(!(_loc2_ && _loc2_))
                  {
                     while(true)
                     {
                        mNextState = this.§"!4§();
                        while(_loc2_ && this)
                        {
                        }
                        if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         var data:* = null;
         if(_loc6_)
         {
         }
         while(true)
         {
            while(_loc7_ || eventIndex)
            {
               if(_loc6_)
               {
                  continue;
               }
               §§push(eventName);
               loop2:
               while(true)
               {
                  var _loc5_:* = §§pop();
                  if(_loc7_)
                  {
                     §§push("NEXT_LEVEL");
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && this))
                        {
                           §§push(_loc5_);
                           if(!(_loc6_ && eventName))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc6_ && eventIndex))
                                 {
                                    §§push(0);
                                    if(_loc6_)
                                    {
                                       addr369:
                                    }
                                 }
                                 else
                                 {
                                    addr456:
                                    §§push(5);
                                    if(_loc7_ || eventName)
                                    {
                                    }
                                 }
                                 §§goto(addr466);
                              }
                              §§push("REPLAY");
                              if(_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc7_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc7_ || this)
                                          {
                                             §§push(1);
                                             if(_loc7_ || eventName)
                                             {
                                                §§goto(addr369);
                                             }
                                             else
                                             {
                                                addr453:
                                             }
                                          }
                                          else
                                          {
                                             addr450:
                                             §§push(4);
                                             if(_loc7_)
                                             {
                                                §§goto(addr453);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push("WATCH_REPLAY");
                                          if(_loc7_ || this)
                                          {
                                             if(!(_loc6_ && component))
                                             {
                                                addr386:
                                                §§push(_loc5_);
                                                if(!(_loc6_ && this))
                                                {
                                                   addr394:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc7_ || eventName)
                                                      {
                                                         §§push(2);
                                                         if(_loc7_)
                                                         {
                                                            §§goto(addr466);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr453);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr450);
                                                      }
                                                      §§goto(addr466);
                                                   }
                                                   else
                                                   {
                                                      §§push("MENU");
                                                      if(!_loc6_)
                                                      {
                                                         addr409:
                                                         if(!_loc6_)
                                                         {
                                                            addr412:
                                                            §§push(_loc5_);
                                                            if(_loc7_ || eventName)
                                                            {
                                                               addr420:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(3);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§goto(addr466);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr453);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr456);
                                                                  }
                                                                  §§goto(addr466);
                                                               }
                                                               else
                                                               {
                                                                  §§push("FULLSCREEN_BUTTON");
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     addr446:
                                                                     §§push(_loc5_);
                                                                     addr445:
                                                                  }
                                                                  §§goto(addr446);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr446);
                                                      }
                                                      §§goto(addr445);
                                                   }
                                                }
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§goto(addr450);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr456);
                                                   }
                                                }
                                                else
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr456);
                                                   }
                                                   else
                                                   {
                                                      addr466:
                                                      loop18:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            this.§>]§();
                                                            addr287:
                                                            if(_loc6_ && this)
                                                            {
                                                               §§goto(addr287);
                                                            }
                                                            break;
                                                            addr269:
                                                         case 1:
                                                            StateLevelLoadClassic.§3`§();
                                                            mNextState = this.§"2§();
                                                            addr246:
                                                            break;
                                                            addr261:
                                                            addr255:
                                                            addr246:
                                                            addr252:
                                                            addr266:
                                                         case 2:
                                                            StateLevelLoadClassic.§3`§();
                                                            addr219:
                                                            if(_loc7_ || eventName)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     mNextState = this.§"2§();
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§push(§4!T§.§1t§);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§0!1§());
                                                                           §§push(_loc6_ && eventIndex);
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              §§push(§§pop());
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 data = §§pop();
                                                                                 loop7:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    if(_loc7_ || eventIndex)
                                                                                    {
                                                                                       §§push(data);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop8:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop7;
                                                                                             addr136:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc7_ || component))
                                                                                                {
                                                                                                   continue loop8;
                                                                                                }
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr125:
                                                                                                   break loop18;
                                                                                                }
                                                                                                §§goto(addr261);
                                                                                             }
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§goto(addr125);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr287);
                                                                                    }
                                                                                 }
                                                                                 break loop18;
                                                                              }
                                                                           }
                                                                           §§push(§4!T§.§1t§);
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§pop().§'>§(data);
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr136);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr269);
                                                            }
                                                            §§goto(addr255);
                                                            addr243:
                                                         case 3:
                                                            addr129:
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  SoundEngine.§=O§();
                                                                  while(!_loc7_)
                                                                  {
                                                                  }
                                                                  if(_loc7_ || eventName)
                                                                  {
                                                                     mNextState = this.§[?§();
                                                                     for(; _loc7_ || eventIndex; if(_loc6_ && component)
                                                                     {
                                                                        continue;
                                                                     },if(_loc7_ || this)
                                                                     {
                                                                        break loop18;
                                                                     },§§goto(addr243))
                                                                     {
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr219);
                                                                     }
                                                                     §§goto(addr136);
                                                                  }
                                                                  §§goto(addr246);
                                                               }
                                                               §§goto(addr165);
                                                            }
                                                            §§goto(addr155);
                                                         case 4:
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        AngryBirdsFP11.§8R§.§,!f§();
                                                                        continue loop15;
                                                                     }
                                                                     addr47:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr252);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr129);
                                                               }
                                                               §§goto(addr246);
                                                            }
                                                            §§goto(addr155);
                                                      }
                                                      return;
                                                      §§push(5);
                                                   }
                                                   §§goto(addr466);
                                                }
                                                §§goto(addr456);
                                             }
                                             §§goto(addr446);
                                          }
                                          §§goto(addr409);
                                       }
                                       §§goto(addr466);
                                    }
                                    §§goto(addr394);
                                 }
                                 §§goto(addr386);
                              }
                              §§goto(addr409);
                              §§goto(addr456);
                           }
                           §§goto(addr420);
                        }
                        §§goto(addr446);
                     }
                     §§goto(addr412);
                  }
                  §§goto(addr450);
               }
            }
         }
      }
      
      protected function §"2§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function §"!4§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return StateCutScene.STATE_NAME;
      }
      
      public function §[?§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         return StateLevelSelection.STATE_NAME;
      }
   }
}
