package §%Y§
{
   import § !F§.§;I§;
   import §!7§.§!>§;
   import §!7§.§`R§;
   import §'!N§.§71§;
   import §'!N§.§9!O§;
   import §'O§.§>q§;
   import §,B§.§4!0§;
   import §-!§.§-§;
   import §0H§.§7M§;
   import §1!§.§@!Q§;
   import §2>§.§?!1§;
   import §3!^§.§ !C§;
   import §3!^§.§ null§;
   import §6<§.§9H§;
   import §;!K§.§+!4§;
   import §;!K§.§9T§;
   import §;[§.§'z§;
   import §;[§.§7!F§;
   import §;[§.§>!^§;
   import §;[§.§]O§;
   import §=@§.§4k§;
   import §]m§.§-D§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §2]§ extends §,5§
   {
      
      public static const §7!Q§:String = "LevelEndState3";
      
      public static const §]>§:Number = 30;
      
      private static const §>5§:String = "ScoreLoopCountChannel";
      
      private static const §`!§:String = "EndScreenEffectChannel";
       
      
      private var §;!$§:§!>§;
      
      private var §]!;§:Number;
      
      private var §true §:Number;
      
      private var §8O§:Number;
      
      private var §]!W§:Boolean = false;
      
      private var §'[§:Timer;
      
      private var §0!1§:§ null§;
      
      private var §[Q§:§ !C§;
      
      private var §+!M§:Vector.<§ !C§>;
      
      public var mNewScoreCounter:int;
      
      private var §#_§:int;
      
      private var §&!9§:Boolean;
      
      private var §!!]§:§>q§;
      
      private var §4!L§:Boolean;
      
      private var §9!K§:§!>§;
      
      public function §2]§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§!!]§ = new §>q§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>#§ = new §+!4§(this);
         §>#§.init(§9T§.§>!`§.Views.View_LevelEndRio[0]);
         var _loc1_:§'z§ = §>#§.getItemByName("TextField_LevelCompleted") as §'z§;
         _loc1_.setText(§4k§.getText("Text_Level_Completed"));
         this.§0!1§ = new § null§(0,0,0,0);
         §>#§.movieClip.addChildAt(this.§0!1§,§>#§.movieClip.numChildren - 1);
         this.§+!M§ = new Vector.<§ !C§>();
         §?!1§.§5!D§(§>5§,1,1);
         §?!1§.§5!D§(§`!§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§-§.§-G§)
         {
            §-§.§-G§.start();
         }
         this.mNewScoreCounter = 0;
         this.§&!9§ = false;
         §?!1§.§0!O§("LevelCompletedTheme1");
         this.§0!1§.§,l§(0.7);
         this.§#!Q§();
         if(§7M§.§9-§ == "1-4" || §7M§.§9-§ == "1-5" || §7M§.§9-§ == "1-6" || §7M§.§9-§ == "1-7" || §7M§.§9-§ == "1-8")
         {
            (§>#§.getItemByName("Button_CutScene") as §7!F§).setVisibility(true);
         }
         if(§7M§.§9-§ == "1-3" || §7M§.§9-§ == "1-8")
         {
            (§>#§.getItemByName("Button_Next") as §7!F§).setVisibility(false);
         }
         else
         {
            (§>#§.getItemByName("Button_Next") as §7!F§).setVisibility(true);
         }
         var _loc2_:String = "MovieClip_Chester_Win" + int(Math.random() * 3 + 1);
         §>#§.getItemByName(_loc2_).setVisibility(true);
      }
      
      private function §#!Q§() : void
      {
         this.§&l§();
         this.§'[§ = new Timer(100);
         this.§#_§ = 0;
         this.§'[§.addEventListener(TimerEvent.TIMER,this.§7A§);
         this.§'[§.start();
      }
      
      private function §&l§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Number = §1R§.§0!N§.§"!B§(§7M§.§9-§);
         var _loc2_:Number = (§@!Q§.§ !=§ as §;I§).getScore();
         this.§4!L§ = _loc2_ > _loc1_;
         if(this.§4!L§)
         {
            _loc1_ = _loc2_;
            §1R§.§0!N§.§#!^§(§7M§.§9-§,_loc1_);
            §>#§.setText(§4k§.getText("Text_New_Highscore"),"TextField_BestScore");
         }
         else
         {
            §>#§.setText(§4k§.getText("Text_Best"),"TextField_BestText");
            §>#§.setText(_loc1_.toString(),"TextField_BestScore");
            _loc3_ = §7M§.§=2§(§7M§.§9-§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§>#§.getItemByName("MovieClip_BestScoreStars") as §]O§).§1!"§("OneStar");
                  break;
               case 2:
                  (§>#§.getItemByName("MovieClip_BestScoreStars") as §]O§).§1!"§("TwoStar");
                  break;
               case 3:
                  (§>#§.getItemByName("MovieClip_BestScoreStars") as §]O§).§1!"§("ThreeStar");
            }
         }
         (§>#§.getItemByName("MovieClip_NewHighScoreBadge") as §]O§).setVisibility(false);
         (§>#§.getItemByName("MovieClip_StarLeft") as §]O§).mClip.gotoAndStop("UnLit");
         (§>#§.getItemByName("MovieClip_StarCenter") as §]O§).mClip.gotoAndStop("UnLit");
         (§>#§.getItemByName("MovieClip_StarRight") as §]O§).mClip.gotoAndStop("UnLit");
      }
      
      private function §5[§() : void
      {
         if(this.§4!L§)
         {
            §?!1§.§!!=§(§`!§);
            §?!1§.§0!O§("Hiscore_Badge",§`!§);
            §>#§.setText(§4k§.getText("Text_New_Highscore"),"TextField_NewHighScore");
            (§>#§.getItemByName("TextField_NewHighScore") as §'z§).setVisibility(true);
            (§>#§.getItemByName("MovieClip_BestScoreStars") as §]O§).setVisibility(false);
            this.§ 4§();
         }
         else
         {
            (§>#§.getItemByName("TextField_BestText") as §'z§).setVisibility(true);
            (§>#§.getItemByName("TextField_BestScore") as §'z§).setVisibility(true);
            (§>#§.getItemByName("MovieClip_BestScoreStars") as §]O§).setVisibility(true);
         }
      }
      
      private function § 4§() : void
      {
         this.§true § = (§>#§.getItemByName("Container_LevelEndStripe") as §>!^§).x;
         this.§8O§ = (§>#§.getItemByName("Container_LevelEndStripe") as §>!^§).y;
         this.§]!;§ = §]>§;
      }
      
      private function §32§(param1:Number) : void
      {
         if(this.§]!;§ <= 0)
         {
            (§>#§.getItemByName("Container_LevelEndStripe") as §>!^§).x = this.§true §;
            (§>#§.getItemByName("Container_LevelEndStripe") as §>!^§).y = this.§8O§;
         }
         else
         {
            (§>#§.getItemByName("Container_LevelEndStripe") as §>!^§).x = this.§true § + Math.random() * (this.§]!;§ / §]>§) * 20;
            (§>#§.getItemByName("Container_LevelEndStripe") as §>!^§).y = this.§8O§ + Math.random() * (this.§]!;§ / §]>§) * 20;
         }
         this.§]!;§ -= param1 / 10;
      }
      
      private function §7A§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §7M§.getLevelForId(§7M§.§9-§).§ !L§;
         var _loc5_:Number = §7M§.getLevelForId(§7M§.§9-§).§ !W§;
         if((§>#§.getItemByName("MovieClip_StarLeft") as §]O§).mClip.currentLabel == "UnLit")
         {
            §?!1§.§0!O§("Hiscore_Count",§>5§,100);
            §?!1§.§!!=§(§`!§);
            §?!1§.§0!O§("Hiscore_Star_Splash1",§`!§);
            this.§'[§.delay = 1000;
            this.§!!]§.§<R§(§@!Q§.§ !=§.getScore());
            _loc6_ = this.§!!]§.getValue() / _loc4_ * 2;
            this.§9!K§ = §`R§.§!!8§.§ B§(this,{"mNewScoreCounter":this.§!!]§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§9!K§.onComplete = this.§@!=§;
            this.§9!K§.play();
            (§>#§.getItemByName("MovieClip_StarLeft") as §]O§).mClip.gotoAndStop("Lit");
            _loc2_ = (§>#§.getItemByName("MovieClip_StarLeft") as §]O§).x + (§>#§.getItemByName("Container_LevelEndStripe") as §>!^§).x;
            _loc3_ = (§>#§.getItemByName("MovieClip_StarLeft") as §]O§).y + (§>#§.getItemByName("Container_LevelEndStripe") as §>!^§).y;
            this.§[Q§ = new § !C§(§1R§.§`!N§,§1R§.§1!9§,_loc2_,_loc3_,§ !C§.§[X§);
            §>#§.addChild(this.§[Q§);
            this.§+!M§.push(this.§[Q§);
         }
         else if(this.§!!]§.getValue() >= _loc5_ && (§>#§.getItemByName("MovieClip_StarCenter") as §]O§).mClip.currentLabel == "UnLit")
         {
            §?!1§.§!!=§(§`!§);
            §?!1§.§0!O§("Hiscore_Star_Splash2",§`!§);
            (§>#§.getItemByName("MovieClip_StarCenter") as §]O§).mClip.gotoAndStop("Lit");
            _loc2_ = (§>#§.getItemByName("MovieClip_StarCenter") as §]O§).x + (§>#§.getItemByName("Container_LevelEndStripe") as §>!^§).x;
            _loc3_ = (§>#§.getItemByName("MovieClip_StarCenter") as §]O§).y + (§>#§.getItemByName("Container_LevelEndStripe") as §>!^§).y;
            this.§[Q§ = new § !C§(§1R§.§`!N§,§1R§.§1!9§,_loc2_,_loc3_,§ !C§.§;!N§);
            §>#§.addChild(this.§[Q§);
            this.§+!M§.push(this.§[Q§);
         }
         else if(this.§!!]§.getValue() >= _loc4_ && (§>#§.getItemByName("MovieClip_StarRight") as §]O§).mClip.currentLabel == "UnLit")
         {
            §?!1§.§!!=§(§`!§);
            §?!1§.§0!O§("Hiscore_Star_Splash3",§`!§);
            (§>#§.getItemByName("MovieClip_StarRight") as §]O§).mClip.gotoAndStop("Lit");
            _loc2_ = (§>#§.getItemByName("MovieClip_StarRight") as §]O§).x + (§>#§.getItemByName("Container_LevelEndStripe") as §>!^§).x;
            _loc3_ = (§>#§.getItemByName("MovieClip_StarRight") as §]O§).y + (§>#§.getItemByName("Container_LevelEndStripe") as §>!^§).y;
            this.§[Q§ = new § !C§(§1R§.§`!N§,§1R§.§1!9§,_loc2_,_loc3_,§ !C§.§1z§);
            §>#§.addChild(this.§[Q§);
            this.§+!M§.push(this.§[Q§);
         }
         else if(!this.§&!9§)
         {
            this.§&!9§ = true;
         }
         else
         {
            this.§'[§.stop();
            if(this.§4!L§)
            {
               (§>#§.getItemByName("MovieClip_NewHighScoreBadge") as §]O§).setVisibility(true);
            }
            else
            {
               (§>#§.getItemByName("MovieClip_NewHighScoreBadge") as §]O§).setVisibility(false);
            }
            this.§;!$§ = §`R§.§!!8§.§ B§((§>#§.getItemByName("MovieClip_NewHighScoreBadge") as §]O§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§;!$§.onComplete = this.§5[§;
            this.§;!$§.play();
         }
         ++this.§#_§;
      }
      
      private function §@!=§() : void
      {
         §?!1§.§!!=§(§>5§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§ !C§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-D§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§0!I§();
         §>#§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §>#§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§+!M§)
         {
            _loc3_.update(param1);
         }
         if(this.§]!;§ > 0)
         {
            this.§32§(param1);
         }
         if(mNextState.length > 0)
         {
            return §-D§.STATE_STATUS_COMPLETED;
         }
         return §-D§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§0!1§.§6!B§(0);
         this.§^K§();
         this.§]!;§ = 0;
         §?!1§.§!!=§(§>5§);
         (§>#§.getItemByName("Button_Menu") as §7!F§).setComponentVisualState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§>#§.getItemByName("Button_Replay") as §7!F§).setComponentVisualState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§>#§.getItemByName("Button_CutScene") as §7!F§).setVisibility(false);
         §>#§.setText("0","TextField_LevelEndScore");
         §>#§.setText("0","TextField_LevelEndScoreEffects");
         §>#§.getItemByName("MovieClip_Chester_Win1").setVisibility(false);
         §>#§.getItemByName("MovieClip_Chester_Win2").setVisibility(false);
         §>#§.getItemByName("MovieClip_Chester_Win3").setVisibility(false);
      }
      
      private function §^K§() : void
      {
         var _loc1_:§ !C§ = null;
         if(this.§'[§)
         {
            this.§'[§.stop();
            this.§'[§.removeEventListener(TimerEvent.TIMER,this.§7A§);
         }
         for each(_loc1_ in this.§+!M§)
         {
            if(§>#§.contains(_loc1_))
            {
               §>#§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§+!M§ = new Vector.<§ !C§>();
         (§>#§.getItemByName("TextField_BestText") as §'z§).setVisibility(false);
         (§>#§.getItemByName("TextField_BestScore") as §'z§).setVisibility(false);
         (§>#§.getItemByName("MovieClip_BestScoreStars") as §]O§).setVisibility(false);
         (§>#§.getItemByName("TextField_NewHighScore") as §'z§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9!O§) : void
      {
         var _loc4_:§71§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§<t§();
               break;
            case "REPLAY":
               if((§@!Q§.§7l§ as §9H§).§8u§())
               {
                  if(!§,5§.sCheetosPopups.showPopup(§4!0§.RESTART_LEVEL))
                  {
                     this.§=o§();
                  }
               }
               else
               {
                  this.§=o§();
               }
               break;
            case "MENU":
               this.§-!!§();
               break;
            case "BUTTON_NO":
               if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.§^!&§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.§3k§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.RESTART_LEVEL)
               {
                  this.§=o§();
                  break;
               }
               if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.§^!&§)
               {
                  this.§<t§();
                  break;
               }
               if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.§3k§)
               {
                  this.§-!!§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §71§;
               §1R§.§]c§.§0]§ = !§1R§.§]c§.§0]§;
               if(§1R§.§]c§.§0]§)
               {
                  _loc4_.setComponentState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§71§.§69§);
               break;
         }
      }
      
      private function §0!I§() : void
      {
         var _loc1_:§7!F§ = §>#§.getItemByName("Button_Replay") as §7!F§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§7!F§ = §>#§.getItemByName("Button_Next") as §7!F§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§7!F§ = §>#§.getItemByName("Button_Menu") as §7!F§;
         if((§@!Q§.§7l§ as §9H§).§8u§())
         {
            _loc2_.visible = true;
            if(§7M§.§9-§ == null)
            {
               _loc4_.visible = false;
            }
            else
            {
               _loc4_.visible = !§7M§.§4V§();
            }
         }
         else
         {
            _loc2_.visible = false;
            _loc4_.visible = false;
         }
      }
      
      private function §=o§() : void
      {
         §2O§.§]! §();
         mNextState = §2O§.§7!Q§;
      }
      
      private function §<t§() : void
      {
         §2O§.§11§();
         mNextState = StateCutSceneDynamic.§7!Q§;
      }
      
      private function §-!!§() : void
      {
         mNextState = §@4§.§7!Q§;
      }
   }
}
