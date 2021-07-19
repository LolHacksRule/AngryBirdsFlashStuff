package §3C§
{
   import § !Y§.§&$§;
   import § !Y§.§]!,§;
   import §"!&§.§!"7§;
   import §"!&§.§8"F§;
   import §,"&§.§9q§;
   import §0N§.§0!g§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §77§.§ ",§;
   import §77§.§&!>§;
   import §77§.§,y§;
   import §77§.§@_§;
   import §8!_§.§1!i§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^"#§.§]!"§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §[!E§ extends §9!;§
   {
      
      private static const §7s§:Number = 750;
      
      private static var §@"§:Class = §#!o§;
      
      public static const §5B§:Number = 30;
      
      protected static const §^!s§:String = "ScoreLoopCountChannel";
      
      protected static const §2g§:String = "EndScreenEffectChannel";
       
      
      private var §+!v§:§5!9§;
      
      private var §<x§:Number;
      
      private var §2!+§:Number = 0.0;
      
      private var §use §:Number = 0.0;
      
      private var §8!i§:Boolean = false;
      
      private var §96§:Timer;
      
      protected var §6!;§:Array;
      
      protected var §3_§:§]!"§;
      
      protected var §4"B§:Vector.<§]!"§>;
      
      public var mNewScoreCounter:int;
      
      private var §;>§:int;
      
      private var §;!0§:Boolean;
      
      protected var §!!j§:Boolean;
      
      private var §9N§:§]!,§;
      
      protected var §@!f§:Boolean;
      
      private var §]";§:§5!9§;
      
      protected var §`">§:Boolean;
      
      protected var §@a§:int;
      
      private var §;!V§:§1!i§;
      
      private var §4!K§:Boolean;
      
      public function §[!E§(param1:§1!i§, param2:§8"F§)
      {
         this.§6!;§ = [];
         this.§9N§ = new §]!,§();
         §>"2§ = true;
         §1"$§ = false;
         super(§1#§.§&R§,§8"6§.§8p§,§0!g§.§[!y§(§@"§));
         §3"4§ = param2 as §!"7§;
         this.§;!V§ = param1;
      }
      
      protected function §%[§() : void
      {
         (§[S§.getItemByName("Button_Menu") as §@_§).setVisibility(true);
         (§[S§.getItemByName("Button_Replay") as §@_§).setVisibility(true);
         if(this.§;!V§.§=!+§.getNextLevelId())
         {
            (§[S§.getItemByName("Button_NextLevel") as §@_§).setVisibility(true);
            (§[S§.getItemByName("Button_Menu") as §@_§).x = this.§6!;§[0];
            (§[S§.getItemByName("Button_Replay") as §@_§).x = this.§6!;§[1];
            (§[S§.getItemByName("Button_NextLevel") as §@_§).x = this.§6!;§[2];
         }
         else
         {
            (§[S§.getItemByName("Button_NextLevel") as §@_§).setVisibility(false);
            (§[S§.getItemByName("Button_Menu") as §@_§).x = this.§6!;§[0] + 40;
            (§[S§.getItemByName("Button_Replay") as §@_§).x = this.§6!;§[2] - 40;
         }
      }
      
      protected function §,!,§() : void
      {
         this.§6!;§.push(Math.round((§[S§.getItemByName("Button_Menu") as §@_§).x));
         this.§6!;§.push(Math.round((§[S§.getItemByName("Button_Replay") as §@_§).x));
         this.§6!;§.push(Math.round((§[S§.getItemByName("Button_NextLevel") as §@_§).x));
      }
      
      override protected function init() : void
      {
         super.init();
         §>"2§ = true;
         this.updateTextFields();
         this.§,!,§();
         this.§4"B§ = new Vector.<§]!"§>();
         §9q§.§>!L§.background.stopAmbientSound();
         §<!O§.§;!D§(§^!s§,1,0.8);
         this.§`">§ = false;
         §9q§.pause();
         this.§%[§();
         this.mNewScoreCounter = 0;
         this.§;!0§ = false;
         this.§2!+§ = 0;
         this.§use § = 0;
         this.§,">§();
         this.§4!K§ = true;
      }
      
      private function §,">§() : void
      {
         this.§!!j§ = false;
         this.§&!U§();
         this.§96§ = new Timer(100);
         this.§;>§ = 0;
         this.§96§.addEventListener(TimerEvent.TIMER,this.§9!k§);
         this.§96§.start();
      }
      
      protected function §8!m§(param1:int, param2:int) : void
      {
         if(this.§@!f§)
         {
            param2 = param1;
            (§ !g§.§;!'§ as §`Y§).§]]§.§%P§(this.§;!V§.§=!+§.currentLevel,param2);
            (§ !g§.§;!'§ as §`Y§).§]]§.§4!e§(this.§;!V§.§=!+§.currentLevel,param2);
            §[S§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §[S§.setText(param2.toString(),"TextField_BestScore");
            this.§@a§ = this.§;!V§.§=!+§.getNumStarsForLevel(this.§;!V§.§=!+§.currentLevel,param2);
            switch(this.§@a§)
            {
               case 1:
                  (§[S§.getItemByName("MovieClip_BestScoreStars") as §,y§).§[!0§("OneStar");
                  break;
               case 2:
                  (§[S§.getItemByName("MovieClip_BestScoreStars") as §,y§).§[!0§("TwoStar");
                  break;
               case 3:
                  (§[S§.getItemByName("MovieClip_BestScoreStars") as §,y§).§[!0§("ThreeStar");
            }
         }
      }
      
      protected function §&!U§() : void
      {
         var _loc1_:int = (§ !g§.§;!'§ as §`Y§).§]]§.getScoreForLevel(this.§;!V§.§=!+§.currentLevel);
         var _loc2_:int = §9q§.§&!$§.getScore(10);
         this.§@!f§ = _loc2_ >= _loc1_;
         this.§8!m§(_loc2_,_loc1_);
         var _loc3_:int = (§ !g§.§;!'§ as §`Y§).§]]§.§,R§(this.§;!V§.§=!+§.currentLevel,_loc2_);
         (§[S§.getItemByName("MovieClip_NewHighScoreBadge") as §,y§).setVisibility(false);
         (§[S§.getItemByName("MovieClip_StarLeft") as §,y§).mClip.gotoAndStop("UnLit");
         (§[S§.getItemByName("MovieClip_StarCenter") as §,y§).mClip.gotoAndStop("UnLit");
         (§[S§.getItemByName("MovieClip_StarRight") as §,y§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §[?§() : void
      {
         if(this.§@!f§)
         {
            §3"4§.soundManager.playSound("new_highscore");
            (§[S§.getItemByName("TextField_NewHighScore") as §&!>§).setVisibility(true);
            (§[S§.getItemByName("MovieClip_BestScoreStars") as §,y§).setVisibility(false);
            this.§`!r§();
         }
         else
         {
            (§[S§.getItemByName("TextField_BestScore") as §&!>§).setVisibility(true);
            (§[S§.getItemByName("MovieClip_BestScoreStars") as §,y§).setVisibility(true);
            (§[S§.getItemByName("MovieClip_BestScoreText") as §&!>§).setVisibility(true);
         }
      }
      
      protected function §`!r§() : void
      {
         this.§2!+§ = 0;
         this.§use § = 0;
         this.§<x§ = §5B§;
      }
      
      private function §4Y§(param1:Number) : void
      {
         (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).x = (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).x - this.§2!+§;
         (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).y = (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).y - this.§use §;
         if(this.§<x§ > 0)
         {
            this.§2!+§ = (Math.random() - 0.5) * (this.§<x§ / §5B§) * 20;
            this.§use § = (Math.random() - 0.5) * (this.§<x§ / §5B§) * 20;
            (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).x = (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).x + this.§2!+§;
            (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).y = (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).y + this.§use §;
         }
         else
         {
            this.§2!+§ = 0;
            this.§use § = 0;
         }
         this.§<x§ -= param1 / 10;
      }
      
      private function §9!k§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = this.§;!V§.§=!+§.getLevelForId(this.§;!V§.§=!+§.currentLevel).scoreGold;
         var _loc5_:Number = this.§;!V§.§=!+§.getLevelForId(this.§;!V§.§=!+§.currentLevel).scoreSilver;
         if((§[S§.getItemByName("MovieClip_StarLeft") as §,y§).mClip.currentLabel == "UnLit")
         {
            §<!O§.playSound("score_count",§^!s§,999,-1,100);
            §3"4§.soundManager.playSound("star_1");
            this.§96§.delay = §7s§;
            this.§9N§.§-"F§(§9q§.§&!$§.getScore(10));
            _loc6_ = this.§9N§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§]";§ = §!D§.§[!1§.§1"<§(this,{"mNewScoreCounter":this.§9N§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§]";§.onComplete = this.§,"9§;
            this.§]";§.play();
            (§[S§.getItemByName("MovieClip_StarLeft") as §,y§).mClip.gotoAndStop("Lit");
            _loc2_ = (§[S§.getItemByName("MovieClip_StarLeft") as §,y§).x + (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).x;
            _loc3_ = (§[S§.getItemByName("MovieClip_StarLeft") as §,y§).y + (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).y;
            this.§3_§ = new §]!"§(§ !g§.screenWidth,§ !g§.screenHeight,_loc2_,_loc3_,§]!"§.§"!L§);
            §[S§.mClip.addChild(this.§3_§);
            this.§4"B§.push(this.§3_§);
         }
         else if(this.§9N§.getValue() >= _loc5_ && (§[S§.getItemByName("MovieClip_StarCenter") as §,y§).mClip.currentLabel == "UnLit")
         {
            §3"4§.soundManager.playSound("star_2");
            (§[S§.getItemByName("MovieClip_StarCenter") as §,y§).mClip.gotoAndStop("Lit");
            _loc2_ = (§[S§.getItemByName("MovieClip_StarCenter") as §,y§).x + (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).x;
            _loc3_ = (§[S§.getItemByName("MovieClip_StarCenter") as §,y§).y + (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).y;
            this.§3_§ = new §]!"§(§ !g§.screenWidth,§ !g§.screenHeight,_loc2_,_loc3_,§]!"§.§#g§);
            §[S§.mClip.addChild(this.§3_§);
            this.§4"B§.push(this.§3_§);
         }
         else if(this.§9N§.getValue() >= _loc4_ && (§[S§.getItemByName("MovieClip_StarRight") as §,y§).mClip.currentLabel == "UnLit")
         {
            this.§`">§ = true;
            §3"4§.soundManager.playSound("star_3");
            (§[S§.getItemByName("MovieClip_StarRight") as §,y§).mClip.gotoAndStop("Lit");
            _loc2_ = (§[S§.getItemByName("MovieClip_StarRight") as §,y§).x + (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).x;
            _loc3_ = (§[S§.getItemByName("MovieClip_StarRight") as §,y§).y + (§[S§.getItemByName("Container_LevelEndStripe") as § ",§).y;
            this.§3_§ = new §]!"§(§ !g§.screenWidth,§ !g§.screenHeight,_loc2_,_loc3_,§]!"§.§4$§);
            §[S§.mClip.addChild(this.§3_§);
            this.§4"B§.push(this.§3_§);
         }
         else if(!this.§;!0§)
         {
            this.§;!0§ = true;
         }
         else
         {
            this.§96§.stop();
            if(this.§@!f§ && !this.§!!j§)
            {
               (§[S§.getItemByName("MovieClip_NewHighScoreBadge") as §,y§).setVisibility(true);
               §[S§.getItemByName("TextField_NewHighScore").setVisibility(true);
            }
            else
            {
               (§[S§.getItemByName("MovieClip_NewHighScoreBadge") as §,y§).setVisibility(false);
               §[S§.getItemByName("TextField_NewHighScore").setVisibility(false);
            }
            this.§+!v§ = §!D§.§[!1§.§1"<§((§[S§.getItemByName("MovieClip_NewHighScoreBadge") as §,y§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§+!v§.onComplete = this.§[?§;
            this.§+!v§.play();
         }
         ++this.§;>§;
      }
      
      private function §,"9§() : void
      {
         §<!O§.§,!z§(§^!s§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§]!"§ = null;
         §[S§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         for each(_loc2_ in this.§4"B§)
         {
            _loc2_.update(param1);
         }
         if(this.§<x§ >= 0)
         {
            this.§4Y§(param1);
         }
      }
      
      override public function dispose() : void
      {
         this.§@!X§();
         this.§<x§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§]";§)
         {
            this.§]";§.stop();
            this.§]";§ = null;
         }
         if(this.§+!v§)
         {
            this.§+!v§.stop();
            this.§+!v§ = null;
         }
         §<!O§.§,!z§(§^!s§);
         this.§2"6§(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §[S§.setText("0","TextField_LevelEndScore");
         this.§4!K§ = false;
         super.dispose();
      }
      
      protected function §2"6§(param1:String) : void
      {
         (§[S§.getItemByName("Button_Menu") as §@_§).setComponentVisualState(param1);
         (§[S§.getItemByName("Button_Replay") as §@_§).setComponentVisualState(param1);
         (§[S§.getItemByName("Button_NextLevel") as §@_§).setComponentVisualState(param1);
      }
      
      private function §@!X§() : void
      {
         var splash:§]!"§ = null;
         if(this.§96§)
         {
            this.§96§.stop();
            try
            {
               this.§96§.removeEventListener(TimerEvent.TIMER,this.§9!k§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§4"B§)
         {
            if(§[S§.mClip.contains(splash))
            {
               §[S§.mClip.removeChild(splash);
            }
            splash.§;"F§();
         }
         this.§4"B§ = new Vector.<§]!"§>();
         this.§0D§();
      }
      
      protected function §0D§() : void
      {
         (§[S§.getItemByName("TextField_BestScore") as §&!>§).setVisibility(false);
         (§[S§.getItemByName("MovieClip_BestScoreStars") as §,y§).setVisibility(false);
         (§[S§.getItemByName("TextField_NewHighScore") as §&!>§).setVisibility(false);
      }
      
      protected function §!!6§() : void
      {
         this.§;!V§.§@!§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §>"2§ = false;
               close();
               this.§!!6§();
               break;
            case "REPLAY":
               §>"2§ = false;
               close();
               this.§;!V§.§+"$§(this.§;!V§.§[!V§());
               break;
            case "MENU":
               §<!O§.§'N§();
               §>"2§ = false;
               close();
               this.§;!V§.§+"$§(this.§;!V§.§ [§());
         }
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §&$§.§[!1§.updateTextFields(§[S§,"StateEnd");
      }
      
      public function get isOpen() : Boolean
      {
         return this.§4!K§;
      }
   }
}
