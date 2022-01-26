package §else§
{
   import §_-20§.§_-j5§;
   import §_-6r§.§_-7P§;
   import §_-6r§.§_-h3§;
   import §_-6v§.§_-In§;
   import §_-F1§.§_-V1§;
   import §_-F1§.§_-k4§;
   import §_-F1§.§_-lq§;
   import §_-F1§.§_-qp§;
   import §_-IV§.§_-dW§;
   import §_-PD§.HighscoreSidebar;
   import §_-Qx§.§_-Sf§;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-W3§.§_-zI§;
   import §_-hU§.§_-MB§;
   import §_-mD§.§_-29§;
   import §_-ox§.§_-p4§;
   import §_-rQ§.§_-Ou§;
   import §_-sT§.§_-Da§;
   import §_-y7§.§_-VA§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §_-Rk§ extends §_-iL§
   {
      
      public static const §_-Az§:String = "LevelEndState3";
      
      public static const §_-4J§:Number = 30;
      
      private static const §_-cm§:String = "ScoreLoopCountChannel";
      
      private static const §_-lw§:String = "EndScreenEffectChannel";
       
      
      private var §_-fp§:§_-j5§;
      
      private var §_-1A§:Number;
      
      private var §_-QU§:Number;
      
      private var §_-1h§:Number;
      
      private var §_-Lm§:Boolean = false;
      
      private var §_-Zl§:Timer;
      
      private var §_-4W§:§_-Da§;
      
      private var §_-1X§:§_-p4§;
      
      private var §_-EC§:Vector.<§_-p4§>;
      
      public var mNewScoreCounter:int;
      
      private var §_-xg§:int;
      
      private var §_-B2§:Boolean;
      
      private var §_-6R§:§_-dW§;
      
      private var §_-cV§:Boolean;
      
      private var §_-41§:§_-j5§;
      
      public function §_-Rk§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§_-6R§ = new §_-dW§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-NY§ = new §_-ru§(this);
         §_-NY§.init(§_-BN§.native.Views.View_LevelEndRio[0]);
         this.§_-4W§ = new §_-Da§(0,0,0,0);
         §_-NY§.mMovieClip.addChildAt(this.§_-4W§,§_-NY§.mMovieClip.numChildren - 1);
         this.§_-EC§ = new Vector.<§_-p4§>();
         §_-Ou§.§_-Rz§(§_-cm§,1,1);
         §_-Ou§.§_-Rz§(§_-lw§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-MB§.§_-A7§.§_-Gf§(true);
         var _loc1_:int = 0;
         if(§_-1S§)
         {
            _loc1_ = §_-1S§.currentPage;
         }
         this.mNewScoreCounter = 0;
         this.§_-B2§ = false;
         §_-Ou§.playSound("LevelCompletedTheme1");
         this.§_-4W§.§_-Mv§(0.7);
         this.§_-Ss§();
         if(_loc1_)
         {
            §_-1S§.choosePage(_loc1_);
         }
         §_-1S§.changeState(HighscoreSidebar.§_-Jf§);
         §_-1S§.showHighscores(§_-Sf§.§_-vj§);
      }
      
      private function §_-Ss§() : void
      {
         this.§_-Zr§();
         this.§_-Zl§ = new Timer(500);
         this.§_-xg§ = 0;
         this.§_-Zl§.addEventListener(TimerEvent.TIMER,this.§_-jh§);
         this.§_-Zl§.start();
      }
      
      private function §_-Zr§() : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         var _loc1_:int = §_-Qu§.§_-di§.§_-xN§(§_-Sf§.§_-vj§);
         var _loc2_:int = (§_-MB§.§_-Gk§ as §_-zI§).getScore();
         this.§_-cV§ = _loc2_ > _loc1_;
         if(this.§_-cV§)
         {
            _loc1_ = _loc2_;
            §_-Qu§.§_-di§.§_-ux§(§_-Sf§.§_-vj§,_loc1_);
            §_-NY§.setText("¡Nuevo Highscore!","TextField_BestScore");
         }
         else
         {
            §_-NY§.setText("Mejor " + _loc1_.toString(),"TextField_BestScore");
            _loc3_ = §_-Sf§.§_-mF§(§_-Sf§.§_-vj§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§_-NY§.getItemByName("MovieClip_BestScoreStars") as §_-lq§).§_-XC§("OneStar");
                  break;
               case 2:
                  (§_-NY§.getItemByName("MovieClip_BestScoreStars") as §_-lq§).§_-XC§("TwoStar");
                  break;
               case 3:
                  (§_-NY§.getItemByName("MovieClip_BestScoreStars") as §_-lq§).§_-XC§("ThreeStar");
            }
         }
         if(§_-MB§.§_-A7§.objects.mMightyEagleAdded)
         {
            _loc4_ = §_-Sf§.§_-L0§(§_-Sf§.§_-vj§).§_-7R§;
            _loc5_ = Math.min(100,Math.round((§_-MB§.§_-Gk§ as §_-zI§).getScore() / _loc4_ * 100));
            _loc6_ = §_-Qu§.§_-di§.§_-Qi§(§_-Sf§.§_-vj§);
            if(_loc7_ = _loc5_ > _loc6_)
            {
               _loc6_ = _loc5_;
               §_-Qu§.§_-di§.§_-Li§(§_-Sf§.§_-vj§,_loc6_);
            }
         }
         (§_-NY§.getItemByName("MovieClip_NewHighScoreBadge") as §_-lq§).setVisibility(false);
         (§_-NY§.getItemByName("MovieClip_StarLeft") as §_-lq§).mClip.gotoAndStop("UnLit");
         (§_-NY§.getItemByName("MovieClip_StarCenter") as §_-lq§).mClip.gotoAndStop("UnLit");
         (§_-NY§.getItemByName("MovieClip_StarRight") as §_-lq§).mClip.gotoAndStop("UnLit");
      }
      
      private function §_-89§(param1:§_-In§) : void
      {
         this.§_-fp§.removeEventListener(§_-In§.COMPLETE,this.§_-89§);
         if(this.§_-cV§)
         {
            §_-Ou§.§_-BB§(§_-lw§);
            §_-Ou§.playSound("Hiscore_Badge",§_-lw§);
            §_-NY§.setText("¡Nuevo Highscore!","TextField_NewHighScore");
            (§_-NY§.getItemByName("TextField_NewHighScore") as §_-V1§).setVisibility(true);
            (§_-NY§.getItemByName("MovieClip_BestScoreStars") as §_-lq§).setVisibility(false);
            this.§_-Nq§();
         }
         else
         {
            (§_-NY§.getItemByName("TextField_BestScore") as §_-V1§).setVisibility(true);
            (§_-NY§.getItemByName("MovieClip_BestScoreStars") as §_-lq§).setVisibility(true);
         }
      }
      
      private function §_-Nq§() : void
      {
         this.§_-QU§ = (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).x;
         this.§_-1h§ = (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).y;
         this.§_-1A§ = §_-4J§;
      }
      
      private function §_-P6§(param1:Number) : void
      {
         if(this.§_-1A§ <= 0)
         {
            (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).x = this.§_-QU§;
            (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).y = this.§_-1h§;
         }
         else
         {
            (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).x = this.§_-QU§ + Math.random() * (this.§_-1A§ / §_-4J§) * 20;
            (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).y = this.§_-1h§ + Math.random() * (this.§_-1A§ / §_-4J§) * 20;
         }
         this.§_-1A§ -= param1 / 10;
      }
      
      private function §_-jh§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §_-Sf§.§_-L0§(§_-Sf§.§_-vj§).§for §;
         var _loc5_:Number = §_-Sf§.§_-L0§(§_-Sf§.§_-vj§).§_-Xf§;
         if((§_-NY§.getItemByName("MovieClip_StarLeft") as §_-lq§).mClip.currentLabel == "UnLit")
         {
            §_-Ou§.playSound("Hiscore_Count",§_-cm§,100);
            §_-Ou§.§_-BB§(§_-lw§);
            §_-Ou§.playSound("Hiscore_Star_Splash1",§_-lw§);
            this.§_-Zl§.delay = 1000;
            this.§_-6R§.§_-bB§(§_-MB§.§_-Gk§.getScore());
            _loc6_ = this.§_-6R§.getValue() / _loc4_ * 2;
            this.§_-41§ = §_-29§.§_-NW§(this,{"mNewScoreCounter":this.§_-6R§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§_-41§.onComplete = this.§_-Yh§;
            this.§_-41§.play();
            (§_-NY§.getItemByName("MovieClip_StarLeft") as §_-lq§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-NY§.getItemByName("MovieClip_StarLeft") as §_-lq§).x + (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).x;
            _loc3_ = (§_-NY§.getItemByName("MovieClip_StarLeft") as §_-lq§).y + (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).y;
            this.§_-1X§ = new §_-p4§(§_-Qu§.§_-1q§,§_-Qu§.§_-SP§,_loc2_,_loc3_,§_-p4§.§_-m2§);
            §_-NY§.addChild(this.§_-1X§);
            this.§_-EC§.push(this.§_-1X§);
         }
         else if(this.§_-6R§.getValue() >= _loc5_ && (§_-NY§.getItemByName("MovieClip_StarCenter") as §_-lq§).mClip.currentLabel == "UnLit")
         {
            §_-Ou§.§_-BB§(§_-lw§);
            §_-Ou§.playSound("Hiscore_Star_Splash2",§_-lw§);
            (§_-NY§.getItemByName("MovieClip_StarCenter") as §_-lq§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-NY§.getItemByName("MovieClip_StarCenter") as §_-lq§).x + (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).x;
            _loc3_ = (§_-NY§.getItemByName("MovieClip_StarCenter") as §_-lq§).y + (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).y;
            this.§_-1X§ = new §_-p4§(§_-Qu§.§_-1q§,§_-Qu§.§_-SP§,_loc2_,_loc3_,§_-p4§.§_-4p§);
            §_-NY§.addChild(this.§_-1X§);
            this.§_-EC§.push(this.§_-1X§);
         }
         else if(this.§_-6R§.getValue() >= _loc4_ && (§_-NY§.getItemByName("MovieClip_StarRight") as §_-lq§).mClip.currentLabel == "UnLit")
         {
            §_-Ou§.§_-BB§(§_-lw§);
            §_-Ou§.playSound("Hiscore_Star_Splash3",§_-lw§);
            (§_-NY§.getItemByName("MovieClip_StarRight") as §_-lq§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-NY§.getItemByName("MovieClip_StarRight") as §_-lq§).x + (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).x;
            _loc3_ = (§_-NY§.getItemByName("MovieClip_StarRight") as §_-lq§).y + (§_-NY§.getItemByName("Container_LevelEndStripe") as §_-k4§).y;
            this.§_-1X§ = new §_-p4§(§_-Qu§.§_-1q§,§_-Qu§.§_-SP§,_loc2_,_loc3_,§_-p4§.§_-d7§);
            §_-NY§.addChild(this.§_-1X§);
            this.§_-EC§.push(this.§_-1X§);
         }
         else if(!this.§_-B2§)
         {
            this.§_-B2§ = true;
         }
         else
         {
            this.§_-Zl§.stop();
            if(this.§_-cV§)
            {
               (§_-NY§.getItemByName("MovieClip_NewHighScoreBadge") as §_-lq§).setVisibility(true);
            }
            else
            {
               (§_-NY§.getItemByName("MovieClip_NewHighScoreBadge") as §_-lq§).setVisibility(false);
            }
            this.§_-fp§ = §_-29§.§_-NW§((§_-NY§.getItemByName("MovieClip_NewHighScoreBadge") as §_-lq§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§_-fp§.addEventListener(§_-In§.COMPLETE,this.§_-89§);
            this.§_-fp§.play();
         }
         ++this.§_-xg§;
      }
      
      private function §_-Yh§() : void
      {
         §_-Ou§.§_-BB§(§_-cm§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§_-p4§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-VA§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-NY§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §_-NY§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§_-EC§)
         {
            _loc3_.update(param1);
         }
         if(this.§_-1A§ > 0)
         {
            this.§_-P6§(param1);
         }
         if(mNextState.length > 0)
         {
            return §_-VA§.STATE_STATUS_COMPLETED;
         }
         return §_-VA§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-4W§.§_-wk§(0);
         this.§_-hp§();
         this.§_-1A§ = 0;
         §_-Ou§.§_-BB§(§_-cm§);
         (§_-NY§.getItemByName("Button_Menu") as §_-qp§).setComponentVisualState(§_-h3§.§_-1M§);
         (§_-NY§.getItemByName("Button_Replay") as §_-qp§).setComponentVisualState(§_-h3§.§_-1M§);
         §_-NY§.setText("0","TextField_LevelEndScore");
         §_-NY§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §_-hp§() : void
      {
         var _loc1_:§_-p4§ = null;
         if(this.§_-Zl§)
         {
            this.§_-Zl§.stop();
            this.§_-Zl§.removeEventListener(TimerEvent.TIMER,this.§_-jh§);
         }
         for each(_loc1_ in this.§_-EC§)
         {
            if(§_-NY§.contains(_loc1_))
            {
               §_-NY§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§_-EC§ = new Vector.<§_-p4§>();
         (§_-NY§.getItemByName("TextField_BestScore") as §_-V1§).setVisibility(false);
         (§_-NY§.getItemByName("MovieClip_BestScoreStars") as §_-lq§).setVisibility(false);
         (§_-NY§.getItemByName("TextField_NewHighScore") as §_-V1§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-Jw§.§_-GL§();
               mNextState = StateCutScene.§_-Az§;
               break;
            case "REPLAY":
               §_-Jw§.§_-h5§();
               mNextState = §_-Jw§.§_-Az§;
               break;
            case "MENU":
               mNextState = §_-pX§.§_-Az§;
         }
      }
   }
}
