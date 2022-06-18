package §88§
{
   import § if§.§2q§;
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §"?§.§8!3§;
   import §"?§.§]A§;
   import §#]§.§'5§;
   import §&U§.§ 3§;
   import §&U§.§!X§;
   import §&U§.§05§;
   import §&U§.§^!@§;
   import §1t§.§-!M§;
   import §1t§.§`!B§;
   import §8!=§.§]Q§;
   import §8T§.§@o§;
   import §<!M§.§[i§;
   import §@q§.§+!B§;
   import §@q§.§6;§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §9X§ extends §2q§
   {
      
      public static const §&! §:String = "LevelEndStateRio";
      
      public static const §4!H§:Number = 30;
      
      protected static const §!!§:String = "ScoreLoopCountChannel";
      
      protected static const §@x§:String = "EndScreenEffectChannel";
       
      
      private var §[!%§:§+!B§;
      
      private var §9§:Number;
      
      private var §<!%§:Number = 0.0;
      
      private var §0!!§:Number = 0.0;
      
      private var §1[§:Boolean = false;
      
      private var §<!H§:Timer;
      
      private var §@v§:§]A§;
      
      protected var §>!K§:Array;
      
      protected var §1K§:§8!3§;
      
      protected var §%0§:Vector.<§8!3§>;
      
      public var mNewScoreCounter:int;
      
      private var §4C§:int;
      
      private var §!!,§:Boolean;
      
      protected var §5g§:Boolean;
      
      private var §"P§:§]Q§;
      
      protected var §3<§:Boolean;
      
      private var §!c§:§+!B§;
      
      protected var §,l§:Boolean;
      
      protected var §'U§:int;
      
      public function §9X§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§>!K§ = [];
         this.§"P§ = new §]Q§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §=V§ = new §,U§(this);
         §=V§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§%0§ = new Vector.<§8!3§>();
         §@o§.§1+§(§!!§,1,1);
         §@o§.§1+§(§@x§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§>!K§.push((§=V§.getItemByName("Button_Menu") as §^!@§).x);
         this.§>!K§.push((§=V§.getItemByName("Button_Replay") as §^!@§).x);
         this.§>!K§.push((§=V§.getItemByName("Button_NextLevel") as §^!@§).x);
         this.§>!K§.push((§=V§.getItemByName("Button_CutScene") as §^!@§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §while§.§ v§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§[i§.§0A§))
         {
            (§=V§.getItemByName("Button_Menu") as §^!@§).setVisibility(false);
            (§=V§.getItemByName("Button_Replay") as §^!@§).setVisibility(true);
            (§=V§.getItemByName("Button_NextLevel") as §^!@§).setVisibility(false);
            (§=V§.getItemByName("Button_CutScene") as §^!@§).setVisibility(true);
            (§=V§.getItemByName("Button_Replay") as §^!@§).x = this.§>!K§[0] + Math.abs(this.§>!K§[1] - this.§>!K§[0]) / 2;
            (§=V§.getItemByName("Button_CutScene") as §^!@§).x = this.§>!K§[1] + Math.abs(this.§>!K§[2] - this.§>!K§[1]) / 2;
         }
         else
         {
            (§=V§.getItemByName("Button_Menu") as §^!@§).setVisibility(true);
            (§=V§.getItemByName("Button_Replay") as §^!@§).setVisibility(true);
            (§=V§.getItemByName("Button_NextLevel") as §^!@§).setVisibility(false);
            (§=V§.getItemByName("Button_CutScene") as §^!@§).setVisibility(true);
            (§=V§.getItemByName("Button_Menu") as §^!@§).x = this.§>!K§[0];
            (§=V§.getItemByName("Button_Replay") as §^!@§).x = this.§>!K§[1];
            (§=V§.getItemByName("Button_CutScene") as §^!@§).x = this.§>!K§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§=V§.getItemByName("Button_Menu") as §^!@§).setVisibility(true);
         (§=V§.getItemByName("Button_Replay") as §^!@§).setVisibility(true);
         (§=V§.getItemByName("Button_CutScene") as §^!@§).setVisibility(false);
         if(§[i§.§ §())
         {
            (§=V§.getItemByName("Button_NextLevel") as §^!@§).setVisibility(true);
            (§=V§.getItemByName("Button_Menu") as §^!@§).x = this.§>!K§[0];
            (§=V§.getItemByName("Button_Replay") as §^!@§).x = this.§>!K§[1];
            (§=V§.getItemByName("Button_NextLevel") as §^!@§).x = this.§>!K§[2];
         }
         else
         {
            (§=V§.getItemByName("Button_NextLevel") as §^!@§).setVisibility(false);
            (§=V§.getItemByName("Button_Menu") as §^!@§).x = this.§>!K§[0] + Math.abs(this.§>!K§[1] - this.§>!K§[0]) / 2;
            (§=V§.getItemByName("Button_Replay") as §^!@§).x = this.§>!K§[1] + Math.abs(this.§>!K§[2] - this.§>!K§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§,l§ = false;
         §'5§.pause();
         this.§@v§ = new §]A§(0,0,0,0);
         §=V§.movieClip.addChildAt(this.§@v§,§=V§.movieClip.numChildren - 1);
         if(§[i§.§-!J§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§!!,§ = false;
         §@o§.playSound(this.§-x§);
         this.§@v§.§%H§(0.7);
         this.§<!%§ = 0;
         this.§0!!§ = 0;
         this.§&g§();
      }
      
      protected function get §-x§() : String
      {
         return "LevelCompletedTheme1";
      }
      
      private function §&g§() : void
      {
         this.§5g§ = false;
         this.setScoreData();
         this.§<!H§ = new Timer(500);
         this.§4C§ = 0;
         this.§<!H§.addEventListener(TimerEvent.TIMER,this.§!!F§);
         this.§<!H§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.sUserProgress.§&H§(§[i§.§0A§) == 100)
         {
            (§=V§.getItemByName("MovieClip_ResultMEFeather") as §!X§).mClip.gotoAndStop("On");
         }
         else
         {
            (§=V§.getItemByName("MovieClip_ResultMEFeather") as §!X§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§3<§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§7n§(§[i§.§0A§,param2);
            §=V§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §=V§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§'U§ = §[i§.§>!;§(§[i§.§0A§,param2);
            switch(this.§'U§)
            {
               case 1:
                  (§=V§.getItemByName("MovieClip_BestScoreStars") as §!X§).§8d§("OneStar");
                  break;
               case 2:
                  (§=V§.getItemByName("MovieClip_BestScoreStars") as §!X§).§8d§("TwoStar");
                  break;
               case 3:
                  (§=V§.getItemByName("MovieClip_BestScoreStars") as §!X§).§8d§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§9B§(§[i§.§0A§);
         var _loc2_:int = §'5§.controller.getScore();
         this.§3<§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §'5§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§&H§(§[i§.§0A§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§+!A§(§[i§.§0A§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.§;<§(§[i§.§0A§,_loc2_);
         (§=V§.getItemByName("MovieClip_NewHighScoreBadge") as §!X§).setVisibility(false);
         (§=V§.getItemByName("MovieClip_StarLeft") as §!X§).mClip.gotoAndStop("UnLit");
         (§=V§.getItemByName("MovieClip_StarCenter") as §!X§).mClip.gotoAndStop("UnLit");
         (§=V§.getItemByName("MovieClip_StarRight") as §!X§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§3<§)
         {
            §@o§.playSound("Hiscore_Badge",§@x§);
            §=V§.setText("New Highscore!","TextField_NewHighScore");
            (§=V§.getItemByName("TextField_NewHighScore") as § 3§).setVisibility(true);
            (§=V§.getItemByName("MovieClip_BestScoreStars") as §!X§).setVisibility(false);
            this.§!s§();
         }
         else
         {
            (§=V§.getItemByName("TextField_BestScore") as § 3§).setVisibility(true);
            (§=V§.getItemByName("MovieClip_BestScoreStars") as §!X§).setVisibility(true);
         }
      }
      
      protected function §!s§() : void
      {
         this.§<!%§ = 0;
         this.§0!!§ = 0;
         this.§9§ = §4!H§;
      }
      
      private function §<!J§(param1:Number) : void
      {
         (§=V§.getItemByName("Container_LevelEndStripe") as §05§).x = (§=V§.getItemByName("Container_LevelEndStripe") as §05§).x - this.§<!%§;
         (§=V§.getItemByName("Container_LevelEndStripe") as §05§).y = (§=V§.getItemByName("Container_LevelEndStripe") as §05§).y - this.§0!!§;
         if(this.§9§ > 0)
         {
            this.§<!%§ = (Math.random() - 0.5) * (this.§9§ / §4!H§) * 20;
            this.§0!!§ = (Math.random() - 0.5) * (this.§9§ / §4!H§) * 20;
            (§=V§.getItemByName("Container_LevelEndStripe") as §05§).x = (§=V§.getItemByName("Container_LevelEndStripe") as §05§).x + this.§<!%§;
            (§=V§.getItemByName("Container_LevelEndStripe") as §05§).y = (§=V§.getItemByName("Container_LevelEndStripe") as §05§).y + this.§0!!§;
         }
         else
         {
            this.§9§ = -1;
            this.§,!2§();
            this.§<!%§ = 0;
            this.§0!!§ = 0;
         }
         this.§9§ -= param1 / 10;
      }
      
      protected function §,!2§() : void
      {
      }
      
      private function §!!F§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc4_:Number = §[i§.§2!'§(§[i§.§0A§).§0'§;
         var _loc5_:Number = §[i§.§2!'§(§[i§.§0A§).§@c§;
         if((§=V§.getItemByName("MovieClip_StarLeft") as §!X§).mClip.currentLabel == "UnLit")
         {
            §@o§.playSound("Hiscore_Count",§!!§,100);
            this.§<!H§.delay = 1000;
            this.§"P§.assign(§'5§.controller.getScore());
            _loc6_ = this.§"P§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§!c§ = §6;§.§&e§.§42§(this,{"mNewScoreCounter":this.§"P§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§!c§.onComplete = this.§]!5§;
            this.§!c§.play();
            _loc7_ = this.§-4§();
            _loc2_ = (§=V§.getItemByName("MovieClip_StarLeft") as §!X§).x + (§=V§.getItemByName("Container_LevelEndStripe") as §05§).x;
            _loc3_ = (§=V§.getItemByName("MovieClip_StarLeft") as §!X§).y + (§=V§.getItemByName("Container_LevelEndStripe") as §05§).y;
            this.§1K§ = new §8!3§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§8!3§.§56§,§8!3§.§=S§,_loc7_);
            §=V§.addChild(this.§1K§);
            this.§%0§.push(this.§1K§);
         }
         else if(this.§"P§.getValue() >= _loc5_ && (§=V§.getItemByName("MovieClip_StarCenter") as §!X§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.§&!>§();
            _loc2_ = (§=V§.getItemByName("MovieClip_StarCenter") as §!X§).x + (§=V§.getItemByName("Container_LevelEndStripe") as §05§).x;
            _loc3_ = (§=V§.getItemByName("MovieClip_StarCenter") as §!X§).y + (§=V§.getItemByName("Container_LevelEndStripe") as §05§).y;
            this.§1K§ = new §8!3§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§8!3§.§#j§,§8!3§.§=S§,_loc8_);
            §=V§.addChild(this.§1K§);
            this.§%0§.push(this.§1K§);
         }
         else if(this.§"P§.getValue() >= _loc4_ && (§=V§.getItemByName("MovieClip_StarRight") as §!X§).mClip.currentLabel == "UnLit")
         {
            this.§,l§ = true;
            _loc9_ = this.§'G§();
            _loc2_ = (§=V§.getItemByName("MovieClip_StarRight") as §!X§).x + (§=V§.getItemByName("Container_LevelEndStripe") as §05§).x;
            _loc3_ = (§=V§.getItemByName("MovieClip_StarRight") as §!X§).y + (§=V§.getItemByName("Container_LevelEndStripe") as §05§).y;
            this.§1K§ = new §8!3§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§8!3§.§'z§,§8!3§.§=S§,_loc9_);
            §=V§.addChild(this.§1K§);
            this.§%0§.push(this.§1K§);
         }
         else if(!this.§!!,§)
         {
            this.§!!,§ = true;
         }
         else
         {
            this.§<!H§.stop();
            if(this.§3<§ && !this.§5g§)
            {
               (§=V§.getItemByName("MovieClip_NewHighScoreBadge") as §!X§).setVisibility(true);
            }
            else
            {
               (§=V§.getItemByName("MovieClip_NewHighScoreBadge") as §!X§).setVisibility(false);
            }
            this.§[!%§ = §6;§.§&e§.§42§((§=V§.getItemByName("MovieClip_NewHighScoreBadge") as §!X§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§[!%§.onComplete = this.onBadgeLanded;
            this.§[!%§.play();
         }
         ++this.§4C§;
      }
      
      protected function §-4§() : Boolean
      {
         §@o§.playSound("Hiscore_Star_Splash1",§@x§);
         (§=V§.getItemByName("MovieClip_StarLeft") as §!X§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      protected function §&!>§() : Boolean
      {
         §@o§.playSound("Hiscore_Star_Splash2",§@x§);
         (§=V§.getItemByName("MovieClip_StarCenter") as §!X§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      protected function §'G§() : Boolean
      {
         §@o§.playSound("Hiscore_Star_Splash3",§@x§);
         (§=V§.getItemByName("MovieClip_StarRight") as §!X§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      private function §]!5§() : void
      {
         §@o§.§>!9§(§!!§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§8!3§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §=V§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §=V§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§%0§)
         {
            _loc3_.update(param1);
         }
         if(this.§9§ > -1)
         {
            this.§<!J§(param1);
         }
         if(mNextState.length > 0)
         {
            §'5§.§^;§.clearLevel();
            return §2q§.STATE_STATUS_COMPLETED;
         }
         return §2q§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§#!-§();
         this.§9§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§!c§)
         {
            this.§!c§.stop();
            this.§!c§ = null;
         }
         if(this.§[!%§)
         {
            this.§[!%§.stop();
            this.§[!%§ = null;
         }
         §@o§.§>!9§(§!!§);
         this.setButtonStates(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §=V§.setText("0","TextField_LevelEndScore");
         §=V§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§@v§)
         {
            if(§=V§.movieClip.contains(this.§@v§))
            {
               §=V§.movieClip.removeChild(this.§@v§);
            }
            this.§@v§.clean();
            this.§@v§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§=V§.getItemByName("Button_Menu") as §^!@§).setComponentVisualState(param1);
         (§=V§.getItemByName("Button_Replay") as §^!@§).setComponentVisualState(param1);
         (§=V§.getItemByName("Button_NextLevel") as §^!@§).setComponentVisualState(param1);
         (§=V§.getItemByName("Button_CutScene") as §^!@§).setComponentVisualState(param1);
      }
      
      private function §#!-§() : void
      {
         var splash:§8!3§ = null;
         if(this.§<!H§)
         {
            this.§<!H§.stop();
            try
            {
               this.§<!H§.removeEventListener(TimerEvent.TIMER,this.§!!F§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§%0§)
         {
            if(§=V§.contains(splash))
            {
               §=V§.removeChild(splash);
            }
            splash.clean();
         }
         this.§%0§ = new Vector.<§8!3§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§=V§.getItemByName("TextField_BestScore") as § 3§).setVisibility(false);
         (§=V§.getItemByName("MovieClip_BestScoreStars") as §!X§).setVisibility(false);
         (§=V§.getItemByName("TextField_NewHighScore") as § 3§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §for§() : void
      {
         §`!J§.§[[§();
         mNextState = this.§6"§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§for§();
               break;
            case "REPLAY":
               §`!J§.§@J§();
               mNextState = this.§6!"§();
               break;
            case "WATCH_REPLAY":
               §`!J§.§@J§();
               mNextState = this.§6!"§();
               if(_loc4_ = §'5§.§^;§.§2-§())
               {
                  §'5§.§^;§.§0!J§(_loc4_);
               }
               break;
            case "MENU":
               §@o§.§#!;§();
               mNextState = this.§#§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§^!<§.§;3§();
         }
      }
      
      protected function §6!"§() : String
      {
         return §`!J§.§&! §;
      }
      
      protected function §6"§() : String
      {
         return StateCutScene.§&! §;
      }
      
      public function §#§() : String
      {
         return §!G§.§&! §;
      }
   }
}
