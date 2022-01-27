package §+"C§
{
   import §'!n§.§??§;
   import §'!n§.§[!I§;
   import §+"2§.§?d§;
   import §+"2§.§`B§;
   import §,!7§.§%!J§;
   import §,!7§.§2a§;
   import §,!7§.§5!k§;
   import §,!7§.§8,§;
   import §6!C§.§7[§;
   import §6!M§.§1",§;
   import §6!M§.§3Y§;
   import §6B§.§5![§;
   import §6B§.§?"2§;
   import §7!C§.§8!w§;
   import §9!L§.§&" §;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import §=" §.§[N§;
   import §>"!§.§@!9§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §!!`§ extends §^"4§
   {
      
      private static const §%!_§:Number = 750;
      
      private static var §1!J§:Class = §[U§;
      
      public static const § !w§:Number = 30;
      
      protected static const §6"=§:String = "ScoreLoopCountChannel";
      
      protected static const §6"<§:String = "EndScreenEffectChannel";
       
      
      private var §1!t§:§15§;
      
      private var § !f§:Number;
      
      private var §1!e§:Number = 0.0;
      
      private var §7!w§:Number = 0.0;
      
      private var §`8§:Boolean = false;
      
      private var §+!2§:Timer;
      
      protected var §3&§:Array;
      
      protected var §;"B§:§&" §;
      
      protected var §`!>§:Vector.<§&" §>;
      
      public var mNewScoreCounter:int;
      
      private var §,q§:int;
      
      private var §2"C§:Boolean;
      
      protected var §@i§:Boolean;
      
      private var §20§:§??§;
      
      protected var §-[§:Boolean;
      
      private var §%!V§:§15§;
      
      protected var §!!8§:Boolean;
      
      protected var §,7§:int;
      
      private var §`Y§:§[N§;
      
      private var §^!+§:Boolean;
      
      public function §!!`§(param1:§[N§, param2:§3Y§)
      {
         this.§3&§ = [];
         this.§20§ = new §??§();
         §^">§ = true;
         §6"B§ = false;
         super(§?d§.§1!Q§,§`B§.§[s§,§7[§.§[!n§(§1!J§));
         §2!?§ = param2 as §1",§;
         this.§`Y§ = param1;
      }
      
      protected function §!I§() : void
      {
         (§ 1§.getItemByName("Button_Menu") as §%!J§).setVisibility(true);
         (§ 1§.getItemByName("Button_Replay") as §%!J§).setVisibility(true);
         if(this.§`Y§.§;!u§.getNextLevelId())
         {
            (§ 1§.getItemByName("Button_NextLevel") as §%!J§).setVisibility(true);
            (§ 1§.getItemByName("Button_Menu") as §%!J§).x = this.§3&§[0];
            (§ 1§.getItemByName("Button_Replay") as §%!J§).x = this.§3&§[1];
            (§ 1§.getItemByName("Button_NextLevel") as §%!J§).x = this.§3&§[2];
         }
         else
         {
            (§ 1§.getItemByName("Button_NextLevel") as §%!J§).setVisibility(false);
            (§ 1§.getItemByName("Button_Menu") as §%!J§).x = this.§3&§[0] + 40;
            (§ 1§.getItemByName("Button_Replay") as §%!J§).x = this.§3&§[2] - 40;
         }
      }
      
      protected function §[W§() : void
      {
         this.§3&§.push(Math.round((§ 1§.getItemByName("Button_Menu") as §%!J§).x));
         this.§3&§.push(Math.round((§ 1§.getItemByName("Button_Replay") as §%!J§).x));
         this.§3&§.push(Math.round((§ 1§.getItemByName("Button_NextLevel") as §%!J§).x));
      }
      
      override protected function init() : void
      {
         super.init();
         §^">§ = true;
         this.updateTextFields();
         this.§[W§();
         this.§`!>§ = new Vector.<§&" §>();
         §8!w§.§5!V§.background.stopAmbientSound();
         §@!9§.§#!-§(§6"=§,1,0.8);
         this.§!!8§ = false;
         §8!w§.pause();
         this.§!I§();
         this.mNewScoreCounter = 0;
         this.§2"C§ = false;
         this.§1!e§ = 0;
         this.§7!w§ = 0;
         this.§@L§();
         this.§^!+§ = true;
      }
      
      private function §@L§() : void
      {
         this.§@i§ = false;
         this.§@o§();
         this.§+!2§ = new Timer(100);
         this.§,q§ = 0;
         this.§+!2§.addEventListener(TimerEvent.TIMER,this.§30§);
         this.§+!2§.start();
      }
      
      protected function §[!H§(param1:int, param2:int) : void
      {
         if(this.§-[§)
         {
            param2 = param1;
            (§&"<§.§<!7§ as §["!§).§<!%§.§0"3§(this.§`Y§.§;!u§.currentLevel,param2);
            (§&"<§.§<!7§ as §["!§).§<!%§.§>!`§(this.§`Y§.§;!u§.currentLevel,param2);
            § 1§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            § 1§.setText(param2.toString(),"TextField_BestScore");
            this.§,7§ = this.§`Y§.§;!u§.getNumStarsForLevel(this.§`Y§.§;!u§.currentLevel,param2);
            switch(this.§,7§)
            {
               case 1:
                  (§ 1§.getItemByName("MovieClip_BestScoreStars") as §8,§).§9R§("OneStar");
                  break;
               case 2:
                  (§ 1§.getItemByName("MovieClip_BestScoreStars") as §8,§).§9R§("TwoStar");
                  break;
               case 3:
                  (§ 1§.getItemByName("MovieClip_BestScoreStars") as §8,§).§9R§("ThreeStar");
            }
         }
      }
      
      protected function §@o§() : void
      {
         var _loc1_:int = (§&"<§.§<!7§ as §["!§).§<!%§.getScoreForLevel(this.§`Y§.§;!u§.currentLevel);
         var _loc2_:int = §8!w§.§79§.getScore(10);
         this.§-[§ = _loc2_ >= _loc1_;
         this.§[!H§(_loc2_,_loc1_);
         var _loc3_:int = (§&"<§.§<!7§ as §["!§).§<!%§.§7=§(this.§`Y§.§;!u§.currentLevel,_loc2_);
         (§ 1§.getItemByName("MovieClip_NewHighScoreBadge") as §8,§).setVisibility(false);
         (§ 1§.getItemByName("MovieClip_StarLeft") as §8,§).mClip.gotoAndStop("UnLit");
         (§ 1§.getItemByName("MovieClip_StarCenter") as §8,§).mClip.gotoAndStop("UnLit");
         (§ 1§.getItemByName("MovieClip_StarRight") as §8,§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §1"%§() : void
      {
         if(this.§-[§)
         {
            §2!?§.soundManager.playSound("new_highscore");
            (§ 1§.getItemByName("TextField_NewHighScore") as §2a§).setVisibility(true);
            (§ 1§.getItemByName("MovieClip_BestScoreStars") as §8,§).setVisibility(false);
            this.§7!'§();
         }
         else
         {
            (§ 1§.getItemByName("TextField_BestScore") as §2a§).setVisibility(true);
            (§ 1§.getItemByName("MovieClip_BestScoreStars") as §8,§).setVisibility(true);
            (§ 1§.getItemByName("MovieClip_BestScoreText") as §2a§).setVisibility(true);
         }
      }
      
      protected function §7!'§() : void
      {
         this.§1!e§ = 0;
         this.§7!w§ = 0;
         this.§ !f§ = § !w§;
      }
      
      private function §;!^§(param1:Number) : void
      {
         (§ 1§.getItemByName("Container_LevelEndStripe") as §5!k§).x = (§ 1§.getItemByName("Container_LevelEndStripe") as §5!k§).x - this.§1!e§;
         (§ 1§.getItemByName("Container_LevelEndStripe") as §5!k§).y = (§ 1§.getItemByName("Container_LevelEndStripe") as §5!k§).y - this.§7!w§;
         if(this.§ !f§ > 0)
         {
            this.§1!e§ = (Math.random() - 0.5) * (this.§ !f§ / § !w§) * 20;
            this.§7!w§ = (Math.random() - 0.5) * (this.§ !f§ / § !w§) * 20;
            (§ 1§.getItemByName("Container_LevelEndStripe") as §5!k§).x = (§ 1§.getItemByName("Container_LevelEndStripe") as §5!k§).x + this.§1!e§;
            (§ 1§.getItemByName("Container_LevelEndStripe") as §5!k§).y = (§ 1§.getItemByName("Container_LevelEndStripe") as §5!k§).y + this.§7!w§;
         }
         else
         {
            this.§1!e§ = 0;
            this.§7!w§ = 0;
         }
         this.§ !f§ -= param1 / 10;
      }
      
      private function §30§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = this.§`Y§.§;!u§.getLevelForId(this.§`Y§.§;!u§.currentLevel).scoreGold;
         var _loc5_:Number = this.§`Y§.§;!u§.getLevelForId(this.§`Y§.§;!u§.currentLevel).scoreSilver;
         if((§ 1§.getItemByName("MovieClip_StarLeft") as §8,§).mClip.currentLabel == "UnLit")
         {
            §@!9§.playSound("score_count",§6"=§,999,-1,100);
            §2!?§.soundManager.playSound("star_1");
            this.§+!2§.delay = §%!_§;
            this.§20§.§8!K§(§8!w§.§79§.getScore(10));
            _loc6_ = this.§20§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§%!V§ = §@F§.§8!J§.§&6§(this,{"mNewScoreCounter":this.§20§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§%!V§.onComplete = this.§[u§;
            this.§%!V§.play();
            (§ 1§.getItemByName("MovieClip_StarLeft") as §8,§).mClip.gotoAndStop("Lit");
            _loc2_ = (§ 1§.getItemByName("MovieClip_StarLeft") as §8,§).x + (§ 1§.getItemByName("Container_LevelEndStripe") as §5!k§).x;
            _loc3_ = (§ 1§.getItemByName("MovieClip_StarLeft") as §8,§).y + (§ 1§.getItemByName("Container_LevelEndStripe") as §5!k§).y;
            this.§;"B§ = new §&" §(§&"<§.screenWidth,§&"<§.screenHeight,_loc2_,_loc3_,§&" §.§@A§);
            § 1§.mClip.addChild(this.§;"B§);
            this.§`!>§.push(this.§;"B§);
         }
         else if(this.§20§.getValue() >= _loc5_ && (§ 1§.getItemByName("MovieClip_StarCenter") as §8,§).mClip.currentLabel == "UnLit")
         {
            §2!?§.soundManager.playSound("star_2");
            (§ 1§.getItemByName("MovieClip_StarCenter") as §8,§).mClip.gotoAndStop("Lit");
            _loc2_ = (§ 1§.getItemByName("MovieClip_StarCenter") as §8,§).x + (§ 1§.getItemByName("Container_LevelEndStripe") as §5!k§).x;
            _loc3_ = (§ 1§.getItemByName("MovieClip_StarCenter") as §8,§).y + (§ 1§.getItemByName("Container_LevelEndStripe") as §5!k§).y;
            this.§;"B§ = new §&" §(§&"<§.screenWidth,§&"<§.screenHeight,_loc2_,_loc3_,§&" §.§1+§);
            § 1§.mClip.addChild(this.§;"B§);
            this.§`!>§.push(this.§;"B§);
         }
         else if(this.§20§.getValue() >= _loc4_ && (§ 1§.getItemByName("MovieClip_StarRight") as §8,§).mClip.currentLabel == "UnLit")
         {
            this.§!!8§ = true;
            §2!?§.soundManager.playSound("star_3");
            (§ 1§.getItemByName("MovieClip_StarRight") as §8,§).mClip.gotoAndStop("Lit");
            _loc2_ = (§ 1§.getItemByName("MovieClip_StarRight") as §8,§).x + (§ 1§.getItemByName("Container_LevelEndStripe") as §5!k§).x;
            _loc3_ = (§ 1§.getItemByName("MovieClip_StarRight") as §8,§).y + (§ 1§.getItemByName("Container_LevelEndStripe") as §5!k§).y;
            this.§;"B§ = new §&" §(§&"<§.screenWidth,§&"<§.screenHeight,_loc2_,_loc3_,§&" §.§%!+§);
            § 1§.mClip.addChild(this.§;"B§);
            this.§`!>§.push(this.§;"B§);
         }
         else if(!this.§2"C§)
         {
            this.§2"C§ = true;
         }
         else
         {
            this.§+!2§.stop();
            if(this.§-[§ && !this.§@i§)
            {
               (§ 1§.getItemByName("MovieClip_NewHighScoreBadge") as §8,§).setVisibility(true);
               § 1§.getItemByName("TextField_NewHighScore").setVisibility(true);
            }
            else
            {
               (§ 1§.getItemByName("MovieClip_NewHighScoreBadge") as §8,§).setVisibility(false);
               § 1§.getItemByName("TextField_NewHighScore").setVisibility(false);
            }
            this.§1!t§ = §@F§.§8!J§.§&6§((§ 1§.getItemByName("MovieClip_NewHighScoreBadge") as §8,§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§1!t§.onComplete = this.§1"%§;
            this.§1!t§.play();
         }
         ++this.§,q§;
      }
      
      private function §[u§() : void
      {
         §@!9§.§"!y§(§6"=§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§&" § = null;
         § 1§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         for each(_loc2_ in this.§`!>§)
         {
            _loc2_.update(param1);
         }
         if(this.§ !f§ >= 0)
         {
            this.§;!^§(param1);
         }
      }
      
      override public function dispose() : void
      {
         this.§=!b§();
         this.§ !f§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§%!V§)
         {
            this.§%!V§.stop();
            this.§%!V§ = null;
         }
         if(this.§1!t§)
         {
            this.§1!t§.stop();
            this.§1!t§ = null;
         }
         §@!9§.§"!y§(§6"=§);
         this.§ !L§(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         § 1§.setText("0","TextField_LevelEndScore");
         this.§^!+§ = false;
         super.dispose();
      }
      
      protected function § !L§(param1:String) : void
      {
         (§ 1§.getItemByName("Button_Menu") as §%!J§).setComponentVisualState(param1);
         (§ 1§.getItemByName("Button_Replay") as §%!J§).setComponentVisualState(param1);
         (§ 1§.getItemByName("Button_NextLevel") as §%!J§).setComponentVisualState(param1);
      }
      
      private function §=!b§() : void
      {
         var splash:§&" § = null;
         if(this.§+!2§)
         {
            this.§+!2§.stop();
            try
            {
               this.§+!2§.removeEventListener(TimerEvent.TIMER,this.§30§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§`!>§)
         {
            if(§ 1§.mClip.contains(splash))
            {
               § 1§.mClip.removeChild(splash);
            }
            splash.§&!§();
         }
         this.§`!>§ = new Vector.<§&" §>();
         this.§'R§();
      }
      
      protected function §'R§() : void
      {
         (§ 1§.getItemByName("TextField_BestScore") as §2a§).setVisibility(false);
         (§ 1§.getItemByName("MovieClip_BestScoreStars") as §8,§).setVisibility(false);
         (§ 1§.getItemByName("TextField_NewHighScore") as §2a§).setVisibility(false);
      }
      
      protected function §'E§() : void
      {
         this.§`Y§.§-";§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §^">§ = false;
               close();
               this.§'E§();
               break;
            case "REPLAY":
               §^">§ = false;
               close();
               this.§`Y§.§[!y§(this.§`Y§.§@!j§());
               break;
            case "MENU":
               §@!9§.§["6§();
               §^">§ = false;
               close();
               this.§`Y§.§[!y§(this.§`Y§.§=N§());
         }
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §[!I§.§8!J§.updateTextFields(§ 1§,"StateEnd");
      }
      
      public function get isOpen() : Boolean
      {
         return this.§^!+§;
      }
   }
}
