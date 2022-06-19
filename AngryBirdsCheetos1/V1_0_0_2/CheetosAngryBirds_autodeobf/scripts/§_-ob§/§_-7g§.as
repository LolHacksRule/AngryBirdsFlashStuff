package §_-ob§
{
   import §_-6I§.§_-Ot§;
   import §_-94§.§_-si§;
   import §_-A§.§_-KQ§;
   import §_-A§.§_-YT§;
   import §_-M6§.§_-Qg§;
   import §_-MP§.§_-N5§;
   import §_-Me§.§_-61§;
   import §_-Ul§.§_-FD§;
   import §_-VH§.§_-X6§;
   import §_-Ye§.§_-cP§;
   import §_-ab§.§_-1E§;
   import §_-ab§.§_-5q§;
   import §_-ab§.§_-IP§;
   import §_-ab§.§_-q4§;
   import §_-fp§.§_-W9§;
   import §_-gE§.§_-Tb§;
   import §_-hJ§.§_-5j§;
   import §_-jV§.§_-GL§;
   import §_-jV§.§_-mI§;
   import §_-l-§.§_-OO§;
   import §_-sj§.§_-qs§;
   import §_-ux§.§_-zm§;
   import §_-w8§.§_-Jg§;
   import §_-w8§.§_-S6§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §_-7g§ extends §_-xw§
   {
      
      public static const §_-jn§:String = "LevelEndState3";
      
      public static const §_-3m§:Number = 30;
      
      private static const §_-tw§:String = "ScoreLoopCountChannel";
      
      private static const §_-Em§:String = "EndScreenEffectChannel";
       
      
      private var §_-eS§:§_-GL§;
      
      private var §_-7f§:Number;
      
      private var §_-J5§:Number;
      
      private var §_-e4§:Number;
      
      private var §_-009§:Boolean = false;
      
      private var §_-xI§:Timer;
      
      private var §_-Bm§:§_-OO§;
      
      private var §_-Mi§:§_-Ot§;
      
      private var §_-Cx§:Vector.<§_-Ot§>;
      
      public var mNewScoreCounter:int;
      
      private var §_-Jd§:int;
      
      private var §_-N2§:Boolean;
      
      private var §_-HJ§:§_-61§;
      
      private var §_-Cv§:Boolean;
      
      private var §_-mW§:§_-GL§;
      
      public function §_-7g§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§_-HJ§ = new §_-61§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-x2§ = new §_-S6§(this);
         §_-x2§.init(§_-Jg§.§_-E§.Views.View_LevelEndRio[0]);
         var _loc1_:§_-5q§ = §_-x2§.getItemByName("TextField_LevelCompleted") as §_-5q§;
         _loc1_.setText(§_-FD§.getText("Text_Level_Completed"));
         this.§_-Bm§ = new §_-OO§(0,0,0,0);
         §_-x2§.mMovieClip.addChildAt(this.§_-Bm§,§_-x2§.mMovieClip.numChildren - 1);
         this.§_-Cx§ = new Vector.<§_-Ot§>();
         §_-X6§.§_-mq§(§_-tw§,1,1);
         §_-X6§.§_-mq§(§_-Em§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-cP§.§_-004§)
         {
            §_-cP§.§_-004§.start();
         }
         this.mNewScoreCounter = 0;
         this.§_-N2§ = false;
         §_-X6§.playSound("LevelCompletedTheme1");
         this.§_-Bm§.§_-pv§(0.7);
         this.§_-ju§();
         (§_-x2§.getItemByName("Button_CutScene") as §_-q4§).setVisibility(§_-N5§.§_-HP§());
         if(§_-N5§.§_-sI§ == "1-3")
         {
            (§_-x2§.getItemByName("Button_Next") as §_-q4§).setVisibility(false);
         }
         else
         {
            (§_-x2§.getItemByName("Button_Next") as §_-q4§).setVisibility(true);
         }
      }
      
      private function §_-ju§() : void
      {
         this.§_-5§();
         this.§_-xI§ = new Timer(100);
         this.§_-Jd§ = 0;
         this.§_-xI§.addEventListener(TimerEvent.TIMER,this.§_-ur§);
         this.§_-xI§.start();
      }
      
      private function §_-5§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Number = §_-rs§.§_-Nr§.§_-Ex§(§_-N5§.§_-sI§);
         var _loc2_:Number = (§_-si§.§_-0j§ as §_-zm§).getScore();
         this.§_-Cv§ = _loc2_ > _loc1_;
         if(this.§_-Cv§)
         {
            _loc1_ = _loc2_;
            §_-rs§.§_-Nr§.§_-Xq§(§_-N5§.§_-sI§,_loc1_);
            §_-x2§.setText(§_-FD§.getText("Text_New_Highscore"),"TextField_BestScore");
         }
         else
         {
            §_-x2§.setText(§_-FD§.getText("Text_Best") + " " + _loc1_.toString(),"TextField_BestScore");
            _loc3_ = §_-N5§.§_-9k§(§_-N5§.§_-sI§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§_-x2§.getItemByName("MovieClip_BestScoreStars") as §_-1E§).§_-fE§("OneStar");
                  break;
               case 2:
                  (§_-x2§.getItemByName("MovieClip_BestScoreStars") as §_-1E§).§_-fE§("TwoStar");
                  break;
               case 3:
                  (§_-x2§.getItemByName("MovieClip_BestScoreStars") as §_-1E§).§_-fE§("ThreeStar");
            }
         }
         (§_-x2§.getItemByName("MovieClip_NewHighScoreBadge") as §_-1E§).setVisibility(false);
         (§_-x2§.getItemByName("MovieClip_StarLeft") as §_-1E§).mClip.gotoAndStop("UnLit");
         (§_-x2§.getItemByName("MovieClip_StarCenter") as §_-1E§).mClip.gotoAndStop("UnLit");
         (§_-x2§.getItemByName("MovieClip_StarRight") as §_-1E§).mClip.gotoAndStop("UnLit");
      }
      
      private function §_-1Q§() : void
      {
         if(this.§_-Cv§)
         {
            §_-X6§.§_-vx§(§_-Em§);
            §_-X6§.playSound("Hiscore_Badge",§_-Em§);
            §_-x2§.setText(§_-FD§.getText("Text_New_Highscore"),"TextField_NewHighScore");
            (§_-x2§.getItemByName("TextField_NewHighScore") as §_-5q§).setVisibility(true);
            (§_-x2§.getItemByName("MovieClip_BestScoreStars") as §_-1E§).setVisibility(false);
            this.§_-T4§();
         }
         else
         {
            (§_-x2§.getItemByName("TextField_BestScore") as §_-5q§).setVisibility(true);
            (§_-x2§.getItemByName("MovieClip_BestScoreStars") as §_-1E§).setVisibility(true);
         }
      }
      
      private function §_-T4§() : void
      {
         this.§_-J5§ = (§_-x2§.getItemByName("Container_LevelEndStripe") as §_-IP§).x;
         this.§_-e4§ = (§_-x2§.getItemByName("Container_LevelEndStripe") as §_-IP§).y;
         this.§_-7f§ = §_-3m§;
      }
      
      private function §_-aU§(param1:Number) : void
      {
         if(this.§_-7f§ <= 0)
         {
            (§_-x2§.getItemByName("Container_LevelEndStripe") as §_-IP§).x = this.§_-J5§;
            (§_-x2§.getItemByName("Container_LevelEndStripe") as §_-IP§).y = this.§_-e4§;
         }
         else
         {
            (§_-x2§.getItemByName("Container_LevelEndStripe") as §_-IP§).x = this.§_-J5§ + Math.random() * (this.§_-7f§ / §_-3m§) * 20;
            (§_-x2§.getItemByName("Container_LevelEndStripe") as §_-IP§).y = this.§_-e4§ + Math.random() * (this.§_-7f§ / §_-3m§) * 20;
         }
         this.§_-7f§ -= param1 / 10;
      }
      
      private function §_-ur§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §_-N5§.§_-pj§(§_-N5§.§_-sI§).§_-eC§;
         var _loc5_:Number = §_-N5§.§_-pj§(§_-N5§.§_-sI§).§_-YI§;
         if((§_-x2§.getItemByName("MovieClip_StarLeft") as §_-1E§).mClip.currentLabel == "UnLit")
         {
            §_-X6§.playSound("Hiscore_Count",§_-tw§,100);
            §_-X6§.§_-vx§(§_-Em§);
            §_-X6§.playSound("Hiscore_Star_Splash1",§_-Em§);
            this.§_-xI§.delay = 1000;
            this.§_-HJ§.§_-ak§(§_-si§.§_-0j§.getScore());
            _loc6_ = this.§_-HJ§.getValue() / _loc4_ * 2;
            this.§_-mW§ = §_-mI§.§_-0H§.§_-cb§(this,{"mNewScoreCounter":this.§_-HJ§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§_-mW§.onComplete = this.§_-9u§;
            this.§_-mW§.play();
            (§_-x2§.getItemByName("MovieClip_StarLeft") as §_-1E§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-x2§.getItemByName("MovieClip_StarLeft") as §_-1E§).x + (§_-x2§.getItemByName("Container_LevelEndStripe") as §_-IP§).x;
            _loc3_ = (§_-x2§.getItemByName("MovieClip_StarLeft") as §_-1E§).y + (§_-x2§.getItemByName("Container_LevelEndStripe") as §_-IP§).y;
            this.§_-Mi§ = new §_-Ot§(§_-rs§.§_-dI§,§_-rs§.§_-0R§,_loc2_,_loc3_,§_-Ot§.§_-Ts§);
            §_-x2§.addChild(this.§_-Mi§);
            this.§_-Cx§.push(this.§_-Mi§);
         }
         else if(this.§_-HJ§.getValue() >= _loc5_ && (§_-x2§.getItemByName("MovieClip_StarCenter") as §_-1E§).mClip.currentLabel == "UnLit")
         {
            §_-X6§.§_-vx§(§_-Em§);
            §_-X6§.playSound("Hiscore_Star_Splash2",§_-Em§);
            (§_-x2§.getItemByName("MovieClip_StarCenter") as §_-1E§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-x2§.getItemByName("MovieClip_StarCenter") as §_-1E§).x + (§_-x2§.getItemByName("Container_LevelEndStripe") as §_-IP§).x;
            _loc3_ = (§_-x2§.getItemByName("MovieClip_StarCenter") as §_-1E§).y + (§_-x2§.getItemByName("Container_LevelEndStripe") as §_-IP§).y;
            this.§_-Mi§ = new §_-Ot§(§_-rs§.§_-dI§,§_-rs§.§_-0R§,_loc2_,_loc3_,§_-Ot§.§_-PV§);
            §_-x2§.addChild(this.§_-Mi§);
            this.§_-Cx§.push(this.§_-Mi§);
         }
         else if(this.§_-HJ§.getValue() >= _loc4_ && (§_-x2§.getItemByName("MovieClip_StarRight") as §_-1E§).mClip.currentLabel == "UnLit")
         {
            §_-X6§.§_-vx§(§_-Em§);
            §_-X6§.playSound("Hiscore_Star_Splash3",§_-Em§);
            (§_-x2§.getItemByName("MovieClip_StarRight") as §_-1E§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-x2§.getItemByName("MovieClip_StarRight") as §_-1E§).x + (§_-x2§.getItemByName("Container_LevelEndStripe") as §_-IP§).x;
            _loc3_ = (§_-x2§.getItemByName("MovieClip_StarRight") as §_-1E§).y + (§_-x2§.getItemByName("Container_LevelEndStripe") as §_-IP§).y;
            this.§_-Mi§ = new §_-Ot§(§_-rs§.§_-dI§,§_-rs§.§_-0R§,_loc2_,_loc3_,§_-Ot§.§_-1M§);
            §_-x2§.addChild(this.§_-Mi§);
            this.§_-Cx§.push(this.§_-Mi§);
         }
         else if(!this.§_-N2§)
         {
            this.§_-N2§ = true;
         }
         else
         {
            this.§_-xI§.stop();
            if(this.§_-Cv§)
            {
               (§_-x2§.getItemByName("MovieClip_NewHighScoreBadge") as §_-1E§).setVisibility(true);
            }
            else
            {
               (§_-x2§.getItemByName("MovieClip_NewHighScoreBadge") as §_-1E§).setVisibility(false);
            }
            this.§_-eS§ = §_-mI§.§_-0H§.§_-cb§((§_-x2§.getItemByName("MovieClip_NewHighScoreBadge") as §_-1E§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§_-eS§.onComplete = this.§_-1Q§;
            this.§_-eS§.play();
         }
         ++this.§_-Jd§;
      }
      
      private function §_-9u§() : void
      {
         §_-X6§.§_-vx§(§_-tw§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§_-Ot§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-qs§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§_-BO§();
         §_-x2§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §_-x2§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§_-Cx§)
         {
            _loc3_.update(param1);
         }
         if(this.§_-7f§ > 0)
         {
            this.§_-aU§(param1);
         }
         if(mNextState.length > 0)
         {
            return §_-qs§.STATE_STATUS_COMPLETED;
         }
         return §_-qs§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-Bm§.§_-lZ§(0);
         this.§_-b-§();
         this.§_-7f§ = 0;
         §_-X6§.§_-vx§(§_-tw§);
         (§_-x2§.getItemByName("Button_Menu") as §_-q4§).setComponentVisualState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§_-x2§.getItemByName("Button_Replay") as §_-q4§).setComponentVisualState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§_-x2§.getItemByName("Button_CutScene") as §_-q4§).setVisibility(true);
         (§_-x2§.getItemByName("Button_Claim_Prize") as §_-q4§).setComponentVisualState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §_-x2§.setText("0","TextField_LevelEndScore");
         §_-x2§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §_-b-§() : void
      {
         var _loc1_:§_-Ot§ = null;
         if(this.§_-xI§)
         {
            this.§_-xI§.stop();
            this.§_-xI§.removeEventListener(TimerEvent.TIMER,this.§_-ur§);
         }
         for each(_loc1_ in this.§_-Cx§)
         {
            if(§_-x2§.contains(_loc1_))
            {
               §_-x2§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§_-Cx§ = new Vector.<§_-Ot§>();
         (§_-x2§.getItemByName("TextField_BestScore") as §_-5q§).setVisibility(false);
         (§_-x2§.getItemByName("MovieClip_BestScoreStars") as §_-1E§).setVisibility(false);
         (§_-x2§.getItemByName("TextField_NewHighScore") as §_-5q§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-KQ§) : void
      {
         var checkBoxComponent:§_-YT§ = null;
         var claimPrizeButton:§_-q4§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§_-KQ§ = param3;
         switch(eventName)
         {
            case "NEXT_LEVEL":
               if((§_-si§.§_-HI§ as §_-W9§).§_-k4§() && !§_-N5§.§_-HP§())
               {
                  if(!§_-xw§.sCheetosPopups.showPopup(§_-5j§.§_-IE§))
                  {
                     this.§_-1Z§();
                     break;
                  }
                  break;
               }
               this.§_-1Z§();
               break;
            case "REPLAY":
               if((§_-si§.§_-HI§ as §_-W9§).§_-k4§())
               {
                  if(!§_-xw§.sCheetosPopups.showPopup(§_-5j§.RESTART_LEVEL))
                  {
                     this.§_-MH§();
                     break;
                  }
                  break;
               }
               this.§_-MH§();
               break;
            case "MENU":
               this.§_-Tz§();
               break;
            case "BUTTON_NO":
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.§_-IE§)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.§_-rJ§)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               break;
            case "BUTTON_YES":
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.RESTART_LEVEL)
               {
                  this.§_-MH§();
                  break;
               }
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.§_-IE§)
               {
                  this.§_-1Z§();
                  break;
               }
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.§_-rJ§)
               {
                  this.§_-Tz§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §_-YT§;
               §_-rs§.§_-hd§.§_-2D§ = !§_-rs§.§_-hd§.§_-2D§;
               if(§_-rs§.§_-hd§.§_-2D§)
               {
                  checkBoxComponent.setComponentState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§_-YT§.§_-c7§);
               break;
            case "CLAIM_PRIZE":
               try
               {
                  §_-Qg§.§_-No§("claimPrize",§_-Tb§.userPrizeId);
               }
               catch(e:Error)
               {
               }
               finally
               {
                  claimPrizeButton = §_-x2§.getItemByName("Button_Claim_Prize") as §_-q4§;
                  claimPrizeButton.setComponentState(§_-YT§.§_-c7§);
                  claimPrizeButton.setEnabled(false);
               }
         }
      }
      
      private function §_-BO§() : void
      {
         var _loc1_:§_-q4§ = §_-x2§.getItemByName("Button_Replay") as §_-q4§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§_-q4§ = §_-x2§.getItemByName("Button_Next") as §_-q4§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§_-q4§ = §_-x2§.getItemByName("Button_Menu") as §_-q4§;
         var _loc6_:§_-q4§ = §_-x2§.getItemByName("Button_Claim_Prize") as §_-q4§;
         if(§_-Tb§.hasWonPrize)
         {
            _loc6_.visible = true;
         }
         else
         {
            _loc6_.visible = false;
         }
         if((§_-si§.§_-HI§ as §_-W9§).§_-k4§())
         {
            _loc2_.visible = true;
            if(§_-N5§.§_-sI§ == null)
            {
               _loc4_.visible = false;
            }
            else
            {
               _loc4_.visible = !§_-N5§.§_-HP§();
            }
         }
         else
         {
            _loc2_.visible = false;
            _loc4_.visible = false;
         }
      }
      
      private function §_-MH§() : void
      {
         §_-0-n§.§_-5P§();
         mNextState = §_-0-n§.§_-jn§;
      }
      
      private function §_-1Z§() : void
      {
         §_-0-n§.§_-1k§();
         mNextState = StateCutScene.§_-jn§;
      }
      
      private function §_-Tz§() : void
      {
         mNextState = §_-qP§.§_-jn§;
      }
   }
}
