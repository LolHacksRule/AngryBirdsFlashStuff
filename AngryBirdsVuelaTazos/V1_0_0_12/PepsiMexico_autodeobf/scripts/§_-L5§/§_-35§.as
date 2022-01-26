package §_-L5§
{
   import §_-8J§.§_-1T§;
   import §_-8J§.§_-8s§;
   import §_-Hw§.§_-3C§;
   import §_-IC§.§_-Uw§;
   import §_-Su§.§_-8v§;
   import §_-TQ§.HighscoreSidebar;
   import §_-Tf§.§_-V6§;
   import §_-Ts§.§_-pl§;
   import §_-UQ§.§_-QZ§;
   import §_-Xr§.§_-mU§;
   import §_-Ys§.§_-TM§;
   import §_-Ys§.§_-o-§;
   import §_-ZI§.§_-Vu§;
   import §_-am§.§_-XJ§;
   import §_-c7§.§_-m8§;
   import §_-l§.§_-SN§;
   import §_-of§.§_-3Q§;
   import §_-of§.§_-H4§;
   import §_-of§.§_-Yk§;
   import §_-of§.§_-rt§;
   import §_-v3§.§_-G3§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §_-35§ extends §_-1Y§
   {
      
      public static const §_-Mi§:String = "LevelEndState3";
      
      public static const §_-vf§:Number = 30;
      
      private static const §_-nj§:String = "ScoreLoopCountChannel";
      
      private static const §_-qC§:String = "EndScreenEffectChannel";
       
      
      private var §_-82§:§_-Vu§;
      
      private var §_-9U§:Number;
      
      private var §_-X0§:Number;
      
      private var §_-uL§:Number;
      
      private var §_-UT§:Boolean = false;
      
      private var §_-85§:Timer;
      
      private var §_-PY§:§_-pl§;
      
      private var §_-Ol§:§_-SN§;
      
      private var §_-6X§:Vector.<§_-SN§>;
      
      public var mNewScoreCounter:int;
      
      private var §_-ka§:int;
      
      private var §_-fG§:Boolean;
      
      private var §_-ep§:§_-mU§;
      
      private var §_-30§:Boolean;
      
      private var §_-f1§:§_-Vu§;
      
      public function §_-35§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§_-ep§ = new §_-mU§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Bv§ = new §_-8s§(this);
         §_-Bv§.init(§_-1T§.§_-3G§.Views.View_LevelEndRio[0]);
         this.§_-PY§ = new §_-pl§(0,0,0,0);
         §_-Bv§.mMovieClip.addChildAt(this.§_-PY§,§_-Bv§.mMovieClip.numChildren - 1);
         this.§_-6X§ = new Vector.<§_-SN§>();
         §_-XJ§.§_-d9§(§_-nj§,1,1);
         §_-XJ§.§_-d9§(§_-qC§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-G3§.§_-9S§)
         {
            §_-G3§.§_-9S§.start();
         }
         var _loc1_:int = 0;
         if(§_-1B§)
         {
            _loc1_ = §_-1B§.currentPage;
         }
         this.mNewScoreCounter = 0;
         this.§_-fG§ = false;
         §_-XJ§.§_-aW§("LevelCompletedTheme1");
         this.§_-PY§.§_-BE§(0.7);
         this.§_-9o§();
         if(_loc1_)
         {
            §_-1B§.choosePage(_loc1_);
         }
         §_-1B§.changeState(HighscoreSidebar.§_-9d§);
         §_-1B§.showHighscores(§_-8v§.§_-rq§);
      }
      
      private function §_-9o§() : void
      {
         this.§_-sE§();
         this.§_-85§ = new Timer(500);
         this.§_-ka§ = 0;
         this.§_-85§.addEventListener(TimerEvent.TIMER,this.§_-76§);
         this.§_-85§.start();
      }
      
      private function §_-sE§() : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         var _loc1_:int = §_-0Y§.§_-rb§.§_-YB§(§_-8v§.§_-rq§);
         var _loc2_:int = (§_-3C§.§_-0A§ as §_-V6§).getScore();
         this.§_-30§ = _loc2_ > _loc1_;
         if(this.§_-30§)
         {
            _loc1_ = _loc2_;
            §_-0Y§.§_-rb§.§_-7P§(§_-8v§.§_-rq§,_loc1_);
            §_-Bv§.setText("¡Nuevo Highscore!","TextField_BestScore");
         }
         else
         {
            §_-Bv§.setText("Mejor " + _loc1_.toString(),"TextField_BestScore");
            _loc3_ = §_-8v§.§_-nk§(§_-8v§.§_-rq§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§_-Bv§.getItemByName("MovieClip_BestScoreStars") as §_-3Q§).§_-5n§("OneStar");
                  break;
               case 2:
                  (§_-Bv§.getItemByName("MovieClip_BestScoreStars") as §_-3Q§).§_-5n§("TwoStar");
                  break;
               case 3:
                  (§_-Bv§.getItemByName("MovieClip_BestScoreStars") as §_-3Q§).§_-5n§("ThreeStar");
            }
         }
         if(§_-3C§.§_-bz§.mLevelObjects.mMightyEagleAdded)
         {
            _loc4_ = §_-8v§.§_-NQ§(§_-8v§.§_-rq§).§_-hQ§;
            _loc5_ = Math.min(100,Math.round((§_-3C§.§_-0A§ as §_-V6§).getScore() / _loc4_ * 100));
            _loc6_ = §_-0Y§.§_-rb§.§_-F9§(§_-8v§.§_-rq§);
            if(_loc7_ = _loc5_ > _loc6_)
            {
               _loc6_ = _loc5_;
               §_-0Y§.§_-rb§.§_-ey§(§_-8v§.§_-rq§,_loc6_);
            }
         }
         (§_-Bv§.getItemByName("MovieClip_NewHighScoreBadge") as §_-3Q§).setVisibility(false);
         (§_-Bv§.getItemByName("MovieClip_StarLeft") as §_-3Q§).mClip.gotoAndStop("UnLit");
         (§_-Bv§.getItemByName("MovieClip_StarCenter") as §_-3Q§).mClip.gotoAndStop("UnLit");
         (§_-Bv§.getItemByName("MovieClip_StarRight") as §_-3Q§).mClip.gotoAndStop("UnLit");
      }
      
      private function §_-gX§(param1:§_-QZ§) : void
      {
         this.§_-82§.removeEventListener(§_-QZ§.COMPLETE,this.§_-gX§);
         if(this.§_-30§)
         {
            §_-XJ§.§_-v6§(§_-qC§);
            §_-XJ§.§_-aW§("Hiscore_Badge",§_-qC§);
            §_-Bv§.setText("¡Nuevo Highscore!","TextField_NewHighScore");
            (§_-Bv§.getItemByName("TextField_NewHighScore") as §_-rt§).setVisibility(true);
            (§_-Bv§.getItemByName("MovieClip_BestScoreStars") as §_-3Q§).setVisibility(false);
            this.§_-Ns§();
         }
         else
         {
            (§_-Bv§.getItemByName("TextField_BestScore") as §_-rt§).setVisibility(true);
            (§_-Bv§.getItemByName("MovieClip_BestScoreStars") as §_-3Q§).setVisibility(true);
         }
      }
      
      private function §_-Ns§() : void
      {
         this.§_-X0§ = (§_-Bv§.getItemByName("Container_LevelEndStripe") as §_-H4§).x;
         this.§_-uL§ = (§_-Bv§.getItemByName("Container_LevelEndStripe") as §_-H4§).y;
         this.§_-9U§ = §_-vf§;
      }
      
      private function §_-LV§(param1:Number) : void
      {
         if(this.§_-9U§ <= 0)
         {
            (§_-Bv§.getItemByName("Container_LevelEndStripe") as §_-H4§).x = this.§_-X0§;
            (§_-Bv§.getItemByName("Container_LevelEndStripe") as §_-H4§).y = this.§_-uL§;
         }
         else
         {
            (§_-Bv§.getItemByName("Container_LevelEndStripe") as §_-H4§).x = this.§_-X0§ + Math.random() * (this.§_-9U§ / §_-vf§) * 20;
            (§_-Bv§.getItemByName("Container_LevelEndStripe") as §_-H4§).y = this.§_-uL§ + Math.random() * (this.§_-9U§ / §_-vf§) * 20;
         }
         this.§_-9U§ -= param1 / 10;
      }
      
      private function §_-76§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §_-8v§.§_-NQ§(§_-8v§.§_-rq§).§_-Rm§;
         var _loc5_:Number = §_-8v§.§_-NQ§(§_-8v§.§_-rq§).§_-Ql§;
         if((§_-Bv§.getItemByName("MovieClip_StarLeft") as §_-3Q§).mClip.currentLabel == "UnLit")
         {
            §_-XJ§.§_-aW§("Hiscore_Count",§_-nj§,100);
            §_-XJ§.§_-v6§(§_-qC§);
            §_-XJ§.§_-aW§("Hiscore_Star_Splash1",§_-qC§);
            this.§_-85§.delay = 1000;
            this.§_-ep§.§_-HE§(§_-3C§.§_-0A§.getScore());
            _loc6_ = this.§_-ep§.getValue() / _loc4_ * 2;
            this.§_-f1§ = §_-m8§.§_-Y8§(this,{"mNewScoreCounter":this.§_-ep§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§_-f1§.onComplete = this.§_-Cq§;
            this.§_-f1§.play();
            (§_-Bv§.getItemByName("MovieClip_StarLeft") as §_-3Q§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-Bv§.getItemByName("MovieClip_StarLeft") as §_-3Q§).x + (§_-Bv§.getItemByName("Container_LevelEndStripe") as §_-H4§).x;
            _loc3_ = (§_-Bv§.getItemByName("MovieClip_StarLeft") as §_-3Q§).y + (§_-Bv§.getItemByName("Container_LevelEndStripe") as §_-H4§).y;
            this.§_-Ol§ = new §_-SN§(§_-0Y§.§_-dN§,§_-0Y§.§_-mI§,_loc2_,_loc3_,§_-SN§.§_-vM§);
            §_-Bv§.addChild(this.§_-Ol§);
            this.§_-6X§.push(this.§_-Ol§);
         }
         else if(this.§_-ep§.getValue() >= _loc5_ && (§_-Bv§.getItemByName("MovieClip_StarCenter") as §_-3Q§).mClip.currentLabel == "UnLit")
         {
            §_-XJ§.§_-v6§(§_-qC§);
            §_-XJ§.§_-aW§("Hiscore_Star_Splash2",§_-qC§);
            (§_-Bv§.getItemByName("MovieClip_StarCenter") as §_-3Q§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-Bv§.getItemByName("MovieClip_StarCenter") as §_-3Q§).x + (§_-Bv§.getItemByName("Container_LevelEndStripe") as §_-H4§).x;
            _loc3_ = (§_-Bv§.getItemByName("MovieClip_StarCenter") as §_-3Q§).y + (§_-Bv§.getItemByName("Container_LevelEndStripe") as §_-H4§).y;
            this.§_-Ol§ = new §_-SN§(§_-0Y§.§_-dN§,§_-0Y§.§_-mI§,_loc2_,_loc3_,§_-SN§.§_-w6§);
            §_-Bv§.addChild(this.§_-Ol§);
            this.§_-6X§.push(this.§_-Ol§);
         }
         else if(this.§_-ep§.getValue() >= _loc4_ && (§_-Bv§.getItemByName("MovieClip_StarRight") as §_-3Q§).mClip.currentLabel == "UnLit")
         {
            §_-XJ§.§_-v6§(§_-qC§);
            §_-XJ§.§_-aW§("Hiscore_Star_Splash3",§_-qC§);
            (§_-Bv§.getItemByName("MovieClip_StarRight") as §_-3Q§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-Bv§.getItemByName("MovieClip_StarRight") as §_-3Q§).x + (§_-Bv§.getItemByName("Container_LevelEndStripe") as §_-H4§).x;
            _loc3_ = (§_-Bv§.getItemByName("MovieClip_StarRight") as §_-3Q§).y + (§_-Bv§.getItemByName("Container_LevelEndStripe") as §_-H4§).y;
            this.§_-Ol§ = new §_-SN§(§_-0Y§.§_-dN§,§_-0Y§.§_-mI§,_loc2_,_loc3_,§_-SN§.§_-MX§);
            §_-Bv§.addChild(this.§_-Ol§);
            this.§_-6X§.push(this.§_-Ol§);
         }
         else if(!this.§_-fG§)
         {
            this.§_-fG§ = true;
         }
         else
         {
            this.§_-85§.stop();
            if(this.§_-30§)
            {
               (§_-Bv§.getItemByName("MovieClip_NewHighScoreBadge") as §_-3Q§).setVisibility(true);
            }
            else
            {
               (§_-Bv§.getItemByName("MovieClip_NewHighScoreBadge") as §_-3Q§).setVisibility(false);
            }
            this.§_-82§ = §_-m8§.§_-Y8§((§_-Bv§.getItemByName("MovieClip_NewHighScoreBadge") as §_-3Q§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§_-82§.addEventListener(§_-QZ§.COMPLETE,this.§_-gX§);
            this.§_-82§.play();
         }
         ++this.§_-ka§;
      }
      
      private function §_-Cq§() : void
      {
         §_-XJ§.§_-v6§(§_-nj§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§_-SN§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-Uw§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-Bv§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §_-Bv§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§_-6X§)
         {
            _loc3_.update(param1);
         }
         if(this.§_-9U§ > 0)
         {
            this.§_-LV§(param1);
         }
         if(mNextState.length > 0)
         {
            return §_-Uw§.STATE_STATUS_COMPLETED;
         }
         return §_-Uw§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-PY§.§_-Jw§(0);
         this.§_-No§();
         this.§_-9U§ = 0;
         §_-XJ§.§_-v6§(§_-nj§);
         (§_-Bv§.getItemByName("Button_Menu") as §_-Yk§).setComponentVisualState(§_-TM§.§_-Y2§);
         (§_-Bv§.getItemByName("Button_Replay") as §_-Yk§).setComponentVisualState(§_-TM§.§_-Y2§);
         §_-Bv§.setText("0","TextField_LevelEndScore");
         §_-Bv§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §_-No§() : void
      {
         var _loc1_:§_-SN§ = null;
         if(this.§_-85§)
         {
            this.§_-85§.stop();
            this.§_-85§.removeEventListener(TimerEvent.TIMER,this.§_-76§);
         }
         for each(_loc1_ in this.§_-6X§)
         {
            if(§_-Bv§.contains(_loc1_))
            {
               §_-Bv§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§_-6X§ = new Vector.<§_-SN§>();
         (§_-Bv§.getItemByName("TextField_BestScore") as §_-rt§).setVisibility(false);
         (§_-Bv§.getItemByName("MovieClip_BestScoreStars") as §_-3Q§).setVisibility(false);
         (§_-Bv§.getItemByName("TextField_NewHighScore") as §_-rt§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-o-§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-0v§.§_-ky§();
               mNextState = StateCutScene.§_-Mi§;
               break;
            case "REPLAY":
               §_-0v§.§_-R3§();
               mNextState = §_-0v§.§_-Mi§;
               break;
            case "MENU":
               mNextState = §_-Tm§.§_-Mi§;
         }
      }
   }
}
