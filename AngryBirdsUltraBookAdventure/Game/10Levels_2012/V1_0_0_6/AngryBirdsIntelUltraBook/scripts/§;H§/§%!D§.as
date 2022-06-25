package §;H§
{
   import §#!H§.§#p§;
   import §#!H§.§^I§;
   import §+0§.§,!E§;
   import §1!E§.§#?§;
   import §1!E§.§1!=§;
   import §1!E§.§==§;
   import §1!E§.§?!x§;
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import §]+§.§=E§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §%!D§ extends §,!E§
   {
      
      public static const §"!s§:String = "LevelEndStateRio";
      
      public static const §!!<§:Number = 30;
      
      protected static const §[!m§:String = "ScoreLoopCountChannel";
      
      protected static const §!!>§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §"!s§ = "LevelEndStateRio";
         }
         loop0:
         do
         {
            §!!<§ = 30;
            while(true)
            {
               §[!m§ = "ScoreLoopCountChannel";
               while(!(_loc2_ && §%!D§))
               {
                  §!!>§ = "EndScreenEffectChannel";
                  if(!(_loc2_ && §%!D§))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc1_);
         
      }
      
      private var §5!f§:§!q§;
      
      private var §`,§:Number;
      
      private var §+G§:Number = 0.0;
      
      private var §;!n§:Number = 0.0;
      
      private var §%T§:Boolean = false;
      
      private var §-@§:Timer;
      
      private var §4!E§:§^I§;
      
      protected var §=U§:Array;
      
      protected var §4!y§:§#p§;
      
      protected var §=K§:Vector.<§#p§>;
      
      public var mNewScoreCounter:int;
      
      private var §?!R§:int;
      
      private var §[;§:Boolean;
      
      protected var §`A§:Boolean;
      
      private var § d§:§=E§;
      
      protected var §%!#§:Boolean;
      
      private var §9!W§:§!q§;
      
      protected var §3!h§:Boolean;
      
      protected var § !X§:int;
      
      public function §%!D§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§=U§ = [];
            do
            {
               this.§ d§ = new §=E§();
               do
               {
                  super(param1,param2);
               }
               while(_loc4_);
               
            }
            while(_loc4_);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
            while(true)
            {
               §&!m§ = new §4`§(this);
               while(_loc2_)
               {
                  while(!(_loc1_ && this))
                  {
                     this.initButtonDefaultPositions();
                     do
                     {
                        this.§=K§ = new Vector.<§#p§>();
                        do
                        {
                           §9'§.§+!S§(§[!m§,1,1);
                           do
                           {
                              §9'§.§+!S§(§!!>§,3,1);
                           }
                           while(_loc1_);
                           
                        }
                        while(_loc1_);
                        
                     }
                     while(_loc1_);
                     
                     if(_loc2_ || _loc1_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §&!m§.init(this.getViewXML());
            §§goto(addr93);
         }
      }
      
      protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§=U§);
            loop0:
            while(true)
            {
               §§pop().push((§&!m§.getItemByName("Button_Menu") as §==§).x);
               addr113:
               while(true)
               {
                  §§push(this.§=U§);
                  addr96:
                  while(true)
                  {
                     §§pop().push((§&!m§.getItemByName("Button_Replay") as §==§).x);
                     addr103:
                     while(true)
                     {
                        §§push(this.§=U§);
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§=U§);
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  §§pop().push((§&!m§.getItemByName("Button_CutScene") as §==§).x);
                  if(!_loc1_)
                  {
                     if(!(_loc1_ && this))
                     {
                        break;
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr85);
               }
               §§goto(addr96);
            }
            §§goto(addr61);
         }
      }
      
      protected function getViewXML() : XML
      {
         return § !I§.§3!a§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(AngryBirdsFP11.sUserProgress.§9!,§(LevelManager.§%n§))
            {
               (§&!m§.getItemByName("Button_Menu") as §==§).setVisibility(true);
               loop2:
               while(true)
               {
                  (§&!m§.getItemByName("Button_Replay") as §==§).setVisibility(true);
                  loop3:
                  while(true)
                  {
                     (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
                     loop4:
                     while(_loc2_ || _loc2_)
                     {
                        (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(true);
                        while(true)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 (§&!m§.getItemByName("Button_Menu") as §==§).x = this.§=U§[0];
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(_loc2_)
                                          {
                                             (§&!m§.getItemByName("Button_Replay") as §==§).x = this.§=U§[1];
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop6;
                                             }
                                             continue loop3;
                                          }
                                          addr261:
                                          addr247:
                                          (§&!m§.getItemByName("Button_Replay") as §==§).setVisibility(true);
                                          while(true)
                                          {
                                             (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
                                             break loop4;
                                          }
                                       }
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 addr20:
                                 return;
                                 addr180:
                              }
                              break;
                           }
                           continue loop4;
                           if(!(_loc2_ || this))
                           {
                              continue;
                           }
                           if(!_loc1_)
                           {
                              §§goto(addr20);
                           }
                           else
                           {
                              addr254:
                              (§&!m§.getItemByName("Button_Menu") as §==§).setVisibility(false);
                              §§goto(addr261);
                           }
                        }
                        addr206:
                        if(!_loc2_)
                        {
                           while(_loc2_)
                           {
                              (§&!m§.getItemByName("Button_Replay") as §==§).x = this.§=U§[0] + Math.abs(this.§=U§[1] - this.§=U§[0]) / 2;
                              §§goto(addr206);
                           }
                           §§goto(addr247);
                           addr217:
                        }
                        (§&!m§.getItemByName("Button_CutScene") as §==§).x = this.§=U§[1] + Math.abs(this.§=U§[2] - this.§=U§[1]) / 2;
                        §§goto(addr180);
                     }
                     (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(true);
                     §§goto(addr217);
                  }
               }
               addr154:
            }
            §§goto(addr254);
         }
         §§goto(addr154);
      }
      
      protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            (§&!m§.getItemByName("Button_Menu") as §==§).setVisibility(true);
            while(true)
            {
               (§&!m§.getItemByName("Button_Replay") as §==§).setVisibility(true);
            }
            addr210:
         }
         loop1:
         while(true)
         {
            (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(false);
            loop2:
            while(true)
            {
               if(!_loc1_)
               {
                  if(!LevelManager.§7!X§())
                  {
                     (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
                     loop3:
                     while(_loc2_)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           if(!_loc1_)
                           {
                              (§&!m§.getItemByName("Button_Menu") as §==§).x = this.§=U§[0] + Math.abs(this.§=U§[1] - this.§=U§[0]) / 2;
                              while(!_loc1_)
                              {
                                 (§&!m§.getItemByName("Button_Replay") as §==§).x = this.§=U§[1] + Math.abs(this.§=U§[2] - this.§=U§[1]) / 2;
                                 if(_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          break loop1;
                                       }
                                       break loop2;
                                    }
                                    (§&!m§.getItemByName("Button_Menu") as §==§).x = this.§=U§[0];
                                    loop5:
                                    while(true)
                                    {
                                       (§&!m§.getItemByName("Button_Replay") as §==§).x = this.§=U§[1];
                                       addr144:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             break loop5;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    if(_loc2_)
                                    {
                                       (§&!m§.getItemByName("Button_NextLevel") as §==§).x = this.§=U§[2];
                                       break loop3;
                                    }
                                    continue loop1;
                                    addr182:
                                 }
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr25);
                  }
                  break;
               }
               §§goto(addr210);
            }
            (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(true);
            §§goto(addr182);
         }
         addr25:
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.activate();
            loop0:
            while(true)
            {
               this.§3!h§ = false;
               loop1:
               while(true)
               {
                  §^!c§.pause();
                  loop2:
                  while(true)
                  {
                     this.§4!E§ = new §^I§(0,0,0,0);
                     loop3:
                     while(true)
                     {
                        §&!m§.movieClip.addChildAt(this.§4!E§,§&!m§.movieClip.numChildren - 1);
                        loop4:
                        while(true)
                        {
                           if(LevelManager.§7!J§())
                           {
                              continue loop1;
                           }
                           this.showButtonsNormal();
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 this.mNewScoreCounter = 0;
                                 while(!_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    this.§[;§ = false;
                                    while(true)
                                    {
                                       §9'§.playSound("LevelCompletedTheme1");
                                       loop9:
                                       while(_loc2_ || _loc1_)
                                       {
                                          this.§4!E§.§;'§(0.7);
                                          loop10:
                                          while(!_loc1_)
                                          {
                                             this.§+G§ = 0;
                                             while(true)
                                             {
                                                if(!(_loc1_ && this))
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      this.§;!n§ = 0;
                                                      while(true)
                                                      {
                                                         if(!(_loc1_ && _loc1_))
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop4;
                                                      continue loop9;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop10;
                                             }
                                             continue loop5;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 addr144:
                                 while(true)
                                 {
                                    continue loop6;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      private function §''§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§`A§ = false;
            loop0:
            while(true)
            {
               this.setScoreData();
               addr103:
               while(true)
               {
                  this.§-@§ = new Timer(500);
                  while(true)
                  {
                     this.§?!R§ = 0;
                     addr78:
                     while(!(_loc1_ && _loc1_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§-@§.start();
            if(!(_loc1_ && this))
            {
               break;
            }
            §§goto(addr59);
         }
      }
      
      protected function §2H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§%n§) != 100)
            {
               (§&!m§.getItemByName("MovieClip_ResultMEFeather") as §1!=§).mClip.gotoAndStop("Off");
               if(!_loc1_)
               {
                  if(!_loc2_)
                  {
                     addr67:
                     (§&!m§.getItemByName("MovieClip_ResultMEFeather") as §1!=§).mClip.gotoAndStop("On");
                     addr75:
                  }
                  return;
               }
               §§goto(addr75);
            }
         }
         §§goto(addr67);
      }
      
      protected function §[!3§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(!this.§%!#§)
            {
               §&!m§.setText("Best " + param2.toString(),"TextField_BestScore");
               while(true)
               {
                  if(!(_loc4_ && this))
                  {
                     continue;
                  }
               }
               while(true)
               {
                  AngryBirdsFP11.sUserProgress.§!!O§(LevelManager.§%n§,param2);
                  §§goto(addr131);
               }
               addr142:
            }
            §§push(param1);
            if(_loc5_)
            {
               §§push(int(§§pop()));
            }
            param2 = §§pop();
            §§goto(addr142);
         }
         §§goto(addr133);
      }
      
      protected function setScoreData() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§%n§));
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§^!c§.§-U§.getScore());
         if(_loc8_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_ || this)
         {
            this.§%!#§ = _loc2_ > _loc1_;
         }
         loop0:
         while(true)
         {
            addr53:
            addr72:
            while(true)
            {
               this.§[!3§(_loc2_,_loc1_);
               continue loop0;
            }
            §§push(§^!c§.§-U§.getEagleScore());
            if(!(_loc7_ && _loc3_))
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§%n§));
            if(!(_loc7_ && _loc1_))
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:*;
            if(_loc5_ = _loc3_ > _loc4_)
            {
               if(_loc8_)
               {
                  §§push(_loc3_);
                  if(!_loc7_)
                  {
                     §§push(int(§§pop()));
                     if(_loc8_)
                     {
                        addr122:
                        _loc4_ = §§pop();
                        if(!(_loc7_ && this))
                        {
                           addr130:
                           §§push(AngryBirdsFP11.sUserProgress);
                           if(!(_loc7_ && _loc3_))
                           {
                              §§push(LevelManager.§%n§);
                              if(!_loc7_)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    §§pop().§-!N§(§§pop(),§§pop());
                                    addr156:
                                    §§push(AngryBirdsFP11.sUserProgress);
                                    §§push(LevelManager.§%n§);
                                    §§push(_loc2_);
                                 }
                                 §§push(§§pop().getStarsForLevel(§§pop(),§§pop()));
                                 if(!_loc7_)
                                 {
                                    addr160:
                                    §§push(int(§§pop()));
                                 }
                                 var _loc6_:* = §§pop();
                                 if(_loc8_)
                                 {
                                    (§&!m§.getItemByName("MovieClip_NewHighScoreBadge") as §1!=§).setVisibility(false);
                                 }
                                 while(true)
                                 {
                                    (§&!m§.getItemByName("MovieClip_StarLeft") as §1!=§).mClip.gotoAndStop("UnLit");
                                    while(!(_loc7_ && _loc3_))
                                    {
                                       (§&!m§.getItemByName("MovieClip_StarCenter") as §1!=§).mClip.gotoAndStop("UnLit");
                                       do
                                       {
                                          (§&!m§.getItemByName("MovieClip_StarRight") as §1!=§).mClip.gotoAndStop("UnLit");
                                       }
                                       while(_loc7_);
                                       
                                       if(_loc8_)
                                       {
                                          return;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr122);
               }
               §§goto(addr130);
            }
            §§goto(addr156);
         }
      }
      
      protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(!this.§%!#§)
            {
               (§&!m§.getItemByName("TextField_BestScore") as §?!x§).setVisibility(true);
               loop0:
               for(; _loc1_ || _loc1_; (§&!m§.getItemByName("MovieClip_BestScoreStars") as §1!=§).setVisibility(true),if(_loc2_ && this)
               {
                  continue;
               },if(!_loc2_)
               {
                  if(!_loc1_)
                  {
                     addr138:
                     §9'§.playSound("Hiscore_Badge",§!!>§);
                     §§goto(addr142);
                  }
                  else
                  {
                     addr47:
                  }
                  addr24:
                  return;
               },§§goto(addr128))
               {
                  if(!(_loc2_ && this))
                  {
                     continue;
                  }
                  addr142:
                  §&!m§.setText("New Highscore!","TextField_NewHighScore");
                  loop3:
                  while(true)
                  {
                     (§&!m§.getItemByName("TextField_NewHighScore") as §?!x§).setVisibility(true);
                     addr128:
                     while(true)
                     {
                        (§&!m§.getItemByName("MovieClip_BestScoreStars") as §1!=§).setVisibility(false);
                        addr119:
                        while(true)
                        {
                           this.§>h§();
                           break loop0;
                        }
                        addr93:
                        if(_loc1_ || _loc2_)
                        {
                           break;
                        }
                        continue loop3;
                     }
                     §§goto(addr24);
                  }
               }
               while(true)
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr93);
                  }
                  §§goto(addr119);
               }
            }
            §§goto(addr138);
         }
         §§goto(addr47);
      }
      
      protected function §>h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§+G§ = 0;
            do
            {
               this.§;!n§ = 0;
               do
               {
                  this.§`,§ = §!!<§;
               }
               while(!_loc1_);
               
            }
            while(!_loc1_);
            
         }
      }
      
      private function §8!v§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).x = (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).x - this.§+G§;
            loop0:
            while(true)
            {
               (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).y = (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).y - this.§;!n§;
               loop1:
               while(true)
               {
                  if(this.§`,§ <= 0)
                  {
                     this.§`,§ = -1;
                     loop2:
                     while(true)
                     {
                        if(!(_loc2_ || this))
                        {
                           continue loop0;
                        }
                        this.§-e§();
                        loop3:
                        while(true)
                        {
                           if(!(_loc3_ && param1))
                           {
                              this.§+G§ = 0;
                              loop4:
                              while(_loc2_)
                              {
                                 if(_loc2_ || param1)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       this.§;!n§ = 0;
                                       loop12:
                                       while(true)
                                       {
                                          addr23:
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§`,§);
                                             if(!_loc3_)
                                             {
                                                §§push(param1);
                                                if(_loc2_)
                                                {
                                                   §§push(§§pop() / 10);
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             §§pop().§`,§ = §§pop();
                                             if(!(_loc2_ || param1))
                                             {
                                                continue loop12;
                                             }
                                             if(!_loc2_)
                                             {
                                                continue loop4;
                                             }
                                             if(!_loc2_)
                                             {
                                                continue loop3;
                                             }
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                return;
                                                addr54:
                                             }
                                             addr195:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(Math.random() - 0.5);
                                                if(_loc2_)
                                                {
                                                   §§push(this.§`,§);
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§push(§§pop() / §!!<§);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§push(§§pop() * 20);
                                                   }
                                                }
                                                §§pop().§+G§ = §§pop();
                                                addr224:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(Math.random() - 0.5);
                                                   if(_loc2_)
                                                   {
                                                      addr181:
                                                      §§push(this.§`,§);
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         §§push(§§pop() / §!!<§);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         addr179:
                                                         §§push(§§pop() * 20);
                                                      }
                                                      §§pop().§;!n§ = §§pop();
                                                      break loop8;
                                                   }
                                                   §§goto(addr179);
                                                }
                                             }
                                             continue loop12;
                                          }
                                          addr182:
                                          while(true)
                                          {
                                             if(_loc2_ || _loc2_)
                                             {
                                                (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).x = (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).x + this.§+G§;
                                                addr189:
                                             }
                                             else
                                             {
                                                §§goto(addr224);
                                             }
                                             §§goto(addr181);
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).y = (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).y + this.§;!n§;
                                    continue loop0;
                                    §§goto(addr189);
                                 }
                              }
                              continue loop2;
                           }
                           §§goto(addr182);
                        }
                     }
                  }
                  §§goto(addr195);
               }
            }
         }
         §§goto(addr75);
      }
      
      protected function §-e§() : void
      {
      }
      
      private function §!!3§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = LevelManager.§7z§(LevelManager.§%n§).§+h§;
         var _loc5_:Number = LevelManager.§7z§(LevelManager.§%n§).§3!4§;
         if(_loc10_)
         {
            if((§&!m§.getItemByName("MovieClip_StarLeft") as §1!=§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§ d§);
               loop0:
               while(true)
               {
                  §§push(§§pop().getValue());
                  loop1:
                  while(!(_loc9_ && _loc2_))
                  {
                     §§push(_loc5_);
                     loop2:
                     while(_loc10_)
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
                                    addr630:
                                    addr800:
                                    while(_loc10_ || this)
                                    {
                                       §§push((§&!m§.getItemByName("MovieClip_StarCenter") as §1!=§).mClip.currentLabel == "UnLit");
                                       while(!_loc9_)
                                       {
                                       }
                                       continue loop5;
                                    }
                                    loop25:
                                    while(true)
                                    {
                                       addr771:
                                       §§push(_loc4_);
                                       if(!_loc10_)
                                       {
                                          continue;
                                       }
                                       addr773:
                                       if(_loc10_ || _loc3_)
                                       {
                                          §§push(0);
                                          if(_loc10_)
                                          {
                                             if(§§pop() <= §§pop())
                                             {
                                                addr798:
                                                while(true)
                                                {
                                                   break loop1;
                                                }
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   continue loop25;
                                                }
                                                addr784:
                                                addr798:
                                             }
                                             loop28:
                                             while(true)
                                             {
                                                this.§9!W§ = §-!,§.§7!j§.§,!`§(this,{"mNewScoreCounter":this.§ d§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                addr768:
                                                §§push(this.§9!W§);
                                                while(true)
                                                {
                                                   §§pop().onComplete = this.§>;§;
                                                   if(_loc9_)
                                                   {
                                                      return;
                                                   }
                                                   addr861:
                                                   addr861:
                                                   §§push(this.§9!W§);
                                                   if(_loc10_)
                                                   {
                                                      §§pop().play();
                                                      while(true)
                                                      {
                                                         (§&!m§.getItemByName("MovieClip_StarLeft") as §1!=§).mClip.gotoAndStop("Lit");
                                                         if(_loc10_)
                                                         {
                                                            addr715:
                                                            _loc2_ = Number((§&!m§.getItemByName("MovieClip_StarLeft") as §1!=§).x + (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).x);
                                                            addr716:
                                                            if(_loc9_ && _loc3_)
                                                            {
                                                               addr691:
                                                               break;
                                                            }
                                                            _loc3_ = Number((§&!m§.getItemByName("MovieClip_StarLeft") as §1!=§).y + (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).y);
                                                            continue;
                                                         }
                                                         §§goto(addr861);
                                                      }
                                                      continue loop28;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr798);
                                          }
                                          addr797:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr797);
                                          §§goto(addr773);
                                       }
                                    }
                                 }
                              }
                              loop8:
                              while(!§§pop())
                              {
                                 §§push(this.§ d§);
                                 if(_loc9_)
                                 {
                                    continue loop0;
                                 }
                                 if(!(_loc9_ && param1))
                                 {
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop().getValue());
                                       if(!_loc10_)
                                       {
                                          continue loop1;
                                       }
                                       if(_loc10_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc9_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(§§pop() >= §§pop());
                                          if(_loc10_ || param1)
                                          {
                                             if(_loc10_)
                                             {
                                                §§push(§§pop());
                                                loop9:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop19:
                                                         while(!_loc9_)
                                                         {
                                                            §§push((§&!m§.getItemByName("MovieClip_StarRight") as §1!=§).mClip.currentLabel == "UnLit");
                                                            while(true)
                                                            {
                                                               loop11:
                                                               while(!§§pop())
                                                               {
                                                                  §§push(this.§[;§);
                                                                  loop12:
                                                                  for(; §§pop(); if(!(_loc10_ || _loc3_))
                                                                  {
                                                                     continue;
                                                                  },§§push(§§pop()),if(_loc9_)
                                                                  {
                                                                     continue loop9;
                                                                  },if(!_loc10_)
                                                                  {
                                                                     continue loop4;
                                                                  },if(§§pop())
                                                                  {
                                                                     §§goto(addr229);
                                                                  },§§goto(addr172))
                                                                  {
                                                                     this.§-@§.stop();
                                                                     loop13:
                                                                     while(!_loc9_)
                                                                     {
                                                                        §§push(this.§%!#§);
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc10_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           addr229:
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              addr231:
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§`A§);
                                                                                 if(_loc9_ && _loc2_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc10_ || param1)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          break;
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                    continue loop14;
                                                                                 }
                                                                                 continue loop17;
                                                                                 §§goto(addr231);
                                                                              }
                                                                              addr232:
                                                                              if(!_loc10_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    (§&!m§.getItemByName("MovieClip_NewHighScoreBadge") as §1!=§).setVisibility(false);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(!(_loc10_ || _loc2_))
                                                                                             {
                                                                                                break loop12;
                                                                                             }
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§goto(addr80);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr570);
                                                                                                   §§push(Number((§&!m§.getItemByName("MovieClip_StarCenter") as §1!=§).x + (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).x));
                                                                                                   addr583:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr454:
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §9'§.playSound("Hiscore_Star_Splash3",§!!>§);
                                                                                                   addr424:
                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                   {
                                                                                                      (§&!m§.getItemByName("MovieClip_StarRight") as §1!=§).mClip.gotoAndStop("Lit");
                                                                                                      §§goto(addr401);
                                                                                                   }
                                                                                                   §§goto(addr644);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr692);
                                                                                          }
                                                                                          addr251:
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(_loc9_ && _loc2_)
                                                                                             {
                                                                                                §§goto(addr630);
                                                                                             }
                                                                                             §§goto(addr846);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr602:
                                                                                             if(_loc10_ || this)
                                                                                             {
                                                                                                (§&!m§.getItemByName("MovieClip_StarCenter") as §1!=§).mClip.gotoAndStop("Lit");
                                                                                                §§goto(addr583);
                                                                                             }
                                                                                             §§goto(addr808);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr232);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 if(!(_loc9_ && _loc2_))
                                                                                 {
                                                                                    if(_loc10_ || _loc2_)
                                                                                    {
                                                                                       if(_loc10_ || this)
                                                                                       {
                                                                                          (§&!m§.getItemByName("MovieClip_NewHighScoreBadge") as §1!=§).setVisibility(true);
                                                                                          addr202:
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             addr80:
                                                                                             this.§5!f§ = §-!,§.§7!j§.§,!`§((§&!m§.getItemByName("MovieClip_NewHighScoreBadge") as §1!=§).mClip,{
                                                                                                "scaleX":1,
                                                                                                "scaleY":1
                                                                                             },{
                                                                                                "scaleX":7,
                                                                                                "scaleY":7
                                                                                             },0.1);
                                                                                             addr103:
                                                                                             if(_loc9_ && param1)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(_loc9_ && _loc3_)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                addr65:
                                                                                                this.§5!f§.onComplete = this.onBadgeLanded;
                                                                                                addr62:
                                                                                                if(_loc10_ || _loc3_)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(this.§5!f§);
                                                                                                         if(!(_loc9_ && this))
                                                                                                         {
                                                                                                            §§pop().play();
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               if(_loc10_ || _loc3_)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr62);
                                                                                                                  }
                                                                                                                  §§goto(addr846);
                                                                                                               }
                                                                                                               §§goto(addr62);
                                                                                                            }
                                                                                                            §§goto(addr861);
                                                                                                         }
                                                                                                         §§goto(addr65);
                                                                                                      }
                                                                                                      §§goto(addr382);
                                                                                                   }
                                                                                                   §§goto(addr202);
                                                                                                }
                                                                                                §§goto(addr103);
                                                                                             }
                                                                                             §§goto(addr280);
                                                                                             continue loop13;
                                                                                          }
                                                                                          §§goto(addr768);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr503:
                                                                                       }
                                                                                       §§goto(addr846);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr401:
                                                                                       if(_loc10_ || _loc2_)
                                                                                       {
                                                                                          addr372:
                                                                                          §§push(Number((§&!m§.getItemByName("MovieClip_StarRight") as §1!=§).x + (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).x));
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(!(_loc9_ && param1))
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                addr382:
                                                                                                if(!(_loc9_ && _loc2_))
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      §§push(Number((§&!m§.getItemByName("MovieClip_StarRight") as §1!=§).y + (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).y));
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         if(_loc10_ || _loc2_)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               addr354:
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  this.§4!y§ = new §#p§(AngryBirdsFP11.§3!5§,AngryBirdsFP11.§]!m§,_loc2_,_loc3_,§#p§.§3s§);
                                                                                                                  addr317:
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(_loc10_ || this)
                                                                                                                     {
                                                                                                                        §&!m§.addChild(this.§4!y§);
                                                                                                                        addr280:
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                           {
                                                                                                                              if(_loc10_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(_loc10_ || this)
                                                                                                                                 {
                                                                                                                                    this.§=K§.push(this.§4!y§);
                                                                                                                                    break loop13;
                                                                                                                                 }
                                                                                                                                 §§goto(addr820);
                                                                                                                              }
                                                                                                                              §§goto(addr814);
                                                                                                                           }
                                                                                                                           §§goto(addr716);
                                                                                                                        }
                                                                                                                        §§goto(addr317);
                                                                                                                     }
                                                                                                                     §&!m§.addChild(this.§4!y§);
                                                                                                                     addr530:
                                                                                                                     if(_loc9_ && param1)
                                                                                                                     {
                                                                                                                        this.§4!y§ = new §#p§(AngryBirdsFP11.§3!5§,AngryBirdsFP11.§]!m§,_loc2_,_loc3_,§#p§.§#r§);
                                                                                                                        §§goto(addr530);
                                                                                                                        addr554:
                                                                                                                     }
                                                                                                                     this.§=K§.push(this.§4!y§);
                                                                                                                     §§goto(addr503);
                                                                                                                  }
                                                                                                                  §§goto(addr354);
                                                                                                               }
                                                                                                               break loop8;
                                                                                                            }
                                                                                                            §§goto(addr715);
                                                                                                         }
                                                                                                         addr546:
                                                                                                         if(_loc9_ && param1)
                                                                                                         {
                                                                                                            addr570:
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               _loc2_ = §§pop();
                                                                                                               §§goto(addr546);
                                                                                                               §§push(Number((§&!m§.getItemByName("MovieClip_StarCenter") as §1!=§).y + (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).y));
                                                                                                               addr573:
                                                                                                            }
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               _loc6_ = §§pop();
                                                                                                               §§goto(addr789);
                                                                                                            }
                                                                                                            §§goto(addr798);
                                                                                                         }
                                                                                                         _loc3_ = §§pop();
                                                                                                         §§goto(addr554);
                                                                                                      }
                                                                                                      §§goto(addr372);
                                                                                                   }
                                                                                                   §§goto(addr573);
                                                                                                }
                                                                                                break loop11;
                                                                                             }
                                                                                             §§goto(addr771);
                                                                                          }
                                                                                          §§goto(addr691);
                                                                                       }
                                                                                       §§goto(addr530);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr202);
                                                                                 §§goto(addr808);
                                                                              }
                                                                              §§goto(addr861);
                                                                           }
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     if(_loc9_ && this)
                                                                     {
                                                                        §§goto(addr424);
                                                                     }
                                                                     §§goto(addr846);
                                                                  }
                                                                  this.§[;§ = true;
                                                                  §§goto(addr251);
                                                               }
                                                               if(_loc10_ || param1)
                                                               {
                                                                  this.§3!h§ = true;
                                                                  §§goto(addr454);
                                                               }
                                                               §§goto(addr659);
                                                            }
                                                         }
                                                         §§goto(addr845);
                                                      }
                                                      addr493:
                                                   }
                                                   §§goto(addr442);
                                                }
                                             }
                                             §§goto(addr594);
                                          }
                                          §§goto(addr493);
                                       }
                                       §§goto(addr814);
                                    }
                                    §§goto(addr820);
                                 }
                                 §§goto(addr814);
                              }
                              §9'§.playSound("Hiscore_Star_Splash2",§!!>§);
                              §§goto(addr602);
                           }
                        }
                     }
                     §§goto(addr796);
                     §§push(§§pop() / §§pop());
                  }
                  §§goto(addr570);
               }
            }
            §§goto(addr840);
         }
         §§goto(addr800);
      }
      
      private function §>;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §9'§.§7!,§(§[!m§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§#p§ = null;
         §§push(super.run(param1));
         if(_loc7_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               if(§§pop() != §,!E§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(_loc2_);
                     if(!_loc6_)
                     {
                        return §§pop();
                     }
                     addr90:
                     for each(_loc3_ in this.§=K§)
                     {
                        if(_loc7_ || this)
                        {
                           _loc3_.update(param1);
                        }
                     }
                     if(!(_loc6_ && _loc2_))
                     {
                        if(this.§`,§ > -1)
                        {
                           if(_loc7_)
                           {
                              this.§8!v§(param1);
                           }
                           loop4:
                           while(true)
                           {
                              addr162:
                              while(true)
                              {
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    return §,!E§.STATE_STATUS_COMPLETED;
                                    addr169:
                                 }
                                 continue loop4;
                              }
                           }
                           addr179:
                        }
                        while(true)
                        {
                           if(mNextState.length <= 0)
                           {
                              return §,!E§.STATE_STATUS_RUNNING;
                           }
                           if(!_loc6_)
                           {
                              while(true)
                              {
                                 §^!c§.§5!Y§.clearLevel();
                              }
                              addr159:
                           }
                           §§goto(addr162);
                           §§goto(addr179);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr159);
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        addr53:
                        loop1:
                        while(true)
                        {
                           §&!m§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                           do
                           {
                              §&!m§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                           }
                           while(_loc6_);
                           
                           if(_loc6_ && param1)
                           {
                              continue loop0;
                           }
                           while(false)
                           {
                              continue loop1;
                           }
                           §§goto(addr90);
                           §§push(0);
                        }
                     }
                  }
               }
               §§goto(addr53);
            }
            §§goto(addr90);
         }
         §§goto(addr51);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               this.§?`§();
               while(true)
               {
                  this.§`,§ = 0;
                  while(true)
                  {
                     this.mNewScoreCounter = 0;
                     loop3:
                     while(true)
                     {
                        §§push(this.§9!W§);
                        if(!(_loc1_ && this))
                        {
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(this.§5!f§);
                                 if(_loc2_ || this)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc2_ || this)
                                       {
                                          addr183:
                                          this.§5!f§.stop();
                                       }
                                       while(true)
                                       {
                                          this.§5!f§ = null;
                                          addr162:
                                          while(true)
                                          {
                                             addr150:
                                             loop9:
                                             for(; _loc2_ || _loc2_; if(_loc1_ && _loc2_)
                                             {
                                                continue;
                                             },if(§&!m§.movieClip.contains(this.§4!E§))
                                             {
                                                §§goto(addr103);
                                             },§§goto(addr45))
                                             {
                                                this.setButtonStates(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                loop10:
                                                while(true)
                                                {
                                                   §&!m§.setText("0","TextField_LevelEndScore");
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §&!m§.setText("0","TextField_LevelEndScoreEffects");
                                                      loop12:
                                                      while(_loc2_ || this)
                                                      {
                                                         §§push(this.§4!E§);
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               break;
                                                               addr88:
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               continue loop12;
                                                            }
                                                            continue loop9;
                                                            addr45:
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(this.§4!E§);
                                                               if(_loc1_ && _loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               §§pop().clean();
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  if(!(_loc1_ && _loc1_))
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  addr103:
                                                                  while(true)
                                                                  {
                                                                     §&!m§.movieClip.removeChild(this.§4!E§);
                                                                     break loop18;
                                                                  }
                                                                  addr83:
                                                                  this.§4!E§ = null;
                                                                  if(!(_loc2_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                     break loop13;
                                                                  }
                                                                  §§goto(addr88);
                                                               }
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  addr201:
                                                                  while(!_loc1_)
                                                                  {
                                                                     §§push(this.§9!W§);
                                                                     while(true)
                                                                     {
                                                                        §§pop().stop();
                                                                        break loop16;
                                                                     }
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop3;
                                                            }
                                                         }
                                                         return;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §9'§.§7!,§(§[!m§);
                                       §§goto(addr150);
                                       §§goto(addr162);
                                    }
                                 }
                                 §§goto(addr183);
                              }
                           }
                           §§goto(addr201);
                        }
                        §§goto(addr205);
                     }
                     if(_loc1_ && this)
                     {
                        continue;
                     }
                     while(true)
                     {
                        this.§9!W§ = null;
                        §§goto(addr189);
                     }
                  }
               }
            }
         }
         §§goto(addr230);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§&!m§.getItemByName("Button_Menu") as §==§).setComponentVisualState(param1);
            loop0:
            while(true)
            {
               (§&!m§.getItemByName("Button_Replay") as §==§).setComponentVisualState(param1);
               while(true)
               {
                  (§&!m§.getItemByName("Button_NextLevel") as §==§).setComponentVisualState(param1);
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        (§&!m§.getItemByName("Button_CutScene") as §==§).setComponentVisualState(param1);
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      private function §?`§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§#p§ = null;
         if(_loc4_ || _loc1_)
         {
            if(this.§-@§)
            {
               if(!_loc5_)
               {
                  addr36:
                  this.§-@§.stop();
               }
               try
               {
                  this.§-@§.removeEventListener(TimerEvent.TIMER,this.§!!3§);
                  if(_loc4_ || this)
                  {
                  }
               }
               catch(e:Error)
               {
               }
               return;
               addr168:
            }
            var _loc2_:int = 0;
            if(!(_loc5_ && this))
            {
               var _loc3_:* = this.§=K§;
               if(!_loc5_)
               {
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     while(true)
                     {
                        §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                     }
                  }
                  addr150:
                  if(!_loc5_)
                  {
                     this.§=K§ = new Vector.<§#p§>();
                  }
                  do
                  {
                     this.§+!m§();
                  }
                  while(!(_loc4_ || _loc1_));
                  
                  §§goto(addr168);
                  addr147:
               }
               loop2:
               while(true)
               {
                  addr117:
                  while(true)
                  {
                     if(§&!m§.contains(splash))
                     {
                        while(true)
                        {
                           §&!m§.removeChild(splash);
                           addr127:
                           while(true)
                           {
                           }
                        }
                        addr123:
                     }
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           break;
                        }
                        §§pop().§§slot[1].clean();
                        if(_loc4_ || this)
                        {
                           if(!_loc5_)
                           {
                              continue loop2;
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr131);
                  }
               }
            }
            §§goto(addr150);
         }
         §§goto(addr36);
      }
      
      protected function §+!m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            (§&!m§.getItemByName("TextField_BestScore") as §?!x§).setVisibility(false);
         }
         while(true)
         {
            (§&!m§.getItemByName("MovieClip_BestScoreStars") as §1!=§).setVisibility(false);
            while(_loc1_ || _loc2_)
            {
               (§&!m§.getItemByName("TextField_NewHighScore") as §?!x§).setVisibility(false);
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
         if(_loc2_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      protected function §'!^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §;W§.§&p§();
         }
         do
         {
            mNextState = this.§=!n§();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(!(_loc7_ && this))
            {
               §§push("NEXT_LEVEL");
               if(!(_loc7_ && this))
               {
                  §§push(_loc5_);
                  if(!(_loc7_ && param2))
                  {
                     if(§§pop() === §§pop())
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
                           addr257:
                           §§push(4);
                           if(_loc6_)
                           {
                              addr260:
                           }
                        }
                        §§goto(addr265);
                     }
                     §§push("REPLAY");
                     if(!(_loc7_ && param2))
                     {
                        addr198:
                        §§push(_loc5_);
                        if(_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_)
                              {
                                 §§push(1);
                                 if(_loc7_)
                                 {
                                 }
                                 §§goto(addr265);
                              }
                              else
                              {
                                 §§goto(addr217);
                              }
                           }
                           else
                           {
                              §§push("WATCH_REPLAY");
                              if(_loc6_)
                              {
                                 §§push(_loc5_);
                                 if(!_loc7_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          addr217:
                                          §§push(2);
                                          if(_loc7_ && param3)
                                          {
                                          }
                                          §§goto(addr265);
                                       }
                                       else
                                       {
                                          §§goto(addr257);
                                       }
                                    }
                                    else
                                    {
                                       §§push("MENU");
                                       if(_loc6_)
                                       {
                                          addr239:
                                          §§push(_loc5_);
                                          if(_loc7_)
                                          {
                                          }
                                          addr256:
                                          if(§§pop() === §§pop())
                                          {
                                             §§goto(addr257);
                                          }
                                          else
                                          {
                                             addr265:
                                             loop3:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   this.§'!^§();
                                                   break;
                                                   addr154:
                                                case 1:
                                                   §;W§.§&!5§();
                                                   mNextState = this.§@!!§();
                                                   break;
                                                   addr143:
                                                   addr149:
                                                case 2:
                                                   §;W§.§&!5§();
                                                   while(true)
                                                   {
                                                      mNextState = this.§@!!§();
                                                      while(true)
                                                      {
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            §§push(§^!c§.§5!Y§);
                                                            if(!(_loc7_ && param3))
                                                            {
                                                               §§push(§§pop().§4!=§());
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(_loc4_ = §§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc6_ || param2)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr108:
                                                                           addr108:
                                                                        }
                                                                        break loop3;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop0;
                                                            }
                                                            addr106:
                                                            §§pop().§8!2§(_loc4_);
                                                            §§goto(addr108);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr143);
                                                         }
                                                      }
                                                      break loop3;
                                                      if(!(_loc6_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr106);
                                                      §§push(§^!c§.§5!Y§);
                                                   }
                                                   break;
                                                case 3:
                                                   §9'§.§0D§();
                                                   addr44:
                                                   mNextState = this.§<!m§();
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr149);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr108);
                                                      }
                                                   }
                                                   break;
                                                   addr61:
                                                case 4:
                                                   AngryBirdsFP11.§3l§.§1T§();
                                                   if(_loc6_ || param3)
                                                   {
                                                      if(_loc6_ || param3)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr154);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr61);
                                                      }
                                                      §§goto(addr44);
                                                   }
                                             }
                                             return;
                                             §§push(5);
                                          }
                                          §§goto(addr265);
                                       }
                                       addr255:
                                       §§goto(addr256);
                                       §§push(_loc5_);
                                    }
                                    §§goto(addr257);
                                 }
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       addr245:
                                       §§push(3);
                                       if(_loc6_ || this)
                                       {
                                          §§goto(addr253);
                                       }
                                       else
                                       {
                                          §§goto(addr260);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr257);
                                    }
                                    §§goto(addr265);
                                 }
                                 else
                                 {
                                    §§goto(addr255);
                                    §§push("FULLSCREEN_BUTTON");
                                 }
                                 §§goto(addr257);
                              }
                              §§goto(addr239);
                           }
                           §§goto(addr265);
                        }
                        §§goto(addr239);
                     }
                     §§goto(addr255);
                     §§goto(addr257);
                  }
                  §§goto(addr239);
               }
               §§goto(addr198);
            }
            §§goto(addr245);
         }
      }
      
      protected function §@!!§() : String
      {
         return §;W§.§"!s§;
      }
      
      protected function §=!n§() : String
      {
         return StateCutScene.§"!s§;
      }
      
      public function §<!m§() : String
      {
         return §!y§.§"!s§;
      }
   }
}
