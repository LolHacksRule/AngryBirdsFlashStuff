package §_-JB§
{
   import § get§.§_-pD§;
   import §_-1p§.§_-K9§;
   import §_-1p§.§_-uW§;
   import §_-58§.§_-8c§;
   import §_-58§.§_-Bu§;
   import §_-58§.§_-WC§;
   import §_-58§.§_-sg§;
   import §_-7§.§_-ph§;
   import §_-He§.§_-05§;
   import §_-J-§.§_-BT§;
   import §_-J-§.§_-ZG§;
   import §_-JR§.§_-yh§;
   import §_-LM§.§_-wf§;
   import §_-LP§.§_-PH§;
   import §_-MC§.§_-Pw§;
   import §_-NB§.§_-mj§;
   import §_-PS§.§_-Xz§;
   import §_-XI§.§_-Er§;
   import §_-bj§.§_-l§;
   import §_-cu§.§_-UO§;
   import §_-m7§.HighscoreSidebar;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §_-Xx§ extends §_-bH§
   {
      
      public static const §_-1h§:String = "LevelEndState3";
      
      public static const §_-Oo§:Number = 30;
      
      private static const §_-iY§:String = "ScoreLoopCountChannel";
      
      private static const §_-XN§:String = "EndScreenEffectChannel";
       
      
      private var §_-aW§:§_-PH§;
      
      private var §_-JA§:Number;
      
      private var §_-O7§:Number;
      
      private var §_-k4§:Number;
      
      private var §_-xu§:Boolean = false;
      
      private var §_-Fp§:Timer;
      
      private var §_-gk§:§_-l§;
      
      private var §_-74§:§_-Pw§;
      
      private var §_-om§:Vector.<§_-Pw§>;
      
      public var mNewScoreCounter:int;
      
      private var §_-XZ§:int;
      
      private var §_-Ij§:Boolean;
      
      private var §_-0B§:§_-Er§;
      
      private var §_-Lj§:Boolean;
      
      private var §_-oW§:§_-PH§;
      
      public function §_-Xx§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§_-0B§ = new §_-Er§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-kl§ = new §_-K9§(this);
         §_-kl§.init(§_-uW§.§_-Cs§.Views.View_LevelEndRio[0]);
         this.§_-gk§ = new §_-l§(0,0,0,0);
         §_-kl§.mMovieClip.addChildAt(this.§_-gk§,§_-kl§.mMovieClip.numChildren - 1);
         this.§_-om§ = new Vector.<§_-Pw§>();
         §_-pD§.§_-xr§(§_-iY§,1,1);
         §_-pD§.§_-xr§(§_-XN§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-yh§.§_-1o§)
         {
            §_-yh§.§_-1o§.start();
         }
         var _loc1_:int = 0;
         if(§_-dM§)
         {
            _loc1_ = §_-dM§.currentPage;
         }
         this.mNewScoreCounter = 0;
         this.§_-Ij§ = false;
         §_-pD§.playSound("LevelCompletedTheme1");
         this.§_-gk§.§_-OT§(0.7);
         this.§_-qo§();
         if(_loc1_)
         {
            §_-dM§.choosePage(_loc1_);
         }
         §_-dM§.changeState(HighscoreSidebar.§_-Zk§);
         §_-dM§.showHighscores(§_-Xz§.§_-AP§);
      }
      
      private function §_-qo§() : void
      {
         this.§_-eC§();
         this.§_-Fp§ = new Timer(500);
         this.§_-XZ§ = 0;
         this.§_-Fp§.addEventListener(TimerEvent.TIMER,this.§_-AD§);
         this.§_-Fp§.start();
      }
      
      private function §_-eC§() : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         var _loc1_:int = §_-2U§.§_-T1§.§_-6X§(§_-Xz§.§_-AP§);
         var _loc2_:int = (§_-ph§.§_-eR§ as §_-wf§).getScore();
         this.§_-Lj§ = _loc2_ > _loc1_;
         if(this.§_-Lj§)
         {
            _loc1_ = _loc2_;
            §_-2U§.§_-T1§.§_-mD§(§_-Xz§.§_-AP§,_loc1_);
            §_-kl§.setText("¡Nuevo Highscore!","TextField_BestScore");
         }
         else
         {
            §_-kl§.setText("Mejor " + _loc1_.toString(),"TextField_BestScore");
            _loc3_ = §_-Xz§.§_-Kz§(§_-Xz§.§_-AP§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§_-kl§.getItemByName("MovieClip_BestScoreStars") as §_-Bu§).§_-Z9§("OneStar");
                  break;
               case 2:
                  (§_-kl§.getItemByName("MovieClip_BestScoreStars") as §_-Bu§).§_-Z9§("TwoStar");
                  break;
               case 3:
                  (§_-kl§.getItemByName("MovieClip_BestScoreStars") as §_-Bu§).§_-Z9§("ThreeStar");
            }
         }
         if(§_-ph§.§_-Tw§.mLevelObjects.mMightyEagleAdded)
         {
            _loc4_ = §_-Xz§.§_-BH§(§_-Xz§.§_-AP§).§_-e6§;
            _loc5_ = Math.min(100,Math.round((§_-ph§.§_-eR§ as §_-wf§).getScore() / _loc4_ * 100));
            _loc6_ = §_-2U§.§_-T1§.§_-PQ§(§_-Xz§.§_-AP§);
            if(_loc7_ = _loc5_ > _loc6_)
            {
               _loc6_ = _loc5_;
               §_-2U§.§_-T1§.§extends§(§_-Xz§.§_-AP§,_loc6_);
            }
         }
         (§_-kl§.getItemByName("MovieClip_NewHighScoreBadge") as §_-Bu§).setVisibility(false);
         (§_-kl§.getItemByName("MovieClip_StarLeft") as §_-Bu§).mClip.gotoAndStop("UnLit");
         (§_-kl§.getItemByName("MovieClip_StarCenter") as §_-Bu§).mClip.gotoAndStop("UnLit");
         (§_-kl§.getItemByName("MovieClip_StarRight") as §_-Bu§).mClip.gotoAndStop("UnLit");
      }
      
      private function §_-NU§(param1:§_-mj§) : void
      {
         this.§_-aW§.removeEventListener(§_-mj§.COMPLETE,this.§_-NU§);
         if(this.§_-Lj§)
         {
            §_-pD§.§_-gm§(§_-XN§);
            §_-pD§.playSound("Hiscore_Badge",§_-XN§);
            §_-kl§.setText("¡Nuevo Highscore!","TextField_NewHighScore");
            (§_-kl§.getItemByName("TextField_NewHighScore") as §_-sg§).setVisibility(true);
            (§_-kl§.getItemByName("MovieClip_BestScoreStars") as §_-Bu§).setVisibility(false);
            this.§_-Js§();
         }
         else
         {
            (§_-kl§.getItemByName("TextField_BestScore") as §_-sg§).setVisibility(true);
            (§_-kl§.getItemByName("MovieClip_BestScoreStars") as §_-Bu§).setVisibility(true);
         }
      }
      
      private function §_-Js§() : void
      {
         this.§_-O7§ = (§_-kl§.getItemByName("Container_LevelEndStripe") as §_-WC§).x;
         this.§_-k4§ = (§_-kl§.getItemByName("Container_LevelEndStripe") as §_-WC§).y;
         this.§_-JA§ = §_-Oo§;
      }
      
      private function §_-II§(param1:Number) : void
      {
         if(this.§_-JA§ <= 0)
         {
            (§_-kl§.getItemByName("Container_LevelEndStripe") as §_-WC§).x = this.§_-O7§;
            (§_-kl§.getItemByName("Container_LevelEndStripe") as §_-WC§).y = this.§_-k4§;
         }
         else
         {
            (§_-kl§.getItemByName("Container_LevelEndStripe") as §_-WC§).x = this.§_-O7§ + Math.random() * (this.§_-JA§ / §_-Oo§) * 20;
            (§_-kl§.getItemByName("Container_LevelEndStripe") as §_-WC§).y = this.§_-k4§ + Math.random() * (this.§_-JA§ / §_-Oo§) * 20;
         }
         this.§_-JA§ -= param1 / 10;
      }
      
      private function §_-AD§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §_-Xz§.§_-BH§(§_-Xz§.§_-AP§).§_-N2§;
         var _loc5_:Number = §_-Xz§.§_-BH§(§_-Xz§.§_-AP§).§_-4l§;
         if((§_-kl§.getItemByName("MovieClip_StarLeft") as §_-Bu§).mClip.currentLabel == "UnLit")
         {
            §_-pD§.playSound("Hiscore_Count",§_-iY§,100);
            §_-pD§.§_-gm§(§_-XN§);
            §_-pD§.playSound("Hiscore_Star_Splash1",§_-XN§);
            this.§_-Fp§.delay = 1000;
            this.§_-0B§.§_-SJ§(§_-ph§.§_-eR§.getScore());
            _loc6_ = this.§_-0B§.getValue() / _loc4_ * 2;
            this.§_-oW§ = §_-05§.§_-Yr§(this,{"mNewScoreCounter":this.§_-0B§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§_-oW§.onComplete = this.§_-st§;
            this.§_-oW§.play();
            (§_-kl§.getItemByName("MovieClip_StarLeft") as §_-Bu§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-kl§.getItemByName("MovieClip_StarLeft") as §_-Bu§).x + (§_-kl§.getItemByName("Container_LevelEndStripe") as §_-WC§).x;
            _loc3_ = (§_-kl§.getItemByName("MovieClip_StarLeft") as §_-Bu§).y + (§_-kl§.getItemByName("Container_LevelEndStripe") as §_-WC§).y;
            this.§_-74§ = new §_-Pw§(§_-2U§.§_-EK§,§_-2U§.§_-UU§,_loc2_,_loc3_,§_-Pw§.§_-yO§);
            §_-kl§.addChild(this.§_-74§);
            this.§_-om§.push(this.§_-74§);
         }
         else if(this.§_-0B§.getValue() >= _loc5_ && (§_-kl§.getItemByName("MovieClip_StarCenter") as §_-Bu§).mClip.currentLabel == "UnLit")
         {
            §_-pD§.§_-gm§(§_-XN§);
            §_-pD§.playSound("Hiscore_Star_Splash2",§_-XN§);
            (§_-kl§.getItemByName("MovieClip_StarCenter") as §_-Bu§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-kl§.getItemByName("MovieClip_StarCenter") as §_-Bu§).x + (§_-kl§.getItemByName("Container_LevelEndStripe") as §_-WC§).x;
            _loc3_ = (§_-kl§.getItemByName("MovieClip_StarCenter") as §_-Bu§).y + (§_-kl§.getItemByName("Container_LevelEndStripe") as §_-WC§).y;
            this.§_-74§ = new §_-Pw§(§_-2U§.§_-EK§,§_-2U§.§_-UU§,_loc2_,_loc3_,§_-Pw§.§_-Py§);
            §_-kl§.addChild(this.§_-74§);
            this.§_-om§.push(this.§_-74§);
         }
         else if(this.§_-0B§.getValue() >= _loc4_ && (§_-kl§.getItemByName("MovieClip_StarRight") as §_-Bu§).mClip.currentLabel == "UnLit")
         {
            §_-pD§.§_-gm§(§_-XN§);
            §_-pD§.playSound("Hiscore_Star_Splash3",§_-XN§);
            (§_-kl§.getItemByName("MovieClip_StarRight") as §_-Bu§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-kl§.getItemByName("MovieClip_StarRight") as §_-Bu§).x + (§_-kl§.getItemByName("Container_LevelEndStripe") as §_-WC§).x;
            _loc3_ = (§_-kl§.getItemByName("MovieClip_StarRight") as §_-Bu§).y + (§_-kl§.getItemByName("Container_LevelEndStripe") as §_-WC§).y;
            this.§_-74§ = new §_-Pw§(§_-2U§.§_-EK§,§_-2U§.§_-UU§,_loc2_,_loc3_,§_-Pw§.§_-0W§);
            §_-kl§.addChild(this.§_-74§);
            this.§_-om§.push(this.§_-74§);
         }
         else if(!this.§_-Ij§)
         {
            this.§_-Ij§ = true;
         }
         else
         {
            this.§_-Fp§.stop();
            if(this.§_-Lj§)
            {
               (§_-kl§.getItemByName("MovieClip_NewHighScoreBadge") as §_-Bu§).setVisibility(true);
            }
            else
            {
               (§_-kl§.getItemByName("MovieClip_NewHighScoreBadge") as §_-Bu§).setVisibility(false);
            }
            this.§_-aW§ = §_-05§.§_-Yr§((§_-kl§.getItemByName("MovieClip_NewHighScoreBadge") as §_-Bu§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§_-aW§.addEventListener(§_-mj§.COMPLETE,this.§_-NU§);
            this.§_-aW§.play();
         }
         ++this.§_-XZ§;
      }
      
      private function §_-st§() : void
      {
         §_-pD§.§_-gm§(§_-iY§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§_-Pw§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-UO§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-kl§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §_-kl§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§_-om§)
         {
            _loc3_.update(param1);
         }
         if(this.§_-JA§ > 0)
         {
            this.§_-II§(param1);
         }
         if(mNextState.length > 0)
         {
            return §_-UO§.STATE_STATUS_COMPLETED;
         }
         return §_-UO§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-gk§.§_-Om§(0);
         this.§_-m9§();
         this.§_-JA§ = 0;
         §_-pD§.§_-gm§(§_-iY§);
         (§_-kl§.getItemByName("Button_Menu") as §_-8c§).setComponentVisualState(§_-BT§.§_-Gc§);
         (§_-kl§.getItemByName("Button_Replay") as §_-8c§).setComponentVisualState(§_-BT§.§_-Gc§);
         §_-kl§.setText("0","TextField_LevelEndScore");
         §_-kl§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §_-m9§() : void
      {
         var _loc1_:§_-Pw§ = null;
         if(this.§_-Fp§)
         {
            this.§_-Fp§.stop();
            this.§_-Fp§.removeEventListener(TimerEvent.TIMER,this.§_-AD§);
         }
         for each(_loc1_ in this.§_-om§)
         {
            if(§_-kl§.contains(_loc1_))
            {
               §_-kl§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§_-om§ = new Vector.<§_-Pw§>();
         (§_-kl§.getItemByName("TextField_BestScore") as §_-sg§).setVisibility(false);
         (§_-kl§.getItemByName("MovieClip_BestScoreStars") as §_-Bu§).setVisibility(false);
         (§_-kl§.getItemByName("TextField_NewHighScore") as §_-sg§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-ZG§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-gc§.§_-e7§();
               mNextState = StateCutScene.§_-1h§;
               break;
            case "REPLAY":
               §_-gc§.§_-hG§();
               mNextState = §_-gc§.§_-1h§;
               break;
            case "MENU":
               mNextState = §_-Sp§.§_-1h§;
         }
      }
   }
}
