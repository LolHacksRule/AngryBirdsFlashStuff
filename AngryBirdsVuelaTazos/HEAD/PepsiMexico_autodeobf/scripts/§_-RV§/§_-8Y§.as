package §_-RV§
{
   import §_-2F§.§_-F6§;
   import §_-3c§.§_-4H§;
   import §_-3c§.§_-5S§;
   import §_-4K§.§_-Av§;
   import §_-7V§.§_-Gs§;
   import §_-7V§.§_-LB§;
   import §_-7x§.§_-4O§;
   import §_-Ll§.§_-4G§;
   import §_-Ll§.§_-FU§;
   import §_-Ll§.§_-JL§;
   import §_-Ll§.§_-iE§;
   import §_-QG§.§_-t6§;
   import §_-Qn§.§_-O7§;
   import §_-Qn§.§_-bo§;
   import §_-cJ§.§_-WM§;
   import §_-cJ§.§_-xx§;
   import §_-iZ§.HighscoreSidebar;
   import §_-pm§.§_-gb§;
   import §_-qb§.§_-Kt§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §_-8Y§ extends §_-oI§
   {
      
      public static const §_-8r§:String = "LevelEndState3";
      
      public static const §_-Am§:Number = 30;
      
      private static const §_-Iw§:String = "ScoreLoopCountChannel";
      
      private static const §_-0D§:String = "EndScreenEffectChannel";
       
      
      private var §_-3P§:§_-WM§;
      
      private var §_-Zq§:Number;
      
      private var §in§:Number;
      
      private var §_-uu§:Number;
      
      private var §_-Cl§:Boolean = false;
      
      private var §_-46§:Timer;
      
      private var §_-C8§:§_-5S§;
      
      private var §_-A5§:§_-4H§;
      
      private var §_-Ya§:Vector.<§_-4H§>;
      
      public var mNewScoreCounter:int;
      
      private var §_-ZZ§:int;
      
      private var §_-p1§:Boolean;
      
      private var §_-82§:§_-F6§;
      
      private var §_-5§:Boolean;
      
      private var §_-Yk§:§_-WM§;
      
      public function §_-8Y§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§_-82§ = new §_-F6§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-MF§ = new §_-bo§(this);
         §_-MF§.init(§_-O7§.§_-jb§.Views.View_LevelEndRio[0]);
         this.§_-C8§ = new §_-5S§(0,0,0,0);
         §_-MF§.mMovieClip.addChildAt(this.§_-C8§,§_-MF§.mMovieClip.numChildren - 1);
         this.§_-Ya§ = new Vector.<§_-4H§>();
         §_-Av§.§_-Zy§(§_-Iw§,1,1);
         §_-Av§.§_-Zy§(§_-0D§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-gb§.§_-ls§.§_-2L§(true);
         var _loc1_:int = 0;
         if(§_-e0§)
         {
            _loc1_ = §_-e0§.currentPage;
         }
         this.mNewScoreCounter = 0;
         this.§_-p1§ = false;
         §_-Av§.§_-so§("LevelCompletedTheme1");
         this.§_-C8§.§_-AV§(0.7);
         this.§_-ld§();
         if(_loc1_)
         {
            §_-e0§.choosePage(_loc1_);
         }
         §_-e0§.changeState(HighscoreSidebar.§_-LI§);
         §_-e0§.showHighscores(§_-4O§.§_-FH§);
      }
      
      private function §_-ld§() : void
      {
         this.§_-c9§();
         this.§_-46§ = new Timer(500);
         this.§_-ZZ§ = 0;
         this.§_-46§.addEventListener(TimerEvent.TIMER,this.§_-HF§);
         this.§_-46§.start();
      }
      
      private function §_-c9§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = §_-q0§.§_-AI§.§_-GE§(§_-4O§.§_-FH§);
         var _loc2_:int = (§_-gb§.§_-6j§ as §_-Kt§).getScore();
         this.§_-5§ = _loc2_ > _loc1_;
         if(this.§_-5§)
         {
            _loc1_ = _loc2_;
            §_-q0§.§_-AI§.§_-wL§(§_-4O§.§_-FH§,_loc1_);
            §_-MF§.setText("¡Nuevo Highscore!","TextField_BestScore");
         }
         else
         {
            §_-MF§.setText("Mejor " + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §_-4O§.§_-4w§(§_-4O§.§_-FH§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (§_-MF§.getItemByName("MovieClip_BestScoreStars") as §_-iE§).§_-8w§("OneStar");
                  break;
               case 2:
                  (§_-MF§.getItemByName("MovieClip_BestScoreStars") as §_-iE§).§_-8w§("TwoStar");
                  break;
               case 3:
                  (§_-MF§.getItemByName("MovieClip_BestScoreStars") as §_-iE§).§_-8w§("ThreeStar");
            }
         }
         var _loc3_:int = §_-gb§.§_-6j§.getEagleScore();
         var _loc4_:Number = §_-q0§.§_-AI§.§_-Lt§(§_-4O§.§_-FH§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §_-q0§.§_-AI§.§_-mn§(§_-4O§.§_-FH§,_loc4_);
         }
         (§_-MF§.getItemByName("MovieClip_NewHighScoreBadge") as §_-iE§).setVisibility(false);
         (§_-MF§.getItemByName("MovieClip_StarLeft") as §_-iE§).mClip.gotoAndStop("UnLit");
         (§_-MF§.getItemByName("MovieClip_StarCenter") as §_-iE§).mClip.gotoAndStop("UnLit");
         (§_-MF§.getItemByName("MovieClip_StarRight") as §_-iE§).mClip.gotoAndStop("UnLit");
      }
      
      private function §_-5A§() : void
      {
         if(this.§_-5§)
         {
            §_-Av§.§_-nk§(§_-0D§);
            §_-Av§.§_-so§("Hiscore_Badge",§_-0D§);
            §_-MF§.setText("¡Nuevo Highscore!","TextField_NewHighScore");
            (§_-MF§.getItemByName("TextField_NewHighScore") as §_-JL§).setVisibility(true);
            (§_-MF§.getItemByName("MovieClip_BestScoreStars") as §_-iE§).setVisibility(false);
            this.§_-S-§();
         }
         else
         {
            (§_-MF§.getItemByName("TextField_BestScore") as §_-JL§).setVisibility(true);
            (§_-MF§.getItemByName("MovieClip_BestScoreStars") as §_-iE§).setVisibility(true);
         }
      }
      
      private function §_-S-§() : void
      {
         this.§in§ = (§_-MF§.getItemByName("Container_LevelEndStripe") as §_-4G§).x;
         this.§_-uu§ = (§_-MF§.getItemByName("Container_LevelEndStripe") as §_-4G§).y;
         this.§_-Zq§ = §_-Am§;
      }
      
      private function §_-39§(param1:Number) : void
      {
         if(this.§_-Zq§ <= 0)
         {
            (§_-MF§.getItemByName("Container_LevelEndStripe") as §_-4G§).x = this.§in§;
            (§_-MF§.getItemByName("Container_LevelEndStripe") as §_-4G§).y = this.§_-uu§;
         }
         else
         {
            (§_-MF§.getItemByName("Container_LevelEndStripe") as §_-4G§).x = this.§in§ + Math.random() * (this.§_-Zq§ / §_-Am§) * 20;
            (§_-MF§.getItemByName("Container_LevelEndStripe") as §_-4G§).y = this.§_-uu§ + Math.random() * (this.§_-Zq§ / §_-Am§) * 20;
         }
         this.§_-Zq§ -= param1 / 10;
      }
      
      private function §_-HF§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §_-4O§.§_-Eo§(§_-4O§.§_-FH§).§_-pR§;
         var _loc5_:Number = §_-4O§.§_-Eo§(§_-4O§.§_-FH§).§_-9§;
         if((§_-MF§.getItemByName("MovieClip_StarLeft") as §_-iE§).mClip.currentLabel == "UnLit")
         {
            §_-Av§.§_-so§("Hiscore_Count",§_-Iw§,100);
            §_-Av§.§_-nk§(§_-0D§);
            §_-Av§.§_-so§("Hiscore_Star_Splash1",§_-0D§);
            this.§_-46§.delay = 1000;
            this.§_-82§.§_-fd§(§_-gb§.§_-6j§.getScore());
            _loc6_ = this.§_-82§.getValue() / _loc4_ * 2;
            this.§_-Yk§ = §_-xx§.§_-uP§.§_-Vb§(this,{"mNewScoreCounter":this.§_-82§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§_-Yk§.onComplete = this.§_-uF§;
            this.§_-Yk§.play();
            (§_-MF§.getItemByName("MovieClip_StarLeft") as §_-iE§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-MF§.getItemByName("MovieClip_StarLeft") as §_-iE§).x + (§_-MF§.getItemByName("Container_LevelEndStripe") as §_-4G§).x;
            _loc3_ = (§_-MF§.getItemByName("MovieClip_StarLeft") as §_-iE§).y + (§_-MF§.getItemByName("Container_LevelEndStripe") as §_-4G§).y;
            this.§_-A5§ = new §_-4H§(§_-q0§.§ null§,§_-q0§.§_-aD§,_loc2_,_loc3_,§_-4H§.§_-iU§);
            §_-MF§.addChild(this.§_-A5§);
            this.§_-Ya§.push(this.§_-A5§);
         }
         else if(this.§_-82§.getValue() >= _loc5_ && (§_-MF§.getItemByName("MovieClip_StarCenter") as §_-iE§).mClip.currentLabel == "UnLit")
         {
            §_-Av§.§_-nk§(§_-0D§);
            §_-Av§.§_-so§("Hiscore_Star_Splash2",§_-0D§);
            (§_-MF§.getItemByName("MovieClip_StarCenter") as §_-iE§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-MF§.getItemByName("MovieClip_StarCenter") as §_-iE§).x + (§_-MF§.getItemByName("Container_LevelEndStripe") as §_-4G§).x;
            _loc3_ = (§_-MF§.getItemByName("MovieClip_StarCenter") as §_-iE§).y + (§_-MF§.getItemByName("Container_LevelEndStripe") as §_-4G§).y;
            this.§_-A5§ = new §_-4H§(§_-q0§.§ null§,§_-q0§.§_-aD§,_loc2_,_loc3_,§_-4H§.§_-Pz§);
            §_-MF§.addChild(this.§_-A5§);
            this.§_-Ya§.push(this.§_-A5§);
         }
         else if(this.§_-82§.getValue() >= _loc4_ && (§_-MF§.getItemByName("MovieClip_StarRight") as §_-iE§).mClip.currentLabel == "UnLit")
         {
            §_-Av§.§_-nk§(§_-0D§);
            §_-Av§.§_-so§("Hiscore_Star_Splash3",§_-0D§);
            (§_-MF§.getItemByName("MovieClip_StarRight") as §_-iE§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-MF§.getItemByName("MovieClip_StarRight") as §_-iE§).x + (§_-MF§.getItemByName("Container_LevelEndStripe") as §_-4G§).x;
            _loc3_ = (§_-MF§.getItemByName("MovieClip_StarRight") as §_-iE§).y + (§_-MF§.getItemByName("Container_LevelEndStripe") as §_-4G§).y;
            this.§_-A5§ = new §_-4H§(§_-q0§.§ null§,§_-q0§.§_-aD§,_loc2_,_loc3_,§_-4H§.§_-Bi§);
            §_-MF§.addChild(this.§_-A5§);
            this.§_-Ya§.push(this.§_-A5§);
         }
         else if(!this.§_-p1§)
         {
            this.§_-p1§ = true;
         }
         else
         {
            this.§_-46§.stop();
            if(this.§_-5§)
            {
               (§_-MF§.getItemByName("MovieClip_NewHighScoreBadge") as §_-iE§).setVisibility(true);
            }
            else
            {
               (§_-MF§.getItemByName("MovieClip_NewHighScoreBadge") as §_-iE§).setVisibility(false);
            }
            this.§_-3P§ = §_-xx§.§_-uP§.§_-Vb§((§_-MF§.getItemByName("MovieClip_NewHighScoreBadge") as §_-iE§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§_-3P§.onComplete = this.§_-5A§;
            this.§_-3P§.play();
         }
         ++this.§_-ZZ§;
      }
      
      private function §_-uF§() : void
      {
         §_-Av§.§_-nk§(§_-Iw§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§_-4H§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-t6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-MF§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §_-MF§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§_-Ya§)
         {
            _loc3_.update(param1);
         }
         if(this.§_-Zq§ > 0)
         {
            this.§_-39§(param1);
         }
         if(mNextState.length > 0)
         {
            return §_-t6§.STATE_STATUS_COMPLETED;
         }
         return §_-t6§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-C8§.§_-fr§(0);
         this.§_-bT§();
         this.§_-Zq§ = 0;
         §_-Av§.§_-nk§(§_-Iw§);
         (§_-MF§.getItemByName("Button_Menu") as §_-FU§).setComponentVisualState(§_-LB§.§_-z6§);
         (§_-MF§.getItemByName("Button_Replay") as §_-FU§).setComponentVisualState(§_-LB§.§_-z6§);
         §_-MF§.setText("0","TextField_LevelEndScore");
         §_-MF§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §_-bT§() : void
      {
         var _loc1_:§_-4H§ = null;
         if(this.§_-46§)
         {
            this.§_-46§.stop();
            this.§_-46§.removeEventListener(TimerEvent.TIMER,this.§_-HF§);
         }
         for each(_loc1_ in this.§_-Ya§)
         {
            if(§_-MF§.contains(_loc1_))
            {
               §_-MF§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§_-Ya§ = new Vector.<§_-4H§>();
         (§_-MF§.getItemByName("TextField_BestScore") as §_-JL§).setVisibility(false);
         (§_-MF§.getItemByName("MovieClip_BestScoreStars") as §_-iE§).setVisibility(false);
         (§_-MF§.getItemByName("TextField_NewHighScore") as §_-JL§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Gs§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-Py§.§_-op§();
               mNextState = StateCutScene.§_-8r§;
               break;
            case "REPLAY":
               §_-Py§.§_-vF§();
               mNextState = §_-Py§.§_-8r§;
               break;
            case "MENU":
               mNextState = §_-V9§.§_-8r§;
         }
      }
   }
}
