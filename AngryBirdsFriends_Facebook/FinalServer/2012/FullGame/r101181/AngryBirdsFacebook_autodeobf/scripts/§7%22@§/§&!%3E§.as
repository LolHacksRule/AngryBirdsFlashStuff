package §7"@§
{
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §&q§.§%1§;
   import §&q§.§'!T§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§=!&§;
   import §4!e§.§-"E§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §<a§.§9U§;
   import §]!A§.;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §&!>§ extends §1-§
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
      
      public static const §,x§:Number = 30;
      
      protected static const §^e§:String = "ScoreLoopCountChannel";
      
      protected static const § A§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            STATE_NAME = "LevelEndStateRio";
            while(true)
            {
               §,x§ = 30;
               loop1:
               while(_loc1_ || §&!>§)
               {
                  while(true)
                  {
                     §^e§ = "ScoreLoopCountChannel";
                     do
                     {
                        § A§ = "EndScreenEffectChannel";
                     }
                     while(!(_loc1_ || _loc2_));
                     
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr78);
      }
      
      private var §<!-§:§"m§;
      
      private var §<!K§:Number;
      
      private var §3"@§:Number = 0.0;
      
      private var §-!B§:Number = 0.0;
      
      private var §>"&§:Boolean = false;
      
      private var §'!b§:Timer;
      
      private var §-9§:§%1§;
      
      protected var §]4§:Array;
      
      protected var §1!r§:§'!T§;
      
      protected var §;"F§:Vector.<§'!T§>;
      
      public var mNewScoreCounter:int;
      
      private var §3!Y§:int;
      
      private var §2">§:Boolean;
      
      protected var §[!3§:Boolean;
      
      private var §?!v§:§9U§;
      
      protected var §%"1§:Boolean;
      
      private var §?"F§:§"m§;
      
      protected var §^z§:Boolean;
      
      protected var §9!=§:int;
      
      public function §&!>§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§]4§ = [];
            do
            {
               this.§?!v§ = new §9U§();
               do
               {
                  super(param1,param2);
               }
               while(_loc4_);
               
            }
            while(!(_loc3_ || param2));
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            while(true)
            {
               §6w§ = new §7!A§(this);
               addr97:
               while(_loc2_)
               {
                  §6w§.init(this.§8!f§());
                  loop2:
                  while(true)
                  {
                     this.§2r§();
                     loop3:
                     while(true)
                     {
                        this.§;"F§ = new Vector.<§'!T§>();
                        while(_loc2_)
                        {
                           §>!E§.§0I§(§^e§,1,1);
                           while(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 continue;
                              }
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §>!E§.§0I§(§ A§,3,1);
            if(_loc2_ || _loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr97);
            }
            §§goto(addr56);
         }
      }
      
      protected function §2r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§]4§);
            loop0:
            while(true)
            {
               §§pop().push((§6w§.getItemByName("Button_Menu") as §^!D§).x);
               loop1:
               while(true)
               {
                  §§push(this.§]4§);
                  loop2:
                  while(_loc2_)
                  {
                     §§pop().push((§6w§.getItemByName("Button_Replay") as §^!D§).x);
                     loop3:
                     while(true)
                     {
                        §§push(this.§]4§);
                        loop4:
                        while(_loc2_)
                        {
                           §§pop().push((§6w§.getItemByName("Button_NextLevel") as §^!D§).x);
                           while(_loc2_)
                           {
                              continue loop4;
                              §§pop().push((§6w§.getItemByName("Button_CutScene") as §^!D§).x);
                              §§push(this.§]4§);
                              if(!_loc2_)
                              {
                                 continue loop4;
                              }
                              §§goto(addr29);
                              if(!_loc1_)
                              {
                                 if(_loc2_ || this)
                                 {
                                    return;
                                    addr55:
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr55);
      }
      
      protected function §8!f§() : XML
      {
         return § "A§.§4[§.Views.View_LevelEndRio[0];
      }
      
      protected function §^7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(AngryBirdsFP11.sUserProgress.§%6§(LevelManager.§'!O§))
            {
               (§6w§.getItemByName("Button_Menu") as §^!D§).setVisibility(true);
               loop0:
               for(; !_loc2_; loop2:
               for(; _loc1_ || _loc1_; while(true)
               {
                  if(!(_loc1_ || _loc1_))
                  {
                     continue loop2;
                  }
                  if(_loc1_)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        (§6w§.getItemByName("Button_Replay") as §^!D§).x = this.§]4§[1];
                        addr65:
                        §§goto(addr24);
                     }
                     break;
                  }
                  §§goto(addr151);
                  §§goto(addr46);
               },§§goto(addr230))
               {
                  (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(true);
                  while(true)
                  {
                     (§6w§.getItemByName("Button_Menu") as §^!D§).x = this.§]4§[0];
                     continue loop2;
                     §§goto(addr65);
                  }
               })
               {
                  if(_loc1_ || _loc2_)
                  {
                     (§6w§.getItemByName("Button_Replay") as §^!D§).setVisibility(true);
                     while(true)
                     {
                        (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
                        continue loop0;
                     }
                     addr151:
                  }
                  else
                  {
                     (§6w§.getItemByName("Button_Replay") as §^!D§).setVisibility(true);
                     (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
                     loop8:
                     while(_loc1_ || _loc1_)
                     {
                        (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(true);
                        while(true)
                        {
                           (§6w§.getItemByName("Button_Replay") as §^!D§).x = this.§]4§[0] + Math.abs(this.§]4§[1] - this.§]4§[0]) / 2;
                           addr230:
                           if(!_loc2_)
                           {
                              (§6w§.getItemByName("Button_CutScene") as §^!D§).x = this.§]4§[1] + Math.abs(this.§]4§[2] - this.§]4§[1]) / 2;
                              break loop0;
                              addr232:
                           }
                           continue loop8;
                        }
                     }
                     while(true)
                     {
                        (§6w§.getItemByName("Button_Menu") as §^!D§).setVisibility(false);
                        §§goto(addr290);
                        §§goto(addr250);
                     }
                     addr290:
                     addr250:
                     addr276:
                     addr283:
                  }
               }
               while(!(_loc1_ || _loc2_))
               {
                  §§goto(addr241);
                  §§goto(addr232);
               }
               addr24:
               while(true)
               {
                  if(_loc2_ && this)
                  {
                     continue loop3;
                  }
                  if(!(_loc2_ && _loc1_))
                  {
                     continue;
                  }
                  §§goto(addr276);
               }
               return;
            }
            §§goto(addr283);
         }
         §§goto(addr241);
      }
      
      protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            (§6w§.getItemByName("Button_Menu") as §^!D§).setVisibility(true);
            while(true)
            {
               (§6w§.getItemByName("Button_Replay") as §^!D§).setVisibility(true);
               loop1:
               while(true)
               {
                  (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(false);
                  loop2:
                  while(true)
                  {
                     if(!LevelManager.§6!M§())
                     {
                        (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
                        while(_loc2_)
                        {
                           (§6w§.getItemByName("Button_Menu") as §^!D§).x = this.§]4§[0] + Math.abs(this.§]4§[1] - this.§]4§[0]) / 2;
                           while(true)
                           {
                              if(_loc2_ || this)
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 if(_loc1_ && this)
                                 {
                                    continue;
                                 }
                                 if(!_loc1_)
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop1;
                           }
                           return;
                        }
                        while(true)
                        {
                           if(!(_loc2_ || _loc1_))
                           {
                              continue loop2;
                           }
                           §§goto(addr25);
                        }
                        addr126:
                     }
                     while(true)
                     {
                        (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(true);
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            loop0:
            while(true)
            {
               this.§^z§ = false;
               loop1:
               while(true)
               {
                  §#6§.pause();
                  loop2:
                  while(true)
                  {
                     this.§-9§ = new §%1§(0,0,0,0);
                     loop3:
                     while(true)
                     {
                        §6w§.movieClip.addChildAt(this.§-9§,§6w§.movieClip.numChildren - 1);
                        loop4:
                        while(true)
                        {
                           if(LevelManager.§%^§())
                           {
                              continue loop0;
                           }
                           this.showButtonsNormal();
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 this.mNewScoreCounter = 0;
                                 loop7:
                                 while(!_loc2_)
                                 {
                                    this.§2">§ = false;
                                    while(!_loc2_)
                                    {
                                       §>!E§.§7N§(this.§3"5§);
                                       while(_loc1_ || _loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             this.§-9§.§?!,§(0.7);
                                             while(!_loc2_)
                                             {
                                                if(!_loc1_)
                                                {
                                                   continue loop1;
                                                }
                                                this.§3"@§ = 0;
                                                while(true)
                                                {
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(!(_loc1_ || _loc1_))
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop7;
                                                }
                                                while(true)
                                                {
                                                   continue loop6;
                                                }
                                             }
                                             continue loop3;
                                          }
                                          continue loop4;
                                          if(_loc1_ || this)
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                break loop6;
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    continue loop2;
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
         while(true)
         {
            this.§^7§();
            §§goto(addr144);
         }
      }
      
      protected function get §3"5§() : String
      {
         return "LevelCompletedTheme1";
      }
      
      private function §;5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§[!3§ = false;
            while(true)
            {
               this.setScoreData();
               while(_loc2_)
               {
                  loop3:
                  while(_loc2_ || _loc2_)
                  {
                     this.§3!Y§ = 0;
                     while(true)
                     {
                        this.§'!b§.addEventListener(TimerEvent.TIMER,this.§6!!§);
                        while(!(_loc1_ && this))
                        {
                           this.§'!b§.start();
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 return;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§'!b§ = new Timer(500);
            §§goto(addr80);
         }
      }
      
      protected function § w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§'!O§) != 100)
            {
               (§6w§.getItemByName("MovieClip_ResultMEFeather") as §7"-§).mClip.gotoAndStop("Off");
               if(_loc1_ || _loc2_)
               {
                  if(!(_loc1_ || _loc2_))
                  {
                     addr76:
                     (§6w§.getItemByName("MovieClip_ResultMEFeather") as §7"-§).mClip.gotoAndStop("On");
                     addr84:
                  }
                  else
                  {
                     addr68:
                  }
                  return;
               }
               §§goto(addr84);
            }
            §§goto(addr76);
         }
         §§goto(addr68);
      }
      
      protected function §[=§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(!this.§%"1§)
            {
               §6w§.setText("Best " + param2.toString(),"TextField_BestScore");
               while(true)
               {
                  if(_loc5_ || param2)
                  {
                     continue;
                  }
               }
               AngryBirdsFP11.sUserProgress.§["$§(LevelManager.§'!O§,param2);
               §§goto(addr123);
               addr137:
            }
         }
         §§push(param1);
         if(_loc5_ || this)
         {
            §§push(int(§§pop()));
         }
         param2 = §§pop();
         §§goto(addr137);
      }
      
      protected function setScoreData() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§'!O§));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§#6§.§'" §.getScore());
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_)
         {
            this.§%"1§ = _loc2_ > _loc1_;
         }
         while(true)
         {
            while(true)
            {
               this.§[=§(_loc2_,_loc1_);
               do
               {
                  this.§ w§();
               }
               while(_loc8_);
               
               if(_loc8_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               §§push(§#6§.§'" §.getEagleScore());
               if(!(_loc8_ && this))
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§'!O§));
               if(!(_loc8_ && _loc2_))
               {
                  §§push(int(§§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:*;
               if(_loc5_ = _loc3_ > _loc4_)
               {
                  if(_loc7_)
                  {
                     §§push(_loc3_);
                     if(!(_loc8_ && _loc2_))
                     {
                        §§push(int(§§pop()));
                        if(_loc7_)
                        {
                           _loc4_ = §§pop();
                           if(_loc7_)
                           {
                              addr114:
                              §§push(AngryBirdsFP11.sUserProgress);
                              if(!_loc8_)
                              {
                                 §§push(LevelManager.§'!O§);
                                 if(_loc7_)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc8_)
                                    {
                                       §§pop().§<!,§(§§pop(),§§pop());
                                       addr130:
                                       §§push(AngryBirdsFP11.sUserProgress);
                                       §§push(LevelManager.§'!O§);
                                       §§push(_loc2_);
                                    }
                                    §§push(§§pop().getStarsForLevel(§§pop(),§§pop()));
                                    if(_loc8_)
                                    {
                                    }
                                    §§goto(addr135);
                                 }
                              }
                           }
                           §§goto(addr130);
                        }
                     }
                     addr135:
                     var _loc6_:int = §§pop();
                     if(!(_loc8_ && _loc3_))
                     {
                        (§6w§.getItemByName("MovieClip_NewHighScoreBadge") as §7"-§).setVisibility(false);
                     }
                     do
                     {
                        (§6w§.getItemByName("MovieClip_StarLeft") as §7"-§).mClip.gotoAndStop("UnLit");
                        do
                        {
                           (§6w§.getItemByName("MovieClip_StarCenter") as §7"-§).mClip.gotoAndStop("UnLit");
                           do
                           {
                              (§6w§.getItemByName("MovieClip_StarRight") as §7"-§).mClip.gotoAndStop("UnLit");
                           }
                           while(!_loc7_);
                           
                        }
                        while(!_loc7_);
                        
                     }
                     while(!(_loc7_ || this));
                     
                     return;
                  }
                  §§goto(addr114);
               }
               §§goto(addr130);
            }
         }
      }
      
      protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§%"1§)
            {
               (§6w§.getItemByName("TextField_BestScore") as §-"E§).setVisibility(true);
               do
               {
                  (§6w§.getItemByName("MovieClip_BestScoreStars") as §7"-§).setVisibility(true);
               }
               while(!_loc2_);
               
               if(_loc2_ || _loc2_)
               {
                  if(!(_loc2_ || _loc2_))
                  {
                     loop1:
                     while(true)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           (§6w§.getItemByName("MovieClip_BestScoreStars") as §7"-§).setVisibility(false);
                           while(true)
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 this.§@1§();
                                 continue;
                              }
                           }
                           continue;
                        }
                        addr139:
                        while(true)
                        {
                           §>!E§.§7N§("Hiscore_Badge",§ A§);
                        }
                        while(true)
                        {
                           §6w§.setText("New Highscore!","TextField_NewHighScore");
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr20);
               }
               §§goto(addr73);
            }
            §§goto(addr139);
         }
         §§goto(addr135);
      }
      
      protected function §@1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§3"@§ = 0;
            do
            {
               this.§-!B§ = 0;
               do
               {
                  this.§<!K§ = §,x§;
               }
               while(_loc1_ && _loc1_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      private function §6!o§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§6w§.getItemByName("Container_LevelEndStripe") as §08§).x = (§6w§.getItemByName("Container_LevelEndStripe") as §08§).x - this.§3"@§;
            while(true)
            {
               (§6w§.getItemByName("Container_LevelEndStripe") as §08§).y = (§6w§.getItemByName("Container_LevelEndStripe") as §08§).y - this.§-!B§;
               loop1:
               for(; !(_loc2_ && this); if(!(_loc3_ || param1))
               {
                  continue;
               },§§goto(addr24))
               {
                  if(this.§<!K§ <= 0)
                  {
                     this.§<!K§ = -1;
                     while(true)
                     {
                        this.§;!b§();
                        loop3:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              this.§3"@§ = 0;
                              loop4:
                              while(true)
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    this.§-!B§ = 0;
                                 }
                                 else
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§<!K§);
                                             if(!(_loc2_ && param1))
                                             {
                                                §§push(param1);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop() / 10);
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             §§pop().§<!K§ = §§pop();
                                             if(_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             §§goto(addr118);
                                          }
                                          addr118:
                                          return;
                                          addr24:
                                          addr60:
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(Math.random() - 0.5);
                                          if(_loc3_)
                                          {
                                             addr170:
                                             §§push(this.§<!K§);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() / §,x§);
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(_loc3_ || this)
                                             {
                                                addr168:
                                                §§push(§§pop() * 20);
                                             }
                                             §§pop().§-!B§ = §§pop();
                                             while(true)
                                             {
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   (§6w§.getItemByName("Container_LevelEndStripe") as §08§).x = (§6w§.getItemByName("Container_LevelEndStripe") as §08§).x + this.§3"@§;
                                                   while(true)
                                                   {
                                                      (§6w§.getItemByName("Container_LevelEndStripe") as §08§).y = (§6w§.getItemByName("Container_LevelEndStripe") as §08§).y + this.§-!B§;
                                                      continue loop8;
                                                   }
                                                   addr145:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(Math.random() - 0.5);
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         §§push(this.§<!K§);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§push(§§pop() / §,x§);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc3_)
                                                         {
                                                            addr210:
                                                            §§push(§§pop() * 20);
                                                         }
                                                         §§pop().§3"@§ = §§pop();
                                                         continue loop9;
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   addr184:
                                                }
                                                §§goto(addr170);
                                             }
                                             addr171:
                                          }
                                          §§goto(addr168);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop4;
                                    §§goto(addr24);
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr145);
                        }
                     }
                  }
                  §§goto(addr184);
               }
            }
         }
         §§goto(addr24);
      }
      
      protected function §;!b§() : void
      {
      }
      
      private function §6!!§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = LevelManager.§1A§(LevelManager.§'!O§).§-z§;
         var _loc5_:Number = LevelManager.§1A§(LevelManager.§'!O§).§4Z§;
         if(_loc10_)
         {
            if((§6w§.getItemByName("MovieClip_StarLeft") as §7"-§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§?!v§);
               loop0:
               for(; !(_loc9_ && this); §§push(this.§?!v§),if(!(_loc10_ || param1))
               {
                  continue;
               },if(_loc10_)
               {
                  §§push(§§pop().getValue());
                  if(!_loc9_)
                  {
                     if(_loc10_ || _loc3_)
                     {
                        if(_loc10_ || _loc2_)
                        {
                           §§push(_loc4_);
                           if(_loc10_ || this)
                           {
                              §§goto(addr504);
                              §§push(§§pop() >= §§pop());
                           }
                           §§goto(addr670);
                        }
                        §§goto(addr807);
                     }
                     §§goto(addr794);
                  }
                  §§goto(addr669);
               },§§goto(addr807))
               {
                  §§push(§§pop().getValue());
                  while(true)
                  {
                     §§push(_loc5_);
                     addr670:
                     while(!_loc9_)
                     {
                        §§push(§§pop() >= §§pop());
                        loop3:
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
                                    addr676:
                                    while(true)
                                    {
                                       §§push((§6w§.getItemByName("MovieClip_StarCenter") as §7"-§).mClip.currentLabel == "UnLit");
                                    }
                                 }
                                 addr675:
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
                                    if(_loc10_ || _loc3_)
                                    {
                                       §>!E§.§7N§("Hiscore_Star_Splash2",§ A§);
                                       addr653:
                                       if(_loc10_)
                                       {
                                          (§6w§.getItemByName("MovieClip_StarCenter") as §7"-§).mClip.gotoAndStop("Lit");
                                          addr627:
                                          if(_loc10_)
                                          {
                                             addr614:
                                             §§push(Number((§6w§.getItemByName("MovieClip_StarCenter") as §7"-§).x + (§6w§.getItemByName("Container_LevelEndStripe") as §08§).x));
                                             if(_loc10_)
                                             {
                                                _loc2_ = §§pop();
                                                addr579:
                                                §§push(Number((§6w§.getItemByName("MovieClip_StarCenter") as §7"-§).y + (§6w§.getItemByName("Container_LevelEndStripe") as §08§).y));
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   if(_loc10_ || param1)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            this.§1!r§ = new §'!T§(AngryBirdsFP11.§=!u§,AngryBirdsFP11.§^!7§,_loc2_,_loc3_,§'!T§.§&!H§);
                                                            addr556:
                                                            if(_loc10_ || param1)
                                                            {
                                                               §6w§.addChild(this.§1!r§);
                                                               this.§;"F§.push(this.§1!r§);
                                                               addr534:
                                                               if(!_loc10_)
                                                               {
                                                                  loop37:
                                                                  while(true)
                                                                  {
                                                                     loop35:
                                                                     while(true)
                                                                     {
                                                                        this.§?"F§ = §>!+§.§;"§.§^!K§(this,{"mNewScoreCounter":this.§?!v§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                                        addr785:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§?"F§);
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              §§pop().onComplete = this.§2!w§;
                                                                              addr768:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§?"F§);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    break loop28;
                                                                                 }
                                                                                 continue loop28;
                                                                              }
                                                                           }
                                                                           §§pop().play();
                                                                           addr761:
                                                                           while(true)
                                                                           {
                                                                              (§6w§.getItemByName("MovieClip_StarLeft") as §7"-§).mClip.gotoAndStop("Lit");
                                                                              addr736:
                                                                              §§push(Number((§6w§.getItemByName("MovieClip_StarLeft") as §7"-§).x + (§6w§.getItemByName("Container_LevelEndStripe") as §08§).x));
                                                                              if(_loc9_ && param1)
                                                                              {
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          continue loop35;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          addr794:
                                                                                          §§push(Number(1));
                                                                                          if(!(_loc9_ && _loc3_))
                                                                                          {
                                                                                             _loc6_ = §§pop();
                                                                                             continue loop37;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                       addr810:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       addr812:
                                                                                       addr813:
                                                                                       _loc6_ = Number(§§pop());
                                                                                       continue loop27;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              _loc2_ = §§pop();
                                                                              addr719:
                                                                              addr720:
                                                                              addr703:
                                                                              _loc3_ = Number((§6w§.getItemByName("MovieClip_StarLeft") as §7"-§).y + (§6w§.getItemByName("Container_LevelEndStripe") as §08§).y);
                                                                              addr703:
                                                                              this.§1!r§ = new §'!T§(AngryBirdsFP11.§=!u§,AngryBirdsFP11.§^!7§,_loc2_,_loc3_,§'!T§.§7!J§);
                                                                              §6w§.addChild(this.§1!r§);
                                                                              this.§;"F§.push(this.§1!r§);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr802:
                                                               }
                                                               addr861:
                                                               var _loc7_:*;
                                                               §§push((_loc7_ = this).§3!Y§);
                                                               if(_loc10_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               var _loc8_:* = §§pop();
                                                               if(_loc10_)
                                                               {
                                                                  _loc7_.§3!Y§ = _loc8_;
                                                               }
                                                               return;
                                                               addr542:
                                                            }
                                                            §§goto(addr761);
                                                            addr598:
                                                         }
                                                         else
                                                         {
                                                            addr809:
                                                            §§push(2);
                                                         }
                                                         §§goto(addr810);
                                                      }
                                                      §§goto(addr812);
                                                   }
                                                   §§goto(addr736);
                                                }
                                                §§goto(addr719);
                                                addr617:
                                             }
                                             §§goto(addr794);
                                          }
                                          §§goto(addr703);
                                       }
                                       else
                                       {
                                          §>!E§.§7N§("Hiscore_Star_Splash1",§ A§);
                                          addr835:
                                          while(true)
                                          {
                                             this.§'!b§.delay = 1000;
                                             addr829:
                                             while(true)
                                             {
                                                §§push(this.§?!v§);
                                                break loop0;
                                             }
                                          }
                                          addr835:
                                          addr860:
                                       }
                                    }
                                    §§goto(addr813);
                                    loop11:
                                    while(true)
                                    {
                                       if(_loc10_ || _loc2_)
                                       {
                                          §§pop();
                                          if(_loc10_ || param1)
                                          {
                                             if(_loc10_)
                                             {
                                                if(_loc10_)
                                                {
                                                   §§push((§6w§.getItemByName("MovieClip_StarRight") as §7"-§).mClip.currentLabel == "UnLit");
                                                   while(!_loc9_)
                                                   {
                                                      loop13:
                                                      while(!§§pop())
                                                      {
                                                         §§push(this.§2">§);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               addr273:
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     this.§2">§ = true;
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        if(_loc9_ && _loc3_)
                                                                        {
                                                                           break loop13;
                                                                        }
                                                                        §§goto(addr861);
                                                                     }
                                                                     break loop11;
                                                                  }
                                                                  §§goto(addr719);
                                                               }
                                                               addr410:
                                                               §§push(Number((§6w§.getItemByName("MovieClip_StarRight") as §7"-§).y + (§6w§.getItemByName("Container_LevelEndStripe") as §08§).y));
                                                               if(!_loc10_)
                                                               {
                                                                  addr395:
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        §§goto(addr410);
                                                                     }
                                                                     §§goto(addr614);
                                                                  }
                                                                  §§goto(addr579);
                                                               }
                                                               _loc3_ = §§pop();
                                                               addr372:
                                                               if(_loc10_ || param1)
                                                               {
                                                                  this.§1!r§ = new §'!T§(AngryBirdsFP11.§=!u§,AngryBirdsFP11.§^!7§,_loc2_,_loc3_,§'!T§.§2"?§);
                                                                  addr351:
                                                                  if(_loc9_)
                                                                  {
                                                                     §§goto(addr372);
                                                                  }
                                                                  §6w§.addChild(this.§1!r§);
                                                                  addr321:
                                                                  if(_loc10_ || param1)
                                                                  {
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           this.§;"F§.push(this.§1!r§);
                                                                           addr306:
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§goto(addr861);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr829);
                                                                              }
                                                                           }
                                                                           §§goto(addr785);
                                                                        }
                                                                        §§goto(addr792);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr598);
                                                                     }
                                                                  }
                                                                  §§goto(addr534);
                                                               }
                                                               §§goto(addr617);
                                                            }
                                                            else
                                                            {
                                                               this.§'!b§.stop();
                                                               while(_loc10_)
                                                               {
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     §§push(this.§%"1§);
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc10_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                               }
                                                               §§goto(addr395);
                                                               §§push(Number((§6w§.getItemByName("MovieClip_StarRight") as §7"-§).x + (§6w§.getItemByName("Container_LevelEndStripe") as §08§).x));
                                                               addr430:
                                                               addr257:
                                                            }
                                                            §§goto(addr720);
                                                         }
                                                      }
                                                      if(!_loc9_)
                                                      {
                                                         this.§^z§ = true;
                                                         §§goto(addr463);
                                                      }
                                                      §§goto(addr736);
                                                      if(_loc9_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc9_)
                                                      {
                                                         §§goto(addr165);
                                                      }
                                                      §§goto(addr675);
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr556);
                                             }
                                             §§goto(addr542);
                                          }
                                          break;
                                       }
                                       continue loop8;
                                    }
                                    §§goto(addr534);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     §§goto(addr809);
                  }
               }
               while(true)
               {
                  §§pop().assign(§#6§.§'" §.getScore());
                  §§goto(addr821);
                  §§goto(addr829);
               }
               §§goto(addr823);
            }
            §§goto(addr855);
         }
         §§goto(addr94);
      }
      
      private function §2!w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §>!E§.§1!;§(§^e§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§'!T§ = null;
         §§push(super.run(param1));
         if(_loc7_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc6_ && param1))
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               if(§§pop() != §1-§.STATE_STATUS_RUNNING)
               {
                  if(!_loc6_)
                  {
                     §§push(_loc2_);
                     if(_loc7_)
                     {
                        §§goto(addr87);
                     }
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        addr56:
                        loop5:
                        while(true)
                        {
                           §6w§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                           loop6:
                           while(!_loc6_)
                           {
                              while(true)
                              {
                                 §6w§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                              §§push(0);
                           }
                           continue loop0;
                        }
                     }
                  }
                  for each(_loc3_ in this.§;"F§)
                  {
                     if(_loc7_ || _loc3_)
                     {
                        _loc3_.update(param1);
                     }
                  }
                  if(!_loc6_)
                  {
                     if(this.§<!K§ > -1)
                     {
                        while(true)
                        {
                           this.§6!o§(param1);
                           addr174:
                           while(true)
                           {
                           }
                           addr156:
                           if(_loc7_ || _loc2_)
                           {
                              §#6§.§6!z§.clearLevel();
                              return §1-§.STATE_STATUS_COMPLETED;
                           }
                        }
                     }
                     while(mNextState.length > 0)
                     {
                        if(!(_loc7_ || this))
                        {
                           continue;
                        }
                        §§goto(addr156);
                     }
                     return §1-§.STATE_STATUS_RUNNING;
                  }
                  §§goto(addr174);
               }
               §§goto(addr56);
            }
            addr87:
            return §§pop();
         }
         §§goto(addr65);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               this.§6!L§();
               while(true)
               {
                  this.§<!K§ = 0;
                  loop2:
                  while(true)
                  {
                     this.mNewScoreCounter = 0;
                     loop3:
                     while(true)
                     {
                        §§push(this.§?"F§);
                        if(_loc1_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§?"F§);
                                 addr228:
                                 while(true)
                                 {
                                    §§pop().stop();
                                    addr229:
                                    while(true)
                                    {
                                       this.§?"F§ = null;
                                       addr219:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr92:
                                 if(_loc2_ && this)
                                 {
                                    continue;
                                 }
                                 if(§6w§.movieClip.contains(this.§-9§))
                                 {
                                    loop21:
                                    while(true)
                                    {
                                       §6w§.movieClip.removeChild(this.§-9§);
                                       addr120:
                                       addr159:
                                       while(_loc1_ || _loc1_)
                                       {
                                       }
                                       while(true)
                                       {
                                          §6w§.setText("0","TextField_LevelEndScore");
                                          addr146:
                                          addr192:
                                          loop17:
                                          while(_loc1_ || this)
                                          {
                                             §6w§.setText("0","TextField_LevelEndScoreEffects");
                                             while(true)
                                             {
                                                if(_loc1_ || _loc2_)
                                                {
                                                   §§push(this.§-9§);
                                                   while(§§pop())
                                                   {
                                                      while(!(_loc2_ && _loc2_))
                                                      {
                                                         §§goto(addr92);
                                                      }
                                                      while(_loc1_ || _loc1_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr229);
                                                      while(true)
                                                      {
                                                         §§push(this.§-9§);
                                                         if(_loc2_ && _loc1_)
                                                         {
                                                            break;
                                                         }
                                                         §§pop().clean();
                                                         continue loop21;
                                                      }
                                                   }
                                                   §§goto(addr19);
                                                }
                                                break;
                                                addr31:
                                                if(_loc1_ || this)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      continue loop17;
                                                   }
                                                   addr19:
                                                }
                                                continue;
                                                return;
                                             }
                                             while(_loc1_)
                                             {
                                                continue loop2;
                                             }
                                             continue loop3;
                                          }
                                          while(true)
                                          {
                                             §§push(this.§<!-§);
                                             addr194:
                                             while(true)
                                             {
                                                §§pop().stop();
                                                §§goto(addr195);
                                             }
                                             §§goto(addr146);
                                          }
                                          §§goto(addr120);
                                       }
                                    }
                                 }
                                 §§goto(addr41);
                              }
                           }
                           while(true)
                           {
                              §§push(this.§<!-§);
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr192);
                                 }
                                 else
                                 {
                                    §§goto(addr160);
                                 }
                              }
                              §§goto(addr194);
                              §§goto(addr219);
                           }
                        }
                        §§goto(addr228);
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§'"-§(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §§goto(addr159);
         }
      }
      
      protected function §'"-§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            (§6w§.getItemByName("Button_Menu") as §^!D§).setComponentVisualState(param1);
            loop0:
            while(true)
            {
               (§6w§.getItemByName("Button_Replay") as §^!D§).setComponentVisualState(param1);
               while(true)
               {
                  (§6w§.getItemByName("Button_NextLevel") as §^!D§).setComponentVisualState(param1);
                  while(_loc2_)
                  {
                     continue loop0;
                     (§6w§.getItemByName("Button_CutScene") as §^!D§).setComponentVisualState(param1);
                     if(_loc2_ || param1)
                     {
                        return;
                        addr53:
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      private function §6!L§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var splash:§'!T§ = null;
         if(!_loc4_)
         {
            if(this.§'!b§)
            {
               if(_loc5_ || _loc2_)
               {
                  addr37:
                  this.§'!b§.stop();
               }
               try
               {
                  this.§'!b§.removeEventListener(TimerEvent.TIMER,this.§6!!§);
                  if(!_loc4_)
                  {
                     addr63:
                     var _loc2_:int = 0;
                     if(_loc5_)
                     {
                        var _loc3_:* = this.§;"F§;
                        if(_loc5_)
                        {
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
                                    addr106:
                                    while(true)
                                    {
                                       if(§6w§.contains(splash))
                                       {
                                          while(true)
                                          {
                                             §6w§.removeChild(splash);
                                             addr116:
                                             while(!_loc4_)
                                             {
                                             }
                                             continue loop3;
                                          }
                                          addr112:
                                       }
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          §§pop().§§slot[1].clean();
                                          if(!(_loc4_ && this))
                                          {
                                             if(_loc5_ || _loc1_)
                                             {
                                                break;
                                             }
                                             §§goto(addr112);
                                          }
                                          §§goto(addr116);
                                       }
                                    }
                                 }
                              }
                           }
                           addr141:
                           if(!(_loc4_ && _loc1_))
                           {
                              this.§;"F§ = new Vector.<§'!T§>();
                              do
                              {
                                 this.§;!6§();
                              }
                              while(_loc4_ && _loc2_);
                              
                              return;
                              addr164:
                              addr149:
                           }
                           §§goto(addr164);
                           addr128:
                        }
                        while(true)
                        {
                           if(true)
                           {
                              §§goto(addr128);
                           }
                           §§goto(addr106);
                        }
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr149);
               }
               catch(e:Error)
               {
               }
               §§goto(addr164);
            }
            §§goto(addr63);
         }
         §§goto(addr37);
      }
      
      protected function §;!6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§6w§.getItemByName("TextField_BestScore") as §-"E§).setVisibility(false);
         }
         while(true)
         {
            (§6w§.getItemByName("MovieClip_BestScoreStars") as §7"-§).setVisibility(false);
            while(!_loc1_)
            {
               (§6w§.getItemByName("TextField_NewHighScore") as §-"E§).setVisibility(false);
               if(!_loc1_)
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
         if(_loc2_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      protected function loadNextLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §!!7§.§,L§();
            do
            {
               mNextState = this.getCutSceneState();
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(!_loc6_)
            {
               §§push("NEXT_LEVEL");
               if(_loc7_ || param3)
               {
                  §§push(_loc5_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc7_)
                        {
                           §§push(0);
                           if(_loc7_ || param1)
                           {
                           }
                        }
                        else
                        {
                           addr236:
                           §§push(3);
                           if(_loc7_ || param3)
                           {
                              addr244:
                           }
                        }
                     }
                     else
                     {
                        §§push("REPLAY");
                        if(_loc7_)
                        {
                           §§push(_loc5_);
                           if(!(_loc6_ && param1))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc6_ && param2))
                                 {
                                    §§push(1);
                                    if(_loc7_)
                                    {
                                       addr256:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             this.loadNextLevel();
                                             break loop0;
                                             addr140:
                                          case 1:
                                             §!!7§.§-V§();
                                             mNextState = this.getStateLevelLoadState();
                                             break loop0;
                                             addr129:
                                             addr135:
                                          case 2:
                                             §!!7§.§-V§();
                                             if(_loc7_)
                                             {
                                                if(_loc7_)
                                                {
                                                   mNextState = this.getStateLevelLoadState();
                                                   if(_loc7_)
                                                   {
                                                      §§push(§#6§.§6!z§);
                                                      if(_loc7_ || param2)
                                                      {
                                                         §§push(§§pop().§2L§());
                                                         if(!(_loc6_ && this))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc7_)
                                                            {
                                                               §§push(_loc4_ = §§pop());
                                                               if(_loc7_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr93:
                                                                        §#6§.§6!z§.§;w§(_loc4_);
                                                                        break;
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr57:
                                                                  break loop0;
                                                               }
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr93);
                                                   }
                                                   break loop0;
                                                }
                                                §§goto(addr129);
                                             }
                                             break loop0;
                                          case 3:
                                             §>!E§.§&!^§();
                                             addr42:
                                             mNextState = this.getMenuButtonTargetState();
                                             if(!_loc6_)
                                             {
                                                if(!(_loc6_ && param2))
                                                {
                                                   break loop0;
                                                }
                                                break;
                                             }
                                             break loop0;
                                             addr62:
                                          case 4:
                                             AngryBirdsFP11.§@<§.§'!+§();
                                             if(!_loc6_)
                                             {
                                                if(_loc7_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop0;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr140);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr135);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr62);
                                                }
                                                §§goto(addr42);
                                             }
                                       }
                                       §§goto(addr57);
                                    }
                                    else
                                    {
                                       §§goto(addr244);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr236);
                                 }
                                 §§goto(addr256);
                              }
                              else
                              {
                                 §§push("WATCH_REPLAY");
                                 if(!_loc6_)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc7_)
                                    {
                                    }
                                    addr247:
                                    if(§§pop() === §§pop())
                                    {
                                       addr248:
                                       §§push(4);
                                       if(_loc6_)
                                       {
                                       }
                                       §§goto(addr256);
                                    }
                                    else
                                    {
                                       §§goto(addr256);
                                       §§push(5);
                                    }
                                    §§goto(addr256);
                                 }
                                 addr230:
                                 §§push(_loc5_);
                                 if(_loc7_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr236);
                                       }
                                       §§goto(addr256);
                                    }
                                    else
                                    {
                                       addr246:
                                       §§goto(addr247);
                                       §§push("FULLSCREEN_BUTTON");
                                       §§push(_loc5_);
                                    }
                                    §§goto(addr248);
                                 }
                                 §§goto(addr247);
                              }
                           }
                           if(§§pop() === §§pop())
                           {
                              if(!_loc6_)
                              {
                                 addr203:
                                 §§push(2);
                                 if(_loc7_ || this)
                                 {
                                    §§goto(addr256);
                                 }
                                 else
                                 {
                                    §§goto(addr244);
                                 }
                              }
                              §§goto(addr256);
                           }
                           else
                           {
                              §§push("MENU");
                              if(!(_loc6_ && param2))
                              {
                                 §§goto(addr230);
                              }
                              §§goto(addr246);
                           }
                        }
                        §§goto(addr230);
                     }
                     §§goto(addr256);
                  }
                  §§goto(addr247);
               }
               §§goto(addr230);
            }
            §§goto(addr203);
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §!!7§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §8"D§.STATE_NAME;
      }
   }
}
