package §_-8§
{
   import §_-12§.§_-7l§;
   import §_-3P§.§_-os§;
   import §_-6n§.§_-5z§;
   import §_-BY§.§_-Iz§;
   import §_-Jx§.§_-Ao§;
   import §_-Jx§.§_-Tc§;
   import §_-Kb§.§_-pJ§;
   import §_-Kn§.HighscoreSidebar;
   import §_-M0§.§_-u4§;
   import §_-PZ§.§_-3L§;
   import §_-Qn§.§_-AG§;
   import §_-Yh§.§_-BS§;
   import §_-Yh§.§_-fA§;
   import §_-hf§.§_-0J§;
   import §_-hf§.§_-6o§;
   import §_-hf§.§_-Nx§;
   import §_-hf§.§_-WL§;
   import §_-mc§.§_-TP§;
   import §_-qT§.§_-O5§;
   import §_-uh§.§_-HB§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §_-xH§ extends §_-1f§
   {
      
      public static const §_-7m§:String = "LevelEndState3";
      
      public static const §_-Vq§:Number = 30;
      
      private static const §_-Jr§:String = "ScoreLoopCountChannel";
      
      private static const §_-SW§:String = "EndScreenEffectChannel";
       
      
      private var §_-Iv§:§_-7l§;
      
      private var §_-yF§:Number;
      
      private var §_-TA§:Number;
      
      private var §var §:Number;
      
      private var §_-KZ§:Boolean = false;
      
      private var §_-G5§:Timer;
      
      private var §_-NZ§:§_-3L§;
      
      private var §_-l8§:§_-Iz§;
      
      private var §_-Im§:Vector.<§_-Iz§>;
      
      public var mNewScoreCounter:int;
      
      private var §_-5r§:int;
      
      private var §_-U2§:Boolean;
      
      private var §_-AV§:§_-TP§;
      
      private var §_-7T§:Boolean;
      
      private var §_-xF§:§_-7l§;
      
      public function §_-xH§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§_-AV§ = new §_-TP§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Ih§ = new §_-fA§(this);
         §_-Ih§.init(§_-BS§.§_-tc§.Views.View_LevelEndRio[0]);
         this.§_-NZ§ = new §_-3L§(0,0,0,0);
         §_-Ih§.mMovieClip.addChildAt(this.§_-NZ§,§_-Ih§.mMovieClip.numChildren - 1);
         this.§_-Im§ = new Vector.<§_-Iz§>();
         §_-5z§.§_-9b§(§_-Jr§,1,1);
         §_-5z§.§_-9b§(§_-SW§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-u4§.§_-40§.§_-AB§(true);
         var _loc1_:int = 0;
         if(§_-5D§)
         {
            _loc1_ = §_-5D§.currentPage;
         }
         this.mNewScoreCounter = 0;
         this.§_-U2§ = false;
         §_-5z§.§_-rp§("LevelCompletedTheme1");
         this.§_-NZ§.§_-xX§(0.7);
         this.§_-pQ§();
         if(_loc1_)
         {
            §_-5D§.choosePage(_loc1_);
         }
         §_-5D§.changeState(HighscoreSidebar.§_-Po§);
         §_-5D§.showHighscores(§_-HB§.§_-Z-§);
      }
      
      private function §_-pQ§() : void
      {
         this.§_-Tx§();
         this.§_-G5§ = new Timer(500);
         this.§_-5r§ = 0;
         this.§_-G5§.addEventListener(TimerEvent.TIMER,this.§_-uv§);
         this.§_-G5§.start();
      }
      
      private function §_-Tx§() : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         var _loc1_:int = §_-Tj§.§_-7q§.§_-nT§(§_-HB§.§_-Z-§);
         var _loc2_:int = (§_-u4§.§_-FQ§ as §_-pJ§).getScore();
         this.§_-7T§ = _loc2_ > _loc1_;
         if(this.§_-7T§)
         {
            _loc1_ = _loc2_;
            §_-Tj§.§_-7q§.§_-0a§(§_-HB§.§_-Z-§,_loc1_);
            §_-Ih§.setText("¡Nuevo Highscore!","TextField_BestScore");
         }
         else
         {
            §_-Ih§.setText("Mejor " + _loc1_.toString(),"TextField_BestScore");
            _loc3_ = §_-HB§.§_-1m§(§_-HB§.§_-Z-§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§_-Ih§.getItemByName("MovieClip_BestScoreStars") as §_-Nx§).§_-ET§("OneStar");
                  break;
               case 2:
                  (§_-Ih§.getItemByName("MovieClip_BestScoreStars") as §_-Nx§).§_-ET§("TwoStar");
                  break;
               case 3:
                  (§_-Ih§.getItemByName("MovieClip_BestScoreStars") as §_-Nx§).§_-ET§("ThreeStar");
            }
         }
         if(§_-u4§.§_-40§.objects.mMightyEagleAdded)
         {
            _loc4_ = §_-HB§.§_-ap§(§_-HB§.§_-Z-§).§_-mq§;
            _loc5_ = Math.min(100,Math.round((§_-u4§.§_-FQ§ as §_-pJ§).getScore() / _loc4_ * 100));
            _loc6_ = §_-Tj§.§_-7q§.§_-fO§(§_-HB§.§_-Z-§);
            if(_loc7_ = _loc5_ > _loc6_)
            {
               _loc6_ = _loc5_;
               §_-Tj§.§_-7q§.§_-xG§(§_-HB§.§_-Z-§,_loc6_);
            }
         }
         (§_-Ih§.getItemByName("MovieClip_NewHighScoreBadge") as §_-Nx§).setVisibility(false);
         (§_-Ih§.getItemByName("MovieClip_StarLeft") as §_-Nx§).mClip.gotoAndStop("UnLit");
         (§_-Ih§.getItemByName("MovieClip_StarCenter") as §_-Nx§).mClip.gotoAndStop("UnLit");
         (§_-Ih§.getItemByName("MovieClip_StarRight") as §_-Nx§).mClip.gotoAndStop("UnLit");
      }
      
      private function §_-g3§(param1:§_-os§) : void
      {
         this.§_-Iv§.removeEventListener(§_-os§.COMPLETE,this.§_-g3§);
         if(this.§_-7T§)
         {
            §_-5z§.§_-6g§(§_-SW§);
            §_-5z§.§_-rp§("Hiscore_Badge",§_-SW§);
            §_-Ih§.setText("¡Nuevo Highscore!","TextField_NewHighScore");
            (§_-Ih§.getItemByName("TextField_NewHighScore") as §_-0J§).setVisibility(true);
            (§_-Ih§.getItemByName("MovieClip_BestScoreStars") as §_-Nx§).setVisibility(false);
            this.§_-C6§();
         }
         else
         {
            (§_-Ih§.getItemByName("TextField_BestScore") as §_-0J§).setVisibility(true);
            (§_-Ih§.getItemByName("MovieClip_BestScoreStars") as §_-Nx§).setVisibility(true);
         }
      }
      
      private function §_-C6§() : void
      {
         this.§_-TA§ = (§_-Ih§.getItemByName("Container_LevelEndStripe") as §_-WL§).x;
         this.§var § = (§_-Ih§.getItemByName("Container_LevelEndStripe") as §_-WL§).y;
         this.§_-yF§ = §_-Vq§;
      }
      
      private function §_-KE§(param1:Number) : void
      {
         if(this.§_-yF§ <= 0)
         {
            (§_-Ih§.getItemByName("Container_LevelEndStripe") as §_-WL§).x = this.§_-TA§;
            (§_-Ih§.getItemByName("Container_LevelEndStripe") as §_-WL§).y = this.§var §;
         }
         else
         {
            (§_-Ih§.getItemByName("Container_LevelEndStripe") as §_-WL§).x = this.§_-TA§ + Math.random() * (this.§_-yF§ / §_-Vq§) * 20;
            (§_-Ih§.getItemByName("Container_LevelEndStripe") as §_-WL§).y = this.§var § + Math.random() * (this.§_-yF§ / §_-Vq§) * 20;
         }
         this.§_-yF§ -= param1 / 10;
      }
      
      private function §_-uv§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §_-HB§.§_-ap§(§_-HB§.§_-Z-§).§_-Fj§;
         var _loc5_:Number = §_-HB§.§_-ap§(§_-HB§.§_-Z-§).§_-Ti§;
         if((§_-Ih§.getItemByName("MovieClip_StarLeft") as §_-Nx§).mClip.currentLabel == "UnLit")
         {
            §_-5z§.§_-rp§("Hiscore_Count",§_-Jr§,100);
            §_-5z§.§_-6g§(§_-SW§);
            §_-5z§.§_-rp§("Hiscore_Star_Splash1",§_-SW§);
            this.§_-G5§.delay = 1000;
            this.§_-AV§.§_-ws§(§_-u4§.§_-FQ§.getScore());
            _loc6_ = this.§_-AV§.getValue() / _loc4_ * 2;
            this.§_-xF§ = §_-AG§.§_-aI§(this,{"mNewScoreCounter":this.§_-AV§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§_-xF§.onComplete = this.§_-A8§;
            this.§_-xF§.play();
            (§_-Ih§.getItemByName("MovieClip_StarLeft") as §_-Nx§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-Ih§.getItemByName("MovieClip_StarLeft") as §_-Nx§).x + (§_-Ih§.getItemByName("Container_LevelEndStripe") as §_-WL§).x;
            _loc3_ = (§_-Ih§.getItemByName("MovieClip_StarLeft") as §_-Nx§).y + (§_-Ih§.getItemByName("Container_LevelEndStripe") as §_-WL§).y;
            this.§_-l8§ = new §_-Iz§(§_-Tj§.§_-4r§,§_-Tj§.§_-ho§,_loc2_,_loc3_,§_-Iz§.§_-1v§);
            §_-Ih§.addChild(this.§_-l8§);
            this.§_-Im§.push(this.§_-l8§);
         }
         else if(this.§_-AV§.getValue() >= _loc5_ && (§_-Ih§.getItemByName("MovieClip_StarCenter") as §_-Nx§).mClip.currentLabel == "UnLit")
         {
            §_-5z§.§_-6g§(§_-SW§);
            §_-5z§.§_-rp§("Hiscore_Star_Splash2",§_-SW§);
            (§_-Ih§.getItemByName("MovieClip_StarCenter") as §_-Nx§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-Ih§.getItemByName("MovieClip_StarCenter") as §_-Nx§).x + (§_-Ih§.getItemByName("Container_LevelEndStripe") as §_-WL§).x;
            _loc3_ = (§_-Ih§.getItemByName("MovieClip_StarCenter") as §_-Nx§).y + (§_-Ih§.getItemByName("Container_LevelEndStripe") as §_-WL§).y;
            this.§_-l8§ = new §_-Iz§(§_-Tj§.§_-4r§,§_-Tj§.§_-ho§,_loc2_,_loc3_,§_-Iz§.§_-Tv§);
            §_-Ih§.addChild(this.§_-l8§);
            this.§_-Im§.push(this.§_-l8§);
         }
         else if(this.§_-AV§.getValue() >= _loc4_ && (§_-Ih§.getItemByName("MovieClip_StarRight") as §_-Nx§).mClip.currentLabel == "UnLit")
         {
            §_-5z§.§_-6g§(§_-SW§);
            §_-5z§.§_-rp§("Hiscore_Star_Splash3",§_-SW§);
            (§_-Ih§.getItemByName("MovieClip_StarRight") as §_-Nx§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-Ih§.getItemByName("MovieClip_StarRight") as §_-Nx§).x + (§_-Ih§.getItemByName("Container_LevelEndStripe") as §_-WL§).x;
            _loc3_ = (§_-Ih§.getItemByName("MovieClip_StarRight") as §_-Nx§).y + (§_-Ih§.getItemByName("Container_LevelEndStripe") as §_-WL§).y;
            this.§_-l8§ = new §_-Iz§(§_-Tj§.§_-4r§,§_-Tj§.§_-ho§,_loc2_,_loc3_,§_-Iz§.§_-V§);
            §_-Ih§.addChild(this.§_-l8§);
            this.§_-Im§.push(this.§_-l8§);
         }
         else if(!this.§_-U2§)
         {
            this.§_-U2§ = true;
         }
         else
         {
            this.§_-G5§.stop();
            if(this.§_-7T§)
            {
               (§_-Ih§.getItemByName("MovieClip_NewHighScoreBadge") as §_-Nx§).setVisibility(true);
            }
            else
            {
               (§_-Ih§.getItemByName("MovieClip_NewHighScoreBadge") as §_-Nx§).setVisibility(false);
            }
            this.§_-Iv§ = §_-AG§.§_-aI§((§_-Ih§.getItemByName("MovieClip_NewHighScoreBadge") as §_-Nx§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§_-Iv§.addEventListener(§_-os§.COMPLETE,this.§_-g3§);
            this.§_-Iv§.play();
         }
         ++this.§_-5r§;
      }
      
      private function §_-A8§() : void
      {
         §_-5z§.§_-6g§(§_-Jr§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§_-Iz§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-O5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-Ih§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §_-Ih§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§_-Im§)
         {
            _loc3_.update(param1);
         }
         if(this.§_-yF§ > 0)
         {
            this.§_-KE§(param1);
         }
         if(mNextState.length > 0)
         {
            return §_-O5§.STATE_STATUS_COMPLETED;
         }
         return §_-O5§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-NZ§.§_-7P§(0);
         this.§_-6d§();
         this.§_-yF§ = 0;
         §_-5z§.§_-6g§(§_-Jr§);
         (§_-Ih§.getItemByName("Button_Menu") as §_-6o§).setComponentVisualState(§_-Tc§.§_-WJ§);
         (§_-Ih§.getItemByName("Button_Replay") as §_-6o§).setComponentVisualState(§_-Tc§.§_-WJ§);
         §_-Ih§.setText("0","TextField_LevelEndScore");
         §_-Ih§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §_-6d§() : void
      {
         var _loc1_:§_-Iz§ = null;
         if(this.§_-G5§)
         {
            this.§_-G5§.stop();
            this.§_-G5§.removeEventListener(TimerEvent.TIMER,this.§_-uv§);
         }
         for each(_loc1_ in this.§_-Im§)
         {
            if(§_-Ih§.contains(_loc1_))
            {
               §_-Ih§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§_-Im§ = new Vector.<§_-Iz§>();
         (§_-Ih§.getItemByName("TextField_BestScore") as §_-0J§).setVisibility(false);
         (§_-Ih§.getItemByName("MovieClip_BestScoreStars") as §_-Nx§).setVisibility(false);
         (§_-Ih§.getItemByName("TextField_NewHighScore") as §_-0J§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Ao§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-OU§.§_-U1§();
               mNextState = StateCutScene.§_-7m§;
               break;
            case "REPLAY":
               §_-OU§.§for §();
               mNextState = §_-OU§.§_-7m§;
               break;
            case "MENU":
               mNextState = §_-VD§.§_-7m§;
         }
      }
   }
}
