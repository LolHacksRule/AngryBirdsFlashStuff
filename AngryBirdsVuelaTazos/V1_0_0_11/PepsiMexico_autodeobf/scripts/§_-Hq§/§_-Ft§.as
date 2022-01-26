package §_-Hq§
{
   import §_-4R§.§_-kz§;
   import §_-5x§.§_-8p§;
   import §_-Ah§.§_-b§;
   import §_-QM§.§_-GC§;
   import §_-QM§.§_-Ns§;
   import §_-TE§.§_-PN§;
   import §_-TW§.§_-2x§;
   import §_-TW§.§_-iD§;
   import §_-TW§.§_-qq§;
   import §_-TW§.§_-r6§;
   import §_-Y-§.§_-A5§;
   import §_-bg§.§_-xF§;
   import §_-d5§.§_-6Y§;
   import §_-hz§.§_-rI§;
   import §_-ic§.HighscoreSidebar;
   import §_-rb§.§_-2Q§;
   import §_-uz§.§_-wX§;
   import §_-vp§.§_-rR§;
   import §_-xN§.§_-WL§;
   import §_-xN§.§_-pB§;
   import dynamic.§_-8-§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §_-Ft§ extends §_-UR§
   {
      
      public static const §_-dh§:String = "LevelEndState3";
      
      public static const §_-O6§:Number = 30;
      
      private static const §_-Nc§:String = "ScoreLoopCountChannel";
      
      private static const §_-to§:String = "EndScreenEffectChannel";
       
      
      private var §_-Or§:§_-wX§;
      
      private var §_-41§:Number;
      
      private var §_-Pn§:Number;
      
      private var §_-Tq§:Number;
      
      private var §_-dF§:Boolean = false;
      
      private var §_-l7§:Timer;
      
      private var §_-qc§:§_-8-§;
      
      private var §_-I7§:§_-rR§;
      
      private var §_-LR§:Vector.<§_-rR§>;
      
      public var mNewScoreCounter:int;
      
      private var §_-GS§:int;
      
      private var §_-kN§:Boolean;
      
      private var §_-Wp§:§_-kz§;
      
      private var §_-95§:Boolean;
      
      private var §_-nc§:§_-wX§;
      
      public function §_-Ft§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§_-Wp§ = new §_-kz§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-qE§ = new §_-Ns§(this);
         §_-qE§.init(§_-GC§.§_-jz§.Views.View_LevelEndRio[0]);
         this.§_-qc§ = new §_-8-§(0,0,0,0);
         §_-qE§.mMovieClip.addChildAt(this.§_-qc§,§_-qE§.mMovieClip.numChildren - 1);
         this.§_-LR§ = new Vector.<§_-rR§>();
         §_-8p§.§_-qQ§(§_-Nc§,1,1);
         §_-8p§.§_-qQ§(§_-to§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-6Y§.§true§)
         {
            §_-6Y§.§true§.start();
         }
         var _loc1_:int = 0;
         if(§_-03§)
         {
            _loc1_ = §_-03§.currentPage;
         }
         this.mNewScoreCounter = 0;
         this.§_-kN§ = false;
         §_-8p§.§_-rD§("LevelCompletedTheme1");
         this.§_-qc§.§_-Ai§(0.7);
         this.§_-L4§();
         if(_loc1_)
         {
            §_-03§.choosePage(_loc1_);
         }
         §_-03§.changeState(HighscoreSidebar.§_-JL§);
         §_-03§.showHighscores(§_-A5§.§_-KH§);
      }
      
      private function §_-L4§() : void
      {
         this.§_-Zy§();
         this.§_-l7§ = new Timer(500);
         this.§_-GS§ = 0;
         this.§_-l7§.addEventListener(TimerEvent.TIMER,this.§_-YA§);
         this.§_-l7§.start();
      }
      
      private function §_-Zy§() : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         var _loc1_:Number = §_-I8§.§_-Gn§.§_-3u§(§_-A5§.§_-KH§);
         var _loc2_:Number = (§_-b§.§_-V7§ as §_-rI§).getScore();
         this.§_-95§ = _loc2_ > _loc1_;
         if(this.§_-95§)
         {
            _loc1_ = _loc2_;
            §_-I8§.§_-Gn§.§_-sy§(§_-A5§.§_-KH§,_loc1_);
            §_-qE§.setText("¡Nuevo Highscore!","TextField_BestScore");
         }
         else
         {
            §_-qE§.setText("Mejor " + _loc1_.toString(),"TextField_BestScore");
            _loc3_ = §_-A5§.§_-ww§(§_-A5§.§_-KH§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§_-qE§.getItemByName("MovieClip_BestScoreStars") as §_-2x§).§_-4J§("OneStar");
                  break;
               case 2:
                  (§_-qE§.getItemByName("MovieClip_BestScoreStars") as §_-2x§).§_-4J§("TwoStar");
                  break;
               case 3:
                  (§_-qE§.getItemByName("MovieClip_BestScoreStars") as §_-2x§).§_-4J§("ThreeStar");
            }
         }
         if(§_-b§.§_-cK§.mLevelObjects.mMightyEagleAdded)
         {
            _loc4_ = §_-A5§.§_-6O§(§_-A5§.§_-KH§).§_-VU§;
            _loc5_ = Math.min(100,Math.round((§_-b§.§_-V7§ as §_-rI§).getScore() / _loc4_ * 100));
            _loc6_ = §_-I8§.§_-Gn§.§_-Zf§(§_-A5§.§_-KH§);
            if(_loc7_ = _loc5_ > _loc6_)
            {
               _loc6_ = _loc5_;
               §_-I8§.§_-Gn§.§_-A2§(§_-A5§.§_-KH§,_loc6_);
            }
         }
         (§_-qE§.getItemByName("MovieClip_NewHighScoreBadge") as §_-2x§).setVisibility(false);
         (§_-qE§.getItemByName("MovieClip_StarLeft") as §_-2x§).mClip.gotoAndStop("UnLit");
         (§_-qE§.getItemByName("MovieClip_StarCenter") as §_-2x§).mClip.gotoAndStop("UnLit");
         (§_-qE§.getItemByName("MovieClip_StarRight") as §_-2x§).mClip.gotoAndStop("UnLit");
      }
      
      private function §_-3a§(param1:§_-2Q§) : void
      {
         this.§_-Or§.removeEventListener(§_-2Q§.COMPLETE,this.§_-3a§);
         if(this.§_-95§)
         {
            §_-8p§.§_-MU§(§_-to§);
            §_-8p§.§_-rD§("Hiscore_Badge",§_-to§);
            §_-qE§.setText("¡Nuevo Highscore!","TextField_NewHighScore");
            (§_-qE§.getItemByName("TextField_NewHighScore") as §_-iD§).setVisibility(true);
            (§_-qE§.getItemByName("MovieClip_BestScoreStars") as §_-2x§).setVisibility(false);
            this.§_-QC§();
         }
         else
         {
            (§_-qE§.getItemByName("TextField_BestScore") as §_-iD§).setVisibility(true);
            (§_-qE§.getItemByName("MovieClip_BestScoreStars") as §_-2x§).setVisibility(true);
         }
      }
      
      private function §_-QC§() : void
      {
         this.§_-Pn§ = (§_-qE§.getItemByName("Container_LevelEndStripe") as §_-qq§).x;
         this.§_-Tq§ = (§_-qE§.getItemByName("Container_LevelEndStripe") as §_-qq§).y;
         this.§_-41§ = §_-O6§;
      }
      
      private function §_-CF§(param1:Number) : void
      {
         if(this.§_-41§ <= 0)
         {
            (§_-qE§.getItemByName("Container_LevelEndStripe") as §_-qq§).x = this.§_-Pn§;
            (§_-qE§.getItemByName("Container_LevelEndStripe") as §_-qq§).y = this.§_-Tq§;
         }
         else
         {
            (§_-qE§.getItemByName("Container_LevelEndStripe") as §_-qq§).x = this.§_-Pn§ + Math.random() * (this.§_-41§ / §_-O6§) * 20;
            (§_-qE§.getItemByName("Container_LevelEndStripe") as §_-qq§).y = this.§_-Tq§ + Math.random() * (this.§_-41§ / §_-O6§) * 20;
         }
         this.§_-41§ -= param1 / 10;
      }
      
      private function §_-YA§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §_-A5§.§_-6O§(§_-A5§.§_-KH§).§_-5l§;
         var _loc5_:Number = §_-A5§.§_-6O§(§_-A5§.§_-KH§).§_-JZ§;
         if((§_-qE§.getItemByName("MovieClip_StarLeft") as §_-2x§).mClip.currentLabel == "UnLit")
         {
            §_-8p§.§_-rD§("Hiscore_Count",§_-Nc§,100);
            §_-8p§.§_-MU§(§_-to§);
            §_-8p§.§_-rD§("Hiscore_Star_Splash1",§_-to§);
            this.§_-l7§.delay = 1000;
            this.§_-Wp§.§_-lk§(§_-b§.§_-V7§.getScore());
            _loc6_ = this.§_-Wp§.getValue() / _loc4_ * 2;
            this.§_-nc§ = §_-xF§.§_-JE§(this,{"mNewScoreCounter":this.§_-Wp§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§_-nc§.onComplete = this.§_-1h§;
            this.§_-nc§.play();
            (§_-qE§.getItemByName("MovieClip_StarLeft") as §_-2x§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-qE§.getItemByName("MovieClip_StarLeft") as §_-2x§).x + (§_-qE§.getItemByName("Container_LevelEndStripe") as §_-qq§).x;
            _loc3_ = (§_-qE§.getItemByName("MovieClip_StarLeft") as §_-2x§).y + (§_-qE§.getItemByName("Container_LevelEndStripe") as §_-qq§).y;
            this.§_-I7§ = new §_-rR§(§_-I8§.§_-iX§,§_-I8§.§_-q§,_loc2_,_loc3_,§_-rR§.§_-06§);
            §_-qE§.addChild(this.§_-I7§);
            this.§_-LR§.push(this.§_-I7§);
         }
         else if(this.§_-Wp§.getValue() >= _loc5_ && (§_-qE§.getItemByName("MovieClip_StarCenter") as §_-2x§).mClip.currentLabel == "UnLit")
         {
            §_-8p§.§_-MU§(§_-to§);
            §_-8p§.§_-rD§("Hiscore_Star_Splash2",§_-to§);
            (§_-qE§.getItemByName("MovieClip_StarCenter") as §_-2x§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-qE§.getItemByName("MovieClip_StarCenter") as §_-2x§).x + (§_-qE§.getItemByName("Container_LevelEndStripe") as §_-qq§).x;
            _loc3_ = (§_-qE§.getItemByName("MovieClip_StarCenter") as §_-2x§).y + (§_-qE§.getItemByName("Container_LevelEndStripe") as §_-qq§).y;
            this.§_-I7§ = new §_-rR§(§_-I8§.§_-iX§,§_-I8§.§_-q§,_loc2_,_loc3_,§_-rR§.§_-G7§);
            §_-qE§.addChild(this.§_-I7§);
            this.§_-LR§.push(this.§_-I7§);
         }
         else if(this.§_-Wp§.getValue() >= _loc4_ && (§_-qE§.getItemByName("MovieClip_StarRight") as §_-2x§).mClip.currentLabel == "UnLit")
         {
            §_-8p§.§_-MU§(§_-to§);
            §_-8p§.§_-rD§("Hiscore_Star_Splash3",§_-to§);
            (§_-qE§.getItemByName("MovieClip_StarRight") as §_-2x§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-qE§.getItemByName("MovieClip_StarRight") as §_-2x§).x + (§_-qE§.getItemByName("Container_LevelEndStripe") as §_-qq§).x;
            _loc3_ = (§_-qE§.getItemByName("MovieClip_StarRight") as §_-2x§).y + (§_-qE§.getItemByName("Container_LevelEndStripe") as §_-qq§).y;
            this.§_-I7§ = new §_-rR§(§_-I8§.§_-iX§,§_-I8§.§_-q§,_loc2_,_loc3_,§_-rR§.§_-Qo§);
            §_-qE§.addChild(this.§_-I7§);
            this.§_-LR§.push(this.§_-I7§);
         }
         else if(!this.§_-kN§)
         {
            this.§_-kN§ = true;
         }
         else
         {
            this.§_-l7§.stop();
            if(this.§_-95§)
            {
               (§_-qE§.getItemByName("MovieClip_NewHighScoreBadge") as §_-2x§).setVisibility(true);
            }
            else
            {
               (§_-qE§.getItemByName("MovieClip_NewHighScoreBadge") as §_-2x§).setVisibility(false);
            }
            this.§_-Or§ = §_-xF§.§_-JE§((§_-qE§.getItemByName("MovieClip_NewHighScoreBadge") as §_-2x§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§_-Or§.addEventListener(§_-2Q§.COMPLETE,this.§_-3a§);
            this.§_-Or§.play();
         }
         ++this.§_-GS§;
      }
      
      private function §_-1h§() : void
      {
         §_-8p§.§_-MU§(§_-Nc§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§_-rR§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-PN§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-qE§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §_-qE§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§_-LR§)
         {
            _loc3_.update(param1);
         }
         if(this.§_-41§ > 0)
         {
            this.§_-CF§(param1);
         }
         if(mNextState.length > 0)
         {
            return §_-PN§.STATE_STATUS_COMPLETED;
         }
         return §_-PN§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-qc§.§_-2G§(0);
         this.§_-qp§();
         this.§_-41§ = 0;
         §_-8p§.§_-MU§(§_-Nc§);
         (§_-qE§.getItemByName("Button_Menu") as §_-r6§).setComponentVisualState(§_-WL§.§_-1M§);
         (§_-qE§.getItemByName("Button_Replay") as §_-r6§).setComponentVisualState(§_-WL§.§_-1M§);
         §_-qE§.setText("0","TextField_LevelEndScore");
         §_-qE§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §_-qp§() : void
      {
         var _loc1_:§_-rR§ = null;
         if(this.§_-l7§)
         {
            this.§_-l7§.stop();
            this.§_-l7§.removeEventListener(TimerEvent.TIMER,this.§_-YA§);
         }
         for each(_loc1_ in this.§_-LR§)
         {
            if(§_-qE§.contains(_loc1_))
            {
               §_-qE§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§_-LR§ = new Vector.<§_-rR§>();
         (§_-qE§.getItemByName("TextField_BestScore") as §_-iD§).setVisibility(false);
         (§_-qE§.getItemByName("MovieClip_BestScoreStars") as §_-2x§).setVisibility(false);
         (§_-qE§.getItemByName("TextField_NewHighScore") as §_-iD§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-pB§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-mF§.§_-YZ§();
               mNextState = StateCutScene.§_-dh§;
               break;
            case "REPLAY":
               §_-mF§.§_-4C§();
               mNextState = §_-mF§.§_-dh§;
               break;
            case "MENU":
               mNextState = §_-fR§.§_-dh§;
         }
      }
   }
}
