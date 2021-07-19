package §[!i§
{
   import §"n§.§!!G§;
   import §"n§.§<!e§;
   import §&v§.§#!R§;
   import §&v§.§%!I§;
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §0"$§.§"!a§;
   import §0"$§.§+!@§;
   import §0"$§.§6n§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §48§.§1!<§;
   import §48§.§]l§;
   import §;!§.§=-§;
   import §<!F§.§?!`§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import com.angrybirds.§&!"§;
   import each.§8!N§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §1v§ extends §@"§
   {
      
      private static const §'S§:Number = 750;
      
      private static var §case §:Class;
      
      public static const §;`§:Number = 30;
      
      protected static const §>!x§:String = "ScoreLoopCountChannel";
      
      protected static const §#x§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §'S§ = 750;
         }
         loop0:
         while(true)
         {
            §case § = §6!C§;
            loop1:
            while(true)
            {
               §;`§ = 30;
               while(true)
               {
                  §>!x§ = "ScoreLoopCountChannel";
                  while(!(_loc1_ && _loc2_))
                  {
                     if(_loc2_)
                     {
                        §#x§ = "EndScreenEffectChannel";
                        if(_loc2_ || §1v§)
                        {
                           if(!_loc1_)
                           {
                              return;
                           }
                           continue loop0;
                        }
                        continue;
                        continue;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private var §"f§:§0]§;
      
      private var §;!]§:Number;
      
      private var §%!B§:Number = 0.0;
      
      private var §-O§:Number = 0.0;
      
      private var § u§:Boolean = false;
      
      private var §9X§:Timer;
      
      protected var §'2§:Array;
      
      protected var §3=§:§?!`§;
      
      protected var §>8§:Vector.<§?!`§>;
      
      public var mNewScoreCounter:int;
      
      private var §`S§:int;
      
      private var §6!Z§:Boolean;
      
      protected var §7!"§:Boolean;
      
      private var §!"%§:§<!e§;
      
      protected var §?R§:Boolean;
      
      private var §#!O§:§0]§;
      
      protected var §+b§:Boolean;
      
      protected var §?w§:int;
      
      private var §3"$§:§=-§;
      
      private var §%!k§:Boolean;
      
      public function §1v§(param1:§=-§, param2:§#!R§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§'2§ = [];
            loop0:
            while(true)
            {
               this.§!"%§ = new §<!e§();
               while(true)
               {
                  §-!w§ = true;
                  while(_loc3_ || param1)
                  {
                     if(_loc3_)
                     {
                        §@!X§ = false;
                        loop3:
                        while(_loc3_ || this)
                        {
                           §0!T§ = true;
                           loop4:
                           while(true)
                           {
                              super(§1!<§.§0!D§,§]l§.§%!#§,this.§`!K§());
                              loop5:
                              for(; !_loc4_; if(!(_loc3_ || this))
                              {
                                 continue;
                              },§§goto(addr56))
                              {
                                 §@!H§ = param2 as §%!I§;
                                 loop6:
                                 do
                                 {
                                    this.§3"$§ = param1;
                                    loop7:
                                    while(true)
                                    {
                                       §'!c§.§8G§(§>!x§,1,1);
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop7;
                                          addr56:
                                          §'!c§.§8G§(§#x§,3,1);
                                          if(_loc3_)
                                          {
                                             continue loop6;
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                                 while(!_loc3_);
                                 
                                 if(_loc3_)
                                 {
                                    return;
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr95);
      }
      
      protected function §`!K§() : XML
      {
         var _loc1_:XML = §8!N§.§?!c§(§case §);
         return §4!=§.§'!u§(_loc1_);
      }
      
      protected function §8N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            (§@'§.getItemByName("Button_Menu") as §;§).setVisibility(true);
            loop0:
            while(true)
            {
               (§@'§.getItemByName("Button_Replay") as §;§).setVisibility(true);
               while(true)
               {
                  §§push(this.§3"$§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().§@!R§);
                     addr264:
                     addr266:
                     addr273:
                     while(!§§pop().getNextLevelId())
                     {
                        continue loop2;
                     }
                     (§@'§.getItemByName("Button_NextLevel") as §;§).setVisibility(true);
                     (§@'§.getItemByName("Button_CutScene") as §;§).setVisibility(false);
                     continue loop0;
                  }
               }
               §§goto(addr19);
            }
         }
         §§goto(addr156);
      }
      
      protected function §+!q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§'2§);
            while(true)
            {
               §§pop().push(Math.round((§@'§.getItemByName("Button_Menu") as §;§).x));
            }
            addr74:
         }
         loop1:
         do
         {
            §§push(this.§'2§);
            while(_loc1_)
            {
               §§pop().push(Math.round((§@'§.getItemByName("Button_Replay") as §;§).x));
               while(true)
               {
                  §§push(this.§'2§);
                  if(!(_loc1_ || _loc1_))
                  {
                     break;
                  }
                  §§pop().push(Math.round((§@'§.getItemByName("Button_NextLevel") as §;§).x));
                  if(!_loc2_)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr74);
         }
         while(_loc2_);
         
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               §-!w§ = true;
               addr207:
               loop1:
               while(true)
               {
                  this.updateTextFields();
                  loop2:
                  while(true)
                  {
                     this.§+!q§();
                     while(true)
                     {
                        this.§>8§ = new Vector.<§?!`§>();
                        addr147:
                        if(_loc2_ && _loc1_)
                        {
                           continue;
                        }
                        this.mNewScoreCounter = 0;
                        while(_loc1_ || _loc1_)
                        {
                           this.§6!Z§ = false;
                           continue loop0;
                        }
                        while(_loc1_)
                        {
                           §§goto(addr147);
                           §§goto(addr134);
                        }
                        addr134:
                        while(true)
                        {
                           §&!"§.pause();
                           addr158:
                           while(true)
                           {
                              this.§8N§();
                              §§goto(addr145);
                           }
                        }
                        addr145:
                     }
                     addr77:
                     if(_loc1_ || _loc2_)
                     {
                        this.§%!k§ = true;
                        while(!_loc2_)
                        {
                           §#u§.cacheAsBitmap = true;
                           if(_loc2_ && _loc1_)
                           {
                              continue;
                           }
                           addr39:
                           if(!(_loc2_ && _loc1_))
                           {
                              addr46:
                              if(!(_loc1_ || _loc2_))
                              {
                                 while(!_loc2_)
                                 {
                                    this.§7!D§();
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr70:
                                          if(_loc2_ && this)
                                          {
                                             break;
                                          }
                                          §§goto(addr77);
                                       }
                                       §§goto(addr39);
                                    }
                                    while(true)
                                    {
                                       §&!"§.§1!D§.background.§#]§();
                                       addr176:
                                       while(true)
                                       {
                                          §'!c§.§8G§(§>!x§,1,0.8);
                                          §§goto(addr170);
                                       }
                                       §§goto(addr70);
                                    }
                                    §§goto(addr46);
                                 }
                                 loop13:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop1;
                                          }
                                          this.§-O§ = 0;
                                          §§goto(addr89);
                                       }
                                       §§goto(addr176);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§%!B§ = 0;
                                          continue loop13;
                                       }
                                       addr117:
                                    }
                                 }
                                 addr89:
                                 continue loop2;
                              }
                              if(!_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    return;
                                 }
                                 while(true)
                                 {
                                    this.§+b§ = false;
                                    §§goto(addr163);
                                 }
                                 addr170:
                              }
                              §§goto(addr158);
                              §§goto(addr134);
                           }
                           §§goto(addr68);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr184);
      }
      
      private function §7!D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§7!"§ = false;
         }
         while(true)
         {
            this.§6!3§();
            loop1:
            while(true)
            {
               this.§9X§ = new Timer(100);
               while(true)
               {
                  this.§`S§ = 0;
                  while(_loc1_)
                  {
                     this.§9X§.addEventListener(TimerEvent.TIMER,this.§`%§);
                     continue loop1;
                     if(!_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      protected function §;4§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            if(!this.§?R§)
            {
               §@'§.setText(param2.toString(),"TextField_BestScore");
               loop0:
               for(; _loc4_; this.§?w§ = this.§3"$§.§@!R§.getNumStarsForLevel(this.§3"$§.§@!R§.currentLevel,param2),if(!(_loc4_ || this))
               {
                  continue;
               },if(_loc4_ || _loc3_)
               {
                  §§push(this.§?w§);
                  if(_loc4_ || this)
                  {
                     var _loc3_:* = §§pop();
                     if(_loc4_ || _loc3_)
                     {
                        §§push(1);
                        if(_loc4_ || this)
                        {
                           §§push(_loc3_);
                           if(!_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    addr240:
                                    §§push(0);
                                    if(_loc4_)
                                    {
                                       addr295:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             (§@'§.getItemByName("MovieClip_BestScoreStars") as §6n§).§%!"§("OneStar");
                                             addr40:
                                             break;
                                             addr68:
                                          case 1:
                                             (§@'§.getItemByName("MovieClip_BestScoreStars") as §6n§).§%!"§("TwoStar");
                                             if(!(_loc5_ && this))
                                             {
                                                break;
                                             }
                                             break;
                                          case 2:
                                             (§@'§.getItemByName("MovieClip_BestScoreStars") as §6n§).§%!"§("ThreeStar");
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr68);
                                                }
                                                §§goto(addr40);
                                             }
                                       }
                                       §§goto(addr297);
                                       addr295:
                                    }
                                    else
                                    {
                                       addr270:
                                       if(§§pop() === _loc3_)
                                       {
                                          addr272:
                                          §§push(2);
                                          if(_loc5_ && this)
                                          {
                                          }
                                          §§goto(addr295);
                                       }
                                       else
                                       {
                                          §§goto(addr295);
                                          §§push(3);
                                       }
                                       §§goto(addr295);
                                    }
                                 }
                                 else
                                 {
                                    addr258:
                                    §§push(1);
                                    if(_loc5_)
                                    {
                                    }
                                 }
                                 §§goto(addr295);
                              }
                              else
                              {
                                 §§push(2);
                                 if(!_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr255:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§goto(addr258);
                                          }
                                          else
                                          {
                                             §§goto(addr272);
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(_loc4_ || param2)
                                          {
                                             §§goto(addr270);
                                          }
                                          §§goto(addr295);
                                       }
                                       §§goto(addr295);
                                    }
                                    §§goto(addr270);
                                 }
                              }
                              §§goto(addr295);
                           }
                           §§goto(addr255);
                        }
                        §§goto(addr270);
                     }
                     §§goto(addr240);
                  }
                  §§goto(addr295);
               }
               else
               {
                  §§goto(addr183);
               })
               {
                  if(!(_loc5_ && this))
                  {
                     continue;
                  }
                  loop8:
                  while(true)
                  {
                     §§push(§6!!§.singleton);
                     if(_loc4_)
                     {
                        §§push((§§pop() as §4!=§).§?!b§);
                        if(!(_loc5_ && param1))
                        {
                           §§push(this.§3"$§);
                           if(!(_loc5_ && param2))
                           {
                              §§push(§§pop().§@!R§);
                              if(!_loc5_)
                              {
                                 §§push(§§pop().currentLevel);
                                 if(_loc4_ || param2)
                                 {
                                    §§push(param2);
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr182:
                                       §§pop().§@!Q§(§§pop(),§§pop());
                                       while(true)
                                       {
                                          §@'§.setText("New Highscore!","TextField_BestScore");
                                          break loop0;
                                          §§goto(addr182);
                                       }
                                       addr297:
                                       return;
                                       addr183:
                                       addr128:
                                    }
                                    continue;
                                 }
                                 while(true)
                                 {
                                    §§push(param2);
                                    continue loop8;
                                 }
                                 addr194:
                              }
                              while(true)
                              {
                                 §§goto(addr194);
                              }
                              addr193:
                           }
                           while(true)
                           {
                              §§goto(addr193);
                           }
                           addr192:
                        }
                        while(true)
                        {
                           §§goto(addr192);
                        }
                        addr190:
                     }
                     addr187:
                     while(true)
                     {
                        §§goto(addr190);
                        continue loop8;
                     }
                  }
               }
               while(true)
               {
                  if(_loc4_)
                  {
                     if(!(_loc4_ || this))
                     {
                        while(true)
                        {
                           §§push(param1);
                           if(!_loc5_)
                           {
                              §§push(int(§§pop()));
                           }
                           param2 = §§pop();
                           addr205:
                           while(true)
                           {
                              §§goto(addr187);
                           }
                        }
                        addr200:
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr205);
               }
            }
         }
         §§goto(addr200);
      }
      
      protected function §6!3§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:int = (§6!!§.singleton as §4!=§).§?!b§.getScoreForLevel(this.§3"$§.§@!R§.currentLevel);
         §§push(§&!"§.controller.getScore(10));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§?R§ = _loc2_ >= _loc1_;
            if(_loc4_ || this)
            {
               addr50:
               this.§;4§(_loc2_,_loc1_);
            }
            var _loc3_:int = (§6!!§.singleton as §4!=§).§?!b§.§9"+§(this.§3"$§.§@!R§.currentLevel,_loc2_);
            if(!_loc5_)
            {
               (§@'§.getItemByName("MovieClip_NewHighScoreBadge") as §6n§).setVisibility(false);
               while(true)
               {
                  (§@'§.getItemByName("MovieClip_StarLeft") as §6n§).mClip.gotoAndStop("UnLit");
                  §§goto(addr134);
               }
            }
            addr134:
            while(true)
            {
               (§@'§.getItemByName("MovieClip_StarCenter") as §6n§).mClip.gotoAndStop("UnLit");
               do
               {
                  (§@'§.getItemByName("MovieClip_StarRight") as §6n§).mClip.gotoAndStop("UnLit");
               }
               while(!_loc4_);
               
               if(!_loc5_)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      protected function §>!4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§?R§)
            {
               if(_loc2_)
               {
                  §'!c§.§3!f§("Hiscore_Badge",§#x§);
               }
            }
            else
            {
               (§@'§.getItemByName("TextField_BestScore") as §+!@§).setVisibility(true);
               loop0:
               while(true)
               {
                  if(!(_loc1_ && this))
                  {
                     (§@'§.getItemByName("MovieClip_BestScoreStars") as §6n§).setVisibility(true);
                     while(!(_loc1_ && _loc1_))
                     {
                        if(_loc1_ && _loc1_)
                        {
                           this.§]!U§();
                        }
                        else
                        {
                           addr112:
                        }
                        (§@'§.getItemByName("MovieClip_BestScoreText") as §+!@§).setVisibility(true);
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr20);
                              }
                              break loop0;
                           }
                           continue loop0;
                        }
                     }
                     addr20:
                     return;
                  }
               }
               (§@'§.getItemByName("MovieClip_BestScoreStars") as §6n§).setVisibility(false);
               §§goto(addr112);
               addr121:
            }
            (§@'§.getItemByName("TextField_NewHighScore") as §+!@§).setVisibility(true);
            §§goto(addr121);
         }
         §§goto(addr112);
      }
      
      protected function §]!U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§%!B§ = 0;
            do
            {
               this.§-O§ = 0;
               do
               {
                  this.§;!]§ = §;`§;
               }
               while(_loc2_);
               
            }
            while(!_loc1_);
            
         }
      }
      
      private function §&y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).x = (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).x - this.§%!B§;
            loop0:
            while(true)
            {
               (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).y = (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).y - this.§-O§;
               loop1:
               while(true)
               {
                  if(this.§;!]§ > 0)
                  {
                     loop9:
                     while(true)
                     {
                        §§push(this);
                        §§push(Math.random() - 0.5);
                        if(!_loc3_)
                        {
                           §§push(this.§;!]§);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop() / §;`§);
                           }
                           §§push(§§pop() * §§pop());
                           if(_loc2_)
                           {
                              §§push(§§pop() * 20);
                           }
                        }
                        §§pop().§%!B§ = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(this);
                           §§push(Math.random() - 0.5);
                           if(!_loc3_)
                           {
                              §§push(this.§;!]§);
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(§§pop() / §;`§);
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc3_)
                              {
                                 §§push(§§pop() * 20);
                              }
                           }
                           §§pop().§-O§ = §§pop();
                           loop6:
                           while(true)
                           {
                              (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).x = (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).x + this.§%!B§;
                              loop7:
                              while(true)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).y = (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).y + this.§-O§;
                                    while(!_loc2_)
                                    {
                                       continue loop6;
                                    }
                                    addr112:
                                    if(!_loc3_)
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§;!]§);
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§push(param1);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() / 10);
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          §§pop().§;!]§ = §§pop();
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop4;
                                             }
                                             continue loop0;
                                             addr79:
                                          }
                                          if(_loc2_ || _loc3_)
                                          {
                                             if(_loc2_ || _loc2_)
                                             {
                                                if(_loc2_ || param1)
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             continue loop7;
                                          }
                                          §§goto(addr112);
                                       }
                                       addr116:
                                       return;
                                       addr28:
                                       addr74:
                                    }
                                    continue loop1;
                                 }
                                 continue loop9;
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     this.§%!B§ = 0;
                  }
                  while(true)
                  {
                     this.§-O§ = 0;
                     §§goto(addr79);
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      private function §`%§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = this.§3"$§.§@!R§.getLevelForId(this.§3"$§.§@!R§.currentLevel).scoreGold;
         var _loc5_:Number = this.§3"$§.§@!R§.getLevelForId(this.§3"$§.§@!R§.currentLevel).scoreSilver;
         if(!_loc9_)
         {
            if((§@'§.getItemByName("MovieClip_StarLeft") as §6n§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§!"%§);
               loop0:
               for(; _loc10_; §§push(this.§!"%§),if(!(_loc10_ || param1))
               {
                  continue;
               },if(_loc10_ || _loc2_)
               {
                  §§goto(addr526);
               },§§goto(addr863))
               {
                  §§push(§§pop().getValue());
                  while(true)
                  {
                     §§push(_loc5_);
                     addr697:
                     addr526:
                     while(true)
                     {
                        §§push(§§pop() >= §§pop());
                        addr698:
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr701:
                                    while(true)
                                    {
                                       §§push((§@'§.getItemByName("MovieClip_StarCenter") as §6n§).mClip.currentLabel == "UnLit");
                                    }
                                 }
                                 addr700:
                              }
                              while(true)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       continue loop0;
                                    }
                                    if(!_loc9_)
                                    {
                                       §'!c§.§3!f§("Hiscore_Star_Splash2",§#x§);
                                       (§@'§.getItemByName("MovieClip_StarCenter") as §6n§).mClip.gotoAndStop("Lit");
                                       addr650:
                                       §§push(Number((§@'§.getItemByName("MovieClip_StarCenter") as §6n§).x + (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).x));
                                       if(_loc10_ || param1)
                                       {
                                          _loc2_ = §§pop();
                                          addr617:
                                          §§push(Number((§@'§.getItemByName("MovieClip_StarCenter") as §6n§).y + (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).y));
                                          if(!_loc9_)
                                          {
                                             if(!(_loc9_ && this))
                                             {
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   _loc3_ = §§pop();
                                                   this.§3=§ = new §?!`§(§6!!§.§+g§,§6!!§.§=!?§,_loc2_,_loc3_,§?!`§.§^"§);
                                                   §@'§.mClip.addChild(this.§3=§);
                                                   this.§>8§.push(this.§3=§);
                                                   addr576:
                                                   if(_loc10_)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         addr807:
                                                         if(!_loc9_)
                                                         {
                                                            (§@'§.getItemByName("MovieClip_StarLeft") as §6n§).mClip.gotoAndStop("Lit");
                                                            loop38:
                                                            while(true)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  addr778:
                                                                  §§push(Number((§@'§.getItemByName("MovieClip_StarLeft") as §6n§).x + (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).x));
                                                                  if(!_loc9_)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     addr781:
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        addr761:
                                                                        _loc3_ = Number((§@'§.getItemByName("MovieClip_StarLeft") as §6n§).y + (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).y);
                                                                        this.§3=§ = new §?!`§(§6!!§.§+g§,§6!!§.§=!?§,_loc2_,_loc3_,§?!`§.§8L§);
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc10_ || _loc2_)
                                                                        {
                                                                           §@'§.mClip.addChild(this.§3=§);
                                                                           this.§>8§.push(this.§3=§);
                                                                           addr708:
                                                                           if(!(_loc9_ && this))
                                                                           {
                                                                              §§goto(addr898);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr890:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §'!c§.§3!f§("Hiscore_Count",§>!x§,999,-1,100);
                                                                           }
                                                                           addr722:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §'!c§.§3!f§("Hiscore_Star_Splash1",§#x§);
                                                                           addr880:
                                                                           addr863:
                                                                           addr868:
                                                                           this.§9X§.delay = §'S§;
                                                                           addr874:
                                                                           this.§!"%§.§[@§(§&!"§.controller.getScore(10));
                                                                           addr868:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§!"%§);
                                                                              break loop0;
                                                                           }
                                                                        }
                                                                        addr762:
                                                                     }
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     break loop38;
                                                                  }
                                                                  addr847:
                                                               }
                                                               §§goto(addr868);
                                                            }
                                                            loop34:
                                                            while(true)
                                                            {
                                                               addr817:
                                                               while(true)
                                                               {
                                                                  this.§#!O§ = §'^§.§2Z§.§!!f§(this,{"mNewScoreCounter":this.§!"%§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                                  addr833:
                                                                  §§push(this.§#!O§);
                                                                  while(true)
                                                                  {
                                                                     §§pop().onComplete = this.§7,§;
                                                                     addr816:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§#!O§);
                                                                        if(!_loc10_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§pop().play();
                                                                        §§goto(addr807);
                                                                     }
                                                                  }
                                                                  continue loop34;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr816);
                                                      }
                                                      §§goto(addr898);
                                                   }
                                                   §§goto(addr722);
                                                   addr601:
                                                   addr634:
                                                   addr587:
                                                }
                                                addr855:
                                                §§push(2);
                                                do
                                                {
                                                   §§push(Number(§§pop() * §§pop()));
                                                   §§push(0);
                                                }
                                                while(!(_loc10_ || _loc3_));
                                                
                                                if(§§pop() <= §§pop())
                                                {
                                                   addr845:
                                                   §§goto(addr847);
                                                   §§push(Number(1));
                                                }
                                                §§goto(addr817);
                                             }
                                             _loc6_ = §§pop();
                                             §§goto(addr836);
                                             §§push(_loc4_);
                                             addr859:
                                          }
                                          §§goto(addr778);
                                          addr658:
                                       }
                                       §§goto(addr836);
                                       addr687:
                                       addr668:
                                    }
                                    §§goto(addr874);
                                    addr255:
                                    if(_loc9_ && this)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop());
                                    if(!(_loc9_ && param1))
                                    {
                                       if(!_loc10_)
                                       {
                                          continue loop4;
                                       }
                                       if(§§pop())
                                       {
                                          loop26:
                                          while(_loc10_ || param1)
                                          {
                                             §§pop();
                                             loop27:
                                             while(true)
                                             {
                                                if(_loc10_)
                                                {
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§push(this.§7!"§);
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         if(!(_loc10_ || _loc3_))
                                                         {
                                                            continue loop26;
                                                         }
                                                         if(_loc10_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  addr226:
                                                                  §§push(!§§pop());
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr228:
                                                                     if(_loc9_ && _loc2_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           (§@'§.getItemByName("MovieClip_NewHighScoreBadge") as §6n§).setVisibility(false);
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §@'§.getItemByName("TextField_NewHighScore").setVisibility(false);
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc10_ || _loc2_))
                                                                                          {
                                                                                             continue loop27;
                                                                                          }
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§"f§ = §'^§.§2Z§.§!!f§((§@'§.getItemByName("MovieClip_NewHighScoreBadge") as §6n§).mClip,{
                                                                                                   "scaleX":1,
                                                                                                   "scaleY":1
                                                                                                },{
                                                                                                   "scaleX":7,
                                                                                                   "scaleY":7
                                                                                                },0.1);
                                                                                                if(!(_loc9_ && _loc2_))
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         if(!(_loc9_ && _loc2_))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§"f§);
                                                                                                               loop22:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().onComplete = this.§>!4§;
                                                                                                                  loop23:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              §§push(this.§"f§);
                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                              {
                                                                                                                                 §§pop().play();
                                                                                                                                 if(!(_loc10_ || this))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           §§goto(addr859);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr446:
                                                                                                                           §§push(Number((§@'§.getItemByName("MovieClip_StarRight") as §6n§).y + (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).y));
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc10_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                 {
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    addr413:
                                                                                                                                    if(_loc10_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       this.§3=§ = new §?!`§(§6!!§.§+g§,§6!!§.§=!?§,_loc2_,_loc3_,§?!`§.§1m§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §@'§.mClip.addChild(this.§3=§);
                                                                                                                                          addr355:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      this.§>8§.push(this.§3=§);
                                                                                                                                                      break loop19;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr687);
                                                                                                                                                }
                                                                                                                                                §§goto(addr576);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(_loc10_)
                                                                                                                                                {
                                                                                                                                                   (§@'§.getItemByName("MovieClip_StarRight") as §6n§).mClip.gotoAndStop("Lit");
                                                                                                                                                   if(_loc9_ && _loc2_)
                                                                                                                                                   {
                                                                                                                                                      while(_loc10_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push((§@'§.getItemByName("MovieClip_StarRight") as §6n§).mClip.currentLabel == "UnLit");
                                                                                                                                                         break loop27;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr781);
                                                                                                                                                      addr562:
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc9_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(Number((§@'§.getItemByName("MovieClip_StarRight") as §6n§).x + (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).x));
                                                                                                                                                      for(; !(_loc9_ && _loc2_); §§goto(addr446))
                                                                                                                                                      {
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            _loc2_ = §§pop();
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr761);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr650);
                                                                                                                                                      addr436:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr762);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §'!c§.§3!f§("Hiscore_Star_Splash3",§#x§);
                                                                                                                                                   §§goto(addr486);
                                                                                                                                                }
                                                                                                                                                addr486:
                                                                                                                                                addr506:
                                                                                                                                             }
                                                                                                                                             §§goto(addr781);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr380:
                                                                                                                                    }
                                                                                                                                    §§goto(addr833);
                                                                                                                                 }
                                                                                                                                 §§goto(addr836);
                                                                                                                              }
                                                                                                                              §§goto(addr617);
                                                                                                                           }
                                                                                                                           §§goto(addr436);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        loop25:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           addr237:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              (§@'§.getItemByName("MovieClip_NewHighScoreBadge") as §6n§).setVisibility(true);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    §@'§.getItemByName("TextField_NewHighScore").setVisibility(true);
                                                                                                                                    continue loop25;
                                                                                                                                 }
                                                                                                                                 §§goto(addr681);
                                                                                                                              }
                                                                                                                              break loop23;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr601);
                                                                                                                     }
                                                                                                                     §§goto(addr874);
                                                                                                                  }
                                                                                                                  §§goto(addr898);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop19;
                                                                                                            addr86:
                                                                                                         }
                                                                                                         §§goto(addr880);
                                                                                                      }
                                                                                                      §§goto(addr634);
                                                                                                   }
                                                                                                   §§goto(addr355);
                                                                                                }
                                                                                                §§goto(addr898);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§+b§ = true;
                                                                                                      §§goto(addr506);
                                                                                                   }
                                                                                                   addr503:
                                                                                                }
                                                                                                §§goto(addr898);
                                                                                             }
                                                                                             §§goto(addr380);
                                                                                          }
                                                                                       }
                                                                                       addr898:
                                                                                       var _loc7_:*;
                                                                                       §§push((_loc7_ = this).§`S§);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                       }
                                                                                       var _loc8_:* = §§pop();
                                                                                       if(_loc10_ || _loc3_)
                                                                                       {
                                                                                          _loc7_.§`S§ = _loc8_;
                                                                                       }
                                                                                       return;
                                                                                       addr348:
                                                                                    }
                                                                                    §§goto(addr708);
                                                                                 }
                                                                                 §§goto(addr668);
                                                                              }
                                                                              §§goto(addr413);
                                                                           }
                                                                           §§goto(addr898);
                                                                        }
                                                                        §§goto(addr237);
                                                                        §§goto(addr228);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               addr559:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  addr560:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           §§goto(addr562);
                                                                        }
                                                                        addr561:
                                                                     }
                                                                     addr501:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§push(this.§6!Z§);
                                                                           break loop26;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr503);
                                                            }
                                                            §§goto(addr561);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(!_loc10_)
                                                            {
                                                               continue loop26;
                                                            }
                                                            §§goto(addr255);
                                                         }
                                                         continue loop8;
                                                         addr252:
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   §§goto(addr348);
                                                }
                                                addr297:
                                                while(true)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      §§goto(addr252);
                                                      §§push(this.§?R§);
                                                   }
                                                   addr306:
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(_loc10_ || this)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§6!Z§ = true;
                                                                  §§goto(addr332);
                                                               }
                                                               addr329:
                                                            }
                                                            §§goto(addr845);
                                                         }
                                                         §§goto(addr658);
                                                      }
                                                      §§goto(addr587);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr466);
                                             }
                                             while(true)
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§goto(addr501);
                                                }
                                                else
                                                {
                                                   §§goto(addr700);
                                                }
                                             }
                                             §§goto(addr701);
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                this.§9X§.stop();
                                                §§goto(addr297);
                                             }
                                             §§goto(addr306);
                                             §§goto(addr273);
                                          }
                                          addr273:
                                       }
                                       §§goto(addr235);
                                    }
                                    §§goto(addr560);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     §§push(§§pop().getValue());
                     if(!(_loc10_ || this))
                     {
                        continue;
                     }
                     if(!(_loc9_ && _loc3_))
                     {
                        if(_loc10_)
                        {
                           §§push(_loc4_);
                           if(_loc10_ || param1)
                           {
                              addr854:
                              if(!(_loc9_ && _loc2_))
                              {
                                 §§goto(addr559);
                                 §§push(§§pop() >= §§pop());
                              }
                              §§goto(addr855);
                              §§push(§§pop() / §§pop());
                           }
                           else
                           {
                              §§goto(addr697);
                           }
                           §§goto(addr698);
                        }
                        addr853:
                        §§goto(addr854);
                        §§push(_loc4_);
                     }
                     §§goto(addr845);
                  }
               }
               while(true)
               {
                  §§goto(addr853);
                  §§goto(addr868);
               }
            }
            §§goto(addr890);
         }
         §§goto(addr329);
      }
      
      private function §7,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'!c§.§;! §(§>!x§);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§?!`§ = null;
         if(!_loc6_)
         {
            §@'§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         }
         for each(_loc2_ in this.§>8§)
         {
            if(_loc5_)
            {
               _loc2_.update(param1);
            }
         }
         if(_loc5_ || param1)
         {
            if(this.§;!]§ >= 0)
            {
               if(!_loc6_)
               {
                  this.§&y§(param1);
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§1!8§();
            loop0:
            while(true)
            {
               this.§;!]§ = 0;
               loop1:
               while(true)
               {
                  this.mNewScoreCounter = 0;
                  while(true)
                  {
                     §§push(this.§#!O§);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§#!O§);
                              addr158:
                              while(true)
                              {
                                 §§pop().stop();
                                 addr159:
                                 while(true)
                                 {
                                    this.§#!O§ = null;
                                    addr149:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                           addr156:
                        }
                        loop4:
                        while(true)
                        {
                           §§push(this.§"f§);
                           if(!(_loc2_ && _loc1_))
                           {
                              if(!§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §'!c§.§;! §(§>!x§);
                                    addr108:
                                    while(true)
                                    {
                                       if(!(_loc2_ && this))
                                       {
                                          this.§2!§(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                          while(true)
                                          {
                                             if(_loc2_ && _loc1_)
                                             {
                                                continue loop6;
                                             }
                                             if(!(_loc1_ || this))
                                             {
                                                break;
                                             }
                                             if(!_loc2_)
                                             {
                                                §@'§.setText("0","TextField_LevelEndScore");
                                                continue;
                                             }
                                             §§goto(addr156);
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                              while(_loc1_)
                              {
                                 while(true)
                                 {
                                    §§push(this.§"f§);
                                 }
                                 §§goto(addr108);
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              §§pop().stop();
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr158);
                  }
               }
            }
         }
         §§goto(addr134);
      }
      
      protected function §2!§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            (§@'§.getItemByName("Button_Menu") as §;§).setComponentVisualState(param1);
         }
         do
         {
            (§@'§.getItemByName("Button_Replay") as §;§).setComponentVisualState(param1);
            do
            {
               (§@'§.getItemByName("Button_NextLevel") as §;§).setComponentVisualState(param1);
            }
            while(_loc3_ && _loc2_);
            
         }
         while(_loc3_ && param1);
         
      }
      
      private function §1!8§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var splash:§?!`§ = null;
         if(!(_loc4_ && _loc1_))
         {
            if(this.§9X§)
            {
               if(!_loc4_)
               {
                  this.§9X§.stop();
                  try
                  {
                     addr40:
                     this.§9X§.removeEventListener(TimerEvent.TIMER,this.§`%§);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§goto(addr68);
                     }
                     §§goto(addr173);
                  }
                  catch(e:Error)
                  {
                  }
               }
               §§goto(addr40);
            }
            addr68:
            var _loc2_:int = 0;
            if(!_loc4_)
            {
               var _loc3_:* = this.§>8§;
               if(_loc5_ || _loc3_)
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
                           addr111:
                           while(true)
                           {
                              if(!§@'§.mClip.contains(splash))
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                                 §@'§.mClip.removeChild(splash);
                                 addr123:
                                 while(_loc5_)
                                 {
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr138);
               }
               while(true)
               {
                  §§goto(addr94);
               }
            }
            addr138:
            if(_loc5_ || this)
            {
               this.§>8§ = new Vector.<§?!`§>();
               do
               {
                  this.§'!z§();
               }
               while(!_loc5_);
               
               addr173:
            }
            return;
         }
         §§goto(addr40);
      }
      
      protected function §'!z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            (§@'§.getItemByName("TextField_BestScore") as §+!@§).setVisibility(false);
            while(true)
            {
               (§@'§.getItemByName("MovieClip_BestScoreStars") as §6n§).setVisibility(false);
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            (§@'§.getItemByName("TextField_NewHighScore") as §+!@§).setVisibility(false);
            if(_loc2_ || this)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §9!C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3"$§.§[H§();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(!_loc6_)
               {
                  §§push(0);
                  if(_loc6_)
                  {
                     addr195:
                  }
               }
               else
               {
                  addr161:
                  §§push(1);
                  if(!_loc5_)
                  {
                  }
               }
            }
            else
            {
               if("CUTSCENE" === _loc4_)
               {
                  if(!(_loc6_ && param2))
                  {
                     §§goto(addr161);
                  }
               }
               else if("REPLAY" === _loc4_)
               {
                  if(_loc5_)
                  {
                     addr170:
                     §§push(2);
                     if(!(_loc6_ && this))
                     {
                        §§goto(addr200);
                     }
                     else
                     {
                        §§goto(addr195);
                     }
                  }
               }
               else if("MENU" !== _loc4_)
               {
                  addr200:
                  loop5:
                  switch(§§pop())
                  {
                     case 0:
                     case 1:
                        §-!w§ = false;
                        close();
                        this.§9!C§();
                        break;
                        addr134:
                        addr124:
                        addr128:
                     case 2:
                        §-!w§ = false;
                        close();
                        loop0:
                        while(_loc5_ || param3)
                        {
                           §§push(this.§3"$§);
                           while(true)
                           {
                              §§push(this.§3"$§);
                              addr79:
                              while(true)
                              {
                                 §§push(§§pop().§=!2§());
                                 addr80:
                                 while(true)
                                 {
                                    §§pop().§=!V§(§§pop());
                                    if(_loc5_ || param1)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       if(!_loc6_)
                                       {
                                          break loop5;
                                       }
                                       §§goto(addr134);
                                    }
                                    break loop5;
                                 }
                              }
                           }
                        }
                        §§goto(addr124);
                        addr120:
                        addr106:
                     case 3:
                        §'!c§.§&j§();
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              §-!w§ = false;
                              if(_loc5_ || param2)
                              {
                                 if(_loc5_ || this)
                                 {
                                    while(true)
                                    {
                                       close();
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(this.§3"$§);
                                          if(_loc5_)
                                          {
                                             §§push(this.§3"$§);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop().§@y§());
                                                if(!_loc6_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr80);
                                             }
                                             §§goto(addr79);
                                          }
                                          §§goto(addr77);
                                       }
                                       break loop5;
                                    }
                                    break;
                                 }
                                 §§goto(addr128);
                              }
                              break;
                           }
                           §§goto(addr120);
                           §§goto(addr106);
                        }
                  }
                  return;
                  §§push(4);
               }
               §§goto(addr200);
               if(_loc5_)
               {
                  §§goto(addr195);
               }
            }
            §§goto(addr200);
         }
         §§goto(addr170);
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.updateLocalization();
            do
            {
               this.updateTextFields();
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §!!G§.§2Z§.updateTextFields(§@'§,"StateEnd");
         }
      }
      
      public function get isOpen() : Boolean
      {
         return this.§%!k§;
      }
   }
}
