package §_-5M§
{
   import §_-3P§.§_-dN§;
   import §_-7F§.§_-7U§;
   import §_-8A§.§_-Ip§;
   import §_-B2§.§_-H4§;
   import §_-E-§.§_-Fy§;
   import §_-E-§.§_-RT§;
   import §_-E-§.§_-hw§;
   import §_-E-§.§_-mm§;
   import §_-HJ§.§_-SG§;
   import §_-I1§.§_-2N§;
   import §_-Je§.§_-RH§;
   import §_-Kj§.§_-8u§;
   import §_-LL§.HighscoreSidebar;
   import §_-PK§.§_-Jb§;
   import §_-PK§.§_-ds§;
   import §_-Ux§.§_-2E§;
   import §_-Ux§.§_-wl§;
   import §_-XK§.§_-tC§;
   import §_-m6§.§case§;
   import §_-oZ§.§_-JH§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import §in §.§_-tX§;
   
   public class §_-mr§ extends §_-7C§
   {
      
      public static const §_-7J§:String = "LevelEndState3";
      
      public static const §_-H2§:Number = 30;
      
      private static const §_-tB§:String = "ScoreLoopCountChannel";
      
      private static const §_-56§:String = "EndScreenEffectChannel";
       
      
      private var §_-AQ§:§_-8u§;
      
      private var §_-2O§:Number;
      
      private var §_-ep§:Number;
      
      private var §_-jq§:Number;
      
      private var §_-bA§:Boolean = false;
      
      private var §_-Xr§:Timer;
      
      private var §_-9P§:§_-Ip§;
      
      private var §_-Nr§:§_-7U§;
      
      private var §_-Py§:Vector.<§_-7U§>;
      
      public var mNewScoreCounter:int;
      
      private var §_-gh§:int;
      
      private var §_-sh§:Boolean;
      
      private var §_-jf§:§_-SG§;
      
      private var §_-4w§:Boolean;
      
      private var §_-nh§:§_-8u§;
      
      public function §_-mr§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§_-jf§ = new §_-SG§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-wB§ = new §_-2E§(this);
         §_-wB§.init(§_-wl§.§_-rp§.Views.View_LevelEndRio[0]);
         this.§_-9P§ = new §_-Ip§(0,0,0,0);
         §_-wB§.mMovieClip.addChildAt(this.§_-9P§,§_-wB§.mMovieClip.numChildren - 1);
         this.§_-Py§ = new Vector.<§_-7U§>();
         §_-JH§.§_-IT§(§_-tB§,1,1);
         §_-JH§.§_-IT§(§_-56§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-H4§.§_-I9§)
         {
            §_-H4§.§_-I9§.start();
         }
         var _loc1_:int = 0;
         if(§_-6B§)
         {
            _loc1_ = §_-6B§.currentPage;
         }
         this.mNewScoreCounter = 0;
         this.§_-sh§ = false;
         §_-JH§.§_-A3§("LevelCompletedTheme1");
         this.§_-9P§.§_-Do§(0.7);
         this.§_-Bk§();
         if(_loc1_)
         {
            §_-6B§.choosePage(_loc1_);
         }
         §_-6B§.changeState(HighscoreSidebar.§_-uf§);
         §_-6B§.showHighscores(§_-dN§.§_-fy§);
      }
      
      private function §_-Bk§() : void
      {
         this.§_-M§();
         this.§_-Xr§ = new Timer(500);
         this.§_-gh§ = 0;
         this.§_-Xr§.addEventListener(TimerEvent.TIMER,this.§_-mD§);
         this.§_-Xr§.start();
      }
      
      private function §_-M§() : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         var _loc1_:Number = §_-5e§.§_-Yn§.§_-wC§(§_-dN§.§_-fy§);
         var _loc2_:Number = (§_-2N§.§_-gT§ as §case§).getScore();
         this.§_-4w§ = _loc2_ > _loc1_;
         if(this.§_-4w§)
         {
            _loc1_ = _loc2_;
            §_-5e§.§_-Yn§.§_-Xh§(§_-dN§.§_-fy§,_loc1_);
            §_-wB§.setText("¡Nuevo Highscore!","TextField_BestScore");
         }
         else
         {
            §_-wB§.setText("Mejor " + _loc1_.toString(),"TextField_BestScore");
            _loc3_ = §_-dN§.§_-fB§(§_-dN§.§_-fy§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§_-wB§.getItemByName("MovieClip_BestScoreStars") as §_-RT§).§_-PZ§("OneStar");
                  break;
               case 2:
                  (§_-wB§.getItemByName("MovieClip_BestScoreStars") as §_-RT§).§_-PZ§("TwoStar");
                  break;
               case 3:
                  (§_-wB§.getItemByName("MovieClip_BestScoreStars") as §_-RT§).§_-PZ§("ThreeStar");
            }
         }
         if(§_-2N§.§_-iP§.mLevelObjects.mMightyEagleAdded)
         {
            _loc4_ = §_-dN§.§_-wm§(§_-dN§.§_-fy§).§_-ud§;
            _loc5_ = Math.min(100,Math.round((§_-2N§.§_-gT§ as §case§).getScore() / _loc4_ * 100));
            _loc6_ = §_-5e§.§_-Yn§.§_-§(§_-dN§.§_-fy§);
            if(_loc7_ = _loc5_ > _loc6_)
            {
               _loc6_ = _loc5_;
               §_-5e§.§_-Yn§.§_-rx§(§_-dN§.§_-fy§,_loc6_);
            }
         }
         (§_-wB§.getItemByName("MovieClip_NewHighScoreBadge") as §_-RT§).setVisibility(false);
         (§_-wB§.getItemByName("MovieClip_StarLeft") as §_-RT§).mClip.gotoAndStop("UnLit");
         (§_-wB§.getItemByName("MovieClip_StarCenter") as §_-RT§).mClip.gotoAndStop("UnLit");
         (§_-wB§.getItemByName("MovieClip_StarRight") as §_-RT§).mClip.gotoAndStop("UnLit");
      }
      
      private function §_-kO§(param1:§_-tC§) : void
      {
         this.§_-AQ§.removeEventListener(§_-tC§.COMPLETE,this.§_-kO§);
         if(this.§_-4w§)
         {
            §_-JH§.§_-GW§(§_-56§);
            §_-JH§.§_-A3§("Hiscore_Badge",§_-56§);
            §_-wB§.setText("¡Nuevo Highscore!","TextField_NewHighScore");
            (§_-wB§.getItemByName("TextField_NewHighScore") as §_-mm§).setVisibility(true);
            (§_-wB§.getItemByName("MovieClip_BestScoreStars") as §_-RT§).setVisibility(false);
            this.§_-X8§();
         }
         else
         {
            (§_-wB§.getItemByName("TextField_BestScore") as §_-mm§).setVisibility(true);
            (§_-wB§.getItemByName("MovieClip_BestScoreStars") as §_-RT§).setVisibility(true);
         }
      }
      
      private function §_-X8§() : void
      {
         this.§_-ep§ = (§_-wB§.getItemByName("Container_LevelEndStripe") as §_-hw§).x;
         this.§_-jq§ = (§_-wB§.getItemByName("Container_LevelEndStripe") as §_-hw§).y;
         this.§_-2O§ = §_-H2§;
      }
      
      private function §_-Lc§(param1:Number) : void
      {
         if(this.§_-2O§ <= 0)
         {
            (§_-wB§.getItemByName("Container_LevelEndStripe") as §_-hw§).x = this.§_-ep§;
            (§_-wB§.getItemByName("Container_LevelEndStripe") as §_-hw§).y = this.§_-jq§;
         }
         else
         {
            (§_-wB§.getItemByName("Container_LevelEndStripe") as §_-hw§).x = this.§_-ep§ + Math.random() * (this.§_-2O§ / §_-H2§) * 20;
            (§_-wB§.getItemByName("Container_LevelEndStripe") as §_-hw§).y = this.§_-jq§ + Math.random() * (this.§_-2O§ / §_-H2§) * 20;
         }
         this.§_-2O§ -= param1 / 10;
      }
      
      private function §_-mD§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §_-dN§.§_-wm§(§_-dN§.§_-fy§).§_-JR§;
         var _loc5_:Number = §_-dN§.§_-wm§(§_-dN§.§_-fy§).§_-h2§;
         if((§_-wB§.getItemByName("MovieClip_StarLeft") as §_-RT§).mClip.currentLabel == "UnLit")
         {
            §_-JH§.§_-A3§("Hiscore_Count",§_-tB§,100);
            §_-JH§.§_-GW§(§_-56§);
            §_-JH§.§_-A3§("Hiscore_Star_Splash1",§_-56§);
            this.§_-Xr§.delay = 1000;
            this.§_-jf§.§_-2D§(§_-2N§.§_-gT§.getScore());
            _loc6_ = this.§_-jf§.getValue() / _loc4_ * 2;
            this.§_-nh§ = §_-tX§.§finally§(this,{"mNewScoreCounter":this.§_-jf§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§_-nh§.onComplete = this.§_-dU§;
            this.§_-nh§.play();
            (§_-wB§.getItemByName("MovieClip_StarLeft") as §_-RT§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-wB§.getItemByName("MovieClip_StarLeft") as §_-RT§).x + (§_-wB§.getItemByName("Container_LevelEndStripe") as §_-hw§).x;
            _loc3_ = (§_-wB§.getItemByName("MovieClip_StarLeft") as §_-RT§).y + (§_-wB§.getItemByName("Container_LevelEndStripe") as §_-hw§).y;
            this.§_-Nr§ = new §_-7U§(§_-5e§.§_-ZL§,§_-5e§.§_-Uw§,_loc2_,_loc3_,§_-7U§.§_-td§);
            §_-wB§.addChild(this.§_-Nr§);
            this.§_-Py§.push(this.§_-Nr§);
         }
         else if(this.§_-jf§.getValue() >= _loc5_ && (§_-wB§.getItemByName("MovieClip_StarCenter") as §_-RT§).mClip.currentLabel == "UnLit")
         {
            §_-JH§.§_-GW§(§_-56§);
            §_-JH§.§_-A3§("Hiscore_Star_Splash2",§_-56§);
            (§_-wB§.getItemByName("MovieClip_StarCenter") as §_-RT§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-wB§.getItemByName("MovieClip_StarCenter") as §_-RT§).x + (§_-wB§.getItemByName("Container_LevelEndStripe") as §_-hw§).x;
            _loc3_ = (§_-wB§.getItemByName("MovieClip_StarCenter") as §_-RT§).y + (§_-wB§.getItemByName("Container_LevelEndStripe") as §_-hw§).y;
            this.§_-Nr§ = new §_-7U§(§_-5e§.§_-ZL§,§_-5e§.§_-Uw§,_loc2_,_loc3_,§_-7U§.§_-cp§);
            §_-wB§.addChild(this.§_-Nr§);
            this.§_-Py§.push(this.§_-Nr§);
         }
         else if(this.§_-jf§.getValue() >= _loc4_ && (§_-wB§.getItemByName("MovieClip_StarRight") as §_-RT§).mClip.currentLabel == "UnLit")
         {
            §_-JH§.§_-GW§(§_-56§);
            §_-JH§.§_-A3§("Hiscore_Star_Splash3",§_-56§);
            (§_-wB§.getItemByName("MovieClip_StarRight") as §_-RT§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-wB§.getItemByName("MovieClip_StarRight") as §_-RT§).x + (§_-wB§.getItemByName("Container_LevelEndStripe") as §_-hw§).x;
            _loc3_ = (§_-wB§.getItemByName("MovieClip_StarRight") as §_-RT§).y + (§_-wB§.getItemByName("Container_LevelEndStripe") as §_-hw§).y;
            this.§_-Nr§ = new §_-7U§(§_-5e§.§_-ZL§,§_-5e§.§_-Uw§,_loc2_,_loc3_,§_-7U§.§_-nz§);
            §_-wB§.addChild(this.§_-Nr§);
            this.§_-Py§.push(this.§_-Nr§);
         }
         else if(!this.§_-sh§)
         {
            this.§_-sh§ = true;
         }
         else
         {
            this.§_-Xr§.stop();
            if(this.§_-4w§)
            {
               (§_-wB§.getItemByName("MovieClip_NewHighScoreBadge") as §_-RT§).setVisibility(true);
            }
            else
            {
               (§_-wB§.getItemByName("MovieClip_NewHighScoreBadge") as §_-RT§).setVisibility(false);
            }
            this.§_-AQ§ = §_-tX§.§finally§((§_-wB§.getItemByName("MovieClip_NewHighScoreBadge") as §_-RT§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§_-AQ§.addEventListener(§_-tC§.COMPLETE,this.§_-kO§);
            this.§_-AQ§.play();
         }
         ++this.§_-gh§;
      }
      
      private function §_-dU§() : void
      {
         §_-JH§.§_-GW§(§_-tB§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§_-7U§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-RH§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-wB§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §_-wB§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§_-Py§)
         {
            _loc3_.update(param1);
         }
         if(this.§_-2O§ > 0)
         {
            this.§_-Lc§(param1);
         }
         if(mNextState.length > 0)
         {
            return §_-RH§.STATE_STATUS_COMPLETED;
         }
         return §_-RH§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-9P§.§_-gv§(0);
         this.§_-oV§();
         this.§_-2O§ = 0;
         §_-JH§.§_-GW§(§_-tB§);
         (§_-wB§.getItemByName("Button_Menu") as §_-Fy§).setComponentVisualState(§_-ds§.§_-IX§);
         (§_-wB§.getItemByName("Button_Replay") as §_-Fy§).setComponentVisualState(§_-ds§.§_-IX§);
         §_-wB§.setText("0","TextField_LevelEndScore");
         §_-wB§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §_-oV§() : void
      {
         var _loc1_:§_-7U§ = null;
         if(this.§_-Xr§)
         {
            this.§_-Xr§.stop();
            this.§_-Xr§.removeEventListener(TimerEvent.TIMER,this.§_-mD§);
         }
         for each(_loc1_ in this.§_-Py§)
         {
            if(§_-wB§.contains(_loc1_))
            {
               §_-wB§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§_-Py§ = new Vector.<§_-7U§>();
         (§_-wB§.getItemByName("TextField_BestScore") as §_-mm§).setVisibility(false);
         (§_-wB§.getItemByName("MovieClip_BestScoreStars") as §_-RT§).setVisibility(false);
         (§_-wB§.getItemByName("TextField_NewHighScore") as §_-mm§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Jb§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-G§.§_-oz§();
               mNextState = StateCutScene.§_-7J§;
               break;
            case "REPLAY":
               §_-G§.§_-pN§();
               mNextState = §_-G§.§_-7J§;
               break;
            case "MENU":
               mNextState = §_-Vn§.§_-7J§;
         }
      }
   }
}
