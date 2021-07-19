package §^U§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §,P§.§'_§;
   import §;<§.§'B§;
   import §<!1§.§9!=§;
   import §<!]§.§2U§;
   import §<!]§.§]!v§;
   import §<i§.§`!r§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §7A§ extends §'B§
   {
      
      public static const §%!Q§:String = "LevelEndStateRio";
      
      public static const §#"?§:Number = 30;
      
      protected static const §]!9§:String = "ScoreLoopCountChannel";
      
      protected static const §4!P§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%!Q§ = "LevelEndStateRio";
            loop0:
            while(true)
            {
               §#"?§ = 30;
               while(true)
               {
                  §]!9§ = "ScoreLoopCountChannel";
                  while(_loc1_)
                  {
                     continue loop0;
                     §4!P§ = "EndScreenEffectChannel";
                     if(_loc1_)
                     {
                        return;
                        addr39:
                     }
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      private var §["§:§=!r§;
      
      private var §0+§:Number;
      
      private var §<V§:Number = 0.0;
      
      private var §!"@§:Number = 0.0;
      
      private var §%?§:Boolean = false;
      
      private var §1!"§:Timer;
      
      private var §<E§:§]!v§;
      
      protected var §<!V§:Array;
      
      protected var §@"#§:§2U§;
      
      protected var §!!N§:Vector.<§2U§>;
      
      public var mNewScoreCounter:int;
      
      private var §7!S§:int;
      
      private var §%!t§:Boolean;
      
      protected var §;!d§:Boolean;
      
      private var §4!?§:§9!=§;
      
      protected var §[x§:Boolean;
      
      private var §1!8§:§=!r§;
      
      protected var §9!H§:Boolean;
      
      protected var §<u§:int;
      
      public function §7A§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§<!V§ = [];
         }
         do
         {
            this.§4!?§ = new §9!=§();
            do
            {
               super(param1,param2);
            }
            while(_loc4_ && param1);
            
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            §`!v§ = new §>!V§(this);
            while(true)
            {
               §`!v§.init(this.§+!;§());
               loop2:
               while(!_loc2_)
               {
                  this.§%R§();
                  while(true)
                  {
                     this.§!!N§ = new Vector.<§2U§>();
                     loop4:
                     while(_loc1_ || _loc1_)
                     {
                        §0"#§.§4!m§(§]!9§,1,1);
                        while(!_loc2_)
                        {
                           §0"#§.§4!m§(§4!P§,3,1);
                           if(_loc1_ || _loc1_)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    return;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                              continue loop4;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      protected function §%R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§<!V§);
            loop0:
            while(true)
            {
               §§pop().push((§`!v§.getItemByName("Button_Menu") as §9"8§).x);
               loop1:
               while(true)
               {
                  §§push(this.§<!V§);
                  loop2:
                  while(true)
                  {
                     §§pop().push((§`!v§.getItemByName("Button_Replay") as §9"8§).x);
                     loop3:
                     while(_loc2_ || _loc1_)
                     {
                        §§push(this.§<!V§);
                        loop4:
                        while(_loc2_)
                        {
                           continue loop0;
                           loop6:
                           while(true)
                           {
                              §§push(this.§<!V§);
                              if(!_loc1_)
                              {
                                 §§pop().push((§`!v§.getItemByName("Button_CutScene") as §9"8§).x);
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 addr68:
                                 while(!(_loc1_ && this))
                                 {
                                    continue loop6;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           return;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      protected function §+!;§() : XML
      {
         return §]!M§.§"!V§.Views.View_LevelEndRio[0];
      }
      
      protected function §0"%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(AngryBirdsFP11.§>!7§.§]"9§(§`!r§.§0B§))
            {
               (§`!v§.getItemByName("Button_Menu") as §9"8§).setVisibility(true);
               loop0:
               while(true)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     (§`!v§.getItemByName("Button_Replay") as §9"8§).setVisibility(true);
                     loop1:
                     while(true)
                     {
                        (§`!v§.getItemByName("Button_NextLevel") as §9"8§).setVisibility(false);
                        addr129:
                        addr245:
                        while(_loc1_)
                        {
                           (§`!v§.getItemByName("Button_CutScene") as §9"8§).setVisibility(true);
                           continue loop1;
                        }
                        (§`!v§.getItemByName("Button_CutScene") as §9"8§).setVisibility(true);
                        loop6:
                        while(true)
                        {
                           (§`!v§.getItemByName("Button_Replay") as §9"8§).x = this.§<!V§[0] + Math.abs(this.§<!V§[1] - this.§<!V§[0]) / 2;
                           addr220:
                           while(true)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 break loop6;
                              }
                              continue loop6;
                           }
                        }
                        (§`!v§.getItemByName("Button_CutScene") as §9"8§).x = this.§<!V§[1] + Math.abs(this.§<!V§[2] - this.§<!V§[1]) / 2;
                        break loop0;
                     }
                  }
                  break;
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  if(_loc1_ || _loc2_)
                  {
                     if(_loc1_)
                     {
                        §§goto(addr19);
                     }
                     else
                     {
                        §§goto(addr254);
                     }
                  }
                  §§goto(addr220);
               }
               addr19:
               return;
            }
            §§goto(addr278);
         }
         §§goto(addr76);
      }
      
      protected function §@!p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            (§`!v§.getItemByName("Button_Menu") as §9"8§).setVisibility(true);
            loop0:
            while(true)
            {
               (§`!v§.getItemByName("Button_Replay") as §9"8§).setVisibility(true);
               while(true)
               {
                  (§`!v§.getItemByName("Button_CutScene") as §9"8§).setVisibility(false);
                  continue loop0;
                  addr122:
                  if(_loc2_ || _loc1_)
                  {
                     (§`!v§.getItemByName("Button_Replay") as §9"8§).x = this.§<!V§[1] + Math.abs(this.§<!V§[2] - this.§<!V§[1]) / 2;
                     addr129:
                     if(!(_loc2_ || _loc2_))
                     {
                        loop4:
                        while(true)
                        {
                           if(_loc2_ || this)
                           {
                              if(_loc2_ || this)
                              {
                                 if(!_loc1_)
                                 {
                                    §§goto(addr122);
                                 }
                                 else
                                 {
                                    (§`!v§.getItemByName("Button_Menu") as §9"8§).x = this.§<!V§[0];
                                    (§`!v§.getItemByName("Button_Replay") as §9"8§).x = this.§<!V§[1];
                                    (§`!v§.getItemByName("Button_NextLevel") as §9"8§).x = this.§<!V§[2];
                                    addr171:
                                    break;
                                    addr171:
                                    addr183:
                                    addr197:
                                 }
                              }
                              break;
                           }
                           else
                           {
                              addr140:
                           }
                           while(!(_loc1_ && _loc1_))
                           {
                              (§`!v§.getItemByName("Button_Menu") as §9"8§).x = this.§<!V§[0] + Math.abs(this.§<!V§[1] - this.§<!V§[0]) / 2;
                              continue loop4;
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr25);
                     }
                  }
                  continue;
                  if(!_loc1_)
                  {
                     addr63:
                     if(_loc1_ && _loc2_)
                     {
                        continue loop0;
                     }
                  }
                  else
                  {
                     §§goto(addr183);
                  }
                  addr25:
                  return;
               }
               addr188:
               if(_loc2_)
               {
                  addr190:
                  (§`!v§.getItemByName("Button_NextLevel") as §9"8§).setVisibility(true);
               }
               §§goto(addr197);
            }
         }
         §§goto(addr190);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.activate();
            while(true)
            {
               this.§9!H§ = false;
               while(true)
               {
                  §'_§.pause();
                  loop2:
                  while(true)
                  {
                     this.§<E§ = new §]!v§(0,0,0,0);
                     loop3:
                     while(true)
                     {
                        §`!v§.movieClip.addChildAt(this.§<E§,§`!v§.movieClip.numChildren - 1);
                        loop4:
                        while(true)
                        {
                           if(!§`!r§.§,!9§())
                           {
                              this.§@!p§();
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    while(true)
                                    {
                                       this.§0"%§();
                                       addr148:
                                       while(_loc2_)
                                       {
                                       }
                                       continue loop4;
                                    }
                                    addr146:
                                 }
                                 while(true)
                                 {
                                    this.mNewScoreCounter = 0;
                                    continue loop2;
                                    §§goto(addr150);
                                 }
                                 addr67:
                                 if(_loc2_ || this)
                                 {
                                    continue loop3;
                                 }
                              }
                           }
                           §§goto(addr146);
                        }
                     }
                  }
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  this.§!"@§ = 0;
                  §§goto(addr39);
               }
            }
         }
         while(true)
         {
            this.§<V§ = 0;
            §§goto(addr60);
         }
      }
      
      protected function get §6!b§() : String
      {
         return "LevelCompletedTheme1";
      }
      
      private function §&D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;!d§ = false;
            loop0:
            while(true)
            {
               this.§[V§();
               loop1:
               while(true)
               {
                  this.§1!"§ = new Timer(500);
                  while(true)
                  {
                     this.§7!S§ = 0;
                     while(_loc2_ || _loc2_)
                     {
                        if(_loc2_)
                        {
                           if(!_loc1_)
                           {
                              this.§1!"§.addEventListener(TimerEvent.TIMER,this.§5N§);
                              do
                              {
                                 this.§1!"§.start();
                              }
                              while(_loc1_);
                              
                              if(!(_loc1_ && _loc2_))
                              {
                                 return;
                                 addr37:
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      protected function §;"'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(AngryBirdsFP11.§>!7§.§6!G§(§`!r§.§0B§) == 100)
            {
               addr77:
               (§`!v§.getItemByName("MovieClip_ResultMEFeather") as §@u§).mClip.gotoAndStop("On");
            }
            else
            {
               (§`!v§.getItemByName("MovieClip_ResultMEFeather") as §@u§).mClip.gotoAndStop("Off");
               if(!(_loc1_ && _loc1_))
               {
                  if(!_loc2_)
                  {
                     §§goto(addr77);
                  }
                  §§goto(addr25);
               }
            }
         }
         addr25:
      }
      
      protected function §4!`§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(!this.§[x§)
            {
               §`!v§.setText("Best " + param2.toString(),"TextField_BestScore");
               while(!_loc5_)
               {
                  if(!(_loc4_ || _loc3_))
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§push(int(§§pop()));
                     }
                     param2 = §§pop();
                  }
                  else
                  {
                     addr136:
                     addr131:
                  }
                  continue;
                  AngryBirdsFP11.§>!7§.§0!Y§(§`!r§.§0B§,param2);
                  this.§<u§ = §`!r§.§%!g§(§`!r§.§0B§,param2);
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(this.§<u§);
                           if(!_loc5_)
                           {
                              var _loc3_:* = §§pop();
                              if(!_loc5_)
                              {
                                 §§push(1);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(_loc3_);
                                    if(_loc4_ || this)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(0);
                                             if(_loc5_ && _loc3_)
                                             {
                                                addr206:
                                                if(§§pop() === _loc3_)
                                                {
                                                   addr208:
                                                   §§push(2);
                                                   if(!_loc5_)
                                                   {
                                                      addr221:
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(3);
                                                }
                                             }
                                             else
                                             {
                                                addr174:
                                             }
                                          }
                                          else
                                          {
                                             addr194:
                                             §§push(1);
                                             if(!_loc5_)
                                             {
                                                addr197:
                                             }
                                          }
                                          addr227:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                (§`!v§.getItemByName("MovieClip_BestScoreStars") as §@u§).§3"5§("OneStar");
                                                addr40:
                                                break;
                                                addr63:
                                             case 1:
                                                (§`!v§.getItemByName("MovieClip_BestScoreStars") as §@u§).§3"5§("TwoStar");
                                                addr50:
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr63);
                                                break;
                                             case 2:
                                                (§`!v§.getItemByName("MovieClip_BestScoreStars") as §@u§).§3"5§("ThreeStar");
                                                if(!_loc5_)
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr50);
                                                   }
                                                   §§goto(addr40);
                                                }
                                          }
                                          return;
                                          addr226:
                                       }
                                       else
                                       {
                                          §§push(2);
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(_loc3_);
                                             if(!_loc5_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§goto(addr194);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr208);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(3);
                                                   if(_loc4_ || param2)
                                                   {
                                                      §§goto(addr206);
                                                   }
                                                }
                                                §§goto(addr221);
                                             }
                                             §§goto(addr206);
                                          }
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr174);
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr227);
                        }
                        else
                        {
                           §§goto(addr136);
                        }
                     }
                     §§goto(addr227);
                  }
                  continue;
                  addr119:
                  break;
               }
               §`!v§.setText("New Highscore!","TextField_BestScore");
               §§goto(addr119);
            }
            §§goto(addr131);
         }
         §§goto(addr136);
      }
      
      protected function §[V§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(AngryBirdsFP11.§>!7§.§="?§(§`!r§.§0B§));
         if(_loc8_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§'_§.§=R§.getScore());
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_)
         {
            this.§[x§ = _loc2_ > _loc1_;
            loop0:
            while(true)
            {
               addr48:
               while(true)
               {
                  this.§4!`§(_loc2_,_loc1_);
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr48);
         }
         §§push(§'_§.§=R§.getEagleScore());
         if(_loc8_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(AngryBirdsFP11.§>!7§.§6!G§(§`!r§.§0B§));
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            if(!_loc7_)
            {
               §§push(_loc3_);
               if(_loc8_ || _loc2_)
               {
                  §§push(int(§§pop()));
                  if(_loc8_ || _loc2_)
                  {
                     _loc4_ = §§pop();
                     if(!(_loc7_ && _loc1_))
                     {
                        §§push(AngryBirdsFP11.§>!7§);
                        if(_loc8_ || this)
                        {
                           §§push(§`!r§.§0B§);
                           if(!(_loc7_ && _loc2_))
                           {
                              §§push(_loc4_);
                              if(_loc8_ || _loc1_)
                              {
                                 §§pop().§;"6§(§§pop(),§§pop());
                                 addr161:
                                 §§push(AngryBirdsFP11.§>!7§);
                                 §§push(§`!r§.§0B§);
                                 §§push(_loc2_);
                              }
                              §§push(§§pop().§6!I§(§§pop(),§§pop()));
                              if(_loc8_ || _loc1_)
                              {
                                 addr171:
                                 var _loc6_:int = §§pop();
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    (§`!v§.getItemByName("MovieClip_NewHighScoreBadge") as §@u§).setVisibility(false);
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    (§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).mClip.gotoAndStop("UnLit");
                                    loop5:
                                    do
                                    {
                                       (§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).mClip.gotoAndStop("UnLit");
                                       while(!_loc7_)
                                       {
                                          (§`!v§.getItemByName("MovieClip_StarRight") as §@u§).mClip.gotoAndStop("UnLit");
                                          if(_loc8_)
                                          {
                                             continue loop5;
                                          }
                                       }
                                       continue loop4;
                                    }
                                    while(!_loc8_);
                                    
                                    return;
                                 }
                              }
                              §§goto(addr171);
                           }
                        }
                     }
                     §§goto(addr161);
                  }
               }
               §§goto(addr171);
            }
         }
         §§goto(addr161);
      }
      
      protected function §!",§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(!this.§[x§)
            {
               (§`!v§.getItemByName("TextField_BestScore") as §!!]§).setVisibility(true);
               loop0:
               while(!_loc2_)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     if(_loc1_)
                     {
                        (§`!v§.getItemByName("MovieClip_BestScoreStars") as §@u§).setVisibility(true);
                        if(_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr24);
                        continue;
                     }
                     loop3:
                     while(true)
                     {
                        §`!v§.setText("New Highscore!","TextField_NewHighScore");
                        addr119:
                        while(true)
                        {
                           (§`!v§.getItemByName("TextField_NewHighScore") as §!!]§).setVisibility(true);
                           addr101:
                           addr103:
                           while(!_loc1_)
                           {
                              while(true)
                              {
                                 §0"#§.§9"2§("Hiscore_Badge",§4!P§);
                                 continue loop3;
                              }
                           }
                           (§`!v§.getItemByName("MovieClip_BestScoreStars") as §@u§).setVisibility(false);
                        }
                     }
                  }
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        this.§5!I§();
                        break loop0;
                     }
                     §§goto(addr101);
                     §§goto(addr103);
                  }
                  return;
               }
               while(true)
               {
                  if(_loc2_ && this)
                  {
                     §§goto(addr119);
                  }
                  §§goto(addr81);
               }
            }
            §§goto(addr123);
         }
         §§goto(addr119);
      }
      
      protected function §5!I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§<V§ = 0;
            while(true)
            {
               this.§!"@§ = 0;
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§0+§ = §#"?§;
            if(_loc1_ || this)
            {
               if(!(_loc2_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §'9§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x = (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x - this.§<V§;
            while(true)
            {
               (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y = (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y - this.§!"@§;
               loop1:
               while(true)
               {
                  if(this.§0+§ <= 0)
                  {
                     this.§0+§ = -1;
                     loop2:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              this.§&"=§();
                              loop3:
                              while(true)
                              {
                                 this.§<V§ = 0;
                                 loop4:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       this.§!"@§ = 0;
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          addr24:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§0+§);
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                §§push(param1);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop() / 10);
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             §§pop().§0+§ = §§pop();
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                break;
                                             }
                                             continue loop3;
                                          }
                                       }
                                       addr120:
                                    }
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop4;
                                       §§goto(addr24);
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(this);
                                 §§push(Math.random() - 0.5);
                                 if(_loc3_ || this)
                                 {
                                    §§push(this.§0+§);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() / §#"?§);
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(§§pop() * 20);
                                    }
                                 }
                                 §§pop().§<V§ = §§pop();
                              }
                              addr191:
                           }
                           §§goto(addr220);
                        }
                        §§goto(addr185);
                     }
                  }
                  §§goto(addr191);
               }
            }
         }
         §§goto(addr65);
      }
      
      protected function §&"=§() : void
      {
      }
      
      private function §5N§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §`!r§.getLevelForId(§`!r§.§0B§).mScoreGold;
         var _loc5_:Number = §`!r§.getLevelForId(§`!r§.§0B§).mScoreSilver;
         if(_loc10_)
         {
            if((§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).mClip.currentLabel == "UnLit")
            {
               if(_loc10_)
               {
                  §0"#§.§9"2§("Hiscore_Count",§]!9§,100);
               }
               while(true)
               {
                  §0"#§.§9"2§("Hiscore_Star_Splash1",§4!P§);
                  addr868:
                  this.§1!"§.delay = 1000;
                  loop28:
                  while(true)
                  {
                     §§push(this.§4!?§);
                     loop29:
                     while(true)
                     {
                        §§pop().§2">§(§'_§.§=R§.getScore());
                        addr856:
                        addr834:
                        §§push(this.§4!?§);
                        while(true)
                        {
                           if(_loc9_ && _loc3_)
                           {
                              continue loop29;
                           }
                           §§push(§§pop().getValue() / _loc4_);
                           while(true)
                           {
                              §§push(2);
                              while(true)
                              {
                                 addr847:
                                 _loc6_ = §§pop() * §§pop();
                                 loop33:
                                 while(true)
                                 {
                                    addr818:
                                    §§push(_loc4_);
                                    §§push(0);
                                    if(!(_loc10_ || _loc2_))
                                    {
                                       break;
                                       addr815:
                                    }
                                    if(§§pop() <= §§pop())
                                    {
                                       addr829:
                                       _loc6_ = 1;
                                       addr827:
                                       addr828:
                                    }
                                    this.§1!8§ = §7I§.§[E§.§ ";§(this,{"mNewScoreCounter":this.§4!?§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                    loop34:
                                    while(true)
                                    {
                                       §§push(this.§1!8§);
                                       while(true)
                                       {
                                          §§pop().onComplete = this.§`!1§;
                                          if(_loc9_)
                                          {
                                             return;
                                          }
                                          addr911:
                                          addr911:
                                          addr911:
                                          §§push(this.§1!8§);
                                          if(!(_loc10_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          §§pop().play();
                                          if(!(_loc9_ && this))
                                          {
                                             if(!_loc10_)
                                             {
                                                addr750:
                                                break loop34;
                                                addr768:
                                             }
                                             (§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).mClip.gotoAndStop("Lit");
                                             _loc2_ = Number((§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).x + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x);
                                             continue loop33;
                                          }
                                          §§goto(addr911);
                                       }
                                    }
                                    continue loop28;
                                 }
                              }
                              addr719:
                              if(_loc9_ && param1)
                              {
                                 continue;
                              }
                              _loc3_ = §§pop();
                              §§goto(addr727);
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               §§push(this.§4!?§);
               loop0:
               for(; !(_loc9_ && _loc2_); §§push(this.§4!?§),if(!(_loc10_ || _loc2_))
               {
                  continue;
               },§§goto(addr445))
               {
                  §§push(§§pop().getValue());
                  while(true)
                  {
                     if(_loc10_)
                     {
                        if(_loc10_ || _loc3_)
                        {
                           §§push(_loc5_);
                           while(true)
                           {
                              §§push(§§pop() >= §§pop());
                              addr667:
                              loop3:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop4:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§pop();
                                          loop6:
                                          while(_loc10_)
                                          {
                                             §§push((§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).mClip.currentLabel == "UnLit");
                                             while(true)
                                             {
                                                loop8:
                                                while(!§§pop())
                                                {
                                                   continue loop0;
                                                   addr254:
                                                   if(_loc9_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop());
                                                   if(!_loc9_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop17:
                                                         for(; _loc10_; if(!(_loc10_ || this))
                                                         {
                                                            continue;
                                                         },addr204:,if(!(_loc9_ && _loc3_))
                                                         {
                                                            addr211:
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           (§`!v§.getItemByName("MovieClip_NewHighScoreBadge") as §@u§).setVisibility(true);
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              if(_loc10_ || _loc3_)
                                                                              {
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§["§ = §7I§.§[E§.§ ";§((§`!v§.getItemByName("MovieClip_NewHighScoreBadge") as §@u§).mClip,{
                                                                                       "scaleX":1,
                                                                                       "scaleY":1
                                                                                    },{
                                                                                       "scaleX":7,
                                                                                       "scaleY":7
                                                                                    },0.1);
                                                                                    loop21:
                                                                                    while(_loc10_)
                                                                                    {
                                                                                       if(!(_loc9_ && _loc2_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§["§);
                                                                                             loop23:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().onComplete = this.§!",§;
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc9_ && this)
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            if(!(_loc9_ && _loc2_))
                                                                                                            {
                                                                                                               if(!(_loc9_ && this))
                                                                                                               {
                                                                                                                  §§push(this.§["§);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  §§pop().play();
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(_loc10_ || _loc2_)
                                                                                                                     {
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr829);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr493);
                                                                                                            }
                                                                                                            §§goto(addr911);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr368);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr319);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(_loc10_)
                                                                                                      {
                                                                                                         if(_loc9_ && this)
                                                                                                         {
                                                                                                            break loop24;
                                                                                                         }
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      §§goto(addr268);
                                                                                                      addr167:
                                                                                                   }
                                                                                                   §§goto(addr499);
                                                                                                }
                                                                                                §§goto(addr701);
                                                                                             }
                                                                                          }
                                                                                          continue loop19;
                                                                                          addr85:
                                                                                       }
                                                                                       §§goto(addr432);
                                                                                    }
                                                                                    §§goto(addr313);
                                                                                 }
                                                                              }
                                                                              addr306:
                                                                              §§goto(addr886);
                                                                           }
                                                                           addr231:
                                                                        }
                                                                        while(!(_loc9_ && _loc3_))
                                                                        {
                                                                           §§push(this.§[x§);
                                                                           if(_loc10_)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§push(Boolean(§§pop()));
                                                                              if(_loc9_ && _loc2_)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                           }
                                                                           §§goto(addr254);
                                                                        }
                                                                        §§goto(addr406);
                                                                        addr282:
                                                                     }
                                                                     §§goto(addr231);
                                                                  }
                                                                  else
                                                                  {
                                                                     (§`!v§.getItemByName("MovieClip_NewHighScoreBadge") as §@u§).setVisibility(false);
                                                                  }
                                                                  §§goto(addr167);
                                                               }
                                                               addr218:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               addr475:
                                                               while(_loc10_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        §§goto(addr479);
                                                                        §§goto(addr204);
                                                                     }
                                                                     addr478:
                                                                  }
                                                                  §§goto(addr427);
                                                               }
                                                               continue loop4;
                                                               §§goto(addr211);
                                                            }
                                                            addr474:
                                                         },§§goto(addr478))
                                                         {
                                                            §§pop();
                                                            loop18:
                                                            while(true)
                                                            {
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  §§push(this.§;!d§);
                                                                  if(_loc9_ && param1)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  addr187:
                                                                  if(_loc10_ || _loc2_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        continue loop17;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  addr428:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§push(this.§%!t§);
                                                                        break loop17;
                                                                     }
                                                                     addr429:
                                                                     this.§9!H§ = true;
                                                                     addr432:
                                                                     §0"#§.§9"2§("Hiscore_Star_Splash3",§4!P§);
                                                                     addr414:
                                                                     if(_loc10_)
                                                                     {
                                                                        (§`!v§.getItemByName("MovieClip_StarRight") as §@u§).mClip.gotoAndStop("Lit");
                                                                        addr406:
                                                                        if(_loc9_)
                                                                        {
                                                                           §§goto(addr414);
                                                                        }
                                                                        §§push(Number((§`!v§.getItemByName("MovieClip_StarRight") as §@u§).x + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x));
                                                                        loop41:
                                                                        while(_loc10_)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           while(!_loc10_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(Number((§`!v§.getItemByName("MovieClip_StarRight") as §@u§).y + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y));
                                                                              if(!(_loc10_ || param1))
                                                                              {
                                                                                 continue loop41;
                                                                              }
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc9_ && this))
                                                                                       {
                                                                                          this.§@"#§ = new §2U§(AngryBirdsFP11.§6j§,AngryBirdsFP11.§+#§,_loc2_,_loc3_,§2U§.§?E§);
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_ && param1)
                                                                                             {
                                                                                                break loop18;
                                                                                             }
                                                                                             §`!v§.addChild(this.§@"#§);
                                                                                             this.§!!N§.push(this.§@"#§);
                                                                                             §§goto(addr886);
                                                                                          }
                                                                                          addr333:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr394);
                                                                                       }
                                                                                    }
                                                                                    addr368:
                                                                                 }
                                                                                 §§goto(addr847);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr543:
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          this.§@"#§ = new §2U§(AngryBirdsFP11.§6j§,AngryBirdsFP11.§+#§,_loc2_,_loc3_,§2U§.§%D§);
                                                                                          §`!v§.addChild(this.§@"#§);
                                                                                          addr499:
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             if(_loc9_ && _loc2_)
                                                                                             {
                                                                                                addr628:
                                                                                                if(!(_loc9_ && param1))
                                                                                                {
                                                                                                   if(_loc10_ || param1)
                                                                                                   {
                                                                                                      (§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).mClip.gotoAndStop("Lit");
                                                                                                      if(_loc10_ || param1)
                                                                                                      {
                                                                                                         if(_loc10_ || param1)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               addr566:
                                                                                                               §§push(Number((§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).x + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x));
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     addr571:
                                                                                                                     if(_loc10_ || param1)
                                                                                                                     {
                                                                                                                        §§goto(addr543);
                                                                                                                        §§push(Number((§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).y + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y));
                                                                                                                     }
                                                                                                                     §§goto(addr768);
                                                                                                                  }
                                                                                                                  §§goto(addr818);
                                                                                                               }
                                                                                                               §§goto(addr719);
                                                                                                            }
                                                                                                            §§goto(addr679);
                                                                                                         }
                                                                                                         break loop8;
                                                                                                      }
                                                                                                      §§goto(addr911);
                                                                                                   }
                                                                                                   §§goto(addr868);
                                                                                                }
                                                                                                §§goto(addr687);
                                                                                             }
                                                                                             this.§!!N§.push(this.§@"#§);
                                                                                             §§goto(addr886);
                                                                                             addr493:
                                                                                          }
                                                                                          addr550:
                                                                                          §§goto(addr550);
                                                                                          addr527:
                                                                                       }
                                                                                       §§goto(addr847);
                                                                                    }
                                                                                    §§goto(addr750);
                                                                                 }
                                                                                 §§goto(addr566);
                                                                              }
                                                                           }
                                                                           addr394:
                                                                        }
                                                                        §§goto(addr829);
                                                                     }
                                                                     §§goto(addr527);
                                                                     §§goto(addr187);
                                                                  }
                                                               }
                                                               §§goto(addr499);
                                                            }
                                                            while(_loc10_ || _loc3_)
                                                            {
                                                               §§push((§`!v§.getItemByName("MovieClip_StarRight") as §@u§).mClip.currentLabel == "UnLit");
                                                               while(true)
                                                               {
                                                                  §§goto(addr428);
                                                               }
                                                            }
                                                            §§goto(addr827);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  this.§%!t§ = true;
                                                               }
                                                               §§goto(addr306);
                                                            }
                                                            else
                                                            {
                                                               this.§1!"§.stop();
                                                               §§goto(addr282);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                   §§goto(addr475);
                                                }
                                                if(_loc10_ || _loc2_)
                                                {
                                                   §0"#§.§9"2§("Hiscore_Star_Splash2",§4!P§);
                                                   §§goto(addr628);
                                                }
                                                §§goto(addr856);
                                             }
                                          }
                                          §§goto(addr727);
                                       }
                                    }
                                    §§goto(addr615);
                                 }
                              }
                           }
                           addr666:
                        }
                        §§goto(addr842);
                     }
                     §§push(§§pop().getValue());
                     addr445:
                     break;
                     if(_loc9_ && param1)
                     {
                        continue;
                     }
                     §§push(_loc4_);
                     if(!_loc9_)
                     {
                        if(!(_loc9_ && this))
                        {
                           §§goto(addr474);
                           §§push(§§pop() >= §§pop());
                        }
                        §§goto(addr842);
                     }
                     else
                     {
                        §§goto(addr666);
                     }
                  }
                  §§goto(addr828);
               }
            }
            §§goto(addr834);
         }
         §§goto(addr396);
      }
      
      private function §`!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §0"#§.§<"0§(§]!9§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§2U§ = null;
         §§push(super.run(param1));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc7_)
         {
            §§push(_loc2_);
            if(_loc6_ || _loc2_)
            {
               if(§§pop() == §'B§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §`!v§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                     loop1:
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           continue loop0;
                        }
                        if(!(_loc7_ && _loc2_))
                        {
                           while(true)
                           {
                              §`!v§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                              if(_loc6_)
                              {
                                 if(true)
                                 {
                                    §§push(0);
                                 }
                                 continue loop0;
                                 break loop1;
                              }
                              continue loop1;
                           }
                           addr56:
                        }
                     }
                     §§goto(addr89);
                  }
               }
               §§push(_loc2_);
               if(!(_loc7_ && _loc2_))
               {
                  return §§pop();
               }
            }
            addr89:
            for each(_loc3_ in this.§!!N§)
            {
               if(_loc6_)
               {
                  _loc3_.update(param1);
               }
            }
            if(_loc6_ || _loc2_)
            {
               if(this.§0+§ > -1)
               {
                  while(true)
                  {
                     this.§'9§(param1);
                     addr173:
                     while(true)
                     {
                     }
                     addr145:
                     §'_§.§=M§.clearLevel();
                     if(_loc6_ || param1)
                     {
                        return §'B§.STATE_STATUS_COMPLETED;
                     }
                  }
               }
               for(; mNextState.length > 0; §§goto(addr173))
               {
                  if(_loc7_)
                  {
                     continue;
                  }
                  §§goto(addr145);
               }
            }
            return §'B§.STATE_STATUS_RUNNING;
         }
         §§goto(addr56);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               this.§&V§();
               loop1:
               while(true)
               {
                  this.§0+§ = 0;
                  while(true)
                  {
                     this.mNewScoreCounter = 0;
                     addr190:
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     §§push(this.§["§);
                     loop17:
                     while(true)
                     {
                        §§pop().stop();
                        loop18:
                        while(true)
                        {
                           this.§["§ = null;
                           loop19:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 addr176:
                                 loop7:
                                 while(true)
                                 {
                                    §0"#§.§<"0§(§]!9§);
                                    loop8:
                                    while(_loc2_ || _loc1_)
                                    {
                                       this.§>!I§(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                       loop9:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop19;
                                          }
                                          addr150:
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             §`!v§.setText("0","TextField_LevelEndScore");
                                             loop10:
                                             for(; !_loc1_; if(_loc1_ && _loc1_)
                                             {
                                                continue;
                                             },if(_loc1_)
                                             {
                                                continue loop9;
                                             },if(!(_loc2_ || _loc2_))
                                             {
                                                continue loop18;
                                             },addr99:,if(_loc2_ || _loc1_)
                                             {
                                                continue loop1;
                                             },addr225:,while(true)
                                             {
                                                §§push(this.§1!8§);
                                                if(!(_loc1_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§1!8§);
                                                         addr219:
                                                         while(true)
                                                         {
                                                            §§pop().stop();
                                                            break loop8;
                                                         }
                                                      }
                                                      addr217:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§["§);
                                                      if(_loc2_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(_loc2_ || _loc1_)
                                                            {
                                                               §§goto(addr190);
                                                               §§goto(addr150);
                                                            }
                                                            continue;
                                                            addr183:
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop17;
                                                   }
                                                }
                                                §§goto(addr219);
                                                §§goto(addr99);
                                             })
                                             {
                                                §`!v§.setText("0","TextField_LevelEndScoreEffects");
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(this.§<E§);
                                                   loop12:
                                                   while(§§pop())
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(§`!v§.movieClip.contains(this.§<E§))
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               addr128:
                                                               while(true)
                                                               {
                                                                  addr40:
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               addr128:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§<E§);
                                                               if(!_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               §§pop().clean();
                                                               continue loop0;
                                                               §§goto(addr128);
                                                            }
                                                            continue loop12;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop18;
                                                   }
                                                   return;
                                                }
                                             }
                                             continue loop8;
                                          }
                                          §§goto(addr183);
                                       }
                                       continue loop19;
                                    }
                                    while(true)
                                    {
                                       this.§1!8§ = null;
                                       §§goto(addr205);
                                    }
                                    §§goto(addr176);
                                 }
                              }
                              §§goto(addr217);
                           }
                        }
                     }
                  }
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  §`!v§.movieClip.removeChild(this.§<E§);
                  §§goto(addr128);
               }
            }
         }
         §§goto(addr225);
      }
      
      protected function §>!I§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            (§`!v§.getItemByName("Button_Menu") as §9"8§).setComponentVisualState(param1);
         }
         do
         {
            (§`!v§.getItemByName("Button_Replay") as §9"8§).setComponentVisualState(param1);
            do
            {
               (§`!v§.getItemByName("Button_NextLevel") as §9"8§).setComponentVisualState(param1);
               do
               {
                  (§`!v§.getItemByName("Button_CutScene") as §9"8§).setComponentVisualState(param1);
               }
               while(_loc2_ && param1);
               
            }
            while(_loc2_ && this);
            
         }
         while(_loc2_);
         
      }
      
      private function §&V§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§2U§ = null;
         if(_loc4_ || _loc2_)
         {
            if(this.§1!"§)
            {
               if(!(_loc5_ && _loc2_))
               {
                  addr41:
                  this.§1!"§.stop();
               }
               try
               {
                  this.§1!"§.removeEventListener(TimerEvent.TIMER,this.§5N§);
                  if(!(_loc5_ && _loc2_))
                  {
                     addr72:
                     var _loc2_:int = 0;
                     if(!(_loc5_ && _loc2_))
                     {
                        var _loc3_:* = this.§!!N§;
                        if(_loc4_ || _loc3_)
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
                                    loop3:
                                    while(true)
                                    {
                                       if(§`!v§.contains(splash))
                                       {
                                          while(true)
                                          {
                                             §`!v§.removeChild(splash);
                                             addr125:
                                             while(!(_loc5_ && _loc2_))
                                             {
                                                while(true)
                                                {
                                                }
                                             }
                                             continue loop2;
                                          }
                                          addr121:
                                       }
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          §§pop().§§slot[1].clean();
                                          if(!_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                if(true)
                                                {
                                                   break loop3;
                                                }
                                                continue loop3;
                                             }
                                             §§goto(addr121);
                                          }
                                          §§goto(addr125);
                                       }
                                       continue loop1;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           addr145:
                           if(!_loc5_)
                           {
                              this.§!!N§ = new Vector.<§2U§>();
                           }
                           do
                           {
                              this.§8"6§();
                           }
                           while(_loc5_ && _loc3_);
                           
                           return;
                           addr173:
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr173);
               }
               catch(e:Error)
               {
               }
            }
            §§goto(addr72);
         }
         §§goto(addr41);
      }
      
      protected function §8"6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            (§`!v§.getItemByName("TextField_BestScore") as §!!]§).setVisibility(false);
         }
         while(true)
         {
            (§`!v§.getItemByName("MovieClip_BestScoreStars") as §@u§).setVisibility(false);
            while(!_loc1_)
            {
               (§`!v§.getItemByName("TextField_NewHighScore") as §!!]§).setVisibility(false);
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      protected function §2!!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`!;§.§;c§();
         }
         do
         {
            mNextState = this.§<!p§();
         }
         while(!_loc1_);
         
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               if("NEXT_LEVEL" === _loc5_)
               {
                  if(_loc7_)
                  {
                     §§push(0);
                     if(!(_loc7_ || param1))
                     {
                        addr214:
                     }
                  }
                  else
                  {
                     addr206:
                     §§push(2);
                     if(!(_loc6_ && this))
                     {
                        §§goto(addr214);
                     }
                  }
               }
               else if("REPLAY" === _loc5_)
               {
                  if(_loc7_)
                  {
                     addr197:
                     §§push(1);
                     if(!_loc7_)
                     {
                     }
                  }
                  else
                  {
                     §§goto(addr206);
                  }
               }
               else if("WATCH_REPLAY" === _loc5_)
               {
                  if(!_loc6_)
                  {
                     §§goto(addr206);
                  }
                  else
                  {
                     addr220:
                     §§push(3);
                     if(_loc6_ && this)
                     {
                     }
                  }
               }
               else
               {
                  if("MENU" === _loc5_)
                  {
                     if(_loc7_)
                     {
                        §§goto(addr220);
                     }
                     addr250:
                     switch(§§pop())
                     {
                        case 0:
                           this.§2!!§();
                           break;
                        case 1:
                           §`!;§.§%P§();
                           mNextState = this.§7T§();
                           addr165:
                           if(!_loc7_)
                           {
                              §§goto(addr165);
                           }
                           break loop0;
                        case 2:
                           §`!;§.§%P§();
                           if(!(_loc7_ || param1))
                           {
                              break loop0;
                           }
                           mNextState = this.§7T§();
                           while(true)
                           {
                              §§push(§'_§.§=M§);
                              if(_loc7_)
                              {
                                 §§push(§§pop().§#j§());
                                 if(_loc6_ && param2)
                                 {
                                    break;
                                 }
                                 §§push(§§pop());
                                 if(_loc7_ || param2)
                                 {
                                    §§push(_loc4_ = §§pop());
                                    if(!(_loc7_ || param1))
                                    {
                                       break;
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    continue;
                                 }
                              }
                              else
                              {
                                 addr113:
                                 §§pop().§4!;§(_loc4_);
                                 if(!(_loc7_ || param3))
                                 {
                                    §§goto(addr165);
                                 }
                              }
                              break loop0;
                           }
                           continue;
                        case 3:
                           §0"#§.§4"#§();
                           addr50:
                           mNextState = this.§6!u§();
                           if(!_loc6_)
                           {
                              if(_loc7_ || param3)
                              {
                                 break loop0;
                              }
                              §§goto(addr102);
                           }
                           break loop0;
                           addr70:
                        case 4:
                           AngryBirdsFP11.§@"7§.§>!5§();
                           if(_loc7_ || param3)
                           {
                              if(_loc7_ || param2)
                              {
                                 if(_loc7_ || param3)
                                 {
                                    if(true)
                                    {
                                       break loop0;
                                    }
                                    §§goto(addr50);
                                 }
                                 §§goto(addr113);
                              }
                              else
                              {
                                 §§goto(addr70);
                              }
                           }
                     }
                     break;
                  }
                  if("FULLSCREEN_BUTTON" !== _loc5_)
                  {
                     §§goto(addr250);
                     §§push(5);
                  }
                  §§goto(addr250);
                  §§push(4);
                  if(!_loc7_)
                  {
                  }
               }
               §§goto(addr250);
            }
            §§goto(addr197);
         }
      }
      
      protected function §7T§() : String
      {
         return §`!;§.§%!Q§;
      }
      
      protected function §<!p§() : String
      {
         return StateCutScene.§%!Q§;
      }
      
      public function §6!u§() : String
      {
         return §1!i§.§%!Q§;
      }
   }
}
