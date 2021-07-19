package §<!U§
{
   import § !+§.§0Z§;
   import § !W§.§@!?§;
   import § ;§.§3!$§;
   import § ;§.§4N§;
   import §!J§.§[&§;
   import §"!+§.§6!7§;
   import §%!$§.§=m§;
   import §&! §.§3!§;
   import §+?§.§,!N§;
   import §+?§.§@]§;
   import §+a§.§8!I§;
   import §2e§.§<U§;
   import §3o§.§;!=§;
   import §4!6§.§,Y§;
   import §8!8§.§&Q§;
   import §8!8§.§+!M§;
   import §8!8§.§1!-§;
   import §8!8§.§4!C§;
   import §<!+§.§[!!§;
   import §?w§.§!&§;
   import §@R§.§<d§;
   import §@R§.§]^§;
   import §]2§.§[4§;
   import §]C§.§5z§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §^!§ extends §]u§
   {
      
      public static const §`O§:String = "LevelEndState3";
      
      public static const §6=§:Number = 30;
      
      private static const §#!H§:String = "ScoreLoopCountChannel";
      
      private static const §7Y§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`O§ = "LevelEndState3";
         }
         while(true)
         {
            §6=§ = 30;
            while(_loc1_)
            {
               §#!H§ = "ScoreLoopCountChannel";
               while(_loc1_)
               {
                  §7Y§ = "EndScreenEffectChannel";
                  if(_loc1_ || _loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private var §3&§:§3!$§;
      
      private var §@!§:Number;
      
      private var §"!P§:Number;
      
      private var §,+§:Number;
      
      private var §4x§:Boolean = false;
      
      private var §><§:Timer;
      
      private var §+W§:§<U§;
      
      private var §%l§:§@!?§;
      
      private var §]!,§:Vector.<§@!?§>;
      
      public var mNewScoreCounter:int;
      
      private var §]h§:int;
      
      private var §+!H§:Boolean;
      
      private var §8T§:§3!§;
      
      private var §&M§:Boolean;
      
      private var §^!S§:§3!$§;
      
      public function §^!§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§8T§ = new §3!§();
            do
            {
               super(param1,param2);
            }
            while(!_loc4_);
            
         }
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            addr37:
            addr54:
            addr67:
            while(true)
            {
               §"c§ = new §,!N§(this);
               continue loop0;
            }
            var _loc1_:§1!-§ = §"c§.getItemByName("TextField_LevelCompleted") as §1!-§;
            if(!(_loc3_ && _loc1_))
            {
               _loc1_.setText(§6!7§.getText("Text_Level_Completed"));
            }
            loop3:
            do
            {
               this.§+W§ = new §<U§(0,0,0,0);
               loop4:
               while(true)
               {
                  §"c§.mMovieClip.addChildAt(this.§+W§,§"c§.mMovieClip.numChildren - 1);
                  do
                  {
                     this.§]!,§ = new Vector.<§@!?§>();
                     do
                     {
                        §=m§.§,!1§(§#!H§,1,1);
                        continue loop4;
                     }
                     while(_loc3_);
                     
                  }
                  while(!(_loc2_ || _loc2_));
                  
                  continue loop3;
               }
            }
            while(_loc3_ && _loc3_);
            
            return;
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.activate();
            if(!(_loc3_ && _loc2_))
            {
               §§push(§0Z§.§4J§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     addr42:
                     if(!_loc3_)
                     {
                        addr39:
                        §§push(§0Z§.§4J§);
                     }
                     var _loc1_:int = 0;
                     if(_loc2_)
                     {
                        this.mNewScoreCounter = 0;
                        loop0:
                        while(true)
                        {
                           this.§+!H§ = false;
                           loop1:
                           while(true)
                           {
                              §=m§.playSound("LevelCompletedTheme1");
                              while(true)
                              {
                                 this.§+W§.§9>§(0.7);
                                 loop3:
                                 for(; _loc2_ || this; if(_loc3_ && _loc3_)
                                 {
                                    continue;
                                 },§§goto(addr47))
                                 {
                                    this.§]s§();
                                    while(true)
                                    {
                                       (§"c§.getItemByName("Button_CutScene") as §+!M§).setVisibility(§[!!§.§+i§());
                                       loop5:
                                       while(!(_loc3_ && _loc3_))
                                       {
                                          while(true)
                                          {
                                             if(§[!!§.§7!F§ == "1-3")
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   (§"c§.getItemByName("Button_Next") as §+!M§).setVisibility(false);
                                                }
                                             }
                                             else
                                             {
                                                (§"c§.getItemByName("Button_Next") as §+!M§).setVisibility(true);
                                                if(_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             if(_loc2_ || _loc3_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop5;
                                          }
                                          return;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr42);
               }
               §§pop().start();
               §§goto(addr42);
            }
            §§goto(addr39);
         }
         §§goto(addr42);
      }
      
      private function §]s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§=!B§();
            loop0:
            do
            {
               this.§><§ = new Timer(100);
               while(true)
               {
                  this.§]h§ = 0;
                  while(_loc1_)
                  {
                     this.§><§.addEventListener(TimerEvent.TIMER,this.§8!=§);
                     do
                     {
                        this.§><§.start();
                     }
                     while(_loc2_);
                     
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc2_);
            
         }
      }
      
      private function §=!B§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc1_:* = Number(§,l§.§3!,§.§=!V§(§[!!§.§7!F§));
         var _loc2_:Number = (§[&§.§&#§ as §5z§).getScore();
         if(_loc5_ || _loc2_)
         {
            this.§&M§ = _loc2_ > _loc1_;
            loop0:
            while(!this.§&M§)
            {
               §"c§.setText(§6!7§.getText("Text_Best") + " " + _loc1_.toString(),"TextField_BestScore");
               loop1:
               while(true)
               {
                  if(_loc6_)
                  {
                     while(_loc6_)
                     {
                        loop6:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                              break loop0;
                           }
                           addr173:
                           while(true)
                           {
                              §,l§.§3!,§.§!I§(§[!!§.§7!F§,_loc1_);
                              continue loop6;
                           }
                        }
                        §"c§.setText(§6!7§.getText("Text_New_Highscore"),"TextField_BestScore");
                     }
                  }
                  else
                  {
                     addr136:
                  }
                  if(_loc6_)
                  {
                     continue loop0;
                  }
                  §§push(§[!!§.§``§(§[!!§.§7!F§,_loc1_));
                  if(_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc3_ = §§pop();
                  if(_loc6_ && _loc2_)
                  {
                     continue;
                  }
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     var _loc4_:* = §§pop();
                     if(!_loc6_)
                     {
                        §§push(1);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(_loc4_);
                           if(_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(0);
                                    if(_loc5_ || _loc3_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr236:
                                    §§push(1);
                                    if(!_loc5_)
                                    {
                                       addr243:
                                       if(§§pop() === _loc4_)
                                       {
                                          addr245:
                                          §§push(2);
                                          if(!_loc5_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                 }
                                 addr254:
                                 loop9:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       (§"c§.getItemByName("MovieClip_BestScoreStars") as §&Q§).§7!-§("OneStar");
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          addr54:
                                          break loop1;
                                       }
                                       break;
                                    case 1:
                                       (§"c§.getItemByName("MovieClip_BestScoreStars") as §&Q§).§7!-§("TwoStar");
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          break loop1;
                                       }
                                       break loop1;
                                    case 2:
                                       (§"c§.getItemByName("MovieClip_BestScoreStars") as §&Q§).§7!-§("ThreeStar");
                                       if(!_loc6_)
                                       {
                                          if(true)
                                          {
                                             break loop1;
                                          }
                                          §§goto(addr54);
                                       }
                                       do
                                       {
                                          (§"c§.getItemByName("MovieClip_StarLeft") as §&Q§).mClip.gotoAndStop("UnLit");
                                          break loop9;
                                       }
                                       while(_loc6_ && _loc3_);
                                       
                                       return;
                                       addr335:
                                 }
                                 continue loop3;
                                 addr253:
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc5_ || _loc2_)
                                 {
                                    addr225:
                                    §§push(_loc4_);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§goto(addr236);
                                          }
                                          §§goto(addr245);
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(_loc5_)
                                          {
                                             §§goto(addr243);
                                          }
                                       }
                                       §§goto(addr253);
                                    }
                                    §§goto(addr243);
                                 }
                              }
                           }
                           §§goto(addr243);
                        }
                        §§goto(addr225);
                     }
                     §§goto(addr236);
                  }
                  §§goto(addr254);
               }
               (§"c§.getItemByName("MovieClip_NewHighScoreBadge") as §&Q§).setVisibility(false);
               §§goto(addr335);
            }
            while(true)
            {
               §§push(_loc2_);
               if(_loc5_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
               _loc1_ = §§pop();
               §§goto(addr173);
            }
         }
         §§goto(addr136);
      }
      
      private function §,#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(!this.§&M§)
            {
               (§"c§.getItemByName("TextField_BestScore") as §1!-§).setVisibility(true);
               loop0:
               for(; !_loc2_; (§"c§.getItemByName("MovieClip_BestScoreStars") as §&Q§).setVisibility(true),if(!(_loc1_ || _loc1_))
               {
                  continue;
               },if(_loc1_)
               {
                  addr24:
                  return;
                  addr45:
               }
               else
               {
                  §§goto(addr121);
               })
               {
                  if(_loc1_ || _loc2_)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        if(!(_loc2_ && this))
                        {
                           continue;
                        }
                        addr148:
                        §=m§.§+f§(§7Y§);
                        loop1:
                        while(true)
                        {
                           §=m§.playSound("Hiscore_Badge",§7Y§);
                           loop2:
                           while(true)
                           {
                              §"c§.setText(§6!7§.getText("Text_New_Highscore"),"TextField_NewHighScore");
                              continue loop1;
                              addr111:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                           }
                           (§"c§.getItemByName("MovieClip_BestScoreStars") as §&Q§).setVisibility(false);
                           addr102:
                           this.§>Y§();
                           break loop0;
                        }
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr102);
               }
               §§goto(addr24);
            }
            §§goto(addr148);
         }
         §§goto(addr45);
      }
      
      private function §>Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"!P§ = (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).x;
            while(true)
            {
               this.§,+§ = (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).y;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§@!§ = §6=§;
                     if(_loc2_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      private function §3W§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§@!§ <= 0)
            {
               loop5:
               while(true)
               {
                  (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).x = this.§"!P§;
                  loop2:
                  while(true)
                  {
                     (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).y = this.§,+§;
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§@!§);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(param1);
                              if(!(_loc2_ && param1))
                              {
                                 §§push(§§pop() / 10);
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§pop().§@!§ = §§pop();
                           if(!_loc2_)
                           {
                              addr49:
                              if(_loc2_ && _loc3_)
                              {
                                 while(true)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(§"c§.getItemByName("Container_LevelEndStripe") as §4!C§);
                                          §§push(this.§,+§);
                                          if(_loc3_ || param1)
                                          {
                                             §§push(Math.random() * (this.§@!§ / §6=§));
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() * 20);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().y = §§pop();
                                          while(true)
                                          {
                                             if(_loc3_ || _loc2_)
                                             {
                                                continue loop4;
                                             }
                                             continue loop2;
                                          }
                                          continue;
                                          addr95:
                                       }
                                       continue loop5;
                                    }
                                    continue loop3;
                                 }
                                 addr128:
                              }
                              return;
                           }
                           §§goto(addr95);
                        }
                     }
                  }
               }
               addr162:
            }
            else
            {
               §§push(§"c§.getItemByName("Container_LevelEndStripe") as §4!C§);
               §§push(this.§"!P§);
               if(!_loc2_)
               {
                  §§push(Math.random() * (this.§@!§ / §6=§));
                  if(_loc3_)
                  {
                     §§push(§§pop() * 20);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().x = §§pop();
            }
            §§goto(addr128);
         }
         §§goto(addr162);
      }
      
      private function §8!=§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = §[!!§.§1L§(§[!!§.§7!F§).§ !§;
         var _loc5_:Number = §[!!§.§1L§(§[!!§.§7!F§).§<!D§;
         if(_loc10_)
         {
            if((§"c§.getItemByName("MovieClip_StarLeft") as §&Q§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§8T§);
               loop0:
               while(!(_loc9_ && this))
               {
                  §§push(§§pop().getValue());
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     addr642:
                     addr770:
                     while(_loc10_ || _loc3_)
                     {
                        §§push(§§pop() >= §§pop());
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
                                    while(true)
                                    {
                                       §§push((§"c§.getItemByName("MovieClip_StarCenter") as §&Q§).mClip.currentLabel == "UnLit");
                                       loop7:
                                       while(_loc10_)
                                       {
                                          while(true)
                                          {
                                             if(!(_loc10_ || param1))
                                             {
                                                continue loop7;
                                             }
                                             §§push(§§pop());
                                             if(_loc9_ && param1)
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr506:
                                                   addr775:
                                                   addr764:
                                                   while(!_loc9_)
                                                   {
                                                      §§push((§"c§.getItemByName("MovieClip_StarRight") as §&Q§).mClip.currentLabel == "UnLit");
                                                      continue loop10;
                                                   }
                                                   addr775:
                                                   addr764:
                                                   addr740:
                                                   this.§^!S§ = §4N§.§!!L§.§5!N§(this,{"mNewScoreCounter":this.§8T§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                   §§push(this.§^!S§);
                                                   do
                                                   {
                                                      §§pop().onComplete = this.§36§;
                                                      §§push(this.§^!S§);
                                                   }
                                                   while(_loc9_);
                                                   
                                                   §§pop().play();
                                                   while(true)
                                                   {
                                                      (§"c§.getItemByName("MovieClip_StarLeft") as §&Q§).mClip.gotoAndStop("Lit");
                                                      addr722:
                                                      addr723:
                                                      _loc2_ = Number((§"c§.getItemByName("MovieClip_StarLeft") as §&Q§).x + (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).x);
                                                      while(true)
                                                      {
                                                         addr703:
                                                         §§push(Number((§"c§.getItemByName("MovieClip_StarLeft") as §&Q§).y + (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).y));
                                                         if(_loc9_)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               §§goto(addr775);
                                                               §§goto(addr703);
                                                            }
                                                            addr774:
                                                         }
                                                         _loc3_ = §§pop();
                                                         addr706:
                                                         this.§%l§ = new §@!?§(§,l§.§"L§,§,l§.§#S§,_loc2_,_loc3_,§@!?§.§7V§);
                                                         if(!(_loc9_ && this))
                                                         {
                                                            §"c§.addChild(this.§%l§);
                                                            this.§]!,§.push(this.§%l§);
                                                            addr818:
                                                            var _loc7_:*;
                                                            §§push((_loc7_ = this).§]h§);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop() + 1);
                                                            }
                                                            var _loc8_:* = §§pop();
                                                            if(_loc10_)
                                                            {
                                                               _loc7_.§]h§ = _loc8_;
                                                            }
                                                            addr666:
                                                            addr660:
                                                         }
                                                         §§goto(addr843);
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(this.§+!H§);
                                                   loop14:
                                                   for(; !_loc9_; §§push(this.§&M§),if(_loc9_ && _loc2_)
                                                   {
                                                      continue;
                                                   },§§goto(addr198))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         addr256:
                                                         if(!_loc10_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         this.§+!H§ = true;
                                                         §§goto(addr818);
                                                      }
                                                      else
                                                      {
                                                         this.§><§.stop();
                                                         while(true)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               continue loop14;
                                                            }
                                                            §§goto(addr299);
                                                         }
                                                         §§goto(addr420);
                                                         addr245:
                                                      }
                                                      §§goto(addr843);
                                                   }
                                                   continue loop3;
                                                }
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      §=m§.§+f§(§7Y§);
                                                      addr446:
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            §=m§.playSound("Hiscore_Star_Splash3",§7Y§);
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               (§"c§.getItemByName("MovieClip_StarRight") as §&Q§).mClip.gotoAndStop("Lit");
                                                               addr377:
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr353:
                                                                     §§push(Number((§"c§.getItemByName("MovieClip_StarRight") as §&Q§).x + (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).x));
                                                                     if(_loc10_)
                                                                     {
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           addr363:
                                                                           if(_loc10_)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(Number((§"c§.getItemByName("MovieClip_StarRight") as §&Q§).y + (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).y));
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    if(!(_loc9_ && _loc2_))
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       this.§%l§ = new §@!?§(§,l§.§"L§,§,l§.§#S§,_loc2_,_loc3_,§@!?§.§?A§);
                                                                                       addr299:
                                                                                       if(!(_loc9_ && _loc2_))
                                                                                       {
                                                                                          §"c§.addChild(this.§%l§);
                                                                                          addr276:
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(!(_loc10_ || this))
                                                                                             {
                                                                                                §§goto(addr446);
                                                                                             }
                                                                                             this.§]!,§.push(this.§%l§);
                                                                                             addr268:
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§goto(addr818);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr537:
                                                                                                if(!(_loc9_ && param1))
                                                                                                {
                                                                                                   §"c§.addChild(this.§%l§);
                                                                                                   this.§]!,§.push(this.§%l§);
                                                                                                   addr515:
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      this.§%l§ = new §@!?§(§,l§.§"L§,§,l§.§#S§,_loc2_,_loc3_,§@!?§.§>N§);
                                                                                                      §§goto(addr537);
                                                                                                      addr572:
                                                                                                   }
                                                                                                   §§goto(addr818);
                                                                                                   addr523:
                                                                                                }
                                                                                                §=m§.playSound("Hiscore_Star_Splash2",§7Y§);
                                                                                                addr607:
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   (§"c§.getItemByName("MovieClip_StarCenter") as §&Q§).mClip.gotoAndStop("Lit");
                                                                                                   addr599:
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      addr588:
                                                                                                      _loc2_ = Number((§"c§.getItemByName("MovieClip_StarCenter") as §&Q§).x + (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).x);
                                                                                                      §§push(Number((§"c§.getItemByName("MovieClip_StarCenter") as §&Q§).y + (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).y));
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(!(_loc9_ && this))
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               §§goto(addr572);
                                                                                                            }
                                                                                                            addr771:
                                                                                                            §§push(§§pop() * 2);
                                                                                                         }
                                                                                                         §§goto(addr774);
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      §§goto(addr703);
                                                                                                      addr589:
                                                                                                   }
                                                                                                   §§goto(addr747);
                                                                                                }
                                                                                                addr789:
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §=m§.§+f§(§7Y§);
                                                                                                      addr802:
                                                                                                      addr797:
                                                                                                      §=m§.playSound("Hiscore_Star_Splash1",§7Y§);
                                                                                                      this.§><§.delay = 1000;
                                                                                                      §§goto(addr789);
                                                                                                   }
                                                                                                   addr817:
                                                                                                }
                                                                                                addr779:
                                                                                                this.§8T§.§6!Y§(§[&§.§&#§.getScore());
                                                                                                §§push(this.§8T§);
                                                                                                break loop0;
                                                                                                addr783:
                                                                                                addr627:
                                                                                             }
                                                                                             §§goto(addr843);
                                                                                          }
                                                                                          §§goto(addr363);
                                                                                       }
                                                                                       §§goto(addr599);
                                                                                       addr337:
                                                                                    }
                                                                                    §§goto(addr588);
                                                                                 }
                                                                                 §§goto(addr353);
                                                                              }
                                                                              §§goto(addr666);
                                                                           }
                                                                           §§goto(addr377);
                                                                        }
                                                                        §§goto(addr722);
                                                                     }
                                                                     §§goto(addr588);
                                                                  }
                                                                  §§goto(addr783);
                                                               }
                                                               §§goto(addr764);
                                                            }
                                                            §§goto(addr843);
                                                         }
                                                         §§goto(addr722);
                                                      }
                                                      §§goto(addr607);
                                                   }
                                                   §§goto(addr802);
                                                }
                                                §§goto(addr446);
                                                §§goto(addr299);
                                             }
                                             if(!(_loc10_ || this))
                                             {
                                                continue;
                                             }
                                             if(§§pop())
                                             {
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      (§"c§.getItemByName("MovieClip_NewHighScoreBadge") as §&Q§).setVisibility(true);
                                                      loop16:
                                                      for(; _loc10_ || _loc3_; loop21:
                                                      while(true)
                                                      {
                                                         if(!(_loc10_ || _loc3_))
                                                         {
                                                            continue loop16;
                                                         }
                                                         if(!(_loc9_ && this))
                                                         {
                                                            if(_loc10_ || this)
                                                            {
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  if(_loc10_ || _loc2_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§3&§);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§pop().play();
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              if(_loc9_ && _loc3_)
                                                                              {
                                                                                 continue loop21;
                                                                              }
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(!(_loc9_ && _loc3_))
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr75);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr740);
                                                                                       }
                                                                                       §§goto(addr818);
                                                                                    }
                                                                                    §§goto(addr723);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr245);
                                                                                 }
                                                                              }
                                                                              §§goto(addr140);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr78);
                                                                     }
                                                                     addr843:
                                                                     return;
                                                                     addr116:
                                                                  }
                                                                  §§goto(addr797);
                                                               }
                                                               §§goto(addr706);
                                                            }
                                                            §§goto(addr515);
                                                         }
                                                         §§goto(addr276);
                                                      },§§goto(addr764))
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               this.§3&§ = §4N§.§!!L§.§5!N§((§"c§.getItemByName("MovieClip_NewHighScoreBadge") as §&Q§).mClip,{
                                                                  "scaleX":1,
                                                                  "scaleY":1
                                                               },{
                                                                  "scaleX":7,
                                                                  "scaleY":7
                                                               },0.1);
                                                               addr140:
                                                               while(true)
                                                               {
                                                                  if(!(_loc9_ && _loc2_))
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§3&§);
                                                                              addr78:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().onComplete = this.§,#§;
                                                                                 continue loop16;
                                                                              }
                                                                           }
                                                                           addr75:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr660);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr523);
                                                                     }
                                                                     §§goto(addr843);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 if(!(_loc9_ && _loc3_))
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 addr812:
                                                                                 §=m§.playSound("Hiscore_Count",§#!H§,100);
                                                                                 §§goto(addr817);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr624:
                                                                                 §=m§.§+f§(§7Y§);
                                                                                 §§goto(addr627);
                                                                              }
                                                                           }
                                                                           §§goto(addr589);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr506);
                                                                        }
                                                                     }
                                                                     addr164:
                                                                  }
                                                                  §§goto(addr599);
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                         }
                                                         §§goto(addr337);
                                                      }
                                                      §§goto(addr261);
                                                      addr229:
                                                   }
                                                   §§goto(addr268);
                                                }
                                                §§goto(addr229);
                                             }
                                             (§"c§.getItemByName("MovieClip_NewHighScoreBadge") as §&Q§).setVisibility(false);
                                             §§goto(addr164);
                                          }
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr624);
                                 }
                                 else
                                 {
                                    §§push(this.§8T§);
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    if(_loc10_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr779);
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr771);
                  }
               }
               §§goto(addr769);
               §§push(§§pop().getValue());
            }
            §§goto(addr812);
         }
         §§goto(addr116);
      }
      
      private function §36§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §=m§.§+f§(§#!H§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§@!?§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc6_ || _loc2_)
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               if(§§pop() == §[4§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     this.§;z§();
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           §"c§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr87:
                              }
                              §"c§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                              if(_loc7_ && _loc2_)
                              {
                                 continue;
                              }
                              if(_loc7_ && this)
                              {
                                 break loop2;
                              }
                              if(_loc6_)
                              {
                                 if(true)
                                 {
                                    §§push(0);
                                 }
                                 continue loop2;
                                 break;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               §§goto(addr87);
            }
            for each(_loc3_ in this.§]!,§)
            {
               if(_loc6_)
               {
                  _loc3_.update(param1);
               }
            }
            if(_loc6_ || _loc2_)
            {
               if(this.§@!§ > 0)
               {
                  if(_loc6_)
                  {
                     this.§3W§(param1);
                  }
                  while(true)
                  {
                  }
                  addr165:
               }
               while(mNextState.length > 0)
               {
                  if(_loc6_)
                  {
                     return §[4§.STATE_STATUS_COMPLETED;
                  }
                  if(_loc6_)
                  {
                     addr145:
                     break;
                  }
                  §§goto(addr165);
               }
               return §[4§.STATE_STATUS_RUNNING;
            }
            §§goto(addr145);
         }
         §§goto(addr87);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.deActivate();
            loop0:
            while(true)
            {
               this.§+W§.§5!<§(0);
               loop1:
               while(true)
               {
                  this.§,m§();
                  while(true)
                  {
                     this.§@!§ = 0;
                     addr147:
                     while(!_loc1_)
                     {
                     }
                  }
                  addr90:
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  §"c§.setText("0","TextField_LevelEndScore");
                  while(!(_loc1_ && _loc1_))
                  {
                     §"c§.setText("0","TextField_LevelEndScoreEffects");
                     if(_loc1_ && _loc1_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        addr43:
                        if(_loc2_ || _loc1_)
                        {
                           return;
                        }
                        while(_loc2_)
                        {
                           (§"c§.getItemByName("Button_CutScene") as §+!M§).setVisibility(true);
                           loop8:
                           while(true)
                           {
                              (§"c§.getItemByName("Button_Claim_Prize") as §+!M§).setComponentVisualState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              addr73:
                              while(true)
                              {
                                 if(!(_loc2_ || this))
                                 {
                                    continue loop8;
                                 }
                                 §§goto(addr90);
                              }
                              continue loop1;
                           }
                           §§goto(addr43);
                        }
                        §§goto(addr147);
                        addr116:
                     }
                     §§goto(addr73);
                  }
                  while(true)
                  {
                     if(!(_loc1_ && this))
                     {
                        (§"c§.getItemByName("Button_Replay") as §+!M§).setComponentVisualState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        §§goto(addr116);
                     }
                     break;
                     §§goto(addr56);
                  }
                  addr56:
                  while(true)
                  {
                     if(_loc2_)
                     {
                        (§"c§.getItemByName("Button_Menu") as §+!M§).setComponentVisualState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        continue;
                     }
                     continue loop0;
                  }
                  addr128:
               }
            }
         }
         while(true)
         {
            §=m§.§+f§(§#!H§);
            §§goto(addr140);
         }
      }
      
      private function §,m§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§@!?§ = null;
         if(!(_loc4_ && _loc1_))
         {
            if(this.§><§)
            {
               if(!_loc4_)
               {
                  this.§><§.stop();
                  if(_loc5_ || _loc2_)
                  {
                     addr42:
                     this.§><§.removeEventListener(TimerEvent.TIMER,this.§8!=§);
                  }
               }
               §§goto(addr42);
            }
            var _loc2_:int = 0;
            var _loc3_:* = this.§]!,§;
            for each(_loc1_ in _loc3_)
            {
               if(!_loc4_)
               {
                  if(§"c§.contains(_loc1_))
                  {
                     if(_loc4_ && _loc2_)
                     {
                        continue;
                     }
                     §"c§.removeChild(_loc1_);
                     if(_loc4_ && _loc1_)
                     {
                        continue;
                     }
                  }
               }
               _loc1_.clean();
            }
            if(!(_loc4_ && _loc3_))
            {
               this.§]!,§ = new Vector.<§@!?§>();
               while(true)
               {
                  (§"c§.getItemByName("TextField_BestScore") as §1!-§).setVisibility(false);
                  loop2:
                  while(_loc5_)
                  {
                     (§"c§.getItemByName("MovieClip_BestScoreStars") as §&Q§).setVisibility(false);
                     while(true)
                     {
                        (§"c§.getItemByName("TextField_NewHighScore") as §1!-§).setVisibility(false);
                        if(!(_loc4_ && _loc2_))
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
            §§goto(addr144);
         }
         §§goto(addr42);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.keyUp(param1);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]^§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§push(null);
                     if(_loc7_ && param3)
                     {
                        break;
                     }
                     §§pop().§§slot[5] = §§pop();
                     loop4:
                     do
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           while(true)
                           {
                              §§push(§§newactivation());
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    §§pop().§§slot[2] = param2;
                                    continue;
                                 }
                                 continue loop5;
                              }
                              continue loop0;
                           }
                           continue loop4;
                        }
                     }
                     while(_loc7_ && param2);
                     
                     if(_loc7_ && param1)
                     {
                        continue loop2;
                     }
                     addr568:
                     var _loc5_:* = eventName;
                     if(_loc8_)
                     {
                        if("NEXT_LEVEL" === _loc5_)
                        {
                           if(_loc8_)
                           {
                              addr577:
                              §§push(0);
                              if(!_loc7_)
                              {
                                 addr678:
                                 switch(§§pop())
                                 {
                                    case 4:
                                       if(§]u§.sCheetosPopups.getCurrentPopupName() != §8!I§.RESTART_LEVEL)
                                       {
                                          if(§]u§.sCheetosPopups.getCurrentPopupName() != §8!I§.§%!M§)
                                          {
                                             if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§-k§)
                                             {
                                                addr161:
                                                if(!_loc7_)
                                                {
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         this.§5!!§();
                                                         if(_loc7_ && this)
                                                         {
                                                            addr473:
                                                            §§push(-1);
                                                            if(_loc8_ || param2)
                                                            {
                                                               addr512:
                                                               §§push(§§newactivation());
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  §§pop().§§slot[5] = §"c§.getItemByName("Button_Claim_Prize") as §+!M§;
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     addr534:
                                                                     §§push(§§newactivation());
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(§§pop().§§slot[5]);
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           §§pop().setComponentState(§<d§.§^#§);
                                                                           if(_loc8_)
                                                                           {
                                                                              addr552:
                                                                              claimPrizeButton.setEnabled(false);
                                                                              addr551:
                                                                              addr550:
                                                                              if(_loc7_ && param2)
                                                                              {
                                                                                 §§goto(addr678);
                                                                              }
                                                                              switch(§§pop())
                                                                              {
                                                                                 case 0:
                                                                                    §§goto(addr505);
                                                                              }
                                                                           }
                                                                           §§goto(addr678);
                                                                        }
                                                                        §§goto(addr552);
                                                                     }
                                                                     §§goto(addr551);
                                                                  }
                                                                  §§goto(addr550);
                                                               }
                                                               §§goto(addr552);
                                                            }
                                                            §§goto(addr534);
                                                            addr459:
                                                         }
                                                         if(_loc8_)
                                                         {
                                                            addr139:
                                                            break;
                                                         }
                                                         break;
                                                         addr300:
                                                      }
                                                      addr273:
                                                      sCheetosPopups.hidePopup();
                                                      addr275:
                                                      if(_loc7_ && param1)
                                                      {
                                                         addr294:
                                                      }
                                                      addr212:
                                                      break;
                                                   }
                                                   §§goto(addr139);
                                                   addr230:
                                                }
                                                addr211:
                                             }
                                             §§goto(addr139);
                                          }
                                          if(!_loc7_)
                                          {
                                             if(!(_loc7_ && param2))
                                             {
                                                if(_loc8_)
                                                {
                                                   this.§;!%§();
                                                   §§goto(addr211);
                                                }
                                                else
                                                {
                                                   addr249:
                                                   if(_loc8_ || this)
                                                   {
                                                      if(!(_loc8_ || param1))
                                                      {
                                                         addr353:
                                                         if(!§]u§.sCheetosPopups.showPopup(§8!I§.§%!M§))
                                                         {
                                                            addr359:
                                                            this.§;!%§();
                                                            if(_loc7_)
                                                            {
                                                               §§goto(addr564);
                                                            }
                                                         }
                                                         addr309:
                                                         break;
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr221:
                                                if(_loc8_ || this)
                                                {
                                                   this.§;!F§();
                                                   §§goto(addr230);
                                                }
                                                else
                                                {
                                                   addr328:
                                                   this.§;!F§();
                                                }
                                             }
                                             addr295:
                                             break;
                                             addr301:
                                          }
                                          break;
                                       }
                                       §§goto(addr221);
                                    case 5:
                                       addr143:
                                       var checkBoxComponent:§<d§ = component as §<d§;
                                       addr149:
                                       if(_loc8_)
                                       {
                                          addr124:
                                          §§push(§,l§.§,?§);
                                          §§push(§,l§.§,?§.§+d§);
                                          if(!_loc7_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          §§pop().§+d§ = §§pop();
                                          addr131:
                                          if(_loc8_ || param2)
                                          {
                                             addr68:
                                             §§push(§,l§.§,?§);
                                             if(_loc8_)
                                             {
                                                §§push(§§pop().§+d§);
                                                if(_loc8_)
                                                {
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(!(_loc7_ && param3))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr110:
                                                                           checkBoxComponent.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                           addr108:
                                                                           addr107:
                                                                           if(_loc7_)
                                                                           {
                                                                              §§goto(addr459);
                                                                           }
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              addr445:
                                                                              break;
                                                                           }
                                                                           §§goto(addr275);
                                                                        }
                                                                        addr322:
                                                                        if(!§]u§.sCheetosPopups.showPopup(§8!I§.RESTART_LEVEL))
                                                                        {
                                                                           §§goto(addr328);
                                                                        }
                                                                        §§goto(addr301);
                                                                     }
                                                                     addr240:
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        sCheetosPopups.hidePopup();
                                                                        §§goto(addr249);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr306:
                                                                        if(_loc8_)
                                                                        {
                                                                           §§goto(addr295);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr336:
                                                                        }
                                                                     }
                                                                     §§goto(addr309);
                                                                  }
                                                                  §§goto(addr131);
                                                               }
                                                               §§goto(addr564);
                                                            }
                                                            §§push(§§newactivation());
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(§§pop().§§slot[4]);
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        §§push(§<d§.§^#§);
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           §§pop().setComponentState(§§pop());
                                                                           if(_loc8_)
                                                                           {
                                                                              if(_loc8_ || param3)
                                                                              {
                                                                                 if(_loc8_ || param3)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr68);
                                                                                    }
                                                                                    §§goto(addr445);
                                                                                 }
                                                                                 §§goto(addr359);
                                                                              }
                                                                              §§goto(addr149);
                                                                           }
                                                                           §§goto(addr564);
                                                                        }
                                                                        §§goto(addr110);
                                                                     }
                                                                     §§goto(addr108);
                                                                  }
                                                                  §§goto(addr143);
                                                               }
                                                               §§goto(addr107);
                                                            }
                                                            §§goto(addr568);
                                                         }
                                                         addr372:
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc7_)
                                                         {
                                                            addr352:
                                                            if(§§pop())
                                                            {
                                                               addr377:
                                                               §§pop();
                                                               if(_loc8_)
                                                               {
                                                                  addr350:
                                                                  §§push(!§[!!§.§+i§());
                                                               }
                                                               break;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr353);
                                                            }
                                                            else
                                                            {
                                                               this.§;!%§();
                                                               §§goto(addr336);
                                                            }
                                                         }
                                                         §§goto(addr377);
                                                      }
                                                      §§goto(addr350);
                                                   }
                                                   §§goto(addr352);
                                                }
                                                addr319:
                                                if(!_loc7_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr322);
                                                   }
                                                   else
                                                   {
                                                      this.§;!F§();
                                                      §§goto(addr306);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr377);
                                                }
                                                §§goto(addr336);
                                             }
                                             §§goto(addr124);
                                          }
                                          §§goto(addr161);
                                       }
                                       addr292:
                                       sCheetosPopups.hidePopup();
                                       §§goto(addr294);
                                    case 6:
                                       try
                                       {
                                          try
                                          {
                                          }
                                          catch(e:Error)
                                          {
                                             §§goto(addr473);
                                          }
                                          §,Y§.§[[§("claimPrize",§;!=§.userPrizeId);
                                          if(_loc8_ || param3)
                                          {
                                             §§goto(addr473);
                                          }
                                          break;
                                       }
                                       catch(_loc_e_:*)
                                       {
                                          if(§§pop())
                                          {
                                             §§goto(addr512);
                                             §§push(0);
                                          }
                                          addr505:
                                          throw _loc6_;
                                       }
                                    case 1:
                                       §§push(§[&§.§&!'§);
                                       if(!_loc7_)
                                       {
                                          §§goto(addr319);
                                          §§push((§§pop() as §!&§).§`!P§());
                                       }
                                       else
                                       {
                                          addr369:
                                          §§goto(addr372);
                                          §§push((§§pop() as §!&§).§`!P§());
                                       }
                                       §§goto(addr377);
                                    case 0:
                                       §§goto(addr369);
                                    case 2:
                                       this.§5!!§();
                                       §§goto(addr300);
                                    case 3:
                                       §§push(§[&§.§&!'§);
                                       if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.RESTART_LEVEL)
                                       {
                                          §§goto(addr292);
                                       }
                                       else if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§%!M§)
                                       {
                                          §§goto(addr273);
                                       }
                                       else if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§-k§)
                                       {
                                          §§goto(addr240);
                                       }
                                       §§goto(addr273);
                                 }
                                 return;
                                 addr677:
                              }
                              addr672:
                              §§goto(addr677);
                           }
                           addr619:
                           §§push(3);
                           if(_loc8_)
                           {
                              §§goto(addr677);
                           }
                           addr636:
                           §§goto(addr677);
                        }
                        if("REPLAY" === _loc5_)
                        {
                           if(!(_loc7_ && param3))
                           {
                              §§push(1);
                              if(_loc8_ || this)
                              {
                                 §§goto(addr677);
                              }
                              §§goto(addr636);
                           }
                           addr659:
                           §§push(6);
                           if(!_loc7_)
                           {
                              §§goto(addr672);
                           }
                           §§goto(addr677);
                        }
                        if("MENU" === _loc5_)
                        {
                           if(_loc8_ || param2)
                           {
                              §§push(2);
                              if(!_loc7_)
                              {
                                 §§goto(addr677);
                              }
                              §§goto(addr636);
                           }
                           addr628:
                           §§push(4);
                           if(!(_loc7_ && param1))
                           {
                              §§goto(addr636);
                           }
                           §§goto(addr677);
                        }
                        if("BUTTON_NO" === _loc5_)
                        {
                           if(_loc8_)
                           {
                              §§goto(addr619);
                           }
                           §§goto(addr659);
                        }
                        if("BUTTON_YES" === _loc5_)
                        {
                           if(!_loc7_)
                           {
                              §§goto(addr628);
                           }
                           addr647:
                           §§push(5);
                           if(!(_loc7_ && param1))
                           {
                              §§goto(addr628);
                           }
                           §§goto(addr672);
                        }
                        if("CHECKBOX_CHANGE" === _loc5_)
                        {
                           if(!(_loc7_ && param1))
                           {
                              §§goto(addr647);
                           }
                           §§goto(addr659);
                        }
                        if("CLAIM_PRIZE" === _loc5_)
                        {
                           §§goto(addr659);
                        }
                        §§goto(addr677);
                        §§push(7);
                     }
                     §§goto(addr577);
                  }
                  continue loop1;
               }
            }
         }
      }
      
      private function §;z§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc1_:§+!M§ = §"c§.getItemByName("Button_Replay") as §+!M§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§+!M§ = §"c§.getItemByName("Button_Next") as §+!M§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§+!M§ = §"c§.getItemByName("Button_Menu") as §+!M§;
         var _loc6_:§+!M§ = §"c§.getItemByName("Button_Claim_Prize") as §+!M§;
         if(_loc7_ || _loc3_)
         {
            §§push(§;!=§.hasWonPrize);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  _loc6_.visible = false;
                  loop1:
                  do
                  {
                     if(_loc7_ || _loc3_)
                     {
                        loop2:
                        while(true)
                        {
                           §§push((§[&§.§&!'§ as §!&§).§`!P§());
                           if(!_loc8_)
                           {
                              if(!§§pop())
                              {
                                 _loc2_.visible = false;
                                 while(_loc7_)
                                 {
                                    if(_loc7_ || _loc3_)
                                    {
                                       _loc4_.visible = false;
                                       if(!(_loc7_ || this))
                                       {
                                          continue;
                                       }
                                       if(!_loc8_)
                                       {
                                          if(!_loc7_)
                                          {
                                             break loop2;
                                          }
                                          continue loop1;
                                       }
                                       addr122:
                                       if(!_loc7_)
                                       {
                                          if(§[!!§.§7!F§ != null)
                                          {
                                             _loc4_.visible = !§[!!§.§+i§();
                                             §§goto(addr122);
                                          }
                                          if(!_loc8_)
                                          {
                                             _loc4_.visible = false;
                                             break;
                                          }
                                          break;
                                          addr148:
                                       }
                                       return;
                                       addr98:
                                       continue;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr98);
                              }
                              break;
                           }
                           continue loop0;
                        }
                        _loc2_.visible = true;
                        §§goto(addr148);
                        addr136:
                     }
                     else
                     {
                        while(true)
                        {
                           _loc6_.visible = true;
                        }
                        addr176:
                     }
                     while(true)
                     {
                        §§goto(addr136);
                     }
                  }
                  while(!_loc7_);
                  
                  §§goto(addr66);
               }
               §§goto(addr176);
            }
         }
         §§goto(addr124);
      }
      
      private function §;!F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §0"§.§!7§();
            do
            {
               mNextState = §0"§.§`O§;
            }
            while(!_loc1_);
            
         }
      }
      
      private function §;!%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0"§.§>!U§();
            do
            {
               mNextState = StateCutScene.§`O§;
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      private function §5!!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            mNextState = §6l§.§`O§;
         }
      }
   }
}
