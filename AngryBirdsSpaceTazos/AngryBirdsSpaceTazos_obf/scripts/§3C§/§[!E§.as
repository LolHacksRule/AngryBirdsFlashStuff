package §3C§
{
   import § !Y§.§&$§;
   import § !Y§.§]!,§;
   import §"!&§.§!"7§;
   import §"!&§.§8"F§;
   import §,"&§.§9q§;
   import §0N§.§0!g§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §77§.§ ",§;
   import §77§.§&!>§;
   import §77§.§,y§;
   import §77§.§@_§;
   import §8!_§.§1!i§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^"#§.§]!"§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §[!E§ extends §9!;§
   {
      
      private static const §7s§:Number = 750;
      
      private static var §@"§:Class;
      
      public static const §5B§:Number = 30;
      
      protected static const §^!s§:String = "ScoreLoopCountChannel";
      
      protected static const §2g§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §7s§ = 750;
            loop0:
            while(true)
            {
               §@"§ = §#!o§;
               while(true)
               {
                  §5B§ = 30;
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        §^!s§ = "ScoreLoopCountChannel";
                        do
                        {
                           §2g§ = "EndScreenEffectChannel";
                        }
                        while(_loc2_ && §[!E§);
                        
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
         §§goto(addr70);
      }
      
      private var §+!v§:§5!9§;
      
      private var §<x§:Number;
      
      private var §2!+§:Number = 0.0;
      
      private var §use §:Number = 0.0;
      
      private var §8!i§:Boolean = false;
      
      private var §96§:Timer;
      
      protected var §6!;§:Array;
      
      protected var §3_§:§]!"§;
      
      protected var §4"B§:Vector.<§]!"§>;
      
      public var mNewScoreCounter:int;
      
      private var §;>§:int;
      
      private var §;!0§:Boolean;
      
      protected var §!!j§:Boolean;
      
      private var §9N§:§]!,§;
      
      protected var §@!f§:Boolean;
      
      private var §]";§:§5!9§;
      
      protected var §`">§:Boolean;
      
      protected var §@a§:int;
      
      private var §;!V§:§1!i§;
      
      private var §4!K§:Boolean;
      
      public function §[!E§(param1:§1!i§, param2:§8"F§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§6!;§ = [];
            loop0:
            while(true)
            {
               this.§9N§ = new §]!,§();
               loop1:
               while(true)
               {
                  §>"2§ = true;
                  while(true)
                  {
                     §1"$§ = false;
                     loop3:
                     while(true)
                     {
                        super(§1#§.§&R§,§8"6§.§8p§,§0!g§.§[!y§(§@"§));
                        while(_loc3_)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                     addr65:
                     while(!(_loc4_ && param2))
                     {
                        continue loop1;
                        this.§;!V§ = param1;
                        if(!_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr34);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §3"4§ = param2 as §!"7§;
            §§goto(addr65);
         }
         §§goto(addr48);
      }
      
      protected function §%[§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            (§[S§.getItemByName("Button_Menu") as §@_§).setVisibility(true);
            loop0:
            while(true)
            {
               (§[S§.getItemByName("Button_Replay") as §@_§).setVisibility(true);
               loop1:
               do
               {
                  if(!this.§;!V§.§=!+§.getNextLevelId())
                  {
                     (§[S§.getItemByName("Button_NextLevel") as §@_§).setVisibility(false);
                     while(!_loc1_)
                     {
                        (§[S§.getItemByName("Button_Menu") as §@_§).x = this.§6!;§[0] + 40;
                        while(!(_loc1_ && this))
                        {
                           (§[S§.getItemByName("Button_Replay") as §@_§).x = this.§6!;§[2] - 40;
                           if(!_loc2_)
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           if(!(_loc1_ && _loc1_))
                           {
                              if(!_loc1_)
                              {
                                 §§goto(addr25);
                              }
                              continue loop0;
                           }
                           loop4:
                           while(true)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    break;
                                 }
                                 addr158:
                                 while(true)
                                 {
                                    (§[S§.getItemByName("Button_NextLevel") as §@_§).setVisibility(true);
                                 }
                              }
                              while(true)
                              {
                                 (§[S§.getItemByName("Button_Menu") as §@_§).x = this.§6!;§[0];
                                 continue loop4;
                              }
                           }
                           (§[S§.getItemByName("Button_NextLevel") as §@_§).x = this.§6!;§[2];
                           continue loop1;
                           addr125:
                        }
                     }
                     while(true)
                     {
                        (§[S§.getItemByName("Button_Replay") as §@_§).x = this.§6!;§[1];
                        §§goto(addr125);
                     }
                  }
                  §§goto(addr158);
               }
               while(_loc1_);
               
            }
         }
         addr25:
      }
      
      protected function §,!,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§6!;§);
            loop0:
            while(true)
            {
               §§pop().push(Math.round((§[S§.getItemByName("Button_Menu") as §@_§).x));
               loop1:
               while(true)
               {
                  §§push(this.§6!;§);
                  loop2:
                  while(_loc1_)
                  {
                     §§pop().push(Math.round((§[S§.getItemByName("Button_Replay") as §@_§).x));
                     continue loop1;
                     while(true)
                     {
                        §§push(this.§6!;§);
                        if(!_loc2_)
                        {
                           addr33:
                           §§pop().push(Math.round((§[S§.getItemByName("Button_NextLevel") as §@_§).x));
                           if(!(_loc2_ && _loc1_))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr81);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
            while(true)
            {
               §>"2§ = true;
               while(true)
               {
                  this.updateTextFields();
                  loop2:
                  while(true)
                  {
                     this.§,!,§();
                     while(true)
                     {
                        this.§4"B§ = new Vector.<§]!"§>();
                        addr154:
                        while(!_loc1_)
                        {
                           §9q§.§>!L§.background.stopAmbientSound();
                           continue loop2;
                        }
                     }
                  }
               }
               while(_loc2_ || _loc1_)
               {
                  this.§%[§();
                  §§goto(addr108);
               }
            }
         }
         §§goto(addr99);
      }
      
      private function §,">§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§!!j§ = false;
            while(true)
            {
               this.§&!U§();
               loop1:
               while(!(_loc1_ && this))
               {
                  while(true)
                  {
                     this.§96§ = new Timer(100);
                     do
                     {
                        this.§;>§ = 0;
                        do
                        {
                           this.§96§.addEventListener(TimerEvent.TIMER,this.§9!k§);
                           do
                           {
                              this.§96§.start();
                           }
                           while(_loc1_);
                           
                        }
                        while(!(_loc2_ || _loc1_));
                        
                     }
                     while(!(_loc2_ || _loc1_));
                     
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr103);
      }
      
      protected function §8!m§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(!this.§@!f§)
            {
               §[S§.setText(param2.toString(),"TextField_BestScore");
               loop0:
               for(; _loc4_; this.§@a§ = this.§;!V§.§=!+§.getNumStarsForLevel(this.§;!V§.§=!+§.currentLevel,param2),if(!_loc4_)
               {
                  continue;
               },if(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     §§push(this.§@a§);
                     if(_loc4_)
                     {
                        var _loc3_:* = §§pop();
                        if(!_loc5_)
                        {
                           §§push(1);
                           if(!(_loc5_ && param2))
                           {
                              §§push(_loc3_);
                              if(_loc4_ || param2)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       §§push(0);
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          addr246:
                                       }
                                    }
                                    else
                                    {
                                       addr252:
                                       §§push(2);
                                       if(_loc4_ || this)
                                       {
                                          addr270:
                                       }
                                    }
                                    addr276:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          (§[S§.getItemByName("MovieClip_BestScoreStars") as §,y§).§[!0§("OneStar");
                                          addr45:
                                          break;
                                          addr73:
                                       case 1:
                                          (§[S§.getItemByName("MovieClip_BestScoreStars") as §,y§).§[!0§("TwoStar");
                                          addr55:
                                          if(_loc4_ || _loc3_)
                                          {
                                             break;
                                          }
                                          §§goto(addr73);
                                          break;
                                       case 2:
                                          (§[S§.getItemByName("MovieClip_BestScoreStars") as §,y§).§[!0§("ThreeStar");
                                          if(_loc4_)
                                          {
                                             if(!(_loc5_ && param2))
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr55);
                                             }
                                             §§goto(addr45);
                                          }
                                    }
                                    return;
                                    addr275:
                                 }
                                 else
                                 {
                                    §§push(2);
                                    if(_loc4_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc4_)
                                       {
                                          addr235:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                addr243:
                                                §§push(1);
                                                if(_loc4_)
                                                {
                                                   §§goto(addr246);
                                                }
                                                else
                                                {
                                                   addr250:
                                                   if(§§pop() === _loc3_)
                                                   {
                                                      §§goto(addr252);
                                                   }
                                                   else
                                                   {
                                                      §§push(3);
                                                   }
                                                }
                                                §§goto(addr275);
                                             }
                                             §§goto(addr252);
                                          }
                                          else
                                          {
                                             §§push(3);
                                             if(_loc4_)
                                             {
                                                §§goto(addr250);
                                             }
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr250);
                                    }
                                 }
                                 §§goto(addr246);
                              }
                              §§goto(addr235);
                           }
                           §§goto(addr250);
                        }
                        §§goto(addr243);
                     }
                     §§goto(addr276);
                  }
                  else
                  {
                     while(true)
                     {
                        §§goto(addr162);
                     }
                     addr185:
                  }
               },while(!(_loc4_ || param2))
               {
                  break loop0;
               },§§goto(addr276),addr116:)
               {
                  if(!(_loc5_ && this))
                  {
                     continue;
                  }
                  loop2:
                  while(true)
                  {
                     §§push(§ !g§.§;!'§);
                     if(_loc4_)
                     {
                        §§push((§§pop() as §`Y§).§]]§);
                        if(_loc4_)
                        {
                           §§push(this.§;!V§);
                           if(_loc4_)
                           {
                              §§push(§§pop().§=!+§);
                              if(_loc4_)
                              {
                                 §§push(§§pop().currentLevel);
                                 if(_loc4_)
                                 {
                                    §§push(param2);
                                    if(!_loc5_)
                                    {
                                       §§pop().§4!e§(§§pop(),§§pop());
                                       break loop0;
                                    }
                                    continue;
                                 }
                                 while(true)
                                 {
                                    §§push(param2);
                                    continue loop2;
                                 }
                                 addr169:
                              }
                              while(true)
                              {
                                 §§goto(addr169);
                              }
                              addr168:
                           }
                           while(true)
                           {
                              §§goto(addr168);
                           }
                           addr167:
                        }
                        while(true)
                        {
                           §§goto(addr167);
                        }
                        addr165:
                     }
                     addr162:
                     while(true)
                     {
                        §§goto(addr165);
                     }
                  }
               }
               while(true)
               {
                  §[S§.setText("New Highscore!","TextField_BestScore");
                  §§goto(addr116);
               }
            }
            while(true)
            {
               §§push(param1);
               if(!(_loc5_ && param2))
               {
                  §§push(int(§§pop()));
               }
               param2 = §§pop();
            }
         }
         §§goto(addr185);
      }
      
      protected function §&!U§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:int = (§ !g§.§;!'§ as §`Y§).§]]§.getScoreForLevel(this.§;!V§.§=!+§.currentLevel);
         §§push(§9q§.§&!$§.getScore(10));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc5_)
         {
            this.§@!f§ = _loc2_ >= _loc1_;
            if(!(_loc4_ && _loc1_))
            {
               addr51:
               this.§8!m§(_loc2_,_loc1_);
            }
            var _loc3_:int = (§ !g§.§;!'§ as §`Y§).§]]§.§,R§(this.§;!V§.§=!+§.currentLevel,_loc2_);
            if(!_loc4_)
            {
               (§[S§.getItemByName("MovieClip_NewHighScoreBadge") as §,y§).setVisibility(false);
               while(true)
               {
                  (§[S§.getItemByName("MovieClip_StarLeft") as §,y§).mClip.gotoAndStop("UnLit");
                  loop1:
                  while(!_loc4_)
                  {
                     (§[S§.getItemByName("MovieClip_StarCenter") as §,y§).mClip.gotoAndStop("UnLit");
                     while(true)
                     {
                        (§[S§.getItemByName("MovieClip_StarRight") as §,y§).mClip.gotoAndStop("UnLit");
                        if(_loc5_ || this)
                        {
                           if(_loc5_ || this)
                           {
                              break;
                           }
                           continue loop1;
                        }
                     }
                     return;
                  }
               }
            }
            §§goto(addr118);
         }
         §§goto(addr51);
      }
      
      protected function §[?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!this.§@!f§)
            {
               (§[S§.getItemByName("TextField_BestScore") as §&!>§).setVisibility(true);
               loop0:
               while(_loc2_)
               {
                  (§[S§.getItemByName("MovieClip_BestScoreStars") as §,y§).setVisibility(true);
                  while(true)
                  {
                     (§[S§.getItemByName("MovieClip_BestScoreText") as §&!>§).setVisibility(true);
                     if(!_loc2_)
                     {
                        continue;
                     }
                     if(_loc1_ && this)
                     {
                        continue loop0;
                     }
                     if(_loc2_)
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 (§[S§.getItemByName("MovieClip_BestScoreStars") as §,y§).setVisibility(false);
                                 loop2:
                                 while(true)
                                 {
                                    this.§`!r§();
                                    addr86:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 addr108:
                              }
                              else
                              {
                                 addr122:
                                 while(true)
                                 {
                                    §3"4§.soundManager.playSound("new_highscore");
                                    break loop0;
                                 }
                                 addr122:
                              }
                           }
                           addr106:
                        }
                        return;
                     }
                     §§goto(addr86);
                  }
               }
               while(true)
               {
                  (§[S§.getItemByName("TextField_NewHighScore") as §&!>§).setVisibility(true);
                  §§goto(addr106);
                  §§goto(addr122);
               }
               §§goto(addr108);
            }
            §§goto(addr122);
         }
         §§goto(addr69);
      }
      
      protected function §`!r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§2!+§ = 0;
         }
         do
         {
            this.§use § = 0;
            do
            {
               this.§<x§ = §5B§;
            }
            while(!_loc2_);
            
         }
         while(!(_loc2_ || this));
         
      }
      
      private function §4Y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).x = (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).x - this.§2!+§;
            while(true)
            {
               (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).y = (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).y - this.§use §;
               loop1:
               while(!(_loc3_ && _loc3_))
               {
                  if(this.§<x§ <= 0)
                  {
                     this.§2!+§ = 0;
                     while(true)
                     {
                        this.§use § = 0;
                        loop3:
                        for(; !(_loc3_ && param1); while(true)
                        {
                           §§push(this);
                           §§push(this.§<x§);
                           if(_loc2_ || param1)
                           {
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() / 10);
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§pop().§<x§ = §§pop();
                           if(!_loc2_)
                           {
                              break;
                           }
                           if(!(_loc3_ && param1))
                           {
                              if(_loc2_)
                              {
                                 return;
                              }
                              addr165:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(Math.random() - 0.5);
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(this.§<x§);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() / §5B§);
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc2_ || this)
                                    {
                                       addr191:
                                       §§push(§§pop() * 20);
                                    }
                                    §§pop().§2!+§ = §§pop();
                                    §§goto(addr194);
                                 }
                                 §§goto(addr191);
                              }
                           }
                           §§goto(addr114);
                           §§goto(addr97);
                        })
                        {
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              loop6:
                              while(_loc2_)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).x = (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).x + this.§2!+§;
                                    addr114:
                                    while(_loc3_)
                                    {
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(Math.random() - 0.5);
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(this.§<x§);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop() / §5B§);
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr154:
                                                §§push(§§pop() * 20);
                                             }
                                             §§pop().§use § = §§pop();
                                             continue loop6;
                                          }
                                          §§goto(addr154);
                                       }
                                       continue loop10;
                                    }
                                    (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).y = (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).y + this.§use §;
                                 }
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
                  §§goto(addr165);
               }
            }
         }
         §§goto(addr159);
      }
      
      private function §9!k§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = this.§;!V§.§=!+§.getLevelForId(this.§;!V§.§=!+§.currentLevel).scoreGold;
         var _loc5_:Number = this.§;!V§.§=!+§.getLevelForId(this.§;!V§.§=!+§.currentLevel).scoreSilver;
         if(_loc10_)
         {
            if((§[S§.getItemByName("MovieClip_StarLeft") as §,y§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§9N§);
               loop0:
               for(; !_loc9_; §§push(this.§9N§),if(_loc9_ && _loc3_)
               {
                  continue;
               },§§goto(addr523))
               {
                  §§push(§§pop().getValue());
                  loop1:
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        §§push(_loc5_);
                        while(!_loc9_)
                        {
                           §§push(§§pop() >= §§pop());
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              addr723:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr725:
                                       while(true)
                                       {
                                          §§push((§[S§.getItemByName("MovieClip_StarCenter") as §,y§).mClip.currentLabel == "UnLit");
                                          continue loop3;
                                       }
                                    }
                                    addr724:
                                 }
                                 else
                                 {
                                    while(!§§pop())
                                    {
                                       continue loop0;
                                    }
                                    addr689:
                                    if(_loc10_ || this)
                                    {
                                       §3"4§.soundManager.playSound("star_2");
                                       addr700:
                                       if(_loc10_ || this)
                                       {
                                          (§[S§.getItemByName("MovieClip_StarCenter") as §,y§).mClip.gotoAndStop("Lit");
                                          addr665:
                                          if(_loc10_)
                                          {
                                             if(!_loc9_)
                                             {
                                                addr647:
                                                _loc2_ = Number((§[S§.getItemByName("MovieClip_StarCenter") as §,y§).x + (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).x);
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   addr605:
                                                   §§push(Number((§[S§.getItemByName("MovieClip_StarCenter") as §,y§).y + (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).y));
                                                   if(!(_loc10_ || param1))
                                                   {
                                                      §§goto(addr647);
                                                   }
                                                   if(_loc10_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         if(!(_loc9_ && _loc2_))
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr624:
                                                            if(_loc10_ || this)
                                                            {
                                                               this.§3_§ = new §]!"§(§ !g§.screenWidth,§ !g§.screenHeight,_loc2_,_loc3_,§]!"§.§#g§);
                                                               §[S§.mClip.addChild(this.§3_§);
                                                               addr589:
                                                               if(_loc9_ && _loc2_)
                                                               {
                                                                  §§goto(addr589);
                                                               }
                                                               this.§4"B§.push(this.§3_§);
                                                               addr958:
                                                               var _loc7_:*;
                                                               §§push((_loc7_ = this).§;>§);
                                                               if(_loc10_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               var _loc8_:* = §§pop();
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  _loc7_.§;>§ = _loc8_;
                                                               }
                                                               return;
                                                               addr561:
                                                            }
                                                            §§push(this.§]";§);
                                                            loop37:
                                                            while(true)
                                                            {
                                                               §§pop().onComplete = this.§,"9§;
                                                               addr841:
                                                               if(_loc9_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.§]";§);
                                                               if(!_loc10_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§pop().play();
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  (§[S§.getItemByName("MovieClip_StarLeft") as §,y§).mClip.gotoAndStop("Lit");
                                                                  addr802:
                                                                  §§push(Number((§[S§.getItemByName("MovieClip_StarLeft") as §,y§).x + (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).x));
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     addr778:
                                                                     §§push(Number((§[S§.getItemByName("MovieClip_StarLeft") as §,y§).y + (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).y));
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        this.§3_§ = new §]!"§(§ !g§.screenWidth,§ !g§.screenHeight,_loc2_,_loc3_,§]!"§.§"!L§);
                                                                        addr786:
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§goto(addr786);
                                                                        }
                                                                        if(_loc10_ || param1)
                                                                        {
                                                                           §[S§.mClip.addChild(this.§3_§);
                                                                           this.§4"B§.push(this.§3_§);
                                                                           addr732:
                                                                           §§goto(addr958);
                                                                           addr739:
                                                                           addr732:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr921:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§9N§);
                                                                              break loop0;
                                                                           }
                                                                           addr921:
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(2);
                                                                        addr909:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           addr910:
                                                                           while(true)
                                                                           {
                                                                              addr911:
                                                                              _loc6_ = Number(§§pop());
                                                                              break loop37;
                                                                           }
                                                                        }
                                                                        §§goto(addr778);
                                                                     }
                                                                     addr810:
                                                                     addr908:
                                                                  }
                                                                  loop34:
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     addr894:
                                                                     while(true)
                                                                     {
                                                                        addr849:
                                                                        while(true)
                                                                        {
                                                                           this.§]";§ = §!D§.§[!1§.§1"<§(this,{"mNewScoreCounter":this.§9N§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                                           §§goto(addr865);
                                                                        }
                                                                        continue loop34;
                                                                     }
                                                                  }
                                                                  addr820:
                                                                  addr893:
                                                               }
                                                               §§goto(addr958);
                                                            }
                                                            addr865:
                                                            while(true)
                                                            {
                                                               addr868:
                                                               §§push(_loc4_);
                                                               if(_loc10_ || this)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                        §§goto(addr894);
                                                                     }
                                                                     §§goto(addr849);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr909);
                                                                  }
                                                               }
                                                               break;
                                                               §§goto(addr841);
                                                            }
                                                            §§goto(addr910);
                                                            §§goto(addr958);
                                                         }
                                                         §§goto(addr911);
                                                      }
                                                      §§goto(addr868);
                                                   }
                                                   §§goto(addr778);
                                                }
                                                §§goto(addr665);
                                             }
                                             §§goto(addr841);
                                          }
                                          §§goto(addr739);
                                       }
                                       §§goto(addr810);
                                    }
                                    else
                                    {
                                       §3"4§.soundManager.playSound("star_1");
                                       this.§96§.delay = §7s§;
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          §§push(this.§9N§);
                                          while(true)
                                          {
                                             §§pop().§-"F§(§9q§.§&!$§.getScore(10));
                                             §§goto(addr921);
                                          }
                                          addr916:
                                       }
                                       addr940:
                                       addr957:
                                    }
                                    §§goto(addr958);
                                    addr687:
                                 }
                              }
                           }
                        }
                        addr907:
                        §§goto(addr908);
                        §§push(§§pop() / §§pop());
                        addr719:
                     }
                     §§push(§§pop().getValue());
                     addr523:
                     break;
                     if(_loc9_ && _loc2_)
                     {
                        continue;
                     }
                     if(!(_loc9_ && _loc3_))
                     {
                        §§push(_loc4_);
                        if(_loc10_)
                        {
                           §§goto(addr542);
                           §§push(§§pop() >= §§pop());
                        }
                        else
                        {
                           §§goto(addr719);
                        }
                        §§goto(addr722);
                     }
                     §§goto(addr907);
                     §§push(_loc4_);
                  }
                  §§goto(addr893);
                  §§push(Number(§§pop()));
               }
               while(true)
               {
                  if(!(_loc9_ && this))
                  {
                     §§goto(addr906);
                     §§push(§§pop().getValue());
                  }
                  else
                  {
                     §§goto(addr916);
                  }
                  §§goto(addr921);
               }
            }
            §§goto(addr950);
         }
         §§goto(addr365);
      }
      
      private function §,"9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<!O§.§,!z§(§^!s§);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§]!"§ = null;
         if(!(_loc5_ && this))
         {
            §[S§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         }
         for each(_loc2_ in this.§4"B§)
         {
            if(_loc6_ || _loc2_)
            {
               _loc2_.update(param1);
            }
         }
         if(!_loc5_)
         {
            if(this.§<x§ >= 0)
            {
               if(_loc6_)
               {
                  this.§4Y§(param1);
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§@!X§();
            loop0:
            while(true)
            {
               this.§<x§ = 0;
               loop1:
               while(true)
               {
                  this.mNewScoreCounter = 0;
                  loop2:
                  while(true)
                  {
                     §§push(this.§]";§);
                     if(_loc2_ || _loc1_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§]";§);
                              addr145:
                              while(true)
                              {
                                 §§pop().stop();
                                 addr146:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    this.§]";§ = null;
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                           addr143:
                        }
                        loop4:
                        while(true)
                        {
                           §§push(this.§+!v§);
                           if(!(_loc1_ && _loc1_))
                           {
                              if(!§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §<!O§.§,!z§(§^!s§);
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          this.§2"6§(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                          loop8:
                                          while(true)
                                          {
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                §[S§.setText("0","TextField_LevelEndScore");
                                                continue;
                                             }
                                             addr114:
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop8;
                                             }
                                             continue loop1;
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr143);
                                       §§goto(addr146);
                                    }
                                    if(_loc2_)
                                    {
                                       return;
                                       addr43:
                                    }
                                    continue loop4;
                                    while(true)
                                    {
                                       continue loop6;
                                    }
                                 }
                              }
                              §§goto(addr114);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§pop().stop();
                              }
                              addr125:
                           }
                           §§goto(addr126);
                        }
                        continue;
                     }
                     §§goto(addr145);
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      protected function §2"6§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§[S§.getItemByName("Button_Menu") as §@_§).setComponentVisualState(param1);
         }
         do
         {
            (§[S§.getItemByName("Button_Replay") as §@_§).setComponentVisualState(param1);
            do
            {
               (§[S§.getItemByName("Button_NextLevel") as §@_§).setComponentVisualState(param1);
            }
            while(!(_loc3_ || _loc3_));
            
         }
         while(_loc2_);
         
      }
      
      private function §@!X§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var splash:§]!"§ = null;
         if(!_loc4_)
         {
            if(this.§96§)
            {
               if(_loc5_)
               {
                  this.§96§.stop();
                  try
                  {
                     addr35:
                     this.§96§.removeEventListener(TimerEvent.TIMER,this.§9!k§);
                     if(_loc5_ || _loc2_)
                     {
                        addr63:
                        var _loc2_:int = 0;
                        if(_loc5_)
                        {
                           var _loc3_:* = this.§4"B§;
                           if(!(_loc4_ && this))
                           {
                              loop0:
                              while(§§hasnext(_loc3_,_loc2_))
                              {
                                 §§push(§§newactivation());
                                 loop1:
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                                    while(true)
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          if(§[S§.mClip.contains(splash))
                                          {
                                             if(_loc5_)
                                             {
                                                if(_loc4_ && _loc1_)
                                                {
                                                   break;
                                                }
                                                §[S§.mClip.removeChild(splash);
                                                while(true)
                                                {
                                                }
                                                addr125:
                                             }
                                             §§goto(addr125);
                                          }
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             §§pop().§§slot[1].§;"F§();
                                             if(_loc5_ || _loc3_)
                                             {
                                                if(false)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              addr138:
                              if(!(_loc4_ && this))
                              {
                                 this.§4"B§ = new Vector.<§]!"§>();
                              }
                              do
                              {
                                 this.§0D§();
                              }
                              while(!_loc5_);
                              
                              return;
                              addr166:
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr166);
                  }
                  catch(e:Error)
                  {
                  }
               }
               §§goto(addr35);
            }
            §§goto(addr63);
         }
         §§goto(addr35);
      }
      
      protected function §0D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (§[S§.getItemByName("TextField_BestScore") as §&!>§).setVisibility(false);
            do
            {
               (§[S§.getItemByName("MovieClip_BestScoreStars") as §,y§).setVisibility(false);
               do
               {
                  (§[S§.getItemByName("TextField_NewHighScore") as §&!>§).setVisibility(false);
               }
               while(_loc1_ && _loc2_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      protected function §!!6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§;!V§.§@!§();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && this))
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(!(_loc5_ && this))
               {
                  addr153:
                  §§push(0);
                  if(!_loc6_)
                  {
                     addr170:
                  }
               }
               else
               {
                  addr162:
                  §§push(1);
                  if(_loc6_ || param3)
                  {
                     §§goto(addr170);
                  }
               }
            }
            else
            {
               if("REPLAY" === _loc4_)
               {
                  if(!_loc5_)
                  {
                     §§goto(addr162);
                  }
               }
               else if("MENU" !== _loc4_)
               {
                  addr197:
                  loop7:
                  switch(§§pop())
                  {
                     case 0:
                        §>"2§ = false;
                        close();
                        this.§!!6§();
                        break;
                        addr130:
                        addr120:
                        addr124:
                     case 1:
                        §>"2§ = false;
                        close();
                        loop0:
                        while(true)
                        {
                           §§push(this.§;!V§);
                           addr89:
                           while(true)
                           {
                              §§push(this.§;!V§);
                              addr101:
                              while(true)
                              {
                                 §§push(§§pop().§[!V§());
                                 addr102:
                                 while(true)
                                 {
                                    §§pop().§+"$§(§§pop());
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        break;
                        addr116:
                     case 2:
                        §<!O§.§'N§();
                        loop1:
                        while(_loc6_ || param3)
                        {
                           §>"2§ = false;
                           if(!(_loc5_ && param3))
                           {
                              if(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    while(true)
                                    {
                                       close();
                                       if(!_loc6_)
                                       {
                                          break loop7;
                                       }
                                       if(!(_loc6_ || param1))
                                       {
                                          continue loop1;
                                       }
                                       §§push(this.§;!V§);
                                       if(_loc6_)
                                       {
                                          §§push(this.§;!V§);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop().§ [§());
                                             if(_loc6_)
                                             {
                                                §§pop().§+"$§(§§pop());
                                                if(!_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr44);
                                                         }
                                                         break loop7;
                                                      }
                                                      §§goto(addr116);
                                                   }
                                                   §§goto(addr103);
                                                }
                                                break loop7;
                                             }
                                             §§goto(addr102);
                                          }
                                          §§goto(addr101);
                                       }
                                       §§goto(addr89);
                                       continue loop1;
                                    }
                                    break loop7;
                                    addr44:
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr120);
                           }
                           break loop7;
                        }
                        §§goto(addr124);
                  }
                  return;
                  §§push(3);
               }
               §§goto(addr197);
               if(_loc6_ || param2)
               {
               }
            }
            §§goto(addr197);
         }
         §§goto(addr153);
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.updateLocalization();
            do
            {
               this.updateTextFields();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §&$§.§[!1§.updateTextFields(§[S§,"StateEnd");
         }
      }
      
      public function get isOpen() : Boolean
      {
         return this.§4!K§;
      }
   }
}
