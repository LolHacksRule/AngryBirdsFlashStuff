package § !k§
{
   import § !x§.§4F§;
   import § !x§.§5+§;
   import §!!§.LevelManager;
   import §&!h§.§?!K§;
   import §06§.§#_§;
   import §06§.§9!b§;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   import §=R§.§5!a§;
   import §=R§.§7!"§;
   import §`M§.§&!G§;
   import §`M§.§,c§;
   import §`M§.§3!@§;
   import §`M§.§9!#§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §%N§ extends §+_§
   {
      
      public static const §3F§:String = "LevelEndStateRio";
      
      public static const §>!x§:Number = 30;
      
      protected static const §5!^§:String = "ScoreLoopCountChannel";
      
      protected static const §5!o§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §3F§ = "LevelEndStateRio";
         }
         loop0:
         do
         {
            §>!x§ = 30;
            while(true)
            {
               §5!^§ = "ScoreLoopCountChannel";
               while(!(_loc2_ && §%N§))
               {
                  §5!o§ = "EndScreenEffectChannel";
                  if(!(_loc2_ && §%N§))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc1_);
         
      }
      
      private var §&!`§:§4F§;
      
      private var §4y§:Number;
      
      private var §9!n§:Number = 0.0;
      
      private var §5![§:Number = 0.0;
      
      private var §>!0§:Boolean = false;
      
      private var §#P§:Timer;
      
      private var §++§:§9!b§;
      
      protected var §#A§:Array;
      
      protected var §7<§:§#_§;
      
      protected var §5!4§:Vector.<§#_§>;
      
      public var mNewScoreCounter:int;
      
      private var §!!@§:int;
      
      private var §0!m§:Boolean;
      
      protected var §&"§:Boolean;
      
      private var §-!_§:§?!K§;
      
      protected var §3_§:Boolean;
      
      private var §9!7§:§4F§;
      
      protected var §[G§:Boolean;
      
      protected var §`E§:int;
      
      public function §%N§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§#A§ = [];
            do
            {
               this.§-!_§ = new §?!K§();
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
               §`-§ = new § C§(this);
               while(_loc2_)
               {
                  while(!(_loc1_ && this))
                  {
                     this.initButtonDefaultPositions();
                     do
                     {
                        this.§5!4§ = new Vector.<§#_§>();
                        do
                        {
                           §6!H§.§^!s§(§5!^§,1,1);
                           do
                           {
                              §6!H§.§^!s§(§5!o§,3,1);
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
            §`-§.init(this.getViewXML());
            §§goto(addr93);
         }
      }
      
      protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§#A§);
            loop0:
            while(true)
            {
               §§pop().push((§`-§.getItemByName("Button_Menu") as §,c§).x);
               addr113:
               while(true)
               {
                  §§push(this.§#A§);
                  addr96:
                  while(true)
                  {
                     §§pop().push((§`-§.getItemByName("Button_Replay") as §,c§).x);
                     addr103:
                     while(true)
                     {
                        §§push(this.§#A§);
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§#A§);
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  §§pop().push((§`-§.getItemByName("Button_CutScene") as §,c§).x);
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
         return dynamic.§[6§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(AngryBirdsFP11.sUserProgress.§+G§(LevelManager.§^!F§))
            {
               (§`-§.getItemByName("Button_Menu") as §,c§).setVisibility(true);
               loop2:
               while(true)
               {
                  (§`-§.getItemByName("Button_Replay") as §,c§).setVisibility(true);
                  loop3:
                  while(true)
                  {
                     (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
                     loop4:
                     while(_loc2_ || _loc2_)
                     {
                        (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(true);
                        while(true)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 (§`-§.getItemByName("Button_Menu") as §,c§).x = this.§#A§[0];
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(_loc2_)
                                          {
                                             (§`-§.getItemByName("Button_Replay") as §,c§).x = this.§#A§[1];
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
                                          (§`-§.getItemByName("Button_Replay") as §,c§).setVisibility(true);
                                          while(true)
                                          {
                                             (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
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
                              (§`-§.getItemByName("Button_Menu") as §,c§).setVisibility(false);
                              §§goto(addr261);
                           }
                        }
                        addr206:
                        if(!_loc2_)
                        {
                           while(_loc2_)
                           {
                              (§`-§.getItemByName("Button_Replay") as §,c§).x = this.§#A§[0] + Math.abs(this.§#A§[1] - this.§#A§[0]) / 2;
                              §§goto(addr206);
                           }
                           §§goto(addr247);
                           addr217:
                        }
                        (§`-§.getItemByName("Button_CutScene") as §,c§).x = this.§#A§[1] + Math.abs(this.§#A§[2] - this.§#A§[1]) / 2;
                        §§goto(addr180);
                     }
                     (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(true);
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
            (§`-§.getItemByName("Button_Menu") as §,c§).setVisibility(true);
            while(true)
            {
               (§`-§.getItemByName("Button_Replay") as §,c§).setVisibility(true);
            }
            addr210:
         }
         loop1:
         while(true)
         {
            (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(false);
            loop2:
            while(true)
            {
               if(!_loc1_)
               {
                  if(!LevelManager.§=L§())
                  {
                     (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
                     loop3:
                     while(_loc2_)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           if(!_loc1_)
                           {
                              (§`-§.getItemByName("Button_Menu") as §,c§).x = this.§#A§[0] + Math.abs(this.§#A§[1] - this.§#A§[0]) / 2;
                              while(!_loc1_)
                              {
                                 (§`-§.getItemByName("Button_Replay") as §,c§).x = this.§#A§[1] + Math.abs(this.§#A§[2] - this.§#A§[1]) / 2;
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
                                    (§`-§.getItemByName("Button_Menu") as §,c§).x = this.§#A§[0];
                                    loop5:
                                    while(true)
                                    {
                                       (§`-§.getItemByName("Button_Replay") as §,c§).x = this.§#A§[1];
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
                                       (§`-§.getItemByName("Button_NextLevel") as §,c§).x = this.§#A§[2];
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
            (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(true);
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
               this.§[G§ = false;
               loop1:
               while(true)
               {
                  §4!]§.pause();
                  loop2:
                  while(true)
                  {
                     this.§++§ = new §9!b§(0,0,0,0);
                     loop3:
                     while(true)
                     {
                        §`-§.movieClip.addChildAt(this.§++§,§`-§.movieClip.numChildren - 1);
                        loop4:
                        while(true)
                        {
                           if(LevelManager.§-!q§())
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
                                    this.§0!m§ = false;
                                    while(true)
                                    {
                                       §6!H§.playSound("LevelCompletedTheme1");
                                       loop9:
                                       while(_loc2_ || _loc1_)
                                       {
                                          this.§++§.§&!f§(0.7);
                                          loop10:
                                          while(!_loc1_)
                                          {
                                             this.§9!n§ = 0;
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
                                                      this.§5![§ = 0;
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
      
      private function §3,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§&"§ = false;
            loop0:
            while(true)
            {
               this.setScoreData();
               addr103:
               while(true)
               {
                  this.§#P§ = new Timer(500);
                  while(true)
                  {
                     this.§!!@§ = 0;
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
            this.§#P§.start();
            if(!(_loc1_ && this))
            {
               break;
            }
            §§goto(addr59);
         }
      }
      
      protected function §;!Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§^!F§) != 100)
            {
               (§`-§.getItemByName("MovieClip_ResultMEFeather") as §&!G§).mClip.gotoAndStop("Off");
               if(!_loc1_)
               {
                  if(!_loc2_)
                  {
                     addr67:
                     (§`-§.getItemByName("MovieClip_ResultMEFeather") as §&!G§).mClip.gotoAndStop("On");
                     addr75:
                  }
                  return;
               }
               §§goto(addr75);
            }
         }
         §§goto(addr67);
      }
      
      protected function §2z§(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(!this.§3_§)
            {
               §`-§.setText("Best " + param2.toString(),"TextField_BestScore");
               while(true)
               {
                  if(!(_loc4_ && this))
                  {
                     continue;
                  }
               }
               while(true)
               {
                  AngryBirdsFP11.sUserProgress.§,x§(LevelManager.§^!F§,param2);
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
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§^!F§));
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§4!]§.§=`§.getScore());
         if(_loc8_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_ || this)
         {
            this.§3_§ = _loc2_ > _loc1_;
         }
         loop0:
         while(true)
         {
            addr53:
            addr72:
            while(true)
            {
               this.§2z§(_loc2_,_loc1_);
               continue loop0;
            }
            §§push(§4!]§.§=`§.getEagleScore());
            if(!(_loc7_ && _loc3_))
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§^!F§));
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
                              §§push(LevelManager.§^!F§);
                              if(!_loc7_)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    §§pop().§#]§(§§pop(),§§pop());
                                    addr156:
                                    §§push(AngryBirdsFP11.sUserProgress);
                                    §§push(LevelManager.§^!F§);
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
                                    (§`-§.getItemByName("MovieClip_NewHighScoreBadge") as §&!G§).setVisibility(false);
                                 }
                                 while(true)
                                 {
                                    (§`-§.getItemByName("MovieClip_StarLeft") as §&!G§).mClip.gotoAndStop("UnLit");
                                    while(!(_loc7_ && _loc3_))
                                    {
                                       (§`-§.getItemByName("MovieClip_StarCenter") as §&!G§).mClip.gotoAndStop("UnLit");
                                       do
                                       {
                                          (§`-§.getItemByName("MovieClip_StarRight") as §&!G§).mClip.gotoAndStop("UnLit");
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
            if(!this.§3_§)
            {
               (§`-§.getItemByName("TextField_BestScore") as §3!@§).setVisibility(true);
               loop0:
               for(; _loc1_ || _loc1_; (§`-§.getItemByName("MovieClip_BestScoreStars") as §&!G§).setVisibility(true),if(_loc2_ && this)
               {
                  continue;
               },if(!_loc2_)
               {
                  if(!_loc1_)
                  {
                     addr138:
                     §6!H§.playSound("Hiscore_Badge",§5!o§);
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
                  §`-§.setText("New Highscore!","TextField_NewHighScore");
                  loop3:
                  while(true)
                  {
                     (§`-§.getItemByName("TextField_NewHighScore") as §3!@§).setVisibility(true);
                     addr128:
                     while(true)
                     {
                        (§`-§.getItemByName("MovieClip_BestScoreStars") as §&!G§).setVisibility(false);
                        addr119:
                        while(true)
                        {
                           this.§6!a§();
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
      
      protected function §6!a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§9!n§ = 0;
            do
            {
               this.§5![§ = 0;
               do
               {
                  this.§4y§ = §>!x§;
               }
               while(!_loc1_);
               
            }
            while(!_loc1_);
            
         }
      }
      
      private function §?V§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).x = (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).x - this.§9!n§;
            loop0:
            while(true)
            {
               (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).y = (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).y - this.§5![§;
               loop1:
               while(true)
               {
                  if(this.§4y§ <= 0)
                  {
                     this.§4y§ = -1;
                     loop2:
                     while(true)
                     {
                        if(!(_loc2_ || this))
                        {
                           continue loop0;
                        }
                        this.§,!!§();
                        loop3:
                        while(true)
                        {
                           if(!(_loc3_ && param1))
                           {
                              this.§9!n§ = 0;
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
                                       this.§5![§ = 0;
                                       loop12:
                                       while(true)
                                       {
                                          addr23:
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§4y§);
                                             if(!_loc3_)
                                             {
                                                §§push(param1);
                                                if(_loc2_)
                                                {
                                                   §§push(§§pop() / 10);
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             §§pop().§4y§ = §§pop();
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
                                                   §§push(this.§4y§);
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§push(§§pop() / §>!x§);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§push(§§pop() * 20);
                                                   }
                                                }
                                                §§pop().§9!n§ = §§pop();
                                                addr224:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(Math.random() - 0.5);
                                                   if(_loc2_)
                                                   {
                                                      addr181:
                                                      §§push(this.§4y§);
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         §§push(§§pop() / §>!x§);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         addr179:
                                                         §§push(§§pop() * 20);
                                                      }
                                                      §§pop().§5![§ = §§pop();
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
                                                (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).x = (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).x + this.§9!n§;
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
                                    (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).y = (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).y + this.§5![§;
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
      
      protected function §,!!§() : void
      {
      }
      
      private function §3$§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:Number = LevelManager.§5!c§(LevelManager.§^!F§).§6t§;
         var _loc5_:Number = LevelManager.§5!c§(LevelManager.§^!F§).§^T§;
         if(_loc10_)
         {
            if((§`-§.getItemByName("MovieClip_StarLeft") as §&!G§).mClip.currentLabel != "UnLit")
            {
               §§push(this.§-!_§);
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
                                       §§push((§`-§.getItemByName("MovieClip_StarCenter") as §&!G§).mClip.currentLabel == "UnLit");
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
                                                this.§9!7§ = §5+§.§^Z§.§=!a§(this,{"mNewScoreCounter":this.§-!_§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                                addr768:
                                                §§push(this.§9!7§);
                                                while(true)
                                                {
                                                   §§pop().onComplete = this.§%j§;
                                                   if(_loc9_)
                                                   {
                                                      return;
                                                   }
                                                   addr861:
                                                   addr861:
                                                   §§push(this.§9!7§);
                                                   if(_loc10_)
                                                   {
                                                      §§pop().play();
                                                      while(true)
                                                      {
                                                         (§`-§.getItemByName("MovieClip_StarLeft") as §&!G§).mClip.gotoAndStop("Lit");
                                                         if(_loc10_)
                                                         {
                                                            addr715:
                                                            _loc2_ = Number((§`-§.getItemByName("MovieClip_StarLeft") as §&!G§).x + (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).x);
                                                            addr716:
                                                            if(_loc9_ && _loc3_)
                                                            {
                                                               addr691:
                                                               break;
                                                            }
                                                            _loc3_ = Number((§`-§.getItemByName("MovieClip_StarLeft") as §&!G§).y + (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).y);
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
                                 §§push(this.§-!_§);
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
                                                            §§push((§`-§.getItemByName("MovieClip_StarRight") as §&!G§).mClip.currentLabel == "UnLit");
                                                            while(true)
                                                            {
                                                               loop11:
                                                               while(!§§pop())
                                                               {
                                                                  §§push(this.§0!m§);
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
                                                                     this.§#P§.stop();
                                                                     loop13:
                                                                     while(!_loc9_)
                                                                     {
                                                                        §§push(this.§3_§);
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
                                                                                 §§push(this.§&"§);
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
                                                                                    (§`-§.getItemByName("MovieClip_NewHighScoreBadge") as §&!G§).setVisibility(false);
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
                                                                                                   §§push(Number((§`-§.getItemByName("MovieClip_StarCenter") as §&!G§).x + (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).x));
                                                                                                   addr583:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr454:
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §6!H§.playSound("Hiscore_Star_Splash3",§5!o§);
                                                                                                   addr424:
                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                   {
                                                                                                      (§`-§.getItemByName("MovieClip_StarRight") as §&!G§).mClip.gotoAndStop("Lit");
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
                                                                                                (§`-§.getItemByName("MovieClip_StarCenter") as §&!G§).mClip.gotoAndStop("Lit");
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
                                                                                          (§`-§.getItemByName("MovieClip_NewHighScoreBadge") as §&!G§).setVisibility(true);
                                                                                          addr202:
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             addr80:
                                                                                             this.§&!`§ = §5+§.§^Z§.§=!a§((§`-§.getItemByName("MovieClip_NewHighScoreBadge") as §&!G§).mClip,{
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
                                                                                                this.§&!`§.onComplete = this.onBadgeLanded;
                                                                                                addr62:
                                                                                                if(_loc10_ || _loc3_)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(this.§&!`§);
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
                                                                                          §§push(Number((§`-§.getItemByName("MovieClip_StarRight") as §&!G§).x + (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).x));
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
                                                                                                      §§push(Number((§`-§.getItemByName("MovieClip_StarRight") as §&!G§).y + (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).y));
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
                                                                                                                  this.§7<§ = new §#_§(AngryBirdsFP11.§;!Z§,AngryBirdsFP11.§7P§,_loc2_,_loc3_,§#_§.§2`§);
                                                                                                                  addr317:
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(_loc10_ || this)
                                                                                                                     {
                                                                                                                        §`-§.addChild(this.§7<§);
                                                                                                                        addr280:
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                           {
                                                                                                                              if(_loc10_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(_loc10_ || this)
                                                                                                                                 {
                                                                                                                                    this.§5!4§.push(this.§7<§);
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
                                                                                                                     §`-§.addChild(this.§7<§);
                                                                                                                     addr530:
                                                                                                                     if(_loc9_ && param1)
                                                                                                                     {
                                                                                                                        this.§7<§ = new §#_§(AngryBirdsFP11.§;!Z§,AngryBirdsFP11.§7P§,_loc2_,_loc3_,§#_§.§6!?§);
                                                                                                                        §§goto(addr530);
                                                                                                                        addr554:
                                                                                                                     }
                                                                                                                     this.§5!4§.push(this.§7<§);
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
                                                                                                               §§push(Number((§`-§.getItemByName("MovieClip_StarCenter") as §&!G§).y + (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).y));
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
                                                                  this.§0!m§ = true;
                                                                  §§goto(addr251);
                                                               }
                                                               if(_loc10_ || param1)
                                                               {
                                                                  this.§[G§ = true;
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
                              §6!H§.playSound("Hiscore_Star_Splash2",§5!o§);
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
      
      private function §%j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §6!H§.§1x§(§5!^§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§#_§ = null;
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
               if(§§pop() != §+_§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(_loc2_);
                     if(!_loc6_)
                     {
                        return §§pop();
                     }
                     addr90:
                     for each(_loc3_ in this.§5!4§)
                     {
                        if(_loc7_ || this)
                        {
                           _loc3_.update(param1);
                        }
                     }
                     if(!(_loc6_ && _loc2_))
                     {
                        if(this.§4y§ > -1)
                        {
                           if(_loc7_)
                           {
                              this.§?V§(param1);
                           }
                           loop4:
                           while(true)
                           {
                              addr162:
                              while(true)
                              {
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    return §+_§.STATE_STATUS_COMPLETED;
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
                              return §+_§.STATE_STATUS_RUNNING;
                           }
                           if(!_loc6_)
                           {
                              while(true)
                              {
                                 §4!]§.§8C§.clearLevel();
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
                           §`-§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                           do
                           {
                              §`-§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
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
               this.§]!e§();
               while(true)
               {
                  this.§4y§ = 0;
                  while(true)
                  {
                     this.mNewScoreCounter = 0;
                     loop3:
                     while(true)
                     {
                        §§push(this.§9!7§);
                        if(!(_loc1_ && this))
                        {
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(this.§&!`§);
                                 if(_loc2_ || this)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc2_ || this)
                                       {
                                          addr183:
                                          this.§&!`§.stop();
                                       }
                                       while(true)
                                       {
                                          this.§&!`§ = null;
                                          addr162:
                                          while(true)
                                          {
                                             addr150:
                                             loop9:
                                             for(; _loc2_ || _loc2_; if(_loc1_ && _loc2_)
                                             {
                                                continue;
                                             },if(§`-§.movieClip.contains(this.§++§))
                                             {
                                                §§goto(addr103);
                                             },§§goto(addr45))
                                             {
                                                this.setButtonStates(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                loop10:
                                                while(true)
                                                {
                                                   §`-§.setText("0","TextField_LevelEndScore");
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §`-§.setText("0","TextField_LevelEndScoreEffects");
                                                      loop12:
                                                      while(_loc2_ || this)
                                                      {
                                                         §§push(this.§++§);
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
                                                               §§push(this.§++§);
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
                                                                     §`-§.movieClip.removeChild(this.§++§);
                                                                     break loop18;
                                                                  }
                                                                  addr83:
                                                                  this.§++§ = null;
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
                                                                     §§push(this.§9!7§);
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
                                       §6!H§.§1x§(§5!^§);
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
                        this.§9!7§ = null;
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
            (§`-§.getItemByName("Button_Menu") as §,c§).setComponentVisualState(param1);
            loop0:
            while(true)
            {
               (§`-§.getItemByName("Button_Replay") as §,c§).setComponentVisualState(param1);
               while(true)
               {
                  (§`-§.getItemByName("Button_NextLevel") as §,c§).setComponentVisualState(param1);
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        (§`-§.getItemByName("Button_CutScene") as §,c§).setComponentVisualState(param1);
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
      
      private function §]!e§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§#_§ = null;
         if(_loc4_ || _loc1_)
         {
            if(this.§#P§)
            {
               if(!_loc5_)
               {
                  addr36:
                  this.§#P§.stop();
               }
               try
               {
                  this.§#P§.removeEventListener(TimerEvent.TIMER,this.§3$§);
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
               var _loc3_:* = this.§5!4§;
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
                     this.§5!4§ = new Vector.<§#_§>();
                  }
                  do
                  {
                     this.§"![§();
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
                     if(§`-§.contains(splash))
                     {
                        while(true)
                        {
                           §`-§.removeChild(splash);
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
      
      protected function §"![§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            (§`-§.getItemByName("TextField_BestScore") as §3!@§).setVisibility(false);
         }
         while(true)
         {
            (§`-§.getItemByName("MovieClip_BestScoreStars") as §&!G§).setVisibility(false);
            while(_loc1_ || _loc2_)
            {
               (§`-§.getItemByName("TextField_NewHighScore") as §3!@§).setVisibility(false);
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
      
      protected function §`!o§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §%]§.§]!b§();
         }
         do
         {
            mNextState = this.§9!1§();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
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
                                                   this.§`!o§();
                                                   break;
                                                   addr154:
                                                case 1:
                                                   §%]§.§=>§();
                                                   mNextState = this.§&!m§();
                                                   break;
                                                   addr143:
                                                   addr149:
                                                case 2:
                                                   §%]§.§=>§();
                                                   while(true)
                                                   {
                                                      mNextState = this.§&!m§();
                                                      while(true)
                                                      {
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            §§push(§4!]§.§8C§);
                                                            if(!(_loc7_ && param3))
                                                            {
                                                               §§push(§§pop().§"!u§());
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
                                                            §§pop().§9%§(_loc4_);
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
                                                      §§push(§4!]§.§8C§);
                                                   }
                                                   break;
                                                case 3:
                                                   §6!H§.§[!W§();
                                                   addr44:
                                                   mNextState = this.§?1§();
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
                                                   AngryBirdsFP11.§`!c§.§catch§();
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
      
      protected function §&!m§() : String
      {
         return §%]§.§3F§;
      }
      
      protected function §9!1§() : String
      {
         return StateCutScene.§3F§;
      }
      
      public function §?1§() : String
      {
         return §6!U§.§3F§;
      }
   }
}
