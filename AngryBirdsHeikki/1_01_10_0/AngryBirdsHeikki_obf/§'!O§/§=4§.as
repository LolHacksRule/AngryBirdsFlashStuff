package §'!O§
{
   import §'!N§.§25§;
   import §'!N§.§2O§;
   import §'!N§.§<i§;
   import §-!"§.§=p§;
   import §2`§.HighscoreSidebar;
   import §3!b§.§+!,§;
   import §3Y§.§4!_§;
   import §5!1§.§"!X§;
   import §5!1§.§&[§;
   import §8P§.§1A§;
   import §8P§.§4!Y§;
   import §9!@§.§"?§;
   import §9!@§.§-k§;
   import §9b§.§"!S§;
   import §<u§.§;A§;
   import §<u§.§]!Q§;
   import §=! §.§[2§;
   import §^!0§.§&M§;
   import §^!5§.§,4§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §=4§ extends §=j§
   {
      
      public static const §@o§:String = "LevelEndState";
      
      public static const §]!;§:Number = 30;
      
      private static const §[8§:String = "ScoreLoopCountChannel";
      
      private static const §[!K§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@o§ = "LevelEndState";
         }
         while(true)
         {
            §]!;§ = 30;
            while(!_loc2_)
            {
               §[8§ = "ScoreLoopCountChannel";
               do
               {
                  §[!K§ = "EndScreenEffectChannel";
               }
               while(_loc2_);
               
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private var §,F§:§&[§;
      
      private var §'=§:Number;
      
      private var §9P§:Number;
      
      private var §=Y§:Number;
      
      private var §-i§:Boolean = false;
      
      private var §#!]§:Timer;
      
      private var §+!_§:§-k§;
      
      private var § !P§:§"?§;
      
      private var §,!2§:Vector.<§"?§>;
      
      public var mNewScoreCounter:int;
      
      private var §0!C§:int;
      
      private var §-@§:Boolean;
      
      private var §=7§:§[2§;
      
      private var §[D§:Boolean;
      
      private var §1D§:§&[§;
      
      private var §[!`§:Array;
      
      public function §=4§(param1:Boolean = false, param2:String = "LevelEndState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§=7§ = new §[2§();
            while(true)
            {
               this.§[!`§ = [];
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     super(param1,param2);
                     if(_loc3_)
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
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               §]!9§ = new §]!Q§(this);
               addr137:
               while(true)
               {
                  §]!9§.init(§;A§.§=I§.Views.View_LevelEnd[0]);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §&M§.§1!V§(§[8§,1,1);
            §§goto(addr45);
         }
         §§goto(addr38);
      }
      
      protected function §]!a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§[!`§);
            while(true)
            {
               §§pop().push(§]!9§.getItemByName("Button_Menu").x);
            }
            addr81:
         }
         loop1:
         while(true)
         {
            §§push(this.§[!`§);
            while(!_loc2_)
            {
               §§pop().push(§]!9§.getItemByName("Button_Replay").x);
               while(true)
               {
                  §§push(this.§[!`§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().push(§]!9§.getItemByName("Button_Next").x);
                  if(_loc1_ || _loc2_)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
            }
            §§goto(addr81);
         }
      }
      
      protected function §3f§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §]!9§.getItemByName("Button_Menu").setVisibility(true);
            loop0:
            while(true)
            {
               §]!9§.getItemByName("Button_Replay").setVisibility(true);
               loop1:
               for(; !param1; if(_loc3_ && param1)
               {
                  continue;
               },§§goto(addr123))
               {
                  §]!9§.getItemByName("Button_Next").setVisibility(false);
                  while(_loc2_ || _loc3_)
                  {
                     if(!_loc3_)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           continue loop1;
                        }
                        addr178:
                        while(true)
                        {
                           §]!9§.getItemByName("Button_Menu").x = this.§[!`§[0];
                           loop5:
                           while(true)
                           {
                              §]!9§.getItemByName("Button_Replay").x = this.§[!`§[1];
                              addr150:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    break loop5;
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop0;
                        }
                        continue loop0;
                     }
                     §§goto(addr150);
                     §]!9§.getItemByName("Button_Menu").x = this.§[!`§[0] + Math.abs(this.§[!`§[1] - this.§[!`§[0]) / 2;
                     do
                     {
                        §]!9§.getItemByName("Button_Replay").x = this.§[!`§[1] + Math.abs(this.§[!`§[2] - this.§[!`§[1]) / 2 + §]!9§.getItemByName("Button_Replay").width / 4;
                     }
                     while(!_loc2_);
                     
                     if(!_loc3_)
                     {
                        §§goto(addr19);
                     }
                  }
                  while(true)
                  {
                     if(_loc3_ && _loc3_)
                     {
                        break loop1;
                     }
                     addr19:
                     return;
                  }
               }
            }
         }
         while(true)
         {
            §]!9§.getItemByName("Button_Next").setVisibility(true);
            §§goto(addr178);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.activate();
            loop0:
            while(true)
            {
               sHighscoreSidebar.enableHelpButton(false);
               loop1:
               while(true)
               {
                  §"!S§.§-!7§.§%2§(true);
                  loop2:
                  while(true)
                  {
                     this.mNewScoreCounter = 0;
                     loop3:
                     while(true)
                     {
                        this.§-@§ = false;
                        while(true)
                        {
                           §&M§.§6!#§("LevelCompletedTheme1");
                           loop5:
                           while(!_loc1_)
                           {
                              this.§+!_§.§4!?§(0.7);
                              while(true)
                              {
                                 this.§36§();
                                 addr82:
                                 while(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop3;
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop1;
                           addr42:
                           if(!(_loc1_ && this))
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      override protected function setInitialState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            sHighscoreSidebar.selectedLevelName = §,4§.§0!$§;
         }
      }
      
      private function §36§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§3!a§();
            while(true)
            {
               this.§#!]§ = new Timer(500);
               while(_loc2_ || _loc2_)
               {
                  this.§#!]§.addEventListener(TimerEvent.TIMER,this.§@T§);
                  loop3:
                  while(!_loc1_)
                  {
                     this.§#!]§.start();
                     if(_loc2_ || _loc2_)
                     {
                        addr35:
                        if(_loc1_ && _loc2_)
                        {
                           while(true)
                           {
                              this.§0!C§ = 0;
                              break loop3;
                              §§goto(addr35);
                           }
                           addr92:
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      private function §3!a§() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = 0;
         var _loc1_:* = int(§,L§.§8!F§.§%=§(§,4§.§0!$§));
         §§push((§"!S§.§]O§ as §+!,§).getScore());
         if(_loc9_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc8_)
         {
            this.§[D§ = _loc2_ >= _loc1_;
            loop0:
            while(true)
            {
               if(!this.§[D§)
               {
                  §]!9§.setText("" + _loc1_.toString(),"TextField_BestScore");
                  loop7:
                  while(_loc9_ || _loc1_)
                  {
                     if(_loc9_)
                     {
                        while(true)
                        {
                           §§push(§,4§.§8F§(§,4§.§0!$§,_loc1_));
                           if(_loc9_)
                           {
                              §§push(int(§§pop()));
                           }
                           if(!_loc8_)
                           {
                              _loc6_ = §§pop();
                              if(!_loc9_)
                              {
                                 continue loop7;
                              }
                              §§push(_loc6_);
                              if(_loc9_ || this)
                              {
                                 var _loc7_:* = §§pop();
                                 if(!_loc8_)
                                 {
                                    §§push(1);
                                    if(!_loc8_)
                                    {
                                       §§push(_loc7_);
                                       if(!_loc8_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc8_)
                                             {
                                                §§push(0);
                                                if(!(_loc9_ || this))
                                                {
                                                   addr244:
                                                   if(§§pop() === _loc7_)
                                                   {
                                                      addr246:
                                                      §§push(2);
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         addr254:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(3);
                                                   }
                                                }
                                                addr259:
                                                if(!_loc8_)
                                                {
                                                   addr262:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         (§]!9§.getItemByName("MovieClip_BestScoreStars") as §25§).§<v§("OneStar");
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                            addr69:
                                                            break;
                                                         }
                                                         break;
                                                      case 1:
                                                         (§]!9§.getItemByName("MovieClip_BestScoreStars") as §25§).§<v§("TwoStar");
                                                         break;
                                                         addr79:
                                                      case 2:
                                                         (§]!9§.getItemByName("MovieClip_BestScoreStars") as §25§).§<v§("ThreeStar");
                                                         if(!(_loc8_ && _loc2_))
                                                         {
                                                            if(_loc9_ || _loc1_)
                                                            {
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr69);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr79);
                                                            }
                                                         }
                                                   }
                                                   §§push(§"!S§.§]O§.getEagleScore());
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      addr273:
                                                      §§push(int(§§pop()));
                                                   }
                                                   var _loc3_:* = §§pop();
                                                   var _loc4_:Number = §,L§.§8!F§.§=!T§(§,4§.§0!$§);
                                                   var _loc5_:*;
                                                   if(_loc5_ = _loc3_ > _loc4_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         _loc4_ = _loc3_;
                                                         if(!(_loc8_ && this))
                                                         {
                                                            §,L§.§8!F§.§,!6§(§,4§.§0!$§,_loc4_);
                                                            while(true)
                                                            {
                                                               addr354:
                                                               while(true)
                                                               {
                                                                  (§]!9§.getItemByName("MovieClip_NewHighScoreBadge") as §25§).setVisibility(false);
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     (§]!9§.getItemByName("MovieClip_StarLeft") as §25§).mClip.gotoAndStop("UnLit");
                                                                     addr345:
                                                                     while(_loc8_ && _loc1_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr378:
                                                            addr300:
                                                         }
                                                         while(true)
                                                         {
                                                            (§]!9§.getItemByName("MovieClip_StarCenter") as §25§).mClip.gotoAndStop("UnLit");
                                                            do
                                                            {
                                                               (§]!9§.getItemByName("MovieClip_StarRight") as §25§).mClip.gotoAndStop("UnLit");
                                                            }
                                                            while(!(_loc9_ || _loc1_));
                                                            
                                                            if(_loc8_)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc9_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr378);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr300);
                                                   }
                                                   §§goto(addr354);
                                                }
                                                §§goto(addr273);
                                             }
                                             else
                                             {
                                                addr232:
                                                §§push(1);
                                                if(_loc8_)
                                                {
                                                   §§goto(addr244);
                                                }
                                                §§goto(addr259);
                                             }
                                          }
                                          else
                                          {
                                             §§push(2);
                                             if(_loc9_ || _loc2_)
                                             {
                                                addr216:
                                                §§push(_loc7_);
                                                if(_loc9_ || this)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc8_ && _loc1_))
                                                      {
                                                         §§goto(addr232);
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   else
                                                   {
                                                      §§push(3);
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         §§goto(addr244);
                                                      }
                                                   }
                                                }
                                                §§goto(addr244);
                                             }
                                          }
                                          §§goto(addr254);
                                       }
                                       §§goto(addr244);
                                    }
                                    §§goto(addr216);
                                 }
                                 §§goto(addr246);
                              }
                              §§goto(addr262);
                           }
                           else
                           {
                              §§goto(addr158);
                           }
                        }
                        §,L§.§8!F§.§!!N§(§,4§.§0!$§,_loc1_);
                        addr159:
                        break loop0;
                        addr159:
                        addr132:
                     }
                     §§goto(addr159);
                  }
                  break;
               }
               if(_loc9_ || _loc3_)
               {
                  if(!_loc9_)
                  {
                     continue;
                  }
                  addr158:
                  §§push(_loc2_);
                  if(_loc9_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc1_ = §§pop();
               }
               §§goto(addr159);
            }
            §§goto(addr262);
         }
         §§goto(addr132);
      }
      
      private function §&g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§[D§)
            {
               §]!9§.getItemByName("TextField_BestScore").setVisibility(true);
               loop0:
               while(true)
               {
                  §]!9§.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        loop2:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 break;
                              }
                              loop3:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    §]!9§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc1_)
                                          {
                                             break;
                                          }
                                          addr143:
                                          while(true)
                                          {
                                             §&M§.§7!<§(§[!K§);
                                             addr146:
                                             while(true)
                                             {
                                                §&M§.§6!#§("Hiscore_Badge",§[!K§);
                                                loop4:
                                                while(true)
                                                {
                                                   §]!9§.getItemByName("MovieClip_NewHighScore").setVisibility(true);
                                                   addr121:
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         break loop4;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                       §§goto(addr121);
                                    }
                                    continue loop2;
                                    addr101:
                                 }
                                 §§goto(addr146);
                              }
                           }
                           §§goto(addr101);
                        }
                        this.§3!&§();
                     }
                     §]!9§.getItemByName("MovieClip_BestScoreText").setVisibility(true);
                     if(_loc2_ || this)
                     {
                        continue loop0;
                     }
                  }
                  addr78:
                  return;
               }
            }
            §§goto(addr143);
         }
         §§goto(addr123);
      }
      
      private function §3!&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§9P§ = (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).x;
            while(true)
            {
               this.§=Y§ = (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).y;
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§'=§ = §]!;§;
            if(_loc1_ || this)
            {
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §`u§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§'=§ <= 0)
            {
               while(true)
               {
                  (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).x = this.§9P§;
                  while(true)
                  {
                     (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).y = this.§=Y§;
                     addr176:
                     loop2:
                     while(_loc2_ || this)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§'=§);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(param1);
                              if(!(_loc3_ && this))
                              {
                                 §§push(§§pop() / 10);
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§pop().§'=§ = §§pop();
                           if(!(_loc3_ && _loc3_))
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           addr105:
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                        return;
                     }
                  }
                  addr159:
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(§]!9§.getItemByName("Container_LevelEndStripe") as §2O§);
                     §§push(this.§=Y§);
                     if(_loc2_)
                     {
                        §§push(Math.random() - 0.5);
                        if(!_loc3_)
                        {
                           addr104:
                           §§push(this.§'=§);
                           if(_loc2_)
                           {
                              §§push(§§pop() / §]!;§);
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc3_)
                           {
                              addr91:
                              §§push(§§pop() * 20);
                           }
                           §§pop().y = §§pop() + §§pop();
                           §§goto(addr105);
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr104);
                  }
                  addr166:
               }
            }
            else
            {
               §§push(§]!9§.getItemByName("Container_LevelEndStripe") as §2O§);
               §§push(this.§9P§);
               if(!_loc3_)
               {
                  §§push(Math.random() - 0.5);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(this.§'=§);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop() / §]!;§);
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop() * 20);
                     }
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().x = §§pop();
            }
            while(true)
            {
               if(_loc2_ || this)
               {
                  §§goto(addr159);
               }
               §§goto(addr176);
            }
         }
         §§goto(addr166);
      }
      
      private function §@T§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §,4§.§6W§(§,4§.§0!$§).§=!F§;
         var _loc5_:Number = §,4§.§6W§(§,4§.§0!$§).§@Y§;
         if(_loc10_)
         {
            if((§]!9§.getItemByName("MovieClip_StarLeft") as §25§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§=7§);
               loop0:
               while(!_loc9_)
               {
                  §§push(§§pop().getValue());
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     addr632:
                     while(true)
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
                                 while(true)
                                 {
                                    §§pop();
                                    addr636:
                                    while(true)
                                    {
                                       §§push((§]!9§.getItemByName("MovieClip_StarCenter") as §25§).mClip.currentLabel == "UnLit");
                                    }
                                 }
                                 addr635:
                              }
                              while(true)
                              {
                                 loop8:
                                 while(!§§pop())
                                 {
                                    §§push(this.§=7§);
                                    if(_loc9_)
                                    {
                                       continue loop0;
                                    }
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       continue loop1;
                                    }
                                    addr775:
                                    addr775:
                                    §§pop().§=$§(§"!S§.§]O§.getScore());
                                    while(true)
                                    {
                                       §§push(this.§=7§);
                                       break loop0;
                                    }
                                    addr179:
                                    if(!(_loc10_ || this))
                                    {
                                       continue;
                                    }
                                    if(!(_loc10_ || this))
                                    {
                                       continue loop3;
                                    }
                                    if(§§pop())
                                    {
                                       loop21:
                                       while(true)
                                       {
                                          (§]!9§.getItemByName("MovieClip_NewHighScoreBadge") as §25§).setVisibility(true);
                                          loop22:
                                          while(true)
                                          {
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         this.§,F§ = §"!X§.§ s§.§%!;§((§]!9§.getItemByName("MovieClip_NewHighScoreBadge") as §25§).mClip,{
                                                            "scaleX":1,
                                                            "scaleY":1
                                                         },{
                                                            "scaleX":7,
                                                            "scaleY":7
                                                         },0.1);
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(!(_loc9_ && _loc2_))
                                                                        {
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§,F§);
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().onComplete = this.§&g§;
                                                                                 if(_loc10_ || this)
                                                                                 {
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(_loc9_ && param1)
                                                                                          {
                                                                                             addr544:
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                if(_loc10_ || param1)
                                                                                                {
                                                                                                   this.§ !P§ = new §"?§(§,L§.§1'§,§,L§.§!!d§,_loc2_,_loc3_,§"?§.§9j§);
                                                                                                   addr513:
                                                                                                   if(_loc10_ || this)
                                                                                                   {
                                                                                                      §]!9§.addChild(this.§ !P§);
                                                                                                      while(!_loc9_)
                                                                                                      {
                                                                                                         this.§,!2§.push(this.§ !P§);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            addr808:
                                                                                                            var _loc7_:*;
                                                                                                            §§push((_loc7_ = this).§0!C§);
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               §§push(§§pop() + 1);
                                                                                                            }
                                                                                                            var _loc8_:* = §§pop();
                                                                                                            if(_loc10_ || _loc2_)
                                                                                                            {
                                                                                                               _loc7_.§0!C§ = _loc8_;
                                                                                                            }
                                                                                                            break loop20;
                                                                                                         }
                                                                                                      }
                                                                                                      while(_loc10_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(Number((§]!9§.getItemByName("MovieClip_StarCenter") as §25§).y + (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).y));
                                                                                                         if(!(_loc9_ && _loc3_))
                                                                                                         {
                                                                                                            _loc3_ = §§pop();
                                                                                                            §§goto(addr544);
                                                                                                         }
                                                                                                         addr705:
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            _loc2_ = §§pop();
                                                                                                            break;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * 2);
                                                                                                            addr765:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr766:
                                                                                                               addr767:
                                                                                                               _loc6_ = §§pop();
                                                                                                               this.§1D§ = §"!X§.§ s§.§%!;§(this,{"mNewScoreCounter":this.§=7§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                                                                               addr754:
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  §§push(this.§1D§);
                                                                                                                  do
                                                                                                                  {
                                                                                                                     §§pop().onComplete = this.§3V§;
                                                                                                                     §§push(this.§1D§);
                                                                                                                  }
                                                                                                                  while(!(_loc10_ || param1));
                                                                                                                  
                                                                                                                  §§pop().play();
                                                                                                                  (§]!9§.getItemByName("MovieClip_StarLeft") as §25§).mClip.gotoAndStop("Lit");
                                                                                                                  addr730:
                                                                                                                  §§goto(addr705);
                                                                                                                  §§push(Number((§]!9§.getItemByName("MovieClip_StarLeft") as §25§).x + (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).x));
                                                                                                                  addr718:
                                                                                                                  addr730:
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr775);
                                                                                                         }
                                                                                                      }
                                                                                                      addr686:
                                                                                                      §§push(Number((§]!9§.getItemByName("MovieClip_StarLeft") as §25§).y + (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).y));
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         this.§ !P§ = new §"?§(§,L§.§1'§,§,L§.§!!d§,_loc2_,_loc3_,§"?§.§0#§);
                                                                                                         §]!9§.addChild(this.§ !P§);
                                                                                                         this.§,!2§.push(this.§ !P§);
                                                                                                         addr643:
                                                                                                         if(_loc9_ && param1)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr775);
                                                                                                            }
                                                                                                            addr781:
                                                                                                         }
                                                                                                         §§goto(addr808);
                                                                                                         addr656:
                                                                                                         addr670:
                                                                                                         addr689:
                                                                                                         addr650:
                                                                                                      }
                                                                                                      §§goto(addr765);
                                                                                                      addr572:
                                                                                                   }
                                                                                                   §§goto(addr656);
                                                                                                }
                                                                                                §§goto(addr737);
                                                                                             }
                                                                                          }
                                                                                          §§push(this.§,F§);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§pop().play();
                                                                                             if(_loc9_ && _loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(!(_loc10_ || param1))
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             if(_loc9_ && _loc3_)
                                                                                             {
                                                                                                continue loop22;
                                                                                             }
                                                                                          }
                                                                                          continue;
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          continue loop19;
                                                                                          break loop8;
                                                                                       }
                                                                                       addr369:
                                                                                       if(_loc10_ || this)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                addr380:
                                                                                                §§push(Number((§]!9§.getItemByName("MovieClip_StarRight") as §25§).y + (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).y));
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   if(!(_loc9_ && _loc2_))
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         addr324:
                                                                                                         if(!(_loc9_ && this))
                                                                                                         {
                                                                                                            if(_loc10_ || _loc3_)
                                                                                                            {
                                                                                                               if(!(_loc9_ && param1))
                                                                                                               {
                                                                                                                  this.§ !P§ = new §"?§(§,L§.§1'§,§,L§.§!!d§,_loc2_,_loc3_,§"?§.§&n§);
                                                                                                                  break loop18;
                                                                                                               }
                                                                                                               §§goto(addr754);
                                                                                                            }
                                                                                                            (§]!9§.getItemByName("MovieClip_StarCenter") as §25§).mClip.gotoAndStop("Lit");
                                                                                                            addr589:
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               if(_loc10_ || this)
                                                                                                               {
                                                                                                                  addr569:
                                                                                                                  §§push(Number((§]!9§.getItemByName("MovieClip_StarCenter") as §25§).x + (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).x));
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     §§goto(addr572);
                                                                                                                  }
                                                                                                                  §§goto(addr686);
                                                                                                               }
                                                                                                               §&M§.§7!<§(§[!K§);
                                                                                                               §&M§.§6!#§("Hiscore_Star_Splash1",§[!K§);
                                                                                                               this.§#!]§.delay = 1000;
                                                                                                               §§goto(addr781);
                                                                                                               addr792:
                                                                                                               addr807:
                                                                                                               addr787:
                                                                                                            }
                                                                                                            §§goto(addr636);
                                                                                                            addr604:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §&M§.§7!<§(§[!K§);
                                                                                                            addr429:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc9_ && _loc3_))
                                                                                                               {
                                                                                                                  §&M§.§6!#§("Hiscore_Star_Splash3",§[!K§);
                                                                                                                  (§]!9§.getItemByName("MovieClip_StarRight") as §25§).mClip.gotoAndStop("Lit");
                                                                                                                  §§push(Number((§]!9§.getItemByName("MovieClip_StarRight") as §25§).x + (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).x));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc10_ || _loc2_)
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        §§goto(addr369);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                     §§goto(addr380);
                                                                                                                  }
                                                                                                                  §§goto(addr766);
                                                                                                                  addr361:
                                                                                                                  addr396:
                                                                                                                  addr390:
                                                                                                               }
                                                                                                               §§goto(addr589);
                                                                                                            }
                                                                                                            §§goto(addr324);
                                                                                                         }
                                                                                                         addr426:
                                                                                                      }
                                                                                                      §§goto(addr569);
                                                                                                   }
                                                                                                   §§goto(addr536);
                                                                                                }
                                                                                                §§goto(addr361);
                                                                                             }
                                                                                             §§goto(addr792);
                                                                                          }
                                                                                          §§goto(addr670);
                                                                                       }
                                                                                       loop11:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push((§]!9§.getItemByName("MovieClip_StarRight") as §25§).mClip.currentLabel == "UnLit");
                                                                                          addr417:
                                                                                          addr477:
                                                                                          loop12:
                                                                                          for(; !(_loc9_ && param1); while(true)
                                                                                          {
                                                                                             if(_loc9_ && this)
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         this.§-@§ = true;
                                                                                                         addr258:
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            §§goto(addr643);
                                                                                                         }
                                                                                                         §§goto(addr808);
                                                                                                      }
                                                                                                      break loop20;
                                                                                                   }
                                                                                                   this.§#!]§.stop();
                                                                                                   break loop19;
                                                                                                }
                                                                                                §§goto(addr635);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   continue loop11;
                                                                                                }
                                                                                                addr481:
                                                                                             }
                                                                                             addr235:
                                                                                             §§push(this.§[D§);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr179);
                                                                                          },§§goto(addr636))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§push(this.§-@§);
                                                                                                   continue loop12;
                                                                                                }
                                                                                                §§goto(addr426);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                §§goto(addr424);
                                                                                             }
                                                                                             §§goto(addr481);
                                                                                             §§goto(addr417);
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§goto(addr643);
                                                                                    }
                                                                                    §§goto(addr324);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr838);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§goto(addr235);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr802:
                                                                                       §&M§.§6!#§("Hiscore_Count",§[8§,100);
                                                                                    }
                                                                                    §§goto(addr807);
                                                                                 }
                                                                                 §§goto(addr513);
                                                                              }
                                                                              §§goto(addr258);
                                                                              §§goto(addr69);
                                                                           }
                                                                           §§goto(addr643);
                                                                        }
                                                                        §§goto(addr718);
                                                                     }
                                                                     §§goto(addr396);
                                                                  }
                                                                  §§goto(addr390);
                                                               }
                                                               break;
                                                            }
                                                            addr167:
                                                            while(!_loc9_)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  §§goto(addr787);
                                                               }
                                                               §§goto(addr767);
                                                            }
                                                            §§goto(addr689);
                                                         }
                                                         addr296:
                                                         while(true)
                                                         {
                                                            §]!9§.addChild(this.§ !P§);
                                                            addr282:
                                                            while(true)
                                                            {
                                                               this.§,!2§.push(this.§ !P§);
                                                               if(_loc10_)
                                                               {
                                                                  if(!(_loc10_ || _loc3_))
                                                                  {
                                                                     §§goto(addr429);
                                                                  }
                                                                  §§goto(addr808);
                                                               }
                                                               addr838:
                                                               return;
                                                            }
                                                         }
                                                      }
                                                      addr222:
                                                   }
                                                   addr620:
                                                   if(_loc10_)
                                                   {
                                                      §&M§.§6!#§("Hiscore_Star_Splash2",§[!K§);
                                                      §§goto(addr604);
                                                   }
                                                   §§goto(addr730);
                                                }
                                                §§goto(addr489);
                                             }
                                             §§goto(addr282);
                                          }
                                       }
                                    }
                                    (§]!9§.getItemByName("MovieClip_NewHighScoreBadge") as §25§).setVisibility(false);
                                    §§goto(addr167);
                                 }
                                 while(true)
                                 {
                                    §&M§.§7!<§(§[!K§);
                                    §§goto(addr620);
                                 }
                                 §§goto(addr730);
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr761);
                  §§goto(addr775);
               }
               §§goto(addr650);
            }
            §§goto(addr802);
         }
         §§goto(addr296);
      }
      
      private function §3V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&M§.§7!<§(§[8§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§"?§ = null;
         §§push(super.run(param1));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_ || param1)
         {
            §§push(_loc2_);
            if(_loc7_)
            {
               if(§§pop() == §=p§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §]!9§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                     loop1:
                     while(true)
                     {
                        if(_loc7_)
                        {
                           while(true)
                           {
                              §]!9§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                              if(_loc7_)
                              {
                                 if(_loc7_ || param1)
                                 {
                                    if(true)
                                    {
                                       §§push(0);
                                    }
                                    continue loop0;
                                    break loop1;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           addr62:
                        }
                     }
                     addr90:
                     for each(_loc3_ in this.§,!2§)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           _loc3_.update(param1);
                        }
                     }
                     if(!(_loc6_ && _loc2_))
                     {
                        if(this.§'=§ > 0)
                        {
                           if(_loc7_)
                           {
                              this.§`u§(param1);
                           }
                           while(true)
                           {
                           }
                           addr162:
                        }
                        while(mNextState.length > 0)
                        {
                           if(!_loc6_)
                           {
                              return §=p§.STATE_STATUS_COMPLETED;
                           }
                           if(!_loc6_)
                           {
                              addr142:
                              break;
                           }
                           §§goto(addr162);
                        }
                        return §=p§.STATE_STATUS_RUNNING;
                     }
                     §§goto(addr142);
                  }
               }
               §§push(_loc2_);
               if(!(_loc6_ && _loc2_))
               {
                  return §§pop();
               }
            }
            §§goto(addr90);
         }
         §§goto(addr62);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.deActivate();
            loop0:
            while(true)
            {
               this.§+!_§.§import§(0);
               loop1:
               while(true)
               {
                  this.§"X§();
                  while(true)
                  {
                     this.§'=§ = 0;
                     while(true)
                     {
                        §&M§.§7!<§(§[8§);
                        addr114:
                        while(!(_loc1_ && this))
                        {
                           (§]!9§.getItemByName("Button_Menu") as §<i§).setComponentVisualState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           continue loop1;
                        }
                     }
                     addr83:
                     if(!(_loc1_ && _loc2_))
                     {
                        if(_loc2_)
                        {
                           §]!9§.setText("0","TextField_LevelEndScore");
                           loop7:
                           do
                           {
                              if(!(_loc1_ && this))
                              {
                                 continue;
                              }
                              addr64:
                              while(true)
                              {
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    continue loop1;
                                 }
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr83);
                                 continue loop7;
                              }
                              §§goto(addr114);
                           }
                           while(§]!9§.setText("0","TextField_LevelEndScoreEffects"), _loc1_ && _loc1_);
                           
                           return;
                           addr41:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      private function §"X§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§"?§ = null;
         if(!_loc5_)
         {
            if(this.§#!]§)
            {
               if(_loc4_)
               {
                  addr26:
                  this.§#!]§.stop();
                  if(_loc5_)
                  {
                  }
                  addr38:
                  var _loc3_:* = this.§,!2§;
                  for each(_loc1_ in _loc3_)
                  {
                     if(!_loc5_)
                     {
                        if(§]!9§.contains(_loc1_))
                        {
                           if(_loc4_ || _loc1_)
                           {
                              addr64:
                              §]!9§.removeChild(_loc1_);
                              if(!_loc4_)
                              {
                                 continue;
                              }
                           }
                        }
                        _loc1_.clean();
                        continue;
                     }
                     §§goto(addr64);
                  }
                  if(_loc4_ || _loc1_)
                  {
                     this.§,!2§ = new Vector.<§"?§>();
                     while(true)
                     {
                        §]!9§.getItemByName("TextField_BestScore").setVisibility(false);
                        addr119:
                        if(!(_loc5_ && _loc3_))
                        {
                           §]!9§.getItemByName("MovieClip_NewHighScore").setVisibility(false);
                           addr126:
                           if(_loc5_)
                           {
                              while(!(_loc5_ && _loc3_))
                              {
                                 §§goto(addr119);
                                 §§goto(addr126);
                              }
                              while(!_loc5_)
                              {
                                 §]!9§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
                                 §§goto(addr112);
                              }
                              addr112:
                              while(true)
                              {
                                 §]!9§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
                                 §§goto(addr133);
                              }
                              addr133:
                              addr152:
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr152);
               }
               this.§#!]§.removeEventListener(TimerEvent.TIMER,this.§@T§);
            }
            §§goto(addr38);
         }
         §§goto(addr26);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.cleanup();
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super.keyUp(param1);
            while(param1.charCode == 32)
            {
               if(_loc3_)
               {
                  break;
               }
               addr60:
               if(!_loc2_)
               {
                  continue;
               }
               addr57:
               mNextState = §@o§;
               §§goto(addr60);
            }
            return;
         }
         §§goto(addr57);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(_loc6_)
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(_loc6_)
               {
                  §§push(0);
                  if(!_loc6_)
                  {
                  }
               }
               else
               {
                  addr126:
                  §§push(1);
                  if(_loc6_ || param3)
                  {
                  }
               }
            }
            else
            {
               if("REPLAY" === _loc4_)
               {
                  if(!_loc5_)
                  {
                     §§goto(addr126);
                  }
               }
               else if("MENU" !== _loc4_)
               {
                  addr161:
                  loop1:
                  switch(§§pop())
                  {
                     case 0:
                        §<r§.§4=§();
                        while(true)
                        {
                           mNextState = §<r§.§@o§;
                           if(!_loc6_)
                           {
                              break loop1;
                           }
                           if(_loc6_ || param1)
                           {
                              break loop1;
                           }
                        }
                        break;
                     case 1:
                        §<r§.§0^§();
                        mNextState = §<r§.§@o§;
                        if(_loc6_ || param2)
                        {
                           addr41:
                           break;
                        }
                        break;
                        addr67:
                     case 2:
                        §&M§.§=!7§();
                        if(!_loc5_)
                        {
                           mNextState = §,L§.§[!;§;
                           if(!(_loc5_ && param3))
                           {
                              if(!(_loc5_ && this))
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr67);
                              }
                              §§goto(addr41);
                           }
                           break;
                        }
                  }
                  return;
                  §§push(3);
               }
               §§goto(addr161);
               if(_loc5_ && param1)
               {
               }
            }
            §§goto(addr161);
         }
         §§goto(addr126);
      }
   }
}
