package § C§
{
   import §!Y§.§[o§;
   import §0!!§.§2N§;
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §>-§.§1]§;
   import §>-§.§6H§;
   import §[v§.§&F§;
   import §[v§.§'4§;
   import §[v§.§=!=§;
   import §[v§.§^P§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §]O§ extends §-§
   {
      
      public static const §?B§:String = "LevelEndStateRio";
      
      public static const §?t§:Number = 30;
      
      protected static const §-!5§:String = "ScoreLoopCountChannel";
      
      protected static const §,!+§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §?B§ = "LevelEndStateRio";
            do
            {
               §?t§ = 30;
               do
               {
                  §-!5§ = "ScoreLoopCountChannel";
                  do
                  {
                     §,!+§ = "EndScreenEffectChannel";
                  }
                  while(_loc1_);
                  
               }
               while(_loc1_ && _loc1_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      private var §[!<§:§?A§;
      
      private var §%^§:Number;
      
      private var §>_§:Number = 0.0;
      
      private var §+2§:Number = 0.0;
      
      private var §%+§:Boolean = false;
      
      private var §%!B§:Timer;
      
      private var §^!D§:§6H§;
      
      private var §0d§:Array;
      
      protected var §,6§:§1]§;
      
      protected var §use§:Vector.<§1]§>;
      
      public var mNewScoreCounter:int;
      
      private var §90§:int;
      
      private var §8!-§:Boolean;
      
      protected var §6e§:Boolean;
      
      private var §+L§:§2N§;
      
      protected var §&i§:Boolean;
      
      private var §>o§:§?A§;
      
      protected var §%g§:Boolean;
      
      protected var §9! §:int;
      
      public function §]O§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§0d§ = [];
            while(true)
            {
               this.§+L§ = new §2N§();
               §§goto(addr53);
            }
         }
         addr53:
         while(true)
         {
            super(param1,param2);
            if(_loc3_)
            {
               if(_loc3_ || _loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.init();
         loop0:
         while(true)
         {
            §,R§ = new §#H§(this);
            §,R§.init(this.getViewXML());
            this.initButtonDefaultPositions();
            while(true)
            {
               this.§use§ = new Vector.<§1]§>();
               §@6§.§'!&§(§-!5§,1,1);
               while(!(_loc1_ && _loc1_))
               {
                  if(!_loc1_)
                  {
                     §@6§.§'!&§(§,!+§,3,1);
                     if(!(_loc1_ && _loc2_))
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§0d§);
            loop0:
            while(true)
            {
               §§pop().push((§,R§.getItemByName("Button_Menu") as §^P§).x);
               loop1:
               while(true)
               {
                  §§push(this.§0d§);
                  loop2:
                  while(true)
                  {
                     §§pop().push((§,R§.getItemByName("Button_Replay") as §^P§).x);
                     loop3:
                     while(_loc1_ || _loc2_)
                     {
                        §§push(this.§0d§);
                        loop4:
                        while(!_loc2_)
                        {
                           §§pop().push((§,R§.getItemByName("Button_NextLevel") as §^P§).x);
                           while(true)
                           {
                              §§push(this.§0d§);
                              if(_loc1_)
                              {
                                 continue loop2;
                              }
                              continue loop4;
                              addr40:
                              §§pop().push((§,R§.getItemByName("Button_CutScene") as §^P§).x);
                              if(!_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    return;
                                    addr61:
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      protected function getViewXML() : XML
      {
         return §set §.§&!1§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(AngryBirdsFP11.§64§.isLevelPassed(§0$§.§[C§))
            {
               (§,R§.getItemByName("Button_Menu") as §^P§).setVisibility(true);
               if(_loc2_ || this)
               {
                  (§,R§.getItemByName("Button_Replay") as §^P§).setVisibility(true);
                  (§,R§.getItemByName("Button_NextLevel") as §^P§).setVisibility(false);
                  while(true)
                  {
                     (§,R§.getItemByName("Button_CutScene") as §^P§).setVisibility(true);
                     (§,R§.getItemByName("Button_Menu") as §^P§).x = this.§0d§[0];
                     while(!(_loc1_ && _loc1_))
                     {
                        (§,R§.getItemByName("Button_Replay") as §^P§).x = this.§0d§[1];
                        while(_loc2_ || _loc2_)
                        {
                           (§,R§.getItemByName("Button_CutScene") as §^P§).x = this.§0d§[2];
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc1_)
                              {
                                 addr245:
                                 (§,R§.getItemByName("Button_Menu") as §^P§).setVisibility(false);
                                 (§,R§.getItemByName("Button_Replay") as §^P§).setVisibility(true);
                                 (§,R§.getItemByName("Button_NextLevel") as §^P§).setVisibility(false);
                                 loop4:
                                 while(true)
                                 {
                                    (§,R§.getItemByName("Button_CutScene") as §^P§).setVisibility(true);
                                    (§,R§.getItemByName("Button_Replay") as §^P§).x = this.§0d§[0] + Math.abs(this.§0d§[1] - this.§0d§[0]) / 2;
                                    (§,R§.getItemByName("Button_CutScene") as §^P§).x = this.§0d§[1] + Math.abs(this.§0d§[2] - this.§0d§[1]) / 2;
                                    addr168:
                                    while(_loc1_ && _loc2_)
                                    {
                                       continue loop4;
                                    }
                                 }
                              }
                              else
                              {
                                 addr49:
                              }
                              return;
                           }
                        }
                     }
                  }
               }
               §§goto(addr168);
            }
            §§goto(addr245);
         }
         §§goto(addr49);
      }
      
      protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         (§,R§.getItemByName("Button_Menu") as §^P§).setVisibility(true);
         loop0:
         while(true)
         {
            (§,R§.getItemByName("Button_Replay") as §^P§).setVisibility(true);
            (§,R§.getItemByName("Button_CutScene") as §^P§).setVisibility(false);
            if(!§0$§.§?W§())
            {
               (§,R§.getItemByName("Button_NextLevel") as §^P§).setVisibility(false);
               if(_loc2_)
               {
                  (§,R§.getItemByName("Button_Menu") as §^P§).x = this.§0d§[0] + Math.abs(this.§0d§[1] - this.§0d§[0]) / 2;
                  (§,R§.getItemByName("Button_Replay") as §^P§).x = this.§0d§[1] + Math.abs(this.§0d§[2] - this.§0d§[1]) / 2;
                  break;
               }
            }
            continue;
            while(!_loc2_)
            {
               continue loop0;
               (§,R§.getItemByName("Button_NextLevel") as §^P§).setVisibility(true);
               do
               {
                  (§,R§.getItemByName("Button_Menu") as §^P§).x = this.§0d§[0];
               }
               while(_loc1_ && _loc2_);
               
               (§,R§.getItemByName("Button_Replay") as §^P§).x = this.§0d§[1];
               (§,R§.getItemByName("Button_NextLevel") as §^P§).x = this.§0d§[2];
            }
            break;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.activate();
         this.§%g§ = false;
         loop0:
         while(true)
         {
            §[o§.pause();
            this.§^!D§ = new §6H§(0,0,0,0);
            loop1:
            while(true)
            {
               §,R§.movieClip.addChildAt(this.§^!D§,§,R§.movieClip.numChildren - 1);
               addr133:
               while(true)
               {
                  if(§0$§.§;e§())
                  {
                     continue loop0;
                  }
                  addr98:
                  this.showButtonsNormal();
                  while(true)
                  {
                     addr88:
                     while(true)
                     {
                        this.mNewScoreCounter = 0;
                        this.§8!-§ = false;
                        continue loop1;
                     }
                  }
               }
               continue loop0;
            }
         }
      }
      
      private function §%O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§6e§ = false;
            this.setScoreData();
         }
         this.§%!B§ = new Timer(500);
         do
         {
            this.§90§ = 0;
            this.§%!B§.addEventListener(TimerEvent.TIMER,this.§=Y§);
            do
            {
               this.§%!B§.start();
            }
            while(!(_loc2_ || this));
            
         }
         while(_loc1_ && _loc1_);
         
      }
      
      protected function setMightyEagleFeather() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(AngryBirdsFP11.§64§.§!!@§(§0$§.§[C§) != 100)
            {
               (§,R§.getItemByName("MovieClip_ResultMEFeather") as §=!=§).mClip.gotoAndStop("Off");
               if(!_loc1_)
               {
                  addr79:
               }
               return;
            }
            if(!_loc2_)
            {
               addr71:
               (§,R§.getItemByName("MovieClip_ResultMEFeather") as §=!=§).mClip.gotoAndStop("On");
            }
            §§goto(addr79);
         }
         §§goto(addr71);
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(this.§&i§)
         {
            §§push(param1);
            if(!(_loc5_ && this))
            {
               §§push(int(§§pop()));
            }
            param2 = §§pop();
            AngryBirdsFP11.§64§.§,! §(§0$§.§[C§,param2);
            §,R§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §,R§.setText("Best " + param2.toString(),"TextField_BestScore");
            do
            {
               this.§9! § = §0$§.§5Y§(§0$§.§[C§,param2);
            }
            while(_loc5_ && _loc3_);
            
            §§push(this.§9! §);
            if(_loc4_ || param1)
            {
               var _loc3_:* = §§pop();
               if(!(_loc5_ && _loc3_))
               {
                  §§push(1);
                  §§push(_loc3_);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_)
                        {
                           addr154:
                           §§push(0);
                        }
                        else
                        {
                           addr185:
                           §§push(2);
                           if(_loc5_)
                           {
                           }
                        }
                        addr194:
                        switch(§§pop())
                        {
                           case 0:
                              (§,R§.getItemByName("MovieClip_BestScoreStars") as §=!=§).§'8§("OneStar");
                              if(!_loc5_)
                              {
                                 addr31:
                                 break;
                              }
                              break;
                           case 1:
                              (§,R§.getItemByName("MovieClip_BestScoreStars") as §=!=§).§'8§("TwoStar");
                              if(!_loc5_)
                              {
                                 break;
                              }
                              break;
                           case 2:
                              (§,R§.getItemByName("MovieClip_BestScoreStars") as §=!=§).§'8§("ThreeStar");
                              if(!_loc5_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr31);
                              }
                        }
                        return;
                        addr193:
                     }
                     else
                     {
                        §§push(2);
                        §§push(_loc3_);
                        if(_loc4_)
                        {
                           addr170:
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_)
                              {
                                 §§push(1);
                                 if(!(_loc4_ || param2))
                                 {
                                    addr183:
                                    if(§§pop() === _loc3_)
                                    {
                                       §§goto(addr185);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr185);
                           }
                           else
                           {
                              §§push(3);
                           }
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr170);
               }
               §§goto(addr154);
            }
            §§goto(addr194);
         }
         §§goto(addr194);
      }
      
      protected function setScoreData() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(AngryBirdsFP11.§64§.§5!4§(§0$§.§[C§));
         if(!(_loc8_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§[o§.controller.getScore());
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc8_)
         {
            this.§&i§ = _loc2_ > _loc1_;
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
               while(_loc8_ && _loc2_);
               
               if(!_loc7_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               §§push(§[o§.controller.getEagleScore());
               if(!_loc8_)
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(AngryBirdsFP11.§64§.§!!@§(§0$§.§[C§));
               if(_loc7_ || this)
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
                     if(!(_loc8_ && _loc1_))
                     {
                        §§push(int(§§pop()));
                        if(_loc7_)
                        {
                           addr116:
                           _loc4_ = §§pop();
                           if(!(_loc8_ && _loc3_))
                           {
                              addr124:
                              §§push(AngryBirdsFP11.§64§);
                              if(_loc7_ || this)
                              {
                                 §§push(§0$§.§[C§);
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§push(_loc4_);
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§pop().§=+§(§§pop(),§§pop());
                                       addr155:
                                       §§push(AngryBirdsFP11.§64§);
                                       §§push(§0$§.§[C§);
                                       §§push(_loc2_);
                                    }
                                    §§push(§§pop().§1!8§(§§pop(),§§pop()));
                                    if(_loc7_)
                                    {
                                       addr159:
                                       §§push(int(§§pop()));
                                    }
                                    var _loc6_:* = §§pop();
                                    if(_loc7_)
                                    {
                                       (§,R§.getItemByName("MovieClip_NewHighScoreBadge") as §=!=§).setVisibility(false);
                                       while(true)
                                       {
                                          (§,R§.getItemByName("MovieClip_StarLeft") as §=!=§).mClip.gotoAndStop("UnLit");
                                          while(true)
                                          {
                                             (§,R§.getItemByName("MovieClip_StarCenter") as §=!=§).mClip.gotoAndStop("UnLit");
                                             §§goto(addr213);
                                          }
                                       }
                                    }
                                    addr213:
                                    while(true)
                                    {
                                       (§,R§.getItemByName("MovieClip_StarRight") as §=!=§).mClip.gotoAndStop("UnLit");
                                       if(_loc7_ || _loc3_)
                                       {
                                          if(_loc7_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    addr203:
                                    return;
                                 }
                              }
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr124);
               }
               §§goto(addr155);
            }
         }
      }
      
      protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(!this.§&i§)
            {
               (§,R§.getItemByName("TextField_BestScore") as §'4§).setVisibility(true);
               if(_loc1_ || this)
               {
                  (§,R§.getItemByName("MovieClip_BestScoreStars") as §=!=§).setVisibility(true);
               }
               else
               {
                  addr68:
               }
               return;
            }
            §@6§.playSound("Hiscore_Badge",§,!+§);
            do
            {
               §,R§.setText("New Highscore!","TextField_NewHighScore");
               (§,R§.getItemByName("TextField_NewHighScore") as §'4§).setVisibility(true);
               (§,R§.getItemByName("MovieClip_BestScoreStars") as §=!=§).setVisibility(false);
            }
            while(_loc2_);
            
            this.§-0§();
         }
         §§goto(addr68);
      }
      
      protected function §-0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§>_§ = 0;
            do
            {
               this.§+2§ = 0;
               do
               {
                  this.§%^§ = §?t§;
               }
               while(!_loc2_);
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      private function §"!0§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).x = (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).x - this.§>_§;
         while(true)
         {
            (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).y = (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).y - this.§+2§;
            if(this.§%^§ <= 0)
            {
               this.§>_§ = 0;
               break;
            }
            if(_loc3_)
            {
               continue;
            }
            §§push(this);
            §§push(Math.random() - 0.5);
            if(!(_loc3_ && this))
            {
               §§push(this.§%^§);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() / §?t§);
               }
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§push(§§pop() * 20);
               }
            }
            §§pop().§>_§ = §§pop();
            §§push(this);
            §§push(Math.random() - 0.5);
            if(!(_loc3_ && _loc3_))
            {
               §§push(this.§%^§);
               if(_loc2_)
               {
                  §§push(§§pop() / §?t§);
               }
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() * 20);
               }
            }
            §§pop().§+2§ = §§pop();
            (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).x = (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).x + this.§>_§;
            loop1:
            while(true)
            {
               addr80:
               (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).y = (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).y + this.§+2§;
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§%^§);
                     if(!(_loc3_ && this))
                     {
                        §§push(param1);
                        if(_loc2_)
                        {
                           §§push(§§pop() / 10);
                        }
                        §§push(§§pop() - §§pop());
                     }
                     §§pop().§%^§ = §§pop();
                     if(!(_loc3_ && _loc2_))
                     {
                        if(_loc2_ || _loc2_)
                        {
                           return;
                        }
                        continue loop1;
                     }
                     continue loop2;
                     addr65:
                  }
                  continue loop1;
               }
            }
         }
         while(true)
         {
            if(!(_loc3_ && _loc3_))
            {
               this.§+2§ = 0;
               §§goto(addr58);
            }
            else
            {
               §§goto(addr123);
            }
         }
      }
      
      private function §=Y§(param1:TimerEvent) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §0$§.§2Q§(§0$§.§[C§).§1U§;
         var _loc5_:Number = §0$§.§2Q§(§0$§.§[C§).§#o§;
         if((§,R§.getItemByName("MovieClip_StarLeft") as §=!=§).mClip.currentLabel != "UnLit")
         {
            §§push(this.§+L§);
            loop0:
            while(_loc9_ || _loc2_)
            {
               §§push(§§pop().getValue());
               loop1:
               for(; _loc9_ || this; §§push(§§pop().getValue()),if(!_loc9_)
               {
                  continue;
               },§§goto(addr388))
               {
                  if(_loc9_ || param1)
                  {
                     §§push(_loc5_);
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           §§push(§§pop() >= §§pop());
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              addr555:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    while(true)
                                    {
                                       §§push((§,R§.getItemByName("MovieClip_StarCenter") as §=!=§).mClip.currentLabel == "UnLit");
                                    }
                                    addr557:
                                 }
                                 while(true)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(this.§+L§);
                                          if(_loc10_)
                                          {
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       §@6§.playSound("Hiscore_Star_Splash2",§,!+§);
                                       (§,R§.getItemByName("MovieClip_StarCenter") as §=!=§).mClip.gotoAndStop("Lit");
                                       _loc2_ = Number((§,R§.getItemByName("MovieClip_StarCenter") as §=!=§).x + (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).x);
                                       if(_loc9_)
                                       {
                                          addr475:
                                          _loc3_ = (§,R§.getItemByName("MovieClip_StarCenter") as §=!=§).y + (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).y;
                                          this.§,6§ = new §1]§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§1]§.final);
                                          §,R§.addChild(this.§,6§);
                                          if(!(_loc10_ && this))
                                          {
                                             this.§use§.push(this.§,6§);
                                             §§goto(addr766);
                                          }
                                          else
                                          {
                                             addr724:
                                          }
                                          §§push(this.§+L§);
                                          while(true)
                                          {
                                             §§pop().assign(§[o§.controller.getScore());
                                             addr728:
                                             while(true)
                                             {
                                                §§push(this.§+L§);
                                                break loop0;
                                             }
                                          }
                                          addr734:
                                       }
                                       loop26:
                                       while(true)
                                       {
                                          this.§>o§ = §";§.§[8§.§6!$§(this,{"mNewScoreCounter":this.§+L§.getValue()},{"mNewScoreCounter":0},_loc6_);
                                          §§push(this.§>o§);
                                          do
                                          {
                                             §§pop().onComplete = this.§`r§;
                                             §§push(this.§>o§);
                                          }
                                          while(_loc10_ && param1);
                                          
                                          §§pop().play();
                                          if(_loc9_)
                                          {
                                             (§,R§.getItemByName("MovieClip_StarLeft") as §=!=§).mClip.gotoAndStop("Lit");
                                             if(!(_loc10_ && param1))
                                             {
                                                §§push(Number((§,R§.getItemByName("MovieClip_StarLeft") as §=!=§).x + (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).x));
                                                if(_loc9_ || this)
                                                {
                                                   addr624:
                                                   _loc2_ = §§pop();
                                                   if(!(_loc10_ && _loc2_))
                                                   {
                                                      addr600:
                                                      _loc3_ = (§,R§.getItemByName("MovieClip_StarLeft") as §=!=§).y + (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).y;
                                                      this.§,6§ = new §1]§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§1]§.override);
                                                      §,R§.addChild(this.§,6§);
                                                      this.§use§.push(this.§,6§);
                                                      addr766:
                                                      var _loc7_:*;
                                                      §§push((_loc7_ = this).§90§);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                      }
                                                      var _loc8_:* = §§pop();
                                                      if(!_loc10_)
                                                      {
                                                         _loc7_.§90§ = _loc8_;
                                                      }
                                                      return;
                                                      addr570:
                                                      addr564:
                                                      addr584:
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      addr719:
                                                      addr690:
                                                      _loc6_ = §§pop();
                                                      addr690:
                                                      §§push(_loc4_);
                                                      §§push(0);
                                                      if(_loc10_ && param1)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop() > §§pop())
                                                      {
                                                         continue loop26;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr718);
                                                      §§goto(addr690);
                                                   }
                                                   addr718:
                                                   addr717:
                                                }
                                                while(true)
                                                {
                                                   break loop1;
                                                   §§goto(addr624);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §@6§.playSound("Hiscore_Star_Splash1",§,!+§);
                                                   this.§%!B§.delay = 1000;
                                                   §§goto(addr734);
                                                }
                                                addr765:
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr728);
                                       addr406:
                                       while(true)
                                       {
                                          if(_loc9_ || _loc2_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop7;
                                       }
                                       §§goto(addr766);
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        §§push(_loc4_);
                        addr388:
                        break;
                        if(!(_loc9_ || _loc3_))
                        {
                           continue;
                        }
                        §§goto(addr397);
                        §§push(§§pop() >= §§pop());
                     }
                     addr715:
                     §§goto(addr717);
                     §§push(§§pop() / §§pop());
                     §§push(2);
                  }
                  §§goto(addr715);
                  §§push(_loc4_);
               }
               _loc6_ = §§pop();
               §§goto(addr702);
            }
            while(true)
            {
               if(_loc9_ || _loc2_)
               {
                  §§goto(addr714);
                  §§push(§§pop().getValue());
               }
               §§goto(addr724);
               §§goto(addr728);
            }
         }
         §§goto(addr322);
      }
      
      private function §`r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@6§.§!>§(§-!5§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§1]§ = null;
         §§push(super.run(param1));
         if(!(_loc7_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc6_ || param1)
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               if(§§pop() != §-§.STATE_STATUS_RUNNING)
               {
                  if(_loc6_ || param1)
                  {
                     addr83:
                     §§push(_loc2_);
                     if(_loc6_)
                     {
                        return §§pop();
                     }
                     §§goto(addr89);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr87:
                  }
                  §§goto(addr89);
               }
               loop1:
               while(true)
               {
                  §,R§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
                  while(!_loc7_)
                  {
                     §,R§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
                     if(!_loc7_)
                     {
                        if(true)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr87);
               }
               §§push(0);
            }
            addr89:
            for each(_loc3_ in this.§use§)
            {
               if(_loc6_)
               {
                  _loc3_.update(param1);
               }
            }
            if(!_loc7_)
            {
               if(this.§%^§ >= 0)
               {
                  if(_loc6_)
                  {
                     this.§"!0§(param1);
                  }
                  while(true)
                  {
                     addr153:
                     §[o§.§='§.clearLevel();
                     if(!(_loc7_ && _loc3_))
                     {
                        return §-§.STATE_STATUS_COMPLETED;
                     }
                  }
                  addr173:
               }
               while(mNextState.length > 0)
               {
                  §§goto(addr153);
                  §§goto(addr173);
               }
            }
            return §-§.STATE_STATUS_RUNNING;
         }
         §§goto(addr83);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
            while(true)
            {
               this.§;[§();
               this.§%^§ = 0;
               addr110:
               if(!(_loc2_ && _loc1_))
               {
                  §,R§.setText("0","TextField_LevelEndScore");
                  §,R§.setText("0","TextField_LevelEndScoreEffects");
                  §§push(this.§^!D§);
                  loop9:
                  for(; §§pop(); while(true)
                  {
                     §§push(this.§^!D§);
                     if(!(_loc2_ && this))
                     {
                        §§pop().clean();
                        if(!_loc2_)
                        {
                           §§goto(addr55);
                        }
                        break;
                     }
                     continue loop9;
                  },§§goto(addr122))
                  {
                     if(!§,R§.movieClip.contains(this.§^!D§))
                     {
                        continue;
                     }
                     §,R§.movieClip.removeChild(this.§^!D§);
                     loop10:
                     while(!_loc2_)
                     {
                        continue loop9;
                        this.§^!D§ = null;
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        addr34:
                        if(!(_loc2_ && _loc1_))
                        {
                           break loop9;
                        }
                        addr181:
                        loop8:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              addr103:
                              if(_loc2_ && this)
                              {
                                 break;
                              }
                              §§goto(addr110);
                           }
                           addr127:
                           loop13:
                           while(true)
                           {
                              addr118:
                              while(true)
                              {
                                 §@6§.§!>§(§-!5§);
                                 addr122:
                                 while(true)
                                 {
                                    this.setButtonStates(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                    continue loop8;
                                 }
                                 continue loop13;
                              }
                           }
                        }
                        while(true)
                        {
                           this.mNewScoreCounter = 0;
                           loop2:
                           while(true)
                           {
                              §§push(this.§>o§);
                              if(_loc1_ || this)
                              {
                                 if(§§pop())
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §§push(this.§>o§);
                                       addr168:
                                       while(true)
                                       {
                                          §§pop().stop();
                                          if(!_loc1_)
                                          {
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr168);
                           }
                           §§push(this.§[!<§);
                           if(_loc1_)
                           {
                              if(§§pop())
                              {
                                 break loop10;
                              }
                              §§goto(addr118);
                           }
                           addr136:
                           while(true)
                           {
                              §§pop().stop();
                              this.§[!<§ = null;
                              §§goto(addr127);
                           }
                           §§goto(addr103);
                        }
                     }
                     while(true)
                     {
                        §§goto(addr136);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr181);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§,R§.getItemByName("Button_Menu") as §^P§).setComponentVisualState(param1);
            while(true)
            {
               (§,R§.getItemByName("Button_Replay") as §^P§).setComponentVisualState(param1);
               loop1:
               while(_loc3_ || this)
               {
                  (§,R§.getItemByName("Button_NextLevel") as §^P§).setComponentVisualState(param1);
                  while(true)
                  {
                     (§,R§.getItemByName("Button_CutScene") as §^P§).setComponentVisualState(param1);
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc2_)
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
         §§goto(addr70);
      }
      
      private function §;[§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§1]§ = null;
         if(!(_loc5_ && _loc2_))
         {
            if(this.§%!B§)
            {
               if(_loc4_)
               {
                  this.§%!B§.stop();
                  try
                  {
                     addr39:
                     this.§%!B§.removeEventListener(TimerEvent.TIMER,this.§=Y§);
                     if(_loc5_)
                     {
                     }
                  }
                  catch(e:Error)
                  {
                  }
                  return;
                  addr153:
               }
               §§goto(addr39);
            }
            var _loc2_:int = 0;
            if(_loc4_)
            {
               var _loc3_:* = this.§use§;
               if(_loc4_)
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
                              if(§,R§.contains(splash))
                              {
                                 addr106:
                                 while(true)
                                 {
                                    §,R§.removeChild(splash);
                                    addr110:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                                 addr106:
                              }
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 if(!_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 §§pop().§§slot[1].clean();
                                 if(_loc4_)
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       if(true)
                                       {
                                          break loop3;
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr106);
                                 }
                                 §§goto(addr110);
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr135:
                  if(_loc4_)
                  {
                     this.§use§ = new Vector.<§1]§>();
                     do
                     {
                        this.hideBestScoreTexts();
                     }
                     while(!(_loc4_ || _loc1_));
                     
                  }
                  §§goto(addr153);
               }
               §§goto(addr106);
            }
            §§goto(addr135);
         }
         §§goto(addr39);
      }
      
      protected function hideBestScoreTexts() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§,R§.getItemByName("TextField_BestScore") as §'4§).setVisibility(false);
            while(true)
            {
               (§,R§.getItemByName("MovieClip_BestScoreStars") as §=!=§).setVisibility(false);
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            (§,R§.getItemByName("TextField_NewHighScore") as §'4§).setVisibility(false);
            if(_loc1_ || _loc2_)
            {
               if(!_loc2_)
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
         if(!(_loc1_ && _loc1_))
         {
            super.cleanup();
         }
      }
      
      protected function §9L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §7!6§.§2v§();
            do
            {
               mNextState = this.§@e§();
            }
            while(_loc1_);
            
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:String = null;
         §§push(param2);
         while(true)
         {
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               §§push("NEXT_LEVEL");
               if(!_loc7_)
               {
                  §§push(_loc5_);
                  if(!(_loc7_ && param3))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || param3)
                        {
                           §§push(0);
                           if(_loc7_ && this)
                           {
                              addr226:
                           }
                        }
                        else
                        {
                           addr268:
                           §§push(4);
                           if(!(_loc7_ && param1))
                           {
                              addr276:
                           }
                        }
                        §§goto(addr281);
                     }
                     §§push("REPLAY");
                     if(!(_loc7_ && param2))
                     {
                        §§push(_loc5_);
                        if(_loc6_ || this)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc7_)
                              {
                                 §§push(1);
                                 if(_loc6_ || param1)
                                 {
                                 }
                              }
                              else
                              {
                                 addr256:
                                 §§push(3);
                                 if(_loc6_ || param3)
                                 {
                                 }
                              }
                              §§goto(addr281);
                           }
                           else
                           {
                              §§push("WATCH_REPLAY");
                              if(_loc6_ || this)
                              {
                                 §§push(_loc5_);
                                 if(_loc6_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(2);
                                          if(!_loc7_)
                                          {
                                             §§goto(addr226);
                                          }
                                          §§goto(addr281);
                                       }
                                       else
                                       {
                                          §§goto(addr256);
                                       }
                                    }
                                    else
                                    {
                                       §§push("MENU");
                                       if(!(_loc7_ && this))
                                       {
                                          addr235:
                                          §§push(_loc5_);
                                          if(_loc6_)
                                          {
                                             addr238:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc6_ || param2)
                                                {
                                                   §§goto(addr256);
                                                }
                                                else
                                                {
                                                   §§goto(addr268);
                                                }
                                             }
                                             else
                                             {
                                                addr267:
                                                if("FULLSCREEN_BUTTON" === _loc5_)
                                                {
                                                   §§goto(addr268);
                                                }
                                                else
                                                {
                                                   §§push(5);
                                                }
                                             }
                                             §§goto(addr268);
                                          }
                                       }
                                       §§goto(addr267);
                                    }
                                 }
                              }
                              §§goto(addr267);
                           }
                           return;
                        }
                        §§goto(addr267);
                     }
                     §§goto(addr235);
                     §§goto(addr268);
                  }
                  §§goto(addr238);
               }
               §§goto(addr267);
            }
            §§goto(addr256);
         }
      }
      
      protected function §0D§() : String
      {
         return §7!6§.§?B§;
      }
      
      protected function §@e§() : String
      {
         return StateCutScene.§?B§;
      }
      
      public function §`q§() : String
      {
         return §4t§.§?B§;
      }
   }
}
