package §,!"§
{
   import § !B§.§-#§;
   import § !B§.§=!=§;
   import §"U§.§!o§;
   import §"U§.§@4§;
   import §"U§.§[Q§;
   import §"U§.§^'§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §0!E§.§;!D§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§`!K§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §<z§ extends §'!#§
   {
      
      public static const §-A§:String = "LevelEndStateRio";
      
      public static const §`,§:Number = 30;
      
      protected static const §%8§:String = "ScoreLoopCountChannel";
      
      protected static const §?!M§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-A§ = "LevelEndStateRio";
            loop0:
            while(true)
            {
               §`,§ = 30;
               while(true)
               {
                  §%8§ = "ScoreLoopCountChannel";
                  while(!(_loc1_ && §<z§))
                  {
                     if(_loc2_)
                     {
                        §?!M§ = "EndScreenEffectChannel";
                        if(_loc2_)
                        {
                           return;
                           addr50:
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      private var §=r§:§[!9§;
      
      private var §2Q§:Number;
      
      private var §`!I§:Number = 0.0;
      
      private var §'^§:Number = 0.0;
      
      private var §"!$§:Boolean = false;
      
      private var §+<§:Timer;
      
      private var §!>§:§-#§;
      
      protected var §6!;§:Array;
      
      protected var §-!"§:§=!=§;
      
      protected var §`!1§:Vector.<§=!=§>;
      
      public var mNewScoreCounter:int;
      
      private var §;#§:int;
      
      private var §##§:Boolean;
      
      protected var §5z§:Boolean;
      
      private var §^!A§:§;!D§;
      
      protected var §-M§:Boolean;
      
      private var §@z§:§[!9§;
      
      protected var §6§:Boolean;
      
      protected var §6!K§:int;
      
      public function §<z§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§6!;§ = [];
         }
         do
         {
            this.§^!A§ = new §;!D§();
            do
            {
               super(param1,param2);
            }
            while(_loc4_);
            
         }
         while(_loc4_ && this);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.init();
         while(true)
         {
            §0q§ = new §`o§(this);
            §0q§.init(this.getViewXML());
            while(!_loc1_)
            {
               this.initButtonDefaultPositions();
               if(_loc2_ || _loc2_)
               {
                  this.§`!1§ = new Vector.<§=!=§>();
                  do
                  {
                     §[!7§.§'<§(§%8§,1,1);
                  }
                  while(!_loc2_);
                  
                  §[!7§.§'<§(§?!M§,3,1);
                  return;
               }
            }
         }
      }
      
      protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§6!;§);
            loop0:
            while(true)
            {
               §§pop().push((§0q§.getItemByName("Button_Menu") as §^'§).x);
               loop1:
               while(true)
               {
                  §§push(this.§6!;§);
                  while(true)
                  {
                     §§pop().push((§0q§.getItemByName("Button_Replay") as §^'§).x);
                     addr106:
                     while(_loc2_ || _loc2_)
                     {
                     }
                     continue loop1;
                     addr34:
                     if(_loc2_ || this)
                     {
                        §§pop().push((§0q§.getItemByName("Button_CutScene") as §^'§).x);
                        addr41:
                        if(_loc1_ && _loc1_)
                        {
                           loop6:
                           for(; !(_loc1_ && this); §§goto(addr41))
                           {
                              addr95:
                              §§push(this.§6!;§);
                              if(_loc2_ || this)
                              {
                                 §§goto(addr34);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       §§pop().push((§0q§.getItemByName("Button_NextLevel") as §^'§).x);
                                       continue loop6;
                                    }
                                    continue loop0;
                                    §§goto(addr95);
                                 }
                                 addr69:
                              }
                           }
                           §§goto(addr106);
                        }
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr69);
         }
      }
      
      protected function getViewXML() : XML
      {
         return §`Z§.§5c§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!AngryBirdsFP11.§`I§.isLevelPassed(§`!K§.§5g§))
         {
            (§0q§.getItemByName("Button_Menu") as §^'§).setVisibility(false);
            (§0q§.getItemByName("Button_Replay") as §^'§).setVisibility(true);
            (§0q§.getItemByName("Button_NextLevel") as §^'§).setVisibility(false);
            loop5:
            while(true)
            {
               (§0q§.getItemByName("Button_CutScene") as §^'§).setVisibility(true);
               (§0q§.getItemByName("Button_Replay") as §^'§).x = this.§6!;§[0] + Math.abs(this.§6!;§[1] - this.§6!;§[0]) / 2;
               addr189:
               while(!(_loc2_ || _loc2_))
               {
                  continue loop5;
               }
               (§0q§.getItemByName("Button_CutScene") as §^'§).x = this.§6!;§[1] + Math.abs(this.§6!;§[2] - this.§6!;§[1]) / 2;
               §§goto(addr18);
            }
         }
         else
         {
            (§0q§.getItemByName("Button_Menu") as §^'§).setVisibility(true);
            loop0:
            while(true)
            {
               (§0q§.getItemByName("Button_Replay") as §^'§).setVisibility(true);
               while(true)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     (§0q§.getItemByName("Button_NextLevel") as §^'§).setVisibility(false);
                     while(_loc2_)
                     {
                        (§0q§.getItemByName("Button_CutScene") as §^'§).setVisibility(true);
                        loop3:
                        while(true)
                        {
                           (§0q§.getItemByName("Button_Menu") as §^'§).x = this.§6!;§[0];
                           if(_loc1_ && _loc1_)
                           {
                              break;
                           }
                           (§0q§.getItemByName("Button_Replay") as §^'§).x = this.§6!;§[1];
                           while(true)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop3;
                           }
                           continue loop0;
                        }
                     }
                     continue;
                  }
               }
               addr18:
               return;
            }
         }
         §§goto(addr189);
      }
      
      protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            (§0q§.getItemByName("Button_Menu") as §^'§).setVisibility(true);
            while(true)
            {
               (§0q§.getItemByName("Button_Replay") as §^'§).setVisibility(true);
               (§0q§.getItemByName("Button_CutScene") as §^'§).setVisibility(false);
               if(§`!K§.§6J§())
               {
                  (§0q§.getItemByName("Button_NextLevel") as §^'§).setVisibility(true);
                  loop1:
                  while(_loc1_)
                  {
                     (§0q§.getItemByName("Button_Menu") as §^'§).x = this.§6!;§[0];
                     while(true)
                     {
                        (§0q§.getItemByName("Button_Replay") as §^'§).x = this.§6!;§[1];
                        if(_loc1_ || this)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     (§0q§.getItemByName("Button_NextLevel") as §^'§).x = this.§6!;§[2];
                     return;
                  }
                  continue;
               }
               (§0q§.getItemByName("Button_NextLevel") as §^'§).setVisibility(false);
               (§0q§.getItemByName("Button_Menu") as §^'§).x = this.§6!;§[0] + Math.abs(this.§6!;§[1] - this.§6!;§[0]) / 2;
               (§0q§.getItemByName("Button_Replay") as §^'§).x = this.§6!;§[1] + Math.abs(this.§6!;§[2] - this.§6!;§[1]) / 2;
               if(_loc2_ && _loc1_)
               {
                  §§goto(addr150);
               }
               §§goto(addr24);
               §§goto(addr150);
            }
         }
         §§goto(addr138);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.activate();
         while(true)
         {
            this.§6§ = false;
            loop1:
            while(true)
            {
               §#! §.pause();
               while(true)
               {
                  this.§!>§ = new §-#§(0,0,0,0);
                  loop3:
                  while(true)
                  {
                     §0q§.movieClip.addChildAt(this.§!>§,§0q§.movieClip.numChildren - 1);
                     if(§`!K§.§ !;§())
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        this.showButtonsCutScene();
                        if(!_loc1_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                     addr102:
                     this.showButtonsNormal();
                     while(true)
                     {
                        continue loop3;
                     }
                  }
               }
            }
            addr72:
            this.§!>§.fadeToAlpha(0.7);
            if(_loc1_ && _loc1_)
            {
               continue;
            }
            this.§`!I§ = 0;
            this.§'^§ = 0;
            addr37:
            if(_loc2_)
            {
               this.§^k§();
               if(!(_loc2_ || _loc2_))
               {
                  §§goto(addr37);
               }
               return;
            }
            §§goto(addr72);
         }
      }
      
      private function §^k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§5z§ = false;
         this.setScoreData();
         this.§+<§ = new Timer(500);
         do
         {
            this.§;#§ = 0;
            this.§+<§.addEventListener(TimerEvent.TIMER,this.§+!N§);
         }
         while(!(_loc2_ || _loc2_));
         
         this.§+<§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(AngryBirdsFP11.§`I§.§`!C§(§`!K§.§5g§) != 100)
            {
               (§0q§.getItemByName("MovieClip_ResultMEFeather") as §!o§).mClip.gotoAndStop("Off");
               if(_loc2_)
               {
                  addr79:
               }
               return;
            }
            if(!_loc2_)
            {
               (§0q§.getItemByName("MovieClip_ResultMEFeather") as §!o§).mClip.gotoAndStop("On");
            }
         }
         §§goto(addr79);
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(!this.§-M§)
            {
               §0q§.setText("Best " + param2.toString(),"TextField_BestScore");
               this.§6!K§ = §`!K§.§;$§(§`!K§.§5g§,param2);
               if(!_loc5_)
               {
                  §§push(this.§6!K§);
                  if(!_loc5_)
                  {
                     var _loc3_:* = §§pop();
                     if(_loc4_)
                     {
                        §§push(1);
                        §§push(_loc3_);
                        if(_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_ || this)
                              {
                                 addr146:
                                 §§push(0);
                                 if(!_loc4_)
                                 {
                                    addr184:
                                    if(§§pop() === _loc3_)
                                    {
                                       addr186:
                                       §§push(2);
                                       if(!_loc5_)
                                       {
                                          addr189:
                                       }
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                 }
                              }
                              else
                              {
                                 addr179:
                                 §§push(1);
                              }
                              addr195:
                              switch(§§pop())
                              {
                                 case 0:
                                    (§0q§.getItemByName("MovieClip_BestScoreStars") as §!o§).§4R§("OneStar");
                                    if(!(_loc5_ && this))
                                    {
                                       addr38:
                                       break;
                                    }
                                    break;
                                 case 1:
                                    (§0q§.getItemByName("MovieClip_BestScoreStars") as §!o§).§4R§("TwoStar");
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    break;
                                 case 2:
                                    (§0q§.getItemByName("MovieClip_BestScoreStars") as §!o§).§4R§("ThreeStar");
                                    if(!_loc5_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr38);
                                    }
                              }
                              return;
                              addr194:
                           }
                           else
                           {
                              §§push(2);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(_loc3_);
                                 if(!_loc5_)
                                 {
                                    addr171:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_ || this)
                                       {
                                          §§goto(addr179);
                                       }
                                       else
                                       {
                                          §§goto(addr186);
                                       }
                                    }
                                    else
                                    {
                                       §§push(3);
                                       if(!_loc5_)
                                       {
                                          §§goto(addr184);
                                       }
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr184);
                              }
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr171);
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr195);
               }
               else
               {
                  addr118:
                  §§push(param1);
                  if(!_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  param2 = §§pop();
                  AngryBirdsFP11.§`I§.§,!0§(§`!K§.§5g§,param2);
                  §0q§.setText("New Highscore!","TextField_BestScore");
                  addr123:
               }
               §§goto(addr195);
            }
            §§goto(addr118);
         }
         §§goto(addr123);
      }
      
      protected function setScoreData() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(AngryBirdsFP11.§`I§.§[u§(§`!K§.§5g§));
         if(!(_loc8_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§#! §.controller.getScore());
         if(_loc7_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc8_ && _loc3_))
         {
            this.§-M§ = _loc2_ > _loc1_;
         }
         while(true)
         {
            while(true)
            {
               this.setScoreStars(_loc2_,_loc1_);
               do
               {
                  this.setMightyEagleFeather();
               }
               while(!(_loc7_ || _loc1_));
               
               if(!(_loc7_ || _loc3_))
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               §§push(§#! §.controller.getEagleScore());
               if(_loc7_ || _loc1_)
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(AngryBirdsFP11.§`I§.§`!C§(§`!K§.§5g§));
               if(_loc7_ || _loc2_)
               {
                  §§push(int(§§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:*;
               if(_loc5_ = _loc3_ > _loc4_)
               {
                  if(!(_loc8_ && _loc2_))
                  {
                     §§push(_loc3_);
                     if(_loc7_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc8_)
                        {
                           _loc4_ = §§pop();
                           if(_loc7_)
                           {
                              §§push(AngryBirdsFP11.§`I§);
                              if(!_loc8_)
                              {
                                 §§push(§`!K§.§5g§);
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    §§push(_loc4_);
                                    if(!_loc8_)
                                    {
                                       §§pop().§6y§(§§pop(),§§pop());
                                       addr160:
                                       §§push(AngryBirdsFP11.§`I§);
                                       §§push(§`!K§.§5g§);
                                       §§push(_loc2_);
                                    }
                                    §§push(§§pop().§7j§(§§pop(),§§pop()));
                                    if(_loc7_ || this)
                                    {
                                       addr170:
                                       var _loc6_:int = §§pop();
                                       if(_loc7_ || _loc1_)
                                       {
                                          (§0q§.getItemByName("MovieClip_NewHighScoreBadge") as §!o§).setVisibility(false);
                                          while(true)
                                          {
                                             (§0q§.getItemByName("MovieClip_StarLeft") as §!o§).mClip.gotoAndStop("UnLit");
                                             loop4:
                                             while(!(_loc8_ && _loc3_))
                                             {
                                                (§0q§.getItemByName("MovieClip_StarCenter") as §!o§).mClip.gotoAndStop("UnLit");
                                                while(true)
                                                {
                                                   (§0q§.getItemByName("MovieClip_StarRight") as §!o§).mClip.gotoAndStop("UnLit");
                                                   if(!_loc8_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                return;
                                             }
                                          }
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr170);
                                 }
                              }
                           }
                           §§goto(addr160);
                        }
                     }
                     §§goto(addr170);
                  }
               }
               §§goto(addr160);
            }
         }
      }
      
      protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(this.§-M§)
         {
            §[!7§.playSound("Hiscore_Badge",§?!M§);
            §0q§.setText("New Highscore!","TextField_NewHighScore");
            (§0q§.getItemByName("TextField_NewHighScore") as §@4§).setVisibility(true);
            loop1:
            while(true)
            {
               (§0q§.getItemByName("MovieClip_BestScoreStars") as §!o§).setVisibility(false);
               addr83:
               while(_loc1_)
               {
                  continue loop1;
               }
               this.§#F§();
            }
         }
         else
         {
            (§0q§.getItemByName("TextField_BestScore") as §@4§).setVisibility(true);
            (§0q§.getItemByName("MovieClip_BestScoreStars") as §!o§).setVisibility(true);
            if(!(_loc1_ && _loc2_))
            {
               if(_loc1_)
               {
                  §§goto(addr83);
               }
               §§goto(addr18);
            }
         }
         addr18:
      }
      
      protected function §#F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§`!I§ = 0;
         }
         while(true)
         {
            this.§'^§ = 0;
            while(!_loc1_)
            {
               this.§2Q§ = §`,§;
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private function §@!,§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).x = (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).x - this.§`!I§;
         (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).y = (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).y - this.§'^§;
         if(this.§2Q§ <= 0)
         {
            this.§2Q§ = -1;
            this.shakingOver();
            this.§`!I§ = 0;
            while(true)
            {
               this.§'^§ = 0;
               loop1:
               for(; _loc3_ || _loc2_; while(true)
               {
                  §§push(this);
                  §§push(this.§2Q§);
                  if(_loc3_ || this)
                  {
                     §§push(param1);
                     if(!(_loc2_ && param1))
                     {
                        §§push(§§pop() / 10);
                     }
                     §§push(§§pop() - §§pop());
                  }
                  §§pop().§2Q§ = §§pop();
                  if(_loc2_ && _loc3_)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc2_)
                        {
                           return;
                        }
                        addr176:
                        while(true)
                        {
                           §§push(this);
                           §§push(Math.random() - 0.5);
                           if(!_loc2_)
                           {
                              §§push(this.§2Q§);
                              if(_loc3_)
                              {
                                 §§push(§§pop() / §`,§);
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc3_ || param1)
                              {
                                 §§push(§§pop() * 20);
                              }
                           }
                           §§pop().§`!I§ = §§pop();
                           §§goto(addr200);
                        }
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr120);
                  §§goto(addr127);
               })
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  addr200:
                  while(true)
                  {
                     §§push(this);
                     §§push(Math.random() - 0.5);
                     if(_loc3_)
                     {
                        §§push(this.§2Q§);
                        if(!_loc2_)
                        {
                           §§push(§§pop() / §`,§);
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc3_ || _loc3_)
                        {
                           addr167:
                           §§push(§§pop() * 20);
                        }
                        §§pop().§'^§ = §§pop();
                        while(true)
                        {
                           (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).x = (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).x + this.§`!I§;
                           loop3:
                           while(true)
                           {
                              (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).y = (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).y + this.§'^§;
                              addr120:
                              addr127:
                              while(!(_loc3_ || param1))
                              {
                                 continue loop3;
                              }
                              continue loop1;
                           }
                        }
                        addr170:
                     }
                     §§goto(addr167);
                  }
               }
            }
         }
         §§goto(addr176);
      }
      
      protected function shakingOver() : void
      {
      }
      
      private function §+!N§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §`!K§.§!I§(§`!K§.§5g§).§,!<§;
         var _loc5_:Number = §`!K§.§!I§(§`!K§.§5g§).§@w§;
         if((§0q§.getItemByName("MovieClip_StarLeft") as §!o§).mClip.currentLabel == "UnLit")
         {
            §[!7§.playSound("Hiscore_Count",§%8§,100);
            §[!7§.playSound("Hiscore_Star_Splash1",§?!M§);
            this.§+<§.delay = 1000;
            addr688:
            §§push(this.§^!A§);
         }
         else
         {
            §§push(this.§^!A§);
            loop0:
            while(!(_loc9_ && this))
            {
               §§push(§§pop().getValue());
               loop1:
               while(true)
               {
                  §§push(_loc5_);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() >= §§pop());
                     §§push(§§pop() >= §§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              §§push((§0q§.getItemByName("MovieClip_StarCenter") as §!o§).mClip.currentLabel == "UnLit");
                           }
                           addr533:
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc10_ || this)
                                 {
                                    §[!7§.playSound("Hiscore_Star_Splash2",§?!M§);
                                 }
                                 (§0q§.getItemByName("MovieClip_StarCenter") as §!o§).mClip.gotoAndStop("Lit");
                                 _loc2_ = Number((§0q§.getItemByName("MovieClip_StarCenter") as §!o§).x + (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).x);
                                 addr479:
                                 if(!_loc9_)
                                 {
                                    §§goto(addr461);
                                 }
                                 addr515:
                                 §§goto(addr515);
                              }
                              else
                              {
                                 §§push(this.§^!A§);
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 if(_loc10_ || this)
                                 {
                                    §§push(§§pop().getValue());
                                    if(!_loc10_)
                                    {
                                       continue loop1;
                                    }
                                    if(!_loc9_)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc10_)
                                       {
                                          continue loop2;
                                       }
                                       if(!(_loc9_ && this))
                                       {
                                          §§push(§§pop() >= §§pop());
                                          if(!(_loc9_ && _loc2_))
                                          {
                                             §§push(§§pop());
                                             loop7:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr414:
                                                      while(true)
                                                      {
                                                         §§push((§0q§.getItemByName("MovieClip_StarRight") as §!o§).mClip.currentLabel == "UnLit");
                                                         addr359:
                                                         while(_loc10_)
                                                         {
                                                         }
                                                         §§goto(addr533);
                                                      }
                                                   }
                                                   addr413:
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§push(this.§##§);
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            this.§+<§.stop();
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(this.§-M§);
                                                               if(_loc10_ || this)
                                                               {
                                                                  if(_loc9_ && _loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc9_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(!(_loc10_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        while(_loc10_)
                                                                        {
                                                                           §§pop();
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§5z§);
                                                                              if(_loc9_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       (§0q§.getItemByName("MovieClip_NewHighScoreBadge") as §!o§).setVisibility(false);
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§=r§ = §3C§.§>o§.§<t§((§0q§.getItemByName("MovieClip_NewHighScoreBadge") as §!o§).mClip,{
                                                                                             "scaleX":1,
                                                                                             "scaleY":1
                                                                                          },{
                                                                                             "scaleX":7,
                                                                                             "scaleY":7
                                                                                          },0.1);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                             if(_loc9_ && this)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§=r§);
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().onComplete = this.onBadgeLanded;
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc10_ || this))
                                                                                                            {
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            if(!(_loc9_ && param1))
                                                                                                            {
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            addr259:
                                                                                                            if(!(_loc9_ && param1))
                                                                                                            {
                                                                                                               §0q§.addChild(this.§-!"§);
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  if(_loc10_ || this)
                                                                                                                  {
                                                                                                                     if(!(_loc9_ && this))
                                                                                                                     {
                                                                                                                        this.§`!1§.push(this.§-!"§);
                                                                                                                        addr245:
                                                                                                                        if(!(_loc10_ || _loc3_))
                                                                                                                        {
                                                                                                                           loop24:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc10_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(Number((§0q§.getItemByName("MovieClip_StarRight") as §!o§).x + (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).x));
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc2_ = §§pop();
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(Number((§0q§.getItemByName("MovieClip_StarRight") as §!o§).y + (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).y));
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc9_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             break loop17;
                                                                                                                                          }
                                                                                                                                          this.§-!"§ = new §=!=§(AngryBirdsFP11.§3!<§,AngryBirdsFP11.§8!4§,_loc2_,_loc3_,§=!=§.§,F§);
                                                                                                                                          §§goto(addr259);
                                                                                                                                       }
                                                                                                                                       addr287:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr461:
                                                                                                                                       _loc3_ = Number((§0q§.getItemByName("MovieClip_StarCenter") as §!o§).y + (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).y);
                                                                                                                                       this.§-!"§ = new §=!=§(AngryBirdsFP11.§3!<§,AngryBirdsFP11.§8!4§,_loc2_,_loc3_,§=!=§.§;A§);
                                                                                                                                       §§goto(addr443);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§6§ = true;
                                                                                                                                    if(!(_loc10_ || this))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §[!7§.playSound("Hiscore_Star_Splash3",§?!M§);
                                                                                                                                 }
                                                                                                                                 addr650:
                                                                                                                                 §§push(1);
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                    addr627:
                                                                                                                                    this.§@z§ = §3C§.§>o§.§<t§(this,{"mNewScoreCounter":this.§^!A§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                                                                                                    break loop17;
                                                                                                                                    addr655:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr661:
                                                                                                                                    §§push(§§pop() / _loc4_);
                                                                                                                                    §§push(2);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       addr664:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          §§push(0);
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          if(§§pop() <= §§pop())
                                                                                                                                          {
                                                                                                                                             §§goto(addr650);
                                                                                                                                          }
                                                                                                                                          §§goto(addr627);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr363:
                                                                                                                                 addr660:
                                                                                                                              }
                                                                                                                              while(!_loc9_)
                                                                                                                              {
                                                                                                                                 (§0q§.getItemByName("MovieClip_StarRight") as §!o§).mClip.gotoAndStop("Lit");
                                                                                                                                 continue loop24;
                                                                                                                              }
                                                                                                                              addr443:
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 §§goto(addr479);
                                                                                                                              }
                                                                                                                              §0q§.addChild(this.§-!"§);
                                                                                                                              this.§`!1§.push(this.§-!"§);
                                                                                                                              §§goto(addr421);
                                                                                                                           }
                                                                                                                           addr421:
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              this.§-!"§ = new §=!=§(AngryBirdsFP11.§3!<§,AngryBirdsFP11.§8!4§,_loc2_,_loc3_,§=!=§.§^!$§);
                                                                                                                              §0q§.addChild(this.§-!"§);
                                                                                                                              this.§`!1§.push(this.§-!"§);
                                                                                                                              addr585:
                                                                                                                           }
                                                                                                                           §§goto(addr714);
                                                                                                                        }
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           §§goto(addr461);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           _loc2_ = Number((§0q§.getItemByName("MovieClip_StarLeft") as §!o§).x + (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).x);
                                                                                                                           §§push(Number((§0q§.getItemByName("MovieClip_StarLeft") as §!o§).y + (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).y));
                                                                                                                           if(!(_loc10_ || _loc2_))
                                                                                                                           {
                                                                                                                              §§goto(addr664);
                                                                                                                           }
                                                                                                                           _loc3_ = §§pop();
                                                                                                                           §§goto(addr585);
                                                                                                                           addr612:
                                                                                                                        }
                                                                                                                        §§goto(addr461);
                                                                                                                     }
                                                                                                                     §§goto(addr655);
                                                                                                                  }
                                                                                                                  §§goto(addr461);
                                                                                                               }
                                                                                                               §§goto(addr414);
                                                                                                            }
                                                                                                            §§goto(addr287);
                                                                                                         }
                                                                                                         continue loop21;
                                                                                                         addr143:
                                                                                                      }
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(this.§=r§);
                                                                                                         if(!(_loc9_ && _loc2_))
                                                                                                         {
                                                                                                            §§pop().play();
                                                                                                            if(!(_loc9_ && param1))
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               §§goto(addr714);
                                                                                                            }
                                                                                                            addr714:
                                                                                                            var _loc7_:*;
                                                                                                            §§push((_loc7_ = this).§;#§);
                                                                                                         }
                                                                                                         continue loop16;
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                         }
                                                                                                         var _loc8_:* = §§pop();
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            _loc7_.§;#§ = _loc8_;
                                                                                                         }
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr688);
                                                                                                      §§goto(addr461);
                                                                                                   }
                                                                                                   §§push(this.§@z§);
                                                                                                   do
                                                                                                   {
                                                                                                      §§pop().onComplete = this.§#!!§;
                                                                                                      §§push(this.§@z§);
                                                                                                   }
                                                                                                   while(_loc9_);
                                                                                                   
                                                                                                   §§pop().play();
                                                                                                   (§0q§.getItemByName("MovieClip_StarLeft") as §!o§).mClip.gotoAndStop("Lit");
                                                                                                   §§goto(addr612);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr204:
                                                                                                   this.§##§ = true;
                                                                                                   break loop14;
                                                                                                }
                                                                                                (§0q§.getItemByName("MovieClip_NewHighScoreBadge") as §!o§).setVisibility(true);
                                                                                             }
                                                                                             addr134:
                                                                                          }
                                                                                          §§goto(addr143);
                                                                                       }
                                                                                       §§goto(addr461);
                                                                                    }
                                                                                    §§goto(addr134);
                                                                                 }
                                                                                 addr133:
                                                                              }
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        continue loop6;
                                                                        addr187:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr132:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     continue loop9;
                                                                     §§goto(addr133);
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               §§goto(addr187);
                                                            }
                                                            §§goto(addr359);
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                   }
                                                   §§goto(addr363);
                                                }
                                             }
                                          }
                                          §§goto(addr413);
                                       }
                                       §§goto(addr661);
                                    }
                                    §§goto(addr650);
                                 }
                                 §§goto(addr660);
                                 §§push(§§pop().getValue());
                              }
                              §§goto(addr585);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§pop().assign(§#! §.controller.getScore());
         if(!_loc9_)
         {
            §§goto(addr659);
            §§push(this.§^!A§);
         }
         §§goto(addr461);
      }
      
      private function §#!!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[!7§.§9!K§(§%8§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§=!=§ = null;
         §§push(super.run(param1));
         if(_loc7_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_)
         {
            §§push(_loc2_);
            if(_loc7_ || param1)
            {
               if(§§pop() == §'!#§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §0q§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                     do
                     {
                        §0q§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                     }
                     while(_loc6_ && _loc3_);
                     
                     if(_loc6_ && param1)
                     {
                        continue;
                     }
                     if(_loc7_)
                     {
                        while(true)
                        {
                           if(true)
                           {
                              §§push(0);
                           }
                           continue loop0;
                        }
                        addr58:
                     }
                  }
                  addr95:
                  for each(_loc3_ in this.§`!1§)
                  {
                     if(_loc7_ || _loc2_)
                     {
                        _loc3_.update(param1);
                     }
                  }
                  if(_loc7_)
                  {
                     if(this.§2Q§ > -1)
                     {
                        while(true)
                        {
                           this.§@!,§(param1);
                           addr184:
                           addr159:
                           while(true)
                           {
                           }
                           if(!(_loc7_ || _loc3_))
                           {
                              continue;
                           }
                           while(true)
                           {
                              §#! §.§`'§.clearLevel();
                              if(_loc7_ || _loc2_)
                              {
                                 break;
                              }
                              §§goto(addr184);
                           }
                           return §'!#§.STATE_STATUS_COMPLETED;
                           addr166:
                        }
                     }
                     while(mNextState.length > 0)
                     {
                        §§goto(addr159);
                        §§goto(addr184);
                     }
                     return §'!#§.STATE_STATUS_RUNNING;
                  }
                  §§goto(addr166);
               }
               §§push(_loc2_);
               if(_loc7_)
               {
                  return §§pop();
               }
            }
            §§goto(addr95);
         }
         §§goto(addr58);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.deActivate();
            this.§9<§();
            this.§2Q§ = 0;
            loop0:
            while(true)
            {
               this.mNewScoreCounter = 0;
               §§push(this.§@z§);
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop())
                  {
                     addr176:
                     this.§@z§.stop();
                     this.§@z§ = null;
                     while(true)
                     {
                     }
                     addr162:
                  }
                  loop1:
                  while(true)
                  {
                     §§push(this.§=r§);
                     if(_loc2_)
                     {
                        if(!§§pop())
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           §§push(this.§=r§);
                        }
                     }
                     while(true)
                     {
                        §§pop().stop();
                        addr147:
                        while(true)
                        {
                           this.§=r§ = null;
                           if(!(_loc2_ || _loc2_))
                           {
                              addr137:
                              break;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
               §§goto(addr176);
            }
         }
         §§goto(addr144);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§0q§.getItemByName("Button_Menu") as §^'§).setComponentVisualState(param1);
            while(true)
            {
               (§0q§.getItemByName("Button_Replay") as §^'§).setComponentVisualState(param1);
               §§goto(addr90);
            }
         }
         addr90:
         while(true)
         {
            (§0q§.getItemByName("Button_NextLevel") as §^'§).setComponentVisualState(param1);
            do
            {
               (§0q§.getItemByName("Button_CutScene") as §^'§).setComponentVisualState(param1);
            }
            while(!(_loc2_ || this));
            
            if(_loc2_ || _loc2_)
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §9<§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var splash:§=!=§ = null;
         if(!_loc4_)
         {
            if(this.§+<§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr37:
                  this.§+<§.stop();
               }
               try
               {
                  this.§+<§.removeEventListener(TimerEvent.TIMER,this.§+!N§);
                  if(!_loc5_)
                  {
                  }
               }
               catch(e:Error)
               {
               }
               do
               {
                  this.hideBestScoreTexts();
               }
               while(!_loc5_);
               
               return;
               addr171:
               addr164:
            }
            var _loc2_:int = 0;
            if(_loc5_)
            {
               var _loc3_:* = this.§`!1§;
               if(!_loc4_)
               {
                  loop1:
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     loop2:
                     while(true)
                     {
                        §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                        loop3:
                        while(true)
                        {
                           addr104:
                           while(true)
                           {
                              if(!§0q§.contains(splash))
                              {
                                 continue loop2;
                              }
                              if(!_loc5_)
                              {
                                 continue loop3;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
                  addr146:
                  if(_loc5_ || _loc2_)
                  {
                     this.§`!1§ = new Vector.<§=!=§>();
                     §§goto(addr171);
                  }
                  §§goto(addr164);
               }
               while(true)
               {
                  §0q§.removeChild(splash);
                  §§goto(addr116);
               }
            }
            §§goto(addr146);
         }
         §§goto(addr37);
      }
      
      protected function hideBestScoreTexts() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§0q§.getItemByName("TextField_BestScore") as §@4§).setVisibility(false);
            while(true)
            {
               (§0q§.getItemByName("MovieClip_BestScoreStars") as §!o§).setVisibility(false);
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            (§0q§.getItemByName("TextField_NewHighScore") as §@4§).setVisibility(false);
            if(_loc2_ || _loc2_)
            {
               if(!(_loc1_ && this))
               {
                  break;
               }
               continue loop0;
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
      
      protected function §=1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-O§.§ b§();
            do
            {
               mNextState = this.§5!>§();
            }
            while(_loc2_ && this);
            
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:String = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               §§push("NEXT_LEVEL");
               if(_loc6_)
               {
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || param1)
                        {
                           §§push(0);
                           if(_loc6_ || param3)
                           {
                           }
                        }
                        else
                        {
                           addr259:
                           §§push(4);
                           if(_loc6_)
                           {
                              addr262:
                           }
                        }
                        addr267:
                        switch(§§pop())
                        {
                           case 0:
                              this.§=1§();
                              break;
                           case 1:
                              §-O§.§8!5§();
                              mNextState = this.§#0§();
                              break loop0;
                              addr136:
                           case 2:
                              §-O§.§8!5§();
                              mNextState = this.§#0§();
                              if(_loc6_)
                              {
                                 §§push(§#! §.§`'§);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop().§2?§());
                                    if(_loc6_ || param1)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc6_ || param2))
                                       {
                                          if(§§pop())
                                          {
                                             addr91:
                                             §#! §.§`'§.§-j§(_loc4_);
                                             if(_loc7_ && this)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr88:
                                       }
                                       continue;
                                       break loop0;
                                    }
                                    continue;
                                 }
                                 §§goto(addr91);
                              }
                              break loop0;
                           case 3:
                              §[!7§.§=0§();
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr136);
                              }
                              break;
                           case 4:
                              AngryBirdsFP11.§`y§.§,,§();
                              if(!_loc7_)
                              {
                                 if(_loc6_ || this)
                                 {
                                    if(true)
                                    {
                                       break loop0;
                                    }
                                    §§goto(addr37);
                                 }
                                 else
                                 {
                                    §§goto(addr91);
                                 }
                              }
                        }
                        break;
                     }
                     §§push("REPLAY");
                     if(!_loc7_)
                     {
                        addr175:
                        §§push(_loc5_);
                        if(_loc6_ || param3)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_)
                              {
                                 §§push(1);
                                 if(!(_loc6_ || param1))
                                 {
                                    §§goto(addr262);
                                 }
                              }
                              else
                              {
                                 addr214:
                                 §§push(2);
                                 if(_loc7_ && param3)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push("WATCH_REPLAY");
                              if(!(_loc7_ && param1))
                              {
                                 §§push(_loc5_);
                                 if(!(_loc7_ && param2))
                                 {
                                    addr211:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          §§goto(addr214);
                                       }
                                       else
                                       {
                                          addr247:
                                          §§push(3);
                                          if(_loc6_ || param2)
                                          {
                                             §§goto(addr267);
                                          }
                                          else
                                          {
                                             §§goto(addr262);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push("MENU");
                                       if(!_loc6_)
                                       {
                                       }
                                       addr258:
                                       if(§§pop() === _loc5_)
                                       {
                                          §§goto(addr259);
                                       }
                                       else
                                       {
                                          §§goto(addr267);
                                          §§push(5);
                                       }
                                    }
                                    §§goto(addr267);
                                 }
                                 §§goto(addr258);
                              }
                              §§push(_loc5_);
                              if(!(_loc7_ && param2))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       §§goto(addr247);
                                    }
                                    else
                                    {
                                       §§goto(addr259);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr258);
                                    §§push("FULLSCREEN_BUTTON");
                                 }
                                 §§goto(addr259);
                              }
                              §§goto(addr258);
                           }
                           §§goto(addr267);
                        }
                     }
                     §§goto(addr258);
                     §§goto(addr259);
                  }
                  §§goto(addr211);
               }
               §§goto(addr175);
            }
            §§goto(addr214);
         }
      }
      
      protected function §#0§() : String
      {
         return §-O§.§-A§;
      }
      
      protected function §5!>§() : String
      {
         return StateCutScene.§-A§;
      }
      
      public function §2V§() : String
      {
         return §0!5§.§-A§;
      }
   }
}
