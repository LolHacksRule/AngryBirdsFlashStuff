package §_-ad§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-0Ar§.§_-0AO§;
   import §_-0Ar§.§_-0F0§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-gt§;
   import §_-6C§.§_-k6§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-eS§.§_-BK§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §_-08x§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "LevelEndStateRio";
      
      public static const §_-0CH§:Number = 30;
      
      protected static const §_-07E§:String = "ScoreLoopCountChannel";
      
      protected static const §_-6b§:String = "EndScreenEffectChannel";
       
      
      private var §_-10§:§_-dd§;
      
      private var §_-ef§:Number;
      
      private var §_-IL§:Number = 0.0;
      
      private var §_-Jn§:Number = 0.0;
      
      private var §_-RV§:Boolean = false;
      
      private var §_-08g§:Timer;
      
      private var §_-ny§:§_-0AO§;
      
      protected var §_-tl§:Array;
      
      protected var §_-Oo§:§_-0F0§;
      
      protected var §_-0Bc§:Vector.<§_-0F0§>;
      
      public var mNewScoreCounter:int;
      
      private var §_-li§:int;
      
      private var §_-0CJ§:Boolean;
      
      protected var §_-su§:Boolean;
      
      private var §_-Co§:§_-BK§;
      
      protected var §_-Cm§:Boolean;
      
      private var §_-vG§:§_-dd§;
      
      protected var §_-08Y§:Boolean;
      
      protected var §_-wh§:int;
      
      public function §_-08x§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§_-tl§ = [];
         this.§_-Co§ = new §_-BK§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-s0§ = new §_-5q§(this);
         §_-s0§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§_-0Bc§ = new Vector.<§_-0F0§>();
         §_-pX§.§_-UJ§(§_-07E§,1,1);
         §_-pX§.§_-UJ§(§_-6b§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§_-tl§.push((§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x);
         this.§_-tl§.push((§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x);
         this.§_-tl§.push((§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).x);
         this.§_-tl§.push((§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §_-vB§.§_-ky§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§_-Z3§(LevelManager.§_-HM§))
         {
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setVisibility(false);
            (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setVisibility(true);
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
            (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(true);
            (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x = this.§_-tl§[0] + Math.abs(this.§_-tl§[1] - this.§_-tl§[0]) / 2;
            (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).x = this.§_-tl§[1] + Math.abs(this.§_-tl§[2] - this.§_-tl§[1]) / 2;
         }
         else
         {
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setVisibility(true);
            (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setVisibility(true);
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
            (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(true);
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x = this.§_-tl§[0];
            (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x = this.§_-tl§[1];
            (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).x = this.§_-tl§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setVisibility(true);
         (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setVisibility(true);
         (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(false);
         if(LevelManager.§_-xE§())
         {
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(true);
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x = this.§_-tl§[0];
            (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x = this.§_-tl§[1];
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).x = this.§_-tl§[2];
         }
         else
         {
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x = this.§_-tl§[0] + Math.abs(this.§_-tl§[1] - this.§_-tl§[0]) / 2;
            (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x = this.§_-tl§[1] + Math.abs(this.§_-tl§[2] - this.§_-tl§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§_-08Y§ = false;
         § in§.pause();
         this.§_-ny§ = new §_-0AO§(0,0,0,0);
         §_-s0§.movieClip.addChildAt(this.§_-ny§,§_-s0§.movieClip.numChildren - 1);
         if(LevelManager.§_-z2§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§_-0CJ§ = false;
         §_-pX§.playSound("LevelCompletedTheme1");
         this.§_-ny§.§_-Zs§(0.7);
         this.§_-IL§ = 0;
         this.§_-Jn§ = 0;
         this.§var§();
      }
      
      private function §var§() : void
      {
         this.§_-su§ = false;
         this.setScoreData();
         this.§_-08g§ = new Timer(500);
         this.§_-li§ = 0;
         this.§_-08g§.addEventListener(TimerEvent.TIMER,this.§_-jG§);
         this.§_-08g§.start();
      }
      
      protected function §_-V7§() : void
      {
         if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§_-HM§) == 100)
         {
            (§_-s0§.getItemByName("MovieClip_ResultMEFeather") as §_-k6§).mClip.gotoAndStop("On");
         }
         else
         {
            (§_-s0§.getItemByName("MovieClip_ResultMEFeather") as §_-k6§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §_-00K§(param1:int, param2:int) : void
      {
         if(this.§_-Cm§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§_-eF§(LevelManager.§_-HM§,param2);
            §_-s0§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §_-s0§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§_-wh§ = LevelManager.§_-g0§(LevelManager.§_-HM§,param2);
            switch(this.§_-wh§)
            {
               case 1:
                  (§_-s0§.getItemByName("MovieClip_BestScoreStars") as §_-k6§).§_-0Du§("OneStar");
                  break;
               case 2:
                  (§_-s0§.getItemByName("MovieClip_BestScoreStars") as §_-k6§).§_-0Du§("TwoStar");
                  break;
               case 3:
                  (§_-s0§.getItemByName("MovieClip_BestScoreStars") as §_-k6§).§_-0Du§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§_-HM§);
         var _loc2_:int = § in§.§_-03s§.getScore();
         this.§_-Cm§ = _loc2_ > _loc1_;
         this.§_-00K§(_loc2_,_loc1_);
         this.§_-V7§();
         var _loc3_:int = § in§.§_-03s§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§_-HM§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§_-09c§(LevelManager.§_-HM§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§_-HM§,_loc2_);
         (§_-s0§.getItemByName("MovieClip_NewHighScoreBadge") as §_-k6§).setVisibility(false);
         (§_-s0§.getItemByName("MovieClip_StarLeft") as §_-k6§).mClip.gotoAndStop("UnLit");
         (§_-s0§.getItemByName("MovieClip_StarCenter") as §_-k6§).mClip.gotoAndStop("UnLit");
         (§_-s0§.getItemByName("MovieClip_StarRight") as §_-k6§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§_-Cm§)
         {
            §_-pX§.playSound("Hiscore_Badge",§_-6b§);
            §_-s0§.setText("New Highscore!","TextField_NewHighScore");
            (§_-s0§.getItemByName("TextField_NewHighScore") as §_-0Eo§).setVisibility(true);
            (§_-s0§.getItemByName("MovieClip_BestScoreStars") as §_-k6§).setVisibility(false);
            this.§_-JO§();
         }
         else
         {
            (§_-s0§.getItemByName("TextField_BestScore") as §_-0Eo§).setVisibility(true);
            (§_-s0§.getItemByName("MovieClip_BestScoreStars") as §_-k6§).setVisibility(true);
         }
      }
      
      protected function §_-JO§() : void
      {
         this.§_-IL§ = 0;
         this.§_-Jn§ = 0;
         this.§_-ef§ = §_-0CH§;
      }
      
      private function §_-Ln§(param1:Number) : void
      {
         (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).x = (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).x - this.§_-IL§;
         (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).y = (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).y - this.§_-Jn§;
         if(this.§_-ef§ > 0)
         {
            this.§_-IL§ = (Math.random() - 0.5) * (this.§_-ef§ / §_-0CH§) * 20;
            this.§_-Jn§ = (Math.random() - 0.5) * (this.§_-ef§ / §_-0CH§) * 20;
            (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).x = (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).x + this.§_-IL§;
            (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).y = (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).y + this.§_-Jn§;
         }
         else
         {
            this.§_-ef§ = -1;
            this.§_-08f§();
            this.§_-IL§ = 0;
            this.§_-Jn§ = 0;
         }
         this.§_-ef§ -= param1 / 10;
      }
      
      protected function §_-08f§() : void
      {
      }
      
      private function §_-jG§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = LevelManager.§_-U0§(LevelManager.§_-HM§).§_-iC§;
         var _loc5_:Number = LevelManager.§_-U0§(LevelManager.§_-HM§).§_-Td§;
         if((§_-s0§.getItemByName("MovieClip_StarLeft") as §_-k6§).mClip.currentLabel == "UnLit")
         {
            §_-pX§.playSound("Hiscore_Count",§_-07E§,100);
            §_-pX§.playSound("Hiscore_Star_Splash1",§_-6b§);
            this.§_-08g§.delay = 1000;
            this.§_-Co§.assign(§ in§.§_-03s§.getScore());
            _loc6_ = this.§_-Co§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§_-vG§ = §_-cx§.§_-3S§.§_-Wf§(this,{"mNewScoreCounter":this.§_-Co§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§_-vG§.onComplete = this.§_-Tv§;
            this.§_-vG§.play();
            (§_-s0§.getItemByName("MovieClip_StarLeft") as §_-k6§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-s0§.getItemByName("MovieClip_StarLeft") as §_-k6§).x + (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).x;
            _loc3_ = (§_-s0§.getItemByName("MovieClip_StarLeft") as §_-k6§).y + (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).y;
            this.§_-Oo§ = new §_-0F0§(AngryBirdsFP11.§_-Uj§,AngryBirdsFP11.§_-06d§,_loc2_,_loc3_,§_-0F0§.§_-CV§);
            §_-s0§.addChild(this.§_-Oo§);
            this.§_-0Bc§.push(this.§_-Oo§);
         }
         else if(this.§_-Co§.getValue() >= _loc5_ && (§_-s0§.getItemByName("MovieClip_StarCenter") as §_-k6§).mClip.currentLabel == "UnLit")
         {
            §_-pX§.playSound("Hiscore_Star_Splash2",§_-6b§);
            (§_-s0§.getItemByName("MovieClip_StarCenter") as §_-k6§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-s0§.getItemByName("MovieClip_StarCenter") as §_-k6§).x + (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).x;
            _loc3_ = (§_-s0§.getItemByName("MovieClip_StarCenter") as §_-k6§).y + (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).y;
            this.§_-Oo§ = new §_-0F0§(AngryBirdsFP11.§_-Uj§,AngryBirdsFP11.§_-06d§,_loc2_,_loc3_,§_-0F0§.§_-01f§);
            §_-s0§.addChild(this.§_-Oo§);
            this.§_-0Bc§.push(this.§_-Oo§);
         }
         else if(this.§_-Co§.getValue() >= _loc4_ && (§_-s0§.getItemByName("MovieClip_StarRight") as §_-k6§).mClip.currentLabel == "UnLit")
         {
            this.§_-08Y§ = true;
            §_-pX§.playSound("Hiscore_Star_Splash3",§_-6b§);
            (§_-s0§.getItemByName("MovieClip_StarRight") as §_-k6§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-s0§.getItemByName("MovieClip_StarRight") as §_-k6§).x + (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).x;
            _loc3_ = (§_-s0§.getItemByName("MovieClip_StarRight") as §_-k6§).y + (§_-s0§.getItemByName("Container_LevelEndStripe") as §_-gt§).y;
            this.§_-Oo§ = new §_-0F0§(AngryBirdsFP11.§_-Uj§,AngryBirdsFP11.§_-06d§,_loc2_,_loc3_,§_-0F0§.§_-0Ba§);
            §_-s0§.addChild(this.§_-Oo§);
            this.§_-0Bc§.push(this.§_-Oo§);
         }
         else if(!this.§_-0CJ§)
         {
            this.§_-0CJ§ = true;
         }
         else
         {
            this.§_-08g§.stop();
            if(this.§_-Cm§ && !this.§_-su§)
            {
               (§_-s0§.getItemByName("MovieClip_NewHighScoreBadge") as §_-k6§).setVisibility(true);
            }
            else
            {
               (§_-s0§.getItemByName("MovieClip_NewHighScoreBadge") as §_-k6§).setVisibility(false);
            }
            this.§_-10§ = §_-cx§.§_-3S§.§_-Wf§((§_-s0§.getItemByName("MovieClip_NewHighScoreBadge") as §_-k6§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§_-10§.onComplete = this.onBadgeLanded;
            this.§_-10§.play();
         }
         ++this.§_-li§;
      }
      
      private function §_-Tv§() : void
      {
         §_-pX§.§_-0B7§(§_-07E§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§_-0F0§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-nG§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-s0§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §_-s0§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§_-0Bc§)
         {
            _loc3_.update(param1);
         }
         if(this.§_-ef§ > -1)
         {
            this.§_-Ln§(param1);
         }
         if(mNextState.length > 0)
         {
            § in§.§_-Dc§.clearLevel();
            return §_-nG§.STATE_STATUS_COMPLETED;
         }
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-pM§();
         this.§_-ef§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§_-vG§)
         {
            this.§_-vG§.stop();
            this.§_-vG§ = null;
         }
         if(this.§_-10§)
         {
            this.§_-10§.stop();
            this.§_-10§ = null;
         }
         §_-pX§.§_-0B7§(§_-07E§);
         this.setButtonStates(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §_-s0§.setText("0","TextField_LevelEndScore");
         §_-s0§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§_-ny§)
         {
            if(§_-s0§.movieClip.contains(this.§_-ny§))
            {
               §_-s0§.movieClip.removeChild(this.§_-ny§);
            }
            this.§_-ny§.clean();
            this.§_-ny§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setComponentVisualState(param1);
         (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setComponentVisualState(param1);
         (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setComponentVisualState(param1);
         (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setComponentVisualState(param1);
      }
      
      private function §_-pM§() : void
      {
         var splash:§_-0F0§ = null;
         if(this.§_-08g§)
         {
            this.§_-08g§.stop();
            try
            {
               this.§_-08g§.removeEventListener(TimerEvent.TIMER,this.§_-jG§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§_-0Bc§)
         {
            if(§_-s0§.contains(splash))
            {
               §_-s0§.removeChild(splash);
            }
            splash.clean();
         }
         this.§_-0Bc§ = new Vector.<§_-0F0§>();
         this.§_-6B§();
      }
      
      protected function §_-6B§() : void
      {
         (§_-s0§.getItemByName("TextField_BestScore") as §_-0Eo§).setVisibility(false);
         (§_-s0§.getItemByName("MovieClip_BestScoreStars") as §_-k6§).setVisibility(false);
         (§_-s0§.getItemByName("TextField_NewHighScore") as §_-0Eo§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §_-g-§() : void
      {
         §_-MG§.§_-4t§();
         mNextState = this.§_-k§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§_-g-§();
               break;
            case "REPLAY":
               §_-MG§.§_-0Eg§();
               mNextState = this.§_-Qx§();
               break;
            case "WATCH_REPLAY":
               §_-MG§.§_-0Eg§();
               mNextState = this.§_-Qx§();
               if(_loc4_ = § in§.§_-Dc§.§_-Kd§())
               {
                  § in§.§_-Dc§.§_-lF§(_loc4_);
               }
               break;
            case "MENU":
               §_-pX§.§_-j4§();
               mNextState = this.§_-v0§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§_-07§.§_-0De§();
         }
      }
      
      protected function §_-Qx§() : String
      {
         return §_-MG§.§_-pk§;
      }
      
      protected function §_-k§() : String
      {
         return StateCutScene.§_-pk§;
      }
      
      public function §_-v0§() : String
      {
         return §_-UO§.§_-pk§;
      }
   }
}
