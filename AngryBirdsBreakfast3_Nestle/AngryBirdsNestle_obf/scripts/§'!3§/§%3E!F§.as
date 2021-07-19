package §'!3§
{
   import §%8§.§4O§;
   import §%8§.§;!=§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §0!m§.§@!S§;
   import §1!c§.§ x§;
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §1'§.§^!D§;
   import §24§.§4!H§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §2u§.§7!m§;
   import §2u§.§]"%§;
   import §4!i§.§@"#§;
   import §4!i§.§@t§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §[!Z§.§>D§;
   import §[+§.§+"'§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §>!F§ extends §;!o§
   {
      
      private static const §8!j§:Number = 750;
      
      private static var §+o§:Class;
      
      public static const §!!Y§:Number = 30;
      
      protected static const §0K§:String = "ScoreLoopCountChannel";
      
      protected static const §?$§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §>!F§))
         {
            §8!j§ = 750;
            loop0:
            while(true)
            {
               §+o§ = §2g§;
               while(true)
               {
                  §!!Y§ = 30;
                  loop2:
                  while(!(_loc2_ && _loc1_))
                  {
                     while(true)
                     {
                        §0K§ = "ScoreLoopCountChannel";
                        while(!_loc2_)
                        {
                           §?$§ = "EndScreenEffectChannel";
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      private var §&!e§:§]W§;
      
      private var §6^§:Number;
      
      private var §#"8§:Number = 0.0;
      
      private var §%!N§:Number = 0.0;
      
      private var §%?§:Boolean = false;
      
      private var §#p§:Timer;
      
      protected var §0t§:Array;
      
      protected var §2^§:§^!D§;
      
      protected var §2"6§:Vector.<§^!D§>;
      
      public var mNewScoreCounter:int;
      
      private var §<g§:int;
      
      private var §if §:Boolean;
      
      protected var §2!L§:Boolean;
      
      private var §]!e§:§@t§;
      
      protected var §95§:Boolean;
      
      private var §,7§:§]W§;
      
      protected var §47§:Boolean;
      
      protected var §&!o§:int;
      
      private var §-!j§:§ x§;
      
      private var §]"+§:Boolean;
      
      public function §>!F§(param1:§ x§, param2:§4O§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§0t§ = [];
            while(true)
            {
               this.§]!e§ = new §@t§();
               loop1:
               while(true)
               {
                  §9p§ = true;
                  while(true)
                  {
                     §]G§ = false;
                     while(true)
                     {
                        §^J§ = true;
                        loop4:
                        while(true)
                        {
                           super(§`!t§.§[F§,§4z§.§&-§,this.§'!,§());
                           addr117:
                           while(true)
                           {
                              §@!]§ = param2 as §;!=§;
                              continue loop4;
                           }
                        }
                        loop8:
                        while(_loc4_ || this)
                        {
                           while(true)
                           {
                              §>D§.§0"6§(§?$§,3,1);
                              if(_loc3_ && _loc3_)
                              {
                                 continue loop8;
                              }
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr117);
                              }
                              else
                              {
                                 §§goto(addr77);
                              }
                           }
                           return;
                        }
                     }
                  }
               }
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
               this.§-!j§ = param1;
               §§goto(addr77);
            }
         }
         §§goto(addr62);
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §4!H§.§7o§(§+o§);
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      protected function §!!t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            (§29§.getItemByName("Button_Menu") as §]"%§).setVisibility(true);
            loop0:
            while(true)
            {
               (§29§.getItemByName("Button_Replay") as §]"%§).setVisibility(true);
               loop1:
               while(true)
               {
                  §§push(this.§-!j§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().§[!,§);
                     loop3:
                     while(!§§pop().getNextLevelId())
                     {
                        §§push(this.§-!j§);
                        if(_loc1_)
                        {
                           continue loop2;
                        }
                        §§push(§§pop().§[!,§);
                        if(_loc1_)
                        {
                           continue;
                        }
                        if(!§§pop().isCutSceneNext())
                        {
                           (§29§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(false);
                           loop4:
                           while(!(_loc1_ && _loc2_))
                           {
                              if(_loc2_)
                              {
                                 (§29§.getItemByName("Button_CutScene") as §]"%§).setVisibility(false);
                                 while(true)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue;
                                          }
                                          loop8:
                                          while(true)
                                          {
                                             if(_loc1_ && _loc2_)
                                             {
                                                while(!_loc1_)
                                                {
                                                   addr213:
                                                   (§29§.getItemByName("Button_CutScene") as §]"%§).setVisibility(true);
                                                   while(true)
                                                   {
                                                      (§29§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(false);
                                                      continue loop8;
                                                      §§goto(addr213);
                                                   }
                                                }
                                                continue loop1;
                                                addr211:
                                             }
                                             if(!_loc1_)
                                             {
                                                if(!(_loc1_ && this))
                                                {
                                                   (§29§.getItemByName("Button_Menu") as §]"%§).x = this.§0t§[0];
                                                   addr171:
                                                   if(!_loc1_)
                                                   {
                                                      (§29§.getItemByName("Button_Replay") as §]"%§).x = this.§0t§[1];
                                                      break loop4;
                                                   }
                                                   (§29§.getItemByName("Button_Menu") as §]"%§).x = this.§0t§[0];
                                                   (§29§.getItemByName("Button_Replay") as §]"%§).x = this.§0t§[1];
                                                   (§29§.getItemByName("Button_NextLevel") as §]"%§).x = this.§0t§[2];
                                                   addr25:
                                                   return;
                                                   addr265:
                                                   addr244:
                                                   addr256:
                                                   addr232:
                                                }
                                                (§29§.getItemByName("Button_CutScene") as §]"%§).setVisibility(false);
                                                §§goto(addr265);
                                                addr279:
                                             }
                                             §§goto(addr244);
                                          }
                                       }
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 if(_loc2_)
                                 {
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       if(_loc1_)
                                       {
                                          break loop3;
                                       }
                                       §§goto(addr25);
                                    }
                                    §§goto(addr256);
                                 }
                                 §§goto(addr232);
                                 continue;
                              }
                              continue loop0;
                           }
                           if(!(_loc2_ || _loc2_))
                           {
                              §§goto(addr171);
                           }
                           (§29§.getItemByName("Button_CutScene") as §]"%§).x = this.§0t§[2];
                           §§goto(addr119);
                        }
                        §§goto(addr211);
                     }
                     (§29§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(true);
                     §§goto(addr279);
                  }
               }
            }
         }
         §§goto(addr171);
      }
      
      protected function §'!N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§0t§);
            loop0:
            while(true)
            {
               §§pop().push(Math.round((§29§.getItemByName("Button_Menu") as §]"%§).x));
               do
               {
                  §§push(this.§0t§);
                  while(true)
                  {
                     §§pop().push(Math.round((§29§.getItemByName("Button_Replay") as §]"%§).x));
                     addr81:
                     while(true)
                     {
                        §§push(this.§0t§);
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
               while(!(_loc1_ || _loc1_));
               
            }
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            loop0:
            while(true)
            {
               §9p§ = true;
               loop1:
               while(true)
               {
                  this.updateTextFields();
                  loop2:
                  while(true)
                  {
                     this.§'!N§();
                     while(true)
                     {
                        this.§2"6§ = new Vector.<§^!D§>();
                        while(!(_loc2_ && _loc2_))
                        {
                           continue loop0;
                           loop5:
                           while(_loc1_ || _loc1_)
                           {
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              while(true)
                              {
                                 §>D§.§0"6§(§0K§,1,0.8);
                                 loop7:
                                 while(!_loc2_)
                                 {
                                    this.§47§ = false;
                                    loop8:
                                    while(true)
                                    {
                                       §@!S§.pause();
                                       while(true)
                                       {
                                          this.§!!t§();
                                          addr143:
                                          loop10:
                                          while(true)
                                          {
                                             this.mNewScoreCounter = 0;
                                             while(true)
                                             {
                                                this.§if § = false;
                                                addr132:
                                                while(!_loc2_)
                                                {
                                                   §>D§.§9!q§("LevelCompletedTheme1");
                                                   while(true)
                                                   {
                                                      this.§#"8§ = 0;
                                                      continue loop1;
                                                      addr79:
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                                continue loop7;
                                                addr45:
                                                if(_loc1_ || _loc1_)
                                                {
                                                   return;
                                                }
                                             }
                                          }
                                          if(!(_loc1_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          this.§1N§();
                                          loop16:
                                          while(!_loc2_)
                                          {
                                             this.§]"+§ = true;
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop8;
                                                }
                                                addr77:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§goto(addr79);
                                                }
                                                §§goto(addr143);
                                                addr66:
                                                this.§'!@§();
                                                if(_loc1_ || _loc2_)
                                                {
                                                   if(!(_loc1_ || _loc1_))
                                                   {
                                                      continue loop16;
                                                   }
                                                   §§goto(addr45);
                                                   continue loop16;
                                                }
                                             }
                                             continue loop8;
                                          }
                                          §§goto(addr132);
                                       }
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr176);
      }
      
      private function §'!@§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push((§ !4§.§%"7§ as AngryBirdsCustom).§6!g§.§^S§(§@"#§.§,2§.§0!x§()).brand);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || _loc1_)
         {
            §29§.getItemByName("MovieClip_Nesquik").setVisibility(_loc1_ == §+"'§.§[3§);
            while(true)
            {
               §29§.getItemByName("MovieClip_Chocapic").setVisibility(_loc1_ == §+"'§.§&X§);
               while(_loc3_)
               {
                  §29§.getItemByName("MovieClip_KokoKrunch").setVisibility(_loc1_ == §+"'§.§ !`§);
                  if(!_loc2_)
                  {
                     return;
                     addr64:
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      private function §1N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§2!L§ = false;
            while(true)
            {
               this.§]"7§();
               addr88:
               while(true)
               {
                  this.§#p§ = new Timer(100);
               }
            }
            addr92:
         }
         loop2:
         while(true)
         {
            this.§<g§ = 0;
            addr65:
            while(!_loc1_)
            {
               this.§#p§.addEventListener(TimerEvent.TIMER,this.§1T§);
               continue loop2;
            }
            §§goto(addr88);
         }
      }
      
      protected function §@c§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            if(!this.§95§)
            {
               §29§.setText(param2.toString(),"TextField_BestScore");
               while(_loc4_)
               {
                  this.§&!o§ = this.§-!j§.§[!,§.getNumStarsForLevel(this.§-!j§.§[!,§.currentLevel,param2);
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  if(_loc4_ || param1)
                  {
                     §§push(this.§&!o§);
                     if(!(_loc5_ && param2))
                     {
                        var _loc3_:* = §§pop();
                        if(!(_loc5_ && param1))
                        {
                           §§push(1);
                           if(!_loc5_)
                           {
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(0);
                                       if(!_loc4_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr272:
                                       §§push(2);
                                       if(!(_loc5_ && this))
                                       {
                                          addr290:
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(2);
                                    if(_loc4_ || param1)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc5_ && param2))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(1);
                                                if(_loc5_)
                                                {
                                                   §§goto(addr290);
                                                }
                                                addr296:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      (§29§.getItemByName("MovieClip_BestScoreStars") as §7!m§).§;U§("OneStar");
                                                      addr52:
                                                      break;
                                                      addr73:
                                                   case 1:
                                                      (§29§.getItemByName("MovieClip_BestScoreStars") as §7!m§).§;U§("TwoStar");
                                                      break;
                                                      addr62:
                                                   case 2:
                                                      (§29§.getItemByName("MovieClip_BestScoreStars") as §7!m§).§;U§("ThreeStar");
                                                      if(!(_loc5_ && this))
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr73);
                                                            }
                                                            §§goto(addr52);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr62);
                                                         }
                                                      }
                                                }
                                                return;
                                                addr295:
                                             }
                                             else
                                             {
                                                §§goto(addr272);
                                             }
                                             §§goto(addr295);
                                          }
                                          else
                                          {
                                             §§push(3);
                                             if(!(_loc5_ && this))
                                             {
                                                addr271:
                                                if(§§pop() === _loc3_)
                                                {
                                                   §§goto(addr272);
                                                }
                                                else
                                                {
                                                   §§goto(addr295);
                                                   §§push(3);
                                                }
                                                §§goto(addr295);
                                             }
                                             §§goto(addr290);
                                          }
                                       }
                                       §§goto(addr271);
                                    }
                                 }
                                 §§goto(addr295);
                              }
                              §§goto(addr271);
                           }
                           §§goto(addr290);
                        }
                        §§goto(addr272);
                     }
                     §§goto(addr296);
                     addr100:
                  }
                  else
                  {
                     while(!_loc4_)
                     {
                        while(true)
                        {
                           if(_loc4_)
                           {
                              if(_loc4_ || this)
                              {
                                 break;
                              }
                              addr195:
                              while(true)
                              {
                                 §§push(param1);
                                 if(!_loc5_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 param2 = §§pop();
                              }
                           }
                           while(true)
                           {
                              §§push(§ !4§.§%"7§);
                              addr182:
                              loop3:
                              while(true)
                              {
                                 §§push((§§pop() as AngryBirdsCustom).§+Y§);
                                 addr185:
                                 while(true)
                                 {
                                    §§push(this.§-!j§);
                                    addr187:
                                    while(true)
                                    {
                                       §§push(§§pop().§[!,§);
                                       addr188:
                                       while(true)
                                       {
                                          §§push(§§pop().currentLevel);
                                          addr189:
                                          while(true)
                                          {
                                             §§push(param2);
                                             addr190:
                                             while(true)
                                             {
                                                §§pop().setScoreForLevel(§§pop(),§§pop());
                                                continue loop3;
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §29§.setText("New Highscore!","TextField_BestScore");
                     }
                  }
                  §§goto(addr296);
               }
               while(true)
               {
                  §§push(§ !4§.§%"7§);
                  if(!_loc5_)
                  {
                     §§push((§§pop() as AngryBirdsCustom).§+Y§);
                     if(!_loc5_)
                     {
                        §§push(this.§-!j§);
                        if(_loc4_)
                        {
                           §§push(§§pop().§[!,§);
                           if(!(_loc5_ && param2))
                           {
                              §§push(§§pop().currentLevel);
                              if(_loc4_ || param1)
                              {
                                 §§push(param2);
                                 if(!(_loc4_ || param2))
                                 {
                                    continue;
                                 }
                                 §§pop().§9!k§(§§pop(),§§pop());
                                 §§goto(addr169);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr188);
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr182);
               }
            }
            §§goto(addr195);
         }
         §§goto(addr100);
      }
      
      protected function §]"7§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:int = (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.getScoreForLevel(this.§-!j§.§[!,§.currentLevel);
         §§push(§@!S§.controller.getScore(10));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.§95§ = _loc2_ >= _loc1_;
            if(_loc5_)
            {
               this.§@c§(_loc2_,_loc1_);
            }
         }
         var _loc3_:int = (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§1]§(this.§-!j§.§[!,§.currentLevel,_loc2_);
         if(_loc5_)
         {
            (§29§.getItemByName("MovieClip_NewHighScoreBadge") as §7!m§).setVisibility(false);
            while(true)
            {
               (§29§.getItemByName("MovieClip_StarLeft") as §7!m§).mClip.gotoAndStop("UnLit");
               loop1:
               while(_loc5_)
               {
                  while(true)
                  {
                     (§29§.getItemByName("MovieClip_StarCenter") as §7!m§).mClip.gotoAndStop("UnLit");
                     do
                     {
                        (§29§.getItemByName("MovieClip_StarRight") as §7!m§).mClip.gotoAndStop("UnLit");
                     }
                     while(!(_loc5_ || _loc1_));
                     
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr130);
      }
      
      protected function §>A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§95§)
            {
               (§29§.getItemByName("TextField_BestScore") as §7!&§).setVisibility(true);
               loop0:
               while(true)
               {
                  (§29§.getItemByName("MovieClip_BestScoreStars") as §7!m§).setVisibility(true);
                  while(true)
                  {
                     if(_loc1_ || this)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  while(!_loc1_)
                  {
                     §§goto(addr122);
                     §§goto(addr103);
                  }
                  §§goto(addr19);
               }
            }
         }
         §§goto(addr126);
      }
      
      protected function § !_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§#"8§ = 0;
            while(true)
            {
               this.§%!N§ = 0;
               while(_loc1_)
               {
                  this.§6^§ = §!!Y§;
                  if(!(_loc2_ && this))
                  {
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      private function §<!2§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            (§29§.getItemByName("Container_LevelEndStripe") as §,6§).x = (§29§.getItemByName("Container_LevelEndStripe") as §,6§).x - this.§#"8§;
            while(true)
            {
               (§29§.getItemByName("Container_LevelEndStripe") as §,6§).y = (§29§.getItemByName("Container_LevelEndStripe") as §,6§).y - this.§%!N§;
               loop1:
               for(; !_loc3_; if(!(_loc2_ || this))
               {
                  continue;
               },§§goto(addr28))
               {
                  if(this.§6^§ <= 0)
                  {
                     this.§#"8§ = 0;
                     loop2:
                     while(true)
                     {
                        this.§%!N§ = 0;
                        loop3:
                        while(true)
                        {
                           addr28:
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§6^§);
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(param1);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(§§pop() / 10);
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§pop().§6^§ = §§pop();
                              if(_loc3_ && this)
                              {
                                 continue loop3;
                              }
                              if(_loc3_)
                              {
                                 continue loop2;
                              }
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(!_loc3_)
                                 {
                                    return;
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       (§29§.getItemByName("Container_LevelEndStripe") as §,6§).x = (§29§.getItemByName("Container_LevelEndStripe") as §,6§).x + this.§#"8§;
                                       loop6:
                                       while(_loc2_ || this)
                                       {
                                          (§29§.getItemByName("Container_LevelEndStripe") as §,6§).y = (§29§.getItemByName("Container_LevelEndStripe") as §,6§).y + this.§%!N§;
                                          while(_loc3_ && param1)
                                          {
                                             continue loop6;
                                          }
                                          continue loop1;
                                       }
                                       continue;
                                    }
                                    addr190:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(Math.random() - 0.5);
                                       if(!_loc3_)
                                       {
                                          §§push(this.§6^§);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() / §!!Y§);
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() * 20);
                                          }
                                       }
                                       §§pop().§#"8§ = §§pop();
                                       continue loop5;
                                    }
                                 }
                              }
                              §§goto(addr98);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr190);
      }
      
      private function §1T§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = this.§-!j§.§[!,§.getLevelForId(this.§-!j§.§[!,§.currentLevel).scoreGold;
         var _loc5_:Number = this.§-!j§.§[!,§.getLevelForId(this.§-!j§.§[!,§.currentLevel).scoreSilver;
         if(_loc9_)
         {
            if((§29§.getItemByName("MovieClip_StarLeft") as §7!m§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§]!e§);
               loop0:
               for(; _loc9_; §§push(this.§]!e§),if(!(_loc9_ || _loc2_))
               {
                  continue;
               },§§goto(addr507))
               {
                  if(!_loc10_)
                  {
                     §§push(§§pop().getValue());
                     while(true)
                     {
                        if(_loc9_ || this)
                        {
                           addr850:
                           if(_loc9_ || param1)
                           {
                              §§push(_loc5_);
                              while(!(_loc10_ && this))
                              {
                                 §§push(§§pop() >= §§pop());
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr687:
                                             while(true)
                                             {
                                                §§push((§29§.getItemByName("MovieClip_StarCenter") as §7!m§).mClip.currentLabel == "UnLit");
                                             }
                                          }
                                          addr686:
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
                                             if(!(_loc10_ && param1))
                                             {
                                                §>D§.§9!q§("Hiscore_Star_Splash2",§?$§);
                                                (§29§.getItemByName("MovieClip_StarCenter") as §7!m§).mClip.gotoAndStop("Lit");
                                                addr601:
                                                §§push(Number((§29§.getItemByName("MovieClip_StarCenter") as §7!m§).x + (§29§.getItemByName("Container_LevelEndStripe") as §,6§).x));
                                                if(!(_loc10_ && _loc2_))
                                                {
                                                   if(_loc9_ || param1)
                                                   {
                                                      _loc2_ = §§pop();
                                                      addr584:
                                                      _loc3_ = (§29§.getItemByName("MovieClip_StarCenter") as §7!m§).y + (§29§.getItemByName("Container_LevelEndStripe") as §,6§).y;
                                                      this.§2^§ = new §^!D§(§ !4§.§&v§,§ !4§.§,n§,_loc2_,_loc3_,§^!D§.§"!K§);
                                                      §29§.mClip.addChild(this.§2^§);
                                                      this.§2"6§.push(this.§2^§);
                                                      if(!_loc10_)
                                                      {
                                                         addr897:
                                                         var _loc7_:*;
                                                         §§push((_loc7_ = this).§<g§);
                                                         if(!_loc10_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         var _loc8_:* = §§pop();
                                                         if(_loc9_)
                                                         {
                                                            _loc7_.§<g§ = _loc8_;
                                                         }
                                                      }
                                                      addr616:
                                                      addr554:
                                                      addr585:
                                                      addr568:
                                                   }
                                                   else
                                                   {
                                                      addr852:
                                                      §§push(2);
                                                      while(true)
                                                      {
                                                         addr854:
                                                         §§push(Number(§§pop() * §§pop()));
                                                         loop32:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr856:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               continue loop32;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr922);
                                                }
                                                §§goto(addr766);
                                                addr626:
                                                addr650:
                                             }
                                             §§goto(addr896);
                                             addr284:
                                             if(!(_loc9_ || param1))
                                             {
                                                continue;
                                             }
                                             if(_loc9_)
                                             {
                                                addr293:
                                                §§pop();
                                                while(true)
                                                {
                                                   §§push(this.§2!L§);
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   if(_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   loop29:
                                                   while(true)
                                                   {
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         §§goto(addr284);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§push(this.§if §);
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     addr308:
                                                                     if(!(_loc10_ && _loc2_))
                                                                     {
                                                                        if(!(_loc10_ && this))
                                                                        {
                                                                           this.§if § = true;
                                                                           addr325:
                                                                           if(_loc9_)
                                                                           {
                                                                              §§goto(addr897);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr779);
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr750);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr639);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     this.§#p§.stop();
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§95§);
                                                                        if(_loc9_ || _loc2_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           continue loop15;
                                                                        }
                                                                        continue loop29;
                                                                     }
                                                                     addr301:
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr484);
                                                            continue loop29;
                                                         }
                                                      }
                                                      §§goto(addr687);
                                                   }
                                                   continue loop8;
                                                   §§goto(addr293);
                                                }
                                                if(!(_loc10_ && param1))
                                                {
                                                   §§goto(addr216);
                                                }
                                                §§goto(addr254);
                                             }
                                             §§goto(addr686);
                                          }
                                          continue loop0;
                                       }
                                    }
                                    while(_loc9_ || _loc3_)
                                    {
                                       §§pop();
                                       §§goto(addr531);
                                       §§goto(addr261);
                                    }
                                 }
                              }
                              addr851:
                              §§goto(addr852);
                              §§push(§§pop() / §§pop());
                              addr676:
                           }
                           §§goto(addr851);
                           §§push(_loc4_);
                        }
                        §§push(§§pop().getValue());
                        addr507:
                        break;
                        if(!(_loc9_ || _loc2_))
                        {
                           continue;
                        }
                        §§push(_loc4_);
                        if(!_loc10_)
                        {
                           §§goto(addr519);
                           §§push(§§pop() >= §§pop());
                        }
                        else
                        {
                           §§goto(addr676);
                        }
                        §§goto(addr852);
                     }
                     §§goto(addr844);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr860);
               }
               while(true)
               {
                  §§goto(addr850);
                  §§goto(addr867);
               }
            }
            §§goto(addr889);
         }
         §§goto(addr896);
      }
      
      private function §=!o§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §>D§.§6A§(§0K§);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§^!D§ = null;
         if(!(_loc5_ && _loc3_))
         {
            §29§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         }
         var _loc3_:int = 0;
         for each(_loc2_ in this.§2"6§)
         {
            if(_loc6_ || _loc3_)
            {
               _loc2_.update(param1);
            }
         }
         if(_loc6_ || this)
         {
            if(this.§6^§ >= 0)
            {
               if(!(_loc5_ && _loc2_))
               {
                  addr98:
                  this.§<!2§(param1);
               }
            }
            return;
         }
         §§goto(addr98);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§8!Z§();
            loop0:
            while(true)
            {
               this.§6^§ = 0;
               loop1:
               while(true)
               {
                  this.mNewScoreCounter = 0;
                  loop2:
                  while(true)
                  {
                     §§push(this.§,7§);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§,7§);
                              addr137:
                              while(true)
                              {
                                 §§pop().stop();
                                 addr138:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop2;
                                    }
                                    if(!_loc1_)
                                    {
                                       continue loop1;
                                    }
                                    if(!_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    this.§,7§ = null;
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                           addr135:
                        }
                        while(true)
                        {
                           §§push(this.§&!e§);
                           if(!(_loc2_ && this))
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 for(; _loc1_ || _loc1_; if(!(_loc1_ || _loc2_))
                                 {
                                    continue;
                                 },this.§]"+§ = false,for(; !(_loc2_ && this); super.dispose(),if(_loc2_)
                                 {
                                    continue;
                                 },§§goto(addr28))
                                 {
                                    if(_loc1_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr123);
                                 },§§goto(addr92))
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(this.§&!e§);
                                       while(true)
                                       {
                                          §§pop().stop();
                                          addr123:
                                          while(true)
                                          {
                                             this.§&!e§ = null;
                                             loop10:
                                             while(true)
                                             {
                                                addr88:
                                                while(true)
                                                {
                                                   §>D§.§6A§(§0K§);
                                                   addr92:
                                                   while(_loc1_)
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         this.§ !y§(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §29§.setText("0","TextField_LevelEndScore");
                                                            while(true)
                                                            {
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               continue loop15;
                                                               addr28:
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     break loop14;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                          }
                                       }
                                       addr122:
                                    }
                                    else
                                    {
                                       §§goto(addr135);
                                    }
                                    §§goto(addr138);
                                 }
                                 continue;
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr122);
                        }
                        continue;
                     }
                     §§goto(addr137);
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      protected function § !y§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            (§29§.getItemByName("Button_Menu") as §]"%§).setComponentVisualState(param1);
            do
            {
               (§29§.getItemByName("Button_Replay") as §]"%§).setComponentVisualState(param1);
               do
               {
                  (§29§.getItemByName("Button_NextLevel") as §]"%§).setComponentVisualState(param1);
               }
               while(!(_loc2_ || _loc3_));
               
            }
            while(!_loc2_);
            
         }
      }
      
      private function §8!Z§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§^!D§ = null;
         if(_loc4_ || _loc3_)
         {
            if(this.§#p§)
            {
               if(!(_loc5_ && _loc3_))
               {
                  this.§#p§.stop();
                  try
                  {
                     addr44:
                     this.§#p§.removeEventListener(TimerEvent.TIMER,this.§1T§);
                     if(!(_loc5_ && _loc1_))
                     {
                        addr72:
                        var _loc2_:int = 0;
                        if(_loc4_ || _loc2_)
                        {
                           var _loc3_:* = this.§2"6§;
                           if(_loc4_)
                           {
                              while(§§hasnext(_loc3_,_loc2_))
                              {
                                 §§push(§§newactivation());
                                 loop1:
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                                    addr148:
                                    while(true)
                                    {
                                       addr120:
                                       while(true)
                                       {
                                          if(!§29§.mClip.contains(splash))
                                          {
                                             continue loop1;
                                          }
                                          if(!(_loc5_ && _loc1_))
                                          {
                                             §29§.mClip.removeChild(splash);
                                          }
                                       }
                                    }
                                 }
                              }
                              addr152:
                              if(_loc4_ || _loc2_)
                              {
                                 this.§2"6§ = new Vector.<§^!D§>();
                              }
                              do
                              {
                                 this.§7!6§();
                              }
                              while(_loc5_);
                              
                              return;
                              addr180:
                           }
                           while(true)
                           {
                              §§goto(addr98);
                           }
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr180);
                  }
                  catch(e:Error)
                  {
                  }
               }
               §§goto(addr44);
            }
            §§goto(addr72);
         }
         §§goto(addr44);
      }
      
      protected function §7!6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§29§.getItemByName("TextField_BestScore") as §7!&§).setVisibility(false);
            while(true)
            {
               (§29§.getItemByName("MovieClip_BestScoreStars") as §7!m§).setVisibility(false);
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            (§29§.getItemByName("TextField_NewHighScore") as §7!&§).setVisibility(false);
            if(!(_loc2_ && this))
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §7!Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§-!j§.§,"#§();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param2))
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(!(_loc6_ && param1))
               {
                  §§push(0);
                  if(!(_loc5_ || this))
                  {
                     addr174:
                  }
               }
               else
               {
                  addr171:
                  §§push(1);
                  if(_loc5_)
                  {
                     §§goto(addr174);
                  }
               }
            }
            else if("CUTSCENE" === _loc4_)
            {
               if(!_loc6_)
               {
                  §§goto(addr171);
               }
               else
               {
                  addr180:
                  §§push(2);
                  if(!(_loc5_ || param3))
                  {
                     addr210:
                  }
               }
            }
            else
            {
               if("REPLAY" === _loc4_)
               {
                  if(!_loc6_)
                  {
                     §§goto(addr180);
                  }
                  else
                  {
                     addr192:
                     §§push(3);
                     if(_loc5_ || param3)
                     {
                        §§goto(addr210);
                     }
                  }
               }
               else if("MENU" === _loc4_)
               {
                  §§goto(addr192);
               }
               else
               {
                  §§push(4);
               }
               §§goto(addr192);
            }
            loop11:
            switch(§§pop())
            {
               case 0:
               case 1:
                  §9p§ = false;
                  loop0:
                  while(true)
                  {
                     close();
                     addr128:
                     while(true)
                     {
                        this.§7!Y§();
                        continue loop0;
                     }
                  }
                  break;
               case 2:
                  §9p§ = false;
                  addr116:
                  if(!_loc6_)
                  {
                     close();
                     loop2:
                     while(true)
                     {
                        §§push(this.§-!j§);
                        addr89:
                        while(true)
                        {
                           §§push(this.§-!j§);
                           addr91:
                           while(true)
                           {
                              §§push(§§pop().§!!n§());
                              addr92:
                              while(true)
                              {
                                 §§pop().§'l§(§§pop());
                                 continue loop2;
                              }
                           }
                        }
                     }
                     break;
                     addr99:
                  }
                  else
                  {
                     §§goto(addr122);
                  }
                  break;
               case 3:
                  §>D§.§>!%§();
                  loop3:
                  while(true)
                  {
                     §9p§ = false;
                     loop4:
                     while(true)
                     {
                        if(!(_loc6_ && this))
                        {
                           while(true)
                           {
                              close();
                              if(!(_loc6_ && param3))
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop4;
                                 }
                                 §§push(this.§-!j§);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(this.§-!j§);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop().§>-§());
                                       if(!_loc6_)
                                       {
                                          §§pop().§'l§(§§pop());
                                          if(!_loc5_)
                                          {
                                             break loop11;
                                          }
                                          continue loop3;
                                       }
                                       §§goto(addr92);
                                    }
                                    §§goto(addr91);
                                 }
                                 §§goto(addr89);
                              }
                              break loop11;
                           }
                           break loop11;
                           addr55:
                        }
                        §§goto(addr116);
                        §§goto(addr99);
                     }
                     §§goto(addr122);
                  }
            }
            return;
         }
         §§goto(addr192);
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.updateLocalization();
            do
            {
               this.updateTextFields();
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@"#§.§,2§.updateTextFields(§29§,"StateEnd");
         }
      }
      
      public function get isOpen() : Boolean
      {
         return this.§]"+§;
      }
   }
}
