package §1!c§
{
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1'§.§'!G§;
   import §1'§.§?>§;
   import §1'§.§^!D§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §2u§.§7!m§;
   import §2u§.§]"%§;
   import §4!i§.§@t§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §[!Z§.§>D§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §'!y§ extends §7X§
   {
      
      public static const §8"%§:String = "LevelEndState";
      
      public static const §!!Y§:Number = 30;
      
      protected static const §0K§:String = "ScoreLoopCountChannel";
      
      protected static const §?$§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §8"%§ = "LevelEndState";
            loop0:
            while(true)
            {
               §!!Y§ = 30;
               do
               {
                  §0K§ = "ScoreLoopCountChannel";
                  continue loop0;
               }
               while(!(_loc2_ || _loc1_));
               
            }
         }
      }
      
      private var §&!e§:§]W§;
      
      private var §6^§:Number;
      
      private var §#"8§:Number = 0.0;
      
      private var §%!N§:Number = 0.0;
      
      private var §%?§:Boolean = false;
      
      private var §#p§:Timer;
      
      private var §]!b§:§?>§;
      
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
      
      public function §'!y§(param1:§0![§, param2:§+f§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§0t§ = [];
         }
         while(true)
         {
            this.§]!e§ = new §@t§();
            while(_loc5_ || param3)
            {
               super(param1,param3,param4,param2);
               if(_loc5_ || param3)
               {
                  return;
               }
            }
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.init();
            while(true)
            {
               §^!T§ = new §9%§(this);
               addr90:
               if(_loc1_ && this)
               {
                  continue;
               }
               §>D§.§0"6§(§0K§,1,1);
               do
               {
                  §>D§.§0"6§(§?$§,3,1);
               }
               while(!(_loc2_ || this));
               
               addr97:
               if(_loc2_ || this)
               {
                  addr49:
                  if(!_loc2_)
                  {
                     loop2:
                     while(true)
                     {
                        this.§'!N§();
                        loop3:
                        while(true)
                        {
                           this.§2"6§ = new Vector.<§^!D§>();
                           addr76:
                           addr124:
                           while(true)
                           {
                              if(!(_loc2_ || this))
                              {
                                 continue loop3;
                              }
                              if(_loc1_ && _loc1_)
                              {
                                 break;
                              }
                              §§goto(addr90);
                              §§goto(addr97);
                           }
                           while(true)
                           {
                              §^!T§.init(this.§'!,§());
                              continue loop2;
                              §§goto(addr83);
                           }
                        }
                     }
                  }
                  return;
               }
               §§goto(addr76);
            }
         }
         §§goto(addr124);
      }
      
      protected function §'!N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§0t§);
            loop0:
            while(true)
            {
               §§pop().push((§^!T§.getItemByName("Button_Menu") as §]"%§).x);
               addr118:
               while(true)
               {
                  §§push(this.§0t§);
                  continue loop0;
               }
            }
         }
         §§goto(addr78);
      }
      
      protected function §'!,§() : XML
      {
         return §7I§.§7!%§.Views.View_LevelEnd[0];
      }
      
      protected function §8H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§ !4§.§%"7§.§@D§.userProgress.§return§(§4a§.currentLevel))
            {
               (§^!T§.getItemByName("Button_Menu") as §]"%§).setVisibility(true);
               loop0:
               for(; _loc1_; while(true)
               {
                  if(!(_loc1_ || _loc1_))
                  {
                     continue loop0;
                  }
                  (§^!T§.getItemByName("Button_Menu") as §]"%§).x = this.§0t§[0];
                  §§goto(addr78);
               },§§goto(addr48))
               {
                  (§^!T§.getItemByName("Button_Replay") as §]"%§).setVisibility(true);
                  loop3:
                  while(true)
                  {
                     (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(false);
                     loop4:
                     while(!(_loc2_ && _loc2_))
                     {
                        (§^!T§.getItemByName("Button_CutScene") as §]"%§).setVisibility(true);
                        continue loop0;
                        while(true)
                        {
                           if(_loc1_ || _loc1_)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc1_ || this)
                                 {
                                    (§^!T§.getItemByName("Button_Replay") as §]"%§).x = this.§0t§[1];
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc1_)
                                          {
                                             (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(false);
                                             break loop4;
                                             addr241:
                                          }
                                          addr267:
                                          while(true)
                                          {
                                             (§^!T§.getItemByName("Button_Replay") as §]"%§).setVisibility(true);
                                             continue loop9;
                                          }
                                          §§goto(addr241);
                                       }
                                    }
                                    §§goto(addr19);
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       while(true)
                                       {
                                          (§^!T§.getItemByName("Button_Menu") as §]"%§).setVisibility(false);
                                          §§goto(addr267);
                                          continue loop8;
                                       }
                                       addr260:
                                    }
                                    (§^!T§.getItemByName("Button_Replay") as §]"%§).x = this.§0t§[0] + Math.abs(this.§0t§[1] - this.§0t§[0]) / 2;
                                    break loop0;
                                 }
                                 addr219:
                              }
                              break;
                           }
                           continue loop4;
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           §§goto(addr19);
                        }
                        addr19:
                        return;
                     }
                     while(true)
                     {
                        (§^!T§.getItemByName("Button_CutScene") as §]"%§).setVisibility(true);
                        §§goto(addr219);
                     }
                  }
               }
               (§^!T§.getItemByName("Button_CutScene") as §]"%§).x = this.§0t§[1] + Math.abs(this.§0t§[2] - this.§0t§[1]) / 2;
               §§goto(addr184);
            }
            §§goto(addr260);
         }
         §§goto(addr145);
      }
      
      protected function §!!t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            (§^!T§.getItemByName("Button_Menu") as §]"%§).setVisibility(true);
            loop0:
            while(true)
            {
               (§^!T§.getItemByName("Button_Replay") as §]"%§).setVisibility(true);
               loop1:
               while(true)
               {
                  (§^!T§.getItemByName("Button_CutScene") as §]"%§).setVisibility(false);
                  loop2:
                  while(true)
                  {
                     if(_loc1_)
                     {
                        if(!§4a§.getNextLevelId())
                        {
                           (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(false);
                           loop3:
                           while(_loc1_ || _loc2_)
                           {
                              (§^!T§.getItemByName("Button_Menu") as §]"%§).x = this.§0t§[0] + Math.abs(this.§0t§[1] - this.§0t§[0]) / 2;
                              while(_loc1_ || _loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc1_ || _loc1_)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          (§^!T§.getItemByName("Button_Replay") as §]"%§).x = this.§0t§[1];
                                          break loop3;
                                       }
                                       break loop2;
                                       addr201:
                                       (§^!T§.getItemByName("Button_Menu") as §]"%§).x = this.§0t§[0];
                                    }
                                 }
                                 continue loop1;
                                 (§^!T§.getItemByName("Button_Replay") as §]"%§).x = this.§0t§[1] + Math.abs(this.§0t§[2] - this.§0t§[1]) / 2;
                                 if(_loc1_ || _loc2_)
                                 {
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr19);
                                    continue loop3;
                                 }
                              }
                              return;
                           }
                           (§^!T§.getItemByName("Button_NextLevel") as §]"%§).x = this.§0t§[2];
                           §§goto(addr151);
                        }
                        break;
                     }
                     continue loop0;
                  }
                  while(true)
                  {
                     (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(true);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               this.§47§ = false;
               loop1:
               while(true)
               {
                  §@!S§.pause();
                  loop2:
                  while(true)
                  {
                     this.§]!b§ = new §?>§(0,0,0,0);
                     loop3:
                     while(true)
                     {
                        §^!T§.movieClip.addChildAt(this.§]!b§,§^!T§.movieClip.numChildren - 1);
                        loop4:
                        while(true)
                        {
                           if(!§4a§.isCutSceneNext())
                           {
                              this.§!!t§();
                              while(true)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    continue loop0;
                                 }
                                 addr61:
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 this.§1N§();
                                 addr68:
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr61);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§#"8§ = 0;
                                             }
                                             addr93:
                                          }
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(_loc3_ && this)
                                             {
                                                break;
                                             }
                                             this.§%!N§ = 0;
                                             continue loop12;
                                          }
                                          addr108:
                                          while(true)
                                          {
                                             if(!(_loc2_ || param1))
                                             {
                                                continue loop3;
                                             }
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             this.§]!b§.§!!p§(0.7);
                                             §§goto(addr93);
                                             continue loop11;
                                          }
                                          continue loop2;
                                       }
                                       continue loop4;
                                    }
                                    continue;
                                 }
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr166);
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              this.§8H§();
                           }
                           addr166:
                           while(true)
                           {
                              addr130:
                              while(true)
                              {
                                 this.mNewScoreCounter = 0;
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
      
      private function §1N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§2!L§ = false;
            while(true)
            {
               this.§]"7§();
               while(_loc1_ || _loc1_)
               {
                  this.§#p§ = new Timer(500);
                  while(true)
                  {
                     this.§<g§ = 0;
                     §§goto(addr74);
                  }
               }
            }
         }
         addr74:
         while(true)
         {
            this.§#p§.addEventListener(TimerEvent.TIMER,this.§1T§);
            while(true)
            {
               if(_loc1_)
               {
                  continue;
               }
               continue loop1;
            }
            continue loop2;
            if(_loc1_ || _loc1_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop2;
            }
         }
      }
      
      protected function §%y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§ !4§.§%"7§.§@D§.userProgress.§+!]§(§4a§.currentLevel) != 100)
            {
               (§^!T§.getItemByName("MovieClip_ResultMEFeather") as §7!m§).mClip.gotoAndStop("Off");
               if(!_loc2_)
               {
                  addr77:
               }
               return;
            }
            if(!_loc1_)
            {
               (§^!T§.getItemByName("MovieClip_ResultMEFeather") as §7!m§).mClip.gotoAndStop("On");
            }
         }
         §§goto(addr77);
      }
      
      protected function §@c§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            if(!this.§95§)
            {
               §^!T§.setText("Best " + param2.toString(),"TextField_BestScore");
               while(_loc5_ || param2)
               {
                  this.§&!o§ = §4a§.getNumStarsForLevel(§4a§.currentLevel,param2);
                  if(!_loc5_)
                  {
                     continue;
                  }
                  if(_loc5_ || param2)
                  {
                     §§push(this.§&!o§);
                     if(!_loc4_)
                     {
                        var _loc3_:* = §§pop();
                        if(!_loc4_)
                        {
                           §§push(1);
                           if(!_loc4_)
                           {
                              §§push(_loc3_);
                              if(!_loc4_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(0);
                                       if(_loc5_)
                                       {
                                          addr235:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                (§^!T§.getItemByName("MovieClip_BestScoreStars") as §7!m§).§;U§("OneStar");
                                                if(_loc5_)
                                                {
                                                   addr46:
                                                   break;
                                                }
                                                break;
                                             case 1:
                                                (§^!T§.getItemByName("MovieClip_BestScoreStars") as §7!m§).§;U§("TwoStar");
                                                break;
                                                addr56:
                                             case 2:
                                                (§^!T§.getItemByName("MovieClip_BestScoreStars") as §7!m§).§;U§("ThreeStar");
                                                if(!(_loc4_ && param1))
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr46);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr56);
                                                   }
                                                }
                                          }
                                          return;
                                          addr234:
                                          addr172:
                                       }
                                    }
                                    else
                                    {
                                       addr197:
                                       §§push(1);
                                       if(!(_loc5_ || param2))
                                       {
                                          addr229:
                                       }
                                    }
                                    §§goto(addr234);
                                 }
                                 else
                                 {
                                    §§push(2);
                                    if(_loc5_ || param2)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc4_ && param2))
                                       {
                                          addr189:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§goto(addr197);
                                             }
                                             else
                                             {
                                                addr216:
                                                §§push(2);
                                                if(_loc5_)
                                                {
                                                   §§goto(addr229);
                                                }
                                                §§goto(addr234);
                                             }
                                          }
                                          else
                                          {
                                             §§push(3);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(_loc3_);
                                             }
                                             §§goto(addr234);
                                          }
                                          §§goto(addr234);
                                       }
                                       if(§§pop() === §§pop())
                                       {
                                          §§goto(addr216);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                 }
                                 §§goto(addr234);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr197);
                     }
                     §§goto(addr235);
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           addr144:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc5_)
                              {
                                 §§push(int(§§pop()));
                              }
                              param2 = §§pop();
                           }
                        }
                        while(true)
                        {
                           § !4§.§%"7§.§@D§.userProgress.setScoreForLevel(§4a§.currentLevel,param2);
                           continue loop1;
                        }
                     }
                     addr111:
                     addr130:
                  }
                  §§goto(addr235);
               }
               while(true)
               {
                  §^!T§.setText("New Highscore!","TextField_BestScore");
                  §§goto(addr111);
               }
            }
            §§goto(addr144);
         }
         §§goto(addr130);
      }
      
      protected function §]"7§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§ !4§.§%"7§.§@D§.userProgress.getScoreForLevel(§4a§.currentLevel));
         if(!(_loc8_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§@!S§.controller.getScore(10));
         if(!(_loc8_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_ || _loc3_)
         {
            this.§95§ = _loc2_ > _loc1_;
         }
         loop0:
         while(true)
         {
            addr65:
            addr84:
            while(true)
            {
               this.§@c§(_loc2_,_loc1_);
               continue loop0;
            }
            §§push(§@!S§.controller.getEagleScore());
            if(_loc7_ || this)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(§ !4§.§%"7§.§@D§.userProgress.§+!]§(§4a§.currentLevel));
            if(!_loc8_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:*;
            if(_loc5_ = _loc3_ > _loc4_)
            {
               if(!(_loc8_ && _loc3_))
               {
                  §§push(_loc3_);
                  if(!_loc8_)
                  {
                     §§push(int(§§pop()));
                     if(_loc7_)
                     {
                        addr136:
                        _loc4_ = §§pop();
                        if(!(_loc8_ && _loc1_))
                        {
                           §§push(§ !4§.§%"7§);
                           if(_loc7_)
                           {
                              §§push(§§pop().§@D§);
                              if(!(_loc8_ && this))
                              {
                                 §§push(§§pop().userProgress);
                                 if(!(_loc8_ && _loc1_))
                                 {
                                    §§pop().§&!1§(§4a§.currentLevel,_loc4_);
                                    addr171:
                                    §§push(§ !4§.§%"7§.§@D§.userProgress);
                                 }
                                 §§push(§§pop().§1]§(§4a§.currentLevel,_loc2_));
                                 if(!_loc8_)
                                 {
                                    addr179:
                                    var _loc6_:int = §§pop();
                                    if(_loc7_ || this)
                                    {
                                       (§^!T§.getItemByName("MovieClip_NewHighScoreBadge") as §7!m§).setVisibility(false);
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       (§^!T§.getItemByName("MovieClip_StarLeft") as §7!m§).mClip.gotoAndStop("UnLit");
                                       while(true)
                                       {
                                          (§^!T§.getItemByName("MovieClip_StarCenter") as §7!m§).mClip.gotoAndStop("UnLit");
                                          while(_loc7_)
                                          {
                                             continue loop3;
                                             (§^!T§.getItemByName("MovieClip_StarRight") as §7!m§).mClip.gotoAndStop("UnLit");
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                return;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr179);
                              }
                           }
                        }
                        §§goto(addr171);
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr136);
               }
            }
            §§goto(addr171);
         }
      }
      
      protected function §>A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§95§)
            {
               (§^!T§.getItemByName("TextField_BestScore") as §7!&§).setVisibility(true);
               while(_loc2_)
               {
                  (§^!T§.getItemByName("MovieClip_BestScoreStars") as §7!m§).setVisibility(true);
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     if(_loc2_ || this)
                     {
                        if(_loc1_)
                        {
                           loop1:
                           while(true)
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    break;
                                 }
                                 addr129:
                                 while(true)
                                 {
                                    §>D§.§9!q§("Hiscore_Badge",§?$§);
                                 }
                              }
                              while(true)
                              {
                                 §^!T§.setText("New Highscore!","TextField_NewHighScore");
                                 continue loop1;
                              }
                           }
                           (§^!T§.getItemByName("MovieClip_BestScoreStars") as §7!m§).setVisibility(false);
                           this.§ !_§();
                           addr86:
                           addr77:
                           addr95:
                           addr109:
                        }
                        return;
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr77);
               }
               while(true)
               {
                  (§^!T§.getItemByName("TextField_NewHighScore") as §7!&§).setVisibility(true);
                  §§goto(addr95);
               }
            }
            §§goto(addr129);
         }
         §§goto(addr109);
      }
      
      protected function § !_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§#"8§ = 0;
         }
         do
         {
            this.§%!N§ = 0;
            do
            {
               this.§6^§ = §!!Y§;
            }
            while(_loc2_);
            
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private function §<!2§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).x = (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).x - this.§#"8§;
            while(true)
            {
               (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).y = (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).y - this.§%!N§;
            }
            addr249:
         }
         loop1:
         while(true)
         {
            if(this.§6^§ <= 0)
            {
               this.§#"8§ = 0;
               while(true)
               {
                  if(!(_loc3_ && param1))
                  {
                     if(_loc2_ || param1)
                     {
                        this.§%!N§ = 0;
                        for(; !_loc3_; while(true)
                        {
                           §§push(this);
                           §§push(this.§6^§);
                           if(!(_loc3_ && param1))
                           {
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() / 10);
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§pop().§6^§ = §§pop();
                           if(!(_loc2_ || param1))
                           {
                              break;
                           }
                           if(_loc2_)
                           {
                              return;
                           }
                           addr131:
                        })
                        {
                           if(!(_loc2_ || param1))
                           {
                              continue loop1;
                           }
                           if(_loc2_ || this)
                           {
                              continue;
                           }
                           addr148:
                           while(_loc2_)
                           {
                              (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).y = (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).y + this.§%!N§;
                              continue loop1;
                           }
                           §§goto(addr249);
                        }
                        continue;
                     }
                     addr187:
                     while(true)
                     {
                        §§push(this);
                        §§push(Math.random() - 0.5);
                        if(_loc2_)
                        {
                           §§push(this.§6^§);
                           if(_loc2_)
                           {
                              §§push(§§pop() / §!!Y§);
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc3_)
                           {
                              addr203:
                              §§push(§§pop() * 20);
                           }
                           §§pop().§#"8§ = §§pop();
                           while(true)
                           {
                              §§push(this);
                              §§push(Math.random() - 0.5);
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(this.§6^§);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() / §!!Y§);
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(_loc2_ || param1)
                                 {
                                    addr178:
                                    §§push(§§pop() * 20);
                                 }
                                 §§pop().§%!N§ = §§pop();
                                 while(true)
                                 {
                                    (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).x = (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).x + this.§#"8§;
                                    §§goto(addr148);
                                 }
                                 addr181:
                              }
                              §§goto(addr178);
                           }
                           addr206:
                        }
                        §§goto(addr203);
                     }
                     §§goto(addr206);
                  }
                  §§goto(addr181);
               }
            }
            §§goto(addr187);
         }
      }
      
      private function §1T§(param1:TimerEvent) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:String = null;
         var _loc8_:* = null;
         var _loc9_:String = null;
         var _loc4_:Number = §4a§.getGoldScoreForLevel(§4a§.currentLevel);
         var _loc5_:Number = §4a§.getSilverScoreForLevel(§4a§.currentLevel);
         if(_loc13_ || this)
         {
            if((§^!T§.getItemByName("MovieClip_StarLeft") as §7!m§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§]!e§);
               loop0:
               while(true)
               {
                  §§push(§§pop().getValue());
                  addr607:
                  while(true)
                  {
                     §§push(_loc5_);
                     addr608:
                     while(true)
                     {
                        §§push(§§pop() >= §§pop());
                        addr609:
                        while(true)
                        {
                           §§push(§§pop());
                           addr610:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr612:
                                    loop6:
                                    while(!(_loc12_ && _loc2_))
                                    {
                                       if(!(_loc12_ && _loc2_))
                                       {
                                          §§push((§^!T§.getItemByName("MovieClip_StarCenter") as §7!m§).mClip.currentLabel == "UnLit");
                                          while(true)
                                          {
                                             addr581:
                                             while(!§§pop())
                                             {
                                                continue loop0;
                                             }
                                             addr582:
                                             §§push(this.§6Z§());
                                             if(!(_loc12_ && _loc2_))
                                             {
                                                _loc8_ = §§pop();
                                                addr593:
                                                if(!(_loc12_ && this))
                                                {
                                                   addr559:
                                                   §§push(Number((§^!T§.getItemByName("MovieClip_StarCenter") as §7!m§).x + (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).x));
                                                   if(_loc13_)
                                                   {
                                                      if(_loc13_ || this)
                                                      {
                                                         _loc2_ = §§pop();
                                                         addr533:
                                                         §§push(Number((§^!T§.getItemByName("MovieClip_StarCenter") as §7!m§).y + (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).y));
                                                         if(!(_loc12_ && param1))
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr541:
                                                            if(!_loc12_)
                                                            {
                                                               this.§2^§ = new §^!D§(§ !4§.§&v§,§ !4§.§,n§,_loc2_,_loc3_,§^!D§.§"!K§,§^!D§.§8`§,_loc8_);
                                                               addr515:
                                                               if(!_loc13_)
                                                               {
                                                                  §§goto(addr541);
                                                               }
                                                               §^!T§.addChild(this.§2^§);
                                                               this.§2"6§.push(this.§2^§);
                                                               addr827:
                                                               var _loc10_:*;
                                                               §§push((_loc10_ = this).§<g§);
                                                               if(_loc13_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               if(_loc13_)
                                                               {
                                                                  _loc10_.§<g§ = _loc11_;
                                                               }
                                                               addr852:
                                                               return;
                                                               addr498:
                                                               addr492:
                                                            }
                                                            §§goto(addr582);
                                                         }
                                                         addr762:
                                                         §§push(0);
                                                         if(_loc13_ || param1)
                                                         {
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               addr771:
                                                               §§push(Number(1));
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  addr774:
                                                                  if(_loc12_ && _loc3_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§#p§.delay = 1000;
                                                                        addr811:
                                                                        §§push(this.§]!e§);
                                                                        addr789:
                                                                        do
                                                                        {
                                                                           §§pop().§!8§(§@!S§.controller.getScore(10));
                                                                           §§push(this.§]!e§);
                                                                        }
                                                                        while(_loc12_);
                                                                        
                                                                        §§push(§§pop().getValue() / _loc4_);
                                                                        if(_loc13_)
                                                                        {
                                                                           §§push(2);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              §§goto(addr762);
                                                                           }
                                                                           addr793:
                                                                        }
                                                                        addr794:
                                                                        while(true)
                                                                        {
                                                                           addr795:
                                                                           addr796:
                                                                           _loc6_ = Number(§§pop());
                                                                           §§goto(addr762);
                                                                        }
                                                                        §§goto(addr774);
                                                                     }
                                                                     addr826:
                                                                  }
                                                               }
                                                               addr773:
                                                            }
                                                            while(true)
                                                            {
                                                               this.§,7§ = §0!o§.§,2§.§4!t§(this,{"mNewScoreCounter":this.§]!e§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                               while(true)
                                                               {
                                                                  §§push(this.§,7§);
                                                                  loop34:
                                                                  while(true)
                                                                  {
                                                                     §§pop().onComplete = this.§=!o§;
                                                                     addr742:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§,7§);
                                                                        if(!_loc12_)
                                                                        {
                                                                           §§pop().play();
                                                                           addr727:
                                                                           _loc7_ = this.§&!=§();
                                                                           addr717:
                                                                           §§push(Number((§^!T§.getItemByName("MovieClip_StarLeft") as §7!m§).x + (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).x));
                                                                           if(!_loc12_)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              if(_loc13_)
                                                                              {
                                                                                 addr693:
                                                                                 §§push(Number((§^!T§.getItemByName("MovieClip_StarLeft") as §7!m§).y + (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).y));
                                                                                 if(_loc13_ || param1)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    break loop6;
                                                                                 }
                                                                                 §§goto(addr794);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr852);
                                                                              }
                                                                           }
                                                                           break;
                                                                           addr726:
                                                                           addr728:
                                                                           addr735:
                                                                        }
                                                                        continue loop34;
                                                                     }
                                                                     §§goto(addr773);
                                                                  }
                                                                  addr670:
                                                                  if(_loc12_ && param1)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §^!T§.addChild(this.§2^§);
                                                                  this.§2"6§.push(this.§2^§);
                                                                  if(_loc13_ || this)
                                                                  {
                                                                  }
                                                                  §§goto(addr827);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr793);
                                                         addr569:
                                                      }
                                                      §§goto(addr717);
                                                   }
                                                   §§goto(addr693);
                                                }
                                                addr663:
                                                if(!(_loc12_ && _loc2_))
                                                {
                                                   §§goto(addr670);
                                                }
                                                §§goto(addr742);
                                             }
                                             §§goto(addr726);
                                          }
                                          addr580:
                                       }
                                       §§goto(addr805);
                                    }
                                    this.§2^§ = new §^!D§(§ !4§.§&v§,§ !4§.§,n§,_loc2_,_loc3_,§^!D§.§3!0§,§^!D§.§8`§,_loc7_);
                                    §§goto(addr663);
                                 }
                                 addr611:
                              }
                              §§goto(addr580);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr821);
         }
         §§goto(addr180);
      }
      
      protected function §&!=§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §>D§.§9!q§("Hiscore_Star_Splash1",§?$§);
         }
         do
         {
            (§^!T§.getItemByName("MovieClip_StarLeft") as §7!m§).mClip.gotoAndStop("Lit");
         }
         while(!_loc1_);
         
         return §'!G§.§ !P§;
      }
      
      protected function §6Z§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §>D§.§9!q§("Hiscore_Star_Splash2",§?$§);
            do
            {
               (§^!T§.getItemByName("MovieClip_StarCenter") as §7!m§).mClip.gotoAndStop("Lit");
            }
            while(_loc1_);
            
         }
         return §'!G§.§ !P§;
      }
      
      protected function §&L§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §>D§.§9!q§("Hiscore_Star_Splash3",§?$§);
         }
         do
         {
            (§^!T§.getItemByName("MovieClip_StarRight") as §7!m§).mClip.gotoAndStop("Lit");
         }
         while(!_loc1_);
         
         return §'!G§.§ !P§;
      }
      
      private function §=!o§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §>D§.§6A§(§0K§);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§^!D§ = null;
         if(!_loc6_)
         {
            super.update(param1);
         }
         loop0:
         while(true)
         {
            addr33:
            addr52:
            addr65:
            while(true)
            {
               §^!T§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
               continue loop0;
            }
            for each(_loc2_ in this.§2"6§)
            {
               if(_loc5_)
               {
                  _loc2_.update(param1);
               }
            }
            if(!(_loc6_ && _loc2_))
            {
               if(this.§6^§ >= 0)
               {
                  addr125:
                  while(true)
                  {
                     this.§<!2§(param1);
                     addr128:
                     while(true)
                     {
                     }
                  }
                  addr125:
               }
               while(nextState.length > 0)
               {
                  if(_loc5_)
                  {
                     if(!_loc6_)
                     {
                        §@!S§.§2A§.clearLevel();
                     }
                     else
                     {
                        §§goto(addr125);
                     }
                  }
                  if(_loc5_)
                  {
                     break;
                  }
                  §§goto(addr128);
               }
               return;
            }
            §§goto(addr125);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            while(true)
            {
               this.§8!Z§();
               while(_loc2_ || _loc1_)
               {
                  this.§6^§ = 0;
                  loop2:
                  while(true)
                  {
                     this.mNewScoreCounter = 0;
                     loop3:
                     while(true)
                     {
                        §§push(this.§,7§);
                        if(!(_loc1_ && this))
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§,7§);
                                 addr202:
                                 while(true)
                                 {
                                    §§pop().stop();
                                    addr203:
                                    while(true)
                                    {
                                       this.§,7§ = null;
                                       addr188:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                              addr200:
                           }
                           loop5:
                           while(true)
                           {
                              §§push(this.§&!e§);
                              if(_loc2_ || _loc2_)
                              {
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§&!e§);
                                       addr182:
                                       while(true)
                                       {
                                          §§pop().stop();
                                          addr183:
                                          while(true)
                                          {
                                             this.§&!e§ = null;
                                             continue loop6;
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §>D§.§6A§(§0K§);
                                    loop8:
                                    while(_loc2_ || _loc1_)
                                    {
                                       this.§ !y§(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                       loop9:
                                       while(true)
                                       {
                                          §^!T§.setText("0","TextField_LevelEndScore");
                                          while(_loc2_ || _loc2_)
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop3;
                                             }
                                             §^!T§.setText("0","TextField_LevelEndScoreEffects");
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§]!b§);
                                                addr54:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      return;
                                                   }
                                                   addr20:
                                                   if(!_loc1_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   continue loop11;
                                                }
                                                §§goto(addr183);
                                             }
                                             if(!(_loc2_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             if(!(_loc2_ || this))
                                             {
                                                continue loop8;
                                             }
                                             addr105:
                                             while(true)
                                             {
                                                §§push(this.§]!b§);
                                                if(_loc2_)
                                                {
                                                   §§pop().§,!#§();
                                                   loop15:
                                                   for(; !_loc1_; this.§]!b§ = null,if(!_loc1_)
                                                   {
                                                      continue loop2;
                                                   })
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                      else
                                                      {
                                                         while(_loc2_ || _loc2_)
                                                         {
                                                            §^!T§.movieClip.removeChild(this.§]!b§);
                                                            break loop15;
                                                         }
                                                         §§goto(addr159);
                                                         addr72:
                                                      }
                                                   }
                                                   §§goto(addr84);
                                                }
                                                break;
                                                §§goto(addr105);
                                             }
                                             §§goto(addr54);
                                          }
                                          continue loop5;
                                       }
                                    }
                                    §§goto(addr203);
                                    §§goto(addr168);
                                 }
                              }
                              §§goto(addr182);
                           }
                        }
                        §§goto(addr202);
                     }
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr20);
                  }
               }
            }
         }
         §§goto(addr203);
      }
      
      protected function § !y§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§^!T§.getItemByName("Button_Menu") as §]"%§).setComponentVisualState(param1);
            do
            {
               (§^!T§.getItemByName("Button_Replay") as §]"%§).setComponentVisualState(param1);
               do
               {
                  (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setComponentVisualState(param1);
                  do
                  {
                     (§^!T§.getItemByName("Button_CutScene") as §]"%§).setComponentVisualState(param1);
                  }
                  while(_loc3_ && this);
                  
               }
               while(_loc3_ && param1);
               
            }
            while(_loc3_);
            
         }
      }
      
      private function §8!Z§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var splash:§^!D§ = null;
         if(_loc5_ || _loc2_)
         {
            if(this.§#p§)
            {
               if(_loc5_)
               {
                  this.§#p§.stop();
                  try
                  {
                     addr40:
                     this.§#p§.removeEventListener(TimerEvent.TIMER,this.§1T§);
                     if(!_loc5_)
                     {
                     }
                  }
                  catch(e:Error)
                  {
                  }
                  do
                  {
                     this.§7!6§();
                  }
                  while(_loc4_ && _loc3_);
                  
                  return;
                  addr176:
               }
               §§goto(addr40);
            }
            var _loc2_:int = 0;
            if(_loc5_ || this)
            {
               var _loc3_:* = this.§2"6§;
               if(_loc5_ || this)
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
                              if(§^!T§.contains(splash))
                              {
                                 while(true)
                                 {
                                    §^!T§.removeChild(splash);
                                    addr121:
                                    while(!_loc4_)
                                    {
                                       while(true)
                                       {
                                       }
                                    }
                                    continue loop2;
                                 }
                                 addr117:
                              }
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 §§pop().§§slot[1].§,!#§();
                                 if(_loc5_)
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       if(true)
                                       {
                                          break loop3;
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr117);
                                 }
                                 §§goto(addr121);
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr136:
                  if(_loc5_ || _loc2_)
                  {
                     this.§2"6§ = new Vector.<§^!D§>();
                  }
                  §§goto(addr176);
               }
               §§goto(addr123);
            }
            §§goto(addr136);
         }
         §§goto(addr40);
      }
      
      protected function §7!6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            (§^!T§.getItemByName("TextField_BestScore") as §7!&§).setVisibility(false);
         }
         while(true)
         {
            (§^!T§.getItemByName("MovieClip_BestScoreStars") as §7!m§).setVisibility(false);
            while(_loc1_)
            {
               (§^!T§.getItemByName("TextField_NewHighScore") as §7!&§).setVisibility(false);
               if(_loc1_)
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
         if(!(_loc1_ && _loc2_))
         {
            super.cleanup();
         }
      }
      
      protected function §7!Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §2G§();
            do
            {
               §7"6§(this.§0;§());
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               if("NEXT_LEVEL" === _loc5_)
               {
                  if(_loc6_ || param1)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        addr222:
                     }
                  }
                  else
                  {
                     addr164:
                     §§push(1);
                     if(!(_loc6_ || this))
                     {
                        addr205:
                     }
                  }
               }
               else if("REPLAY" === _loc5_)
               {
                  if(_loc6_)
                  {
                     §§goto(addr164);
                  }
                  else
                  {
                     addr197:
                     §§push(3);
                     if(!(_loc7_ && this))
                     {
                        §§goto(addr205);
                     }
                  }
               }
               else
               {
                  if("WATCH_REPLAY" === _loc5_)
                  {
                     if(_loc6_ || param3)
                     {
                        §§push(2);
                        if(_loc6_ || param2)
                        {
                           addr227:
                           switch(§§pop())
                           {
                              case 0:
                                 this.§7!Y§();
                                 break;
                              case 1:
                                 §7"6§(this.§!!n§());
                                 break loop0;
                                 addr132:
                              case 2:
                                 §7"6§(this.§!!n§());
                                 addr117:
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(§@!S§.§2A§);
                                    if(_loc6_ || param2)
                                    {
                                       §§push(§§pop().§?Z§());
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                       }
                                       §§push(_loc4_ = §§pop());
                                       if(_loc6_ || this)
                                       {
                                          if(§§pop())
                                          {
                                             addr90:
                                             §@!S§.§2A§.§8!3§(_loc4_);
                                             if(!(_loc6_ || param3))
                                             {
                                                break;
                                             }
                                             addr88:
                                          }
                                          break loop0;
                                       }
                                       continue;
                                    }
                                    §§goto(addr90);
                                 }
                                 else
                                 {
                                    §§goto(addr132);
                                 }
                              case 3:
                                 §>D§.§>!%§();
                                 loop1:
                                 while(!_loc7_)
                                 {
                                    while(true)
                                    {
                                       §7"6§(this.§>-§());
                                       addr49:
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop1;
                                          }
                                          if(_loc6_)
                                          {
                                             break loop0;
                                          }
                                          §§goto(addr88);
                                       }
                                    }
                                 }
                                 §§goto(addr90);
                              case 4:
                                 § !4§.§%"7§.§]!;§();
                                 if(_loc6_ || param3)
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc6_ || this)
                                       {
                                          if(true)
                                          {
                                             break loop0;
                                          }
                                          §§goto(addr44);
                                       }
                                       else
                                       {
                                          §§goto(addr117);
                                       }
                                    }
                                    §§goto(addr49);
                                 }
                           }
                           break;
                        }
                        §§goto(addr222);
                     }
                  }
                  else if("MENU" === _loc5_)
                  {
                     if(_loc6_)
                     {
                        §§goto(addr197);
                     }
                  }
                  else if("FULLSCREEN_BUTTON" !== _loc5_)
                  {
                     §§goto(addr227);
                     §§push(5);
                  }
                  §§goto(addr227);
                  if(_loc6_)
                  {
                     §§goto(addr222);
                  }
               }
               §§goto(addr227);
            }
            §§goto(addr197);
         }
      }
      
      protected function §!!n§() : String
      {
         return §'8§.§8"%§;
      }
      
      protected function §0;§() : String
      {
         return StateCutScene.§8"%§;
      }
      
      public function §>-§() : String
      {
         return §^j§.§8"%§;
      }
   }
}
