package §1!]§
{
   import §!i§.§1s§;
   import §!i§.§3!A§;
   import §!i§.§?"%§;
   import §!i§.§^!d§;
   import §""<§.§=Q§;
   import §"_§.§&r§;
   import §"_§.§3o§;
   import §'#§.§4!!§;
   import §'#§.§^4§;
   import §+!9§.§;0§;
   import §4!t§.§95§;
   import §4!t§.§>r§;
   import §7!c§.§[!>§;
   import §9!G§.§"!S§;
   import §;"=§.§6!<§;
   import §;"=§.§<!8§;
   import §<§.§8"+§;
   import §<§.§<K§;
   import §]!O§.§'X§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §+!K§ extends §%"%§
   {
      
      private static const §%!&§:Number = 750;
      
      private static var §%"E§:Class = §]g§;
      
      public static const §1F§:Number = 30;
      
      protected static const §'!k§:String = "ScoreLoopCountChannel";
      
      protected static const §+e§:String = "EndScreenEffectChannel";
       
      
      private var §8!p§:§8"+§;
      
      private var §[m§:Number;
      
      private var §1!n§:Number = 0.0;
      
      private var §!!'§:Number = 0.0;
      
      private var §3"5§:Boolean = false;
      
      private var §%k§:Timer;
      
      protected var §+!O§:Array;
      
      protected var §76§:§'X§;
      
      protected var §21§:Vector.<§'X§>;
      
      public var mNewScoreCounter:int;
      
      private var §^v§:int;
      
      private var §+!+§:Boolean;
      
      protected var §2n§:Boolean;
      
      private var §[!4§:§4!!§;
      
      protected var §!"!§:Boolean;
      
      private var §4&§:§8"+§;
      
      protected var §1!B§:Boolean;
      
      protected var §![§:int;
      
      private var §[!S§:§[!>§;
      
      private var §;q§:Boolean;
      
      public function §+!K§(param1:§[!>§, param2:§6!<§)
      {
         this.§+!O§ = [];
         this.§[!4§ = new §4!!§();
         §&"<§ = true;
         § !z§ = false;
         super(§&r§.§8">§,§3o§.§%!V§,§=Q§.§%!g§(§%"E§));
         §@1§ = param2 as §<!8§;
         this.§[!S§ = param1;
      }
      
      protected function §`!I§() : void
      {
         (§&#§.getItemByName("Button_Menu") as §3!A§).setVisibility(true);
         (§&#§.getItemByName("Button_Replay") as §3!A§).setVisibility(true);
         if(this.§[!S§.§>F§.getNextLevelId())
         {
            (§&#§.getItemByName("Button_NextLevel") as §3!A§).setVisibility(true);
            (§&#§.getItemByName("Button_Menu") as §3!A§).x = this.§+!O§[0];
            (§&#§.getItemByName("Button_Replay") as §3!A§).x = this.§+!O§[1];
            (§&#§.getItemByName("Button_NextLevel") as §3!A§).x = this.§+!O§[2];
         }
         else
         {
            (§&#§.getItemByName("Button_NextLevel") as §3!A§).setVisibility(false);
            (§&#§.getItemByName("Button_Menu") as §3!A§).x = this.§+!O§[0] + 40;
            (§&#§.getItemByName("Button_Replay") as §3!A§).x = this.§+!O§[2] - 40;
         }
      }
      
      protected function §0!'§() : void
      {
         this.§+!O§.push(Math.round((§&#§.getItemByName("Button_Menu") as §3!A§).x));
         this.§+!O§.push(Math.round((§&#§.getItemByName("Button_Replay") as §3!A§).x));
         this.§+!O§.push(Math.round((§&#§.getItemByName("Button_NextLevel") as §3!A§).x));
      }
      
      override protected function init() : void
      {
         super.init();
         §&"<§ = true;
         this.updateTextFields();
         this.§0!'§();
         this.§21§ = new Vector.<§'X§>();
         §;0§.§@!^§.background.stopAmbientSound();
         §"!S§.§4+§(§'!k§,1,0.8);
         this.§1!B§ = false;
         §;0§.pause();
         this.§`!I§();
         this.mNewScoreCounter = 0;
         this.§+!+§ = false;
         this.§1!n§ = 0;
         this.§!!'§ = 0;
         this.§=L§();
         this.§;q§ = true;
      }
      
      private function §=L§() : void
      {
         this.§2n§ = false;
         this.§,b§();
         this.§%k§ = new Timer(100);
         this.§^v§ = 0;
         this.§%k§.addEventListener(TimerEvent.TIMER,this.§^O§);
         this.§%k§.start();
      }
      
      protected function §+!_§(param1:int, param2:int) : void
      {
         if(this.§!"!§)
         {
            param2 = param1;
            (§&!h§.§ u§ as §^"=§).§^!7§.§!!q§(this.§[!S§.§>F§.currentLevel,param2);
            (§&!h§.§ u§ as §^"=§).§^!7§.§8!A§(this.§[!S§.§>F§.currentLevel,param2);
            §&#§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §&#§.setText(param2.toString(),"TextField_BestScore");
            this.§![§ = this.§[!S§.§>F§.getNumStarsForLevel(this.§[!S§.§>F§.currentLevel,param2);
            switch(this.§![§)
            {
               case 1:
                  (§&#§.getItemByName("MovieClip_BestScoreStars") as §^!d§).§6!L§("OneStar");
                  break;
               case 2:
                  (§&#§.getItemByName("MovieClip_BestScoreStars") as §^!d§).§6!L§("TwoStar");
                  break;
               case 3:
                  (§&#§.getItemByName("MovieClip_BestScoreStars") as §^!d§).§6!L§("ThreeStar");
            }
         }
      }
      
      protected function §,b§() : void
      {
         var _loc1_:int = (§&!h§.§ u§ as §^"=§).§^!7§.getScoreForLevel(this.§[!S§.§>F§.currentLevel);
         var _loc2_:int = §;0§.§%O§.getScore(10);
         this.§!"!§ = _loc2_ >= _loc1_;
         this.§+!_§(_loc2_,_loc1_);
         var _loc3_:int = (§&!h§.§ u§ as §^"=§).§^!7§.§]!F§(this.§[!S§.§>F§.currentLevel,_loc2_);
         (§&#§.getItemByName("MovieClip_NewHighScoreBadge") as §^!d§).setVisibility(false);
         (§&#§.getItemByName("MovieClip_StarLeft") as §^!d§).mClip.gotoAndStop("UnLit");
         (§&#§.getItemByName("MovieClip_StarCenter") as §^!d§).mClip.gotoAndStop("UnLit");
         (§&#§.getItemByName("MovieClip_StarRight") as §^!d§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §5D§() : void
      {
         if(this.§!"!§)
         {
            §@1§.soundManager.playSound("new_highscore");
            (§&#§.getItemByName("TextField_NewHighScore") as §?"%§).setVisibility(true);
            (§&#§.getItemByName("MovieClip_BestScoreStars") as §^!d§).setVisibility(false);
            this.§?&§();
         }
         else
         {
            (§&#§.getItemByName("TextField_BestScore") as §?"%§).setVisibility(true);
            (§&#§.getItemByName("MovieClip_BestScoreStars") as §^!d§).setVisibility(true);
            (§&#§.getItemByName("MovieClip_BestScoreText") as §?"%§).setVisibility(true);
         }
      }
      
      protected function §?&§() : void
      {
         this.§1!n§ = 0;
         this.§!!'§ = 0;
         this.§[m§ = §1F§;
      }
      
      private function §8J§(param1:Number) : void
      {
         (§&#§.getItemByName("Container_LevelEndStripe") as §1s§).x = (§&#§.getItemByName("Container_LevelEndStripe") as §1s§).x - this.§1!n§;
         (§&#§.getItemByName("Container_LevelEndStripe") as §1s§).y = (§&#§.getItemByName("Container_LevelEndStripe") as §1s§).y - this.§!!'§;
         if(this.§[m§ > 0)
         {
            this.§1!n§ = (Math.random() - 0.5) * (this.§[m§ / §1F§) * 20;
            this.§!!'§ = (Math.random() - 0.5) * (this.§[m§ / §1F§) * 20;
            (§&#§.getItemByName("Container_LevelEndStripe") as §1s§).x = (§&#§.getItemByName("Container_LevelEndStripe") as §1s§).x + this.§1!n§;
            (§&#§.getItemByName("Container_LevelEndStripe") as §1s§).y = (§&#§.getItemByName("Container_LevelEndStripe") as §1s§).y + this.§!!'§;
         }
         else
         {
            this.§1!n§ = 0;
            this.§!!'§ = 0;
         }
         this.§[m§ -= param1 / 10;
      }
      
      private function §^O§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = this.§[!S§.§>F§.getLevelForId(this.§[!S§.§>F§.currentLevel).scoreGold;
         var _loc5_:Number = this.§[!S§.§>F§.getLevelForId(this.§[!S§.§>F§.currentLevel).scoreSilver;
         if((§&#§.getItemByName("MovieClip_StarLeft") as §^!d§).mClip.currentLabel == "UnLit")
         {
            §"!S§.playSound("score_count",§'!k§,999,-1,100);
            §@1§.soundManager.playSound("star_1");
            this.§%k§.delay = §%!&§;
            this.§[!4§.§[!s§(§;0§.§%O§.getScore(10));
            _loc6_ = this.§[!4§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§4&§ = §<K§.§<"B§.§`!c§(this,{"mNewScoreCounter":this.§[!4§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§4&§.onComplete = this.§=P§;
            this.§4&§.play();
            (§&#§.getItemByName("MovieClip_StarLeft") as §^!d§).mClip.gotoAndStop("Lit");
            _loc2_ = (§&#§.getItemByName("MovieClip_StarLeft") as §^!d§).x + (§&#§.getItemByName("Container_LevelEndStripe") as §1s§).x;
            _loc3_ = (§&#§.getItemByName("MovieClip_StarLeft") as §^!d§).y + (§&#§.getItemByName("Container_LevelEndStripe") as §1s§).y;
            this.§76§ = new §'X§(§&!h§.screenWidth,§&!h§.screenHeight,_loc2_,_loc3_,§'X§.§[!0§);
            §&#§.mClip.addChild(this.§76§);
            this.§21§.push(this.§76§);
         }
         else if(this.§[!4§.getValue() >= _loc5_ && (§&#§.getItemByName("MovieClip_StarCenter") as §^!d§).mClip.currentLabel == "UnLit")
         {
            §@1§.soundManager.playSound("star_2");
            (§&#§.getItemByName("MovieClip_StarCenter") as §^!d§).mClip.gotoAndStop("Lit");
            _loc2_ = (§&#§.getItemByName("MovieClip_StarCenter") as §^!d§).x + (§&#§.getItemByName("Container_LevelEndStripe") as §1s§).x;
            _loc3_ = (§&#§.getItemByName("MovieClip_StarCenter") as §^!d§).y + (§&#§.getItemByName("Container_LevelEndStripe") as §1s§).y;
            this.§76§ = new §'X§(§&!h§.screenWidth,§&!h§.screenHeight,_loc2_,_loc3_,§'X§.§4j§);
            §&#§.mClip.addChild(this.§76§);
            this.§21§.push(this.§76§);
         }
         else if(this.§[!4§.getValue() >= _loc4_ && (§&#§.getItemByName("MovieClip_StarRight") as §^!d§).mClip.currentLabel == "UnLit")
         {
            this.§1!B§ = true;
            §@1§.soundManager.playSound("star_3");
            (§&#§.getItemByName("MovieClip_StarRight") as §^!d§).mClip.gotoAndStop("Lit");
            _loc2_ = (§&#§.getItemByName("MovieClip_StarRight") as §^!d§).x + (§&#§.getItemByName("Container_LevelEndStripe") as §1s§).x;
            _loc3_ = (§&#§.getItemByName("MovieClip_StarRight") as §^!d§).y + (§&#§.getItemByName("Container_LevelEndStripe") as §1s§).y;
            this.§76§ = new §'X§(§&!h§.screenWidth,§&!h§.screenHeight,_loc2_,_loc3_,§'X§.§=!N§);
            §&#§.mClip.addChild(this.§76§);
            this.§21§.push(this.§76§);
         }
         else if(!this.§+!+§)
         {
            this.§+!+§ = true;
         }
         else
         {
            this.§%k§.stop();
            if(this.§!"!§ && !this.§2n§)
            {
               (§&#§.getItemByName("MovieClip_NewHighScoreBadge") as §^!d§).setVisibility(true);
               §&#§.getItemByName("TextField_NewHighScore").setVisibility(true);
            }
            else
            {
               (§&#§.getItemByName("MovieClip_NewHighScoreBadge") as §^!d§).setVisibility(false);
               §&#§.getItemByName("TextField_NewHighScore").setVisibility(false);
            }
            this.§8!p§ = §<K§.§<"B§.§`!c§((§&#§.getItemByName("MovieClip_NewHighScoreBadge") as §^!d§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§8!p§.onComplete = this.§5D§;
            this.§8!p§.play();
         }
         ++this.§^v§;
      }
      
      private function §=P§() : void
      {
         §"!S§.§]R§(§'!k§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§'X§ = null;
         §&#§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         for each(_loc2_ in this.§21§)
         {
            _loc2_.update(param1);
         }
         if(this.§[m§ >= 0)
         {
            this.§8J§(param1);
         }
      }
      
      override public function dispose() : void
      {
         this.§0!R§();
         this.§[m§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§4&§)
         {
            this.§4&§.stop();
            this.§4&§ = null;
         }
         if(this.§8!p§)
         {
            this.§8!p§.stop();
            this.§8!p§ = null;
         }
         §"!S§.§]R§(§'!k§);
         this.§5"2§(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §&#§.setText("0","TextField_LevelEndScore");
         this.§;q§ = false;
         super.dispose();
      }
      
      protected function §5"2§(param1:String) : void
      {
         (§&#§.getItemByName("Button_Menu") as §3!A§).setComponentVisualState(param1);
         (§&#§.getItemByName("Button_Replay") as §3!A§).setComponentVisualState(param1);
         (§&#§.getItemByName("Button_NextLevel") as §3!A§).setComponentVisualState(param1);
      }
      
      private function §0!R§() : void
      {
         var splash:§'X§ = null;
         if(this.§%k§)
         {
            this.§%k§.stop();
            try
            {
               this.§%k§.removeEventListener(TimerEvent.TIMER,this.§^O§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§21§)
         {
            if(§&#§.mClip.contains(splash))
            {
               §&#§.mClip.removeChild(splash);
            }
            splash.§#!O§();
         }
         this.§21§ = new Vector.<§'X§>();
         this.§74§();
      }
      
      protected function §74§() : void
      {
         (§&#§.getItemByName("TextField_BestScore") as §?"%§).setVisibility(false);
         (§&#§.getItemByName("MovieClip_BestScoreStars") as §^!d§).setVisibility(false);
         (§&#§.getItemByName("TextField_NewHighScore") as §?"%§).setVisibility(false);
      }
      
      protected function §&_§() : void
      {
         this.§[!S§.§=^§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §&"<§ = false;
               close();
               this.§&_§();
               break;
            case "REPLAY":
               §&"<§ = false;
               close();
               this.§[!S§.§ O§(this.§[!S§.§=!X§());
               break;
            case "MENU":
               §"!S§.§#9§();
               §&"<§ = false;
               close();
               this.§[!S§.§ O§(this.§[!S§.§-m§());
         }
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §^4§.§<"B§.updateTextFields(§&#§,"StateEnd");
      }
      
      public function get isOpen() : Boolean
      {
         return this.§;q§;
      }
   }
}
