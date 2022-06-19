package §_-fg§
{
   import §_-05§.§_-my§;
   import §_-3N§.§_-Dp§;
   import §_-5i§.§_-27§;
   import §_-9J§.§_-DA§;
   import §_-9J§.§_-xD§;
   import §_-ES§.§_-L8§;
   import §_-ES§.§_-Ng§;
   import §_-ES§.§_-To§;
   import §_-ES§.§_-ue§;
   import §_-Py§.§_-eK§;
   import §_-T8§.§_-Sa§;
   import §_-ZQ§.§_-qv§;
   import §_-bw§.§_-zb§;
   import §_-cb§.§_-0B§;
   import §_-gC§.§_-XR§;
   import §_-hx§.§_-Z0§;
   import §_-hx§.§_-lq§;
   import §_-q1§.§_-Sn§;
   import §_-q6§.§_-Iy§;
   import §_-q6§.§_-ZW§;
   import §_-uG§.§_-Eu§;
   import §_-vB§.§_-Kk§;
   import §_-wO§.§_-IC§;
   import §_-zM§.§_-1v§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §_-fi§ extends §_-cN§
   {
      
      public static const §_-bg§:String = "LevelEndState3";
      
      public static const §_-KG§:Number = 30;
      
      private static const §_-Je§:String = "ScoreLoopCountChannel";
      
      private static const §_-x2§:String = "EndScreenEffectChannel";
       
      
      private var §_-xO§:§_-Z0§;
      
      private var §_-Pl§:Number;
      
      private var §_-3o§:Number;
      
      private var §_-p7§:Number;
      
      private var §_-lc§:Boolean = false;
      
      private var §_-BP§:Timer;
      
      private var § if§:§_-my§;
      
      private var §_-YV§:§_-qv§;
      
      private var §_-oY§:Vector.<§_-qv§>;
      
      public var mNewScoreCounter:int;
      
      private var §_-PQ§:int;
      
      private var §_-Vg§:Boolean;
      
      private var §_-wH§:§_-IC§;
      
      private var §_-zP§:Boolean;
      
      private var §_-Yd§:§_-Z0§;
      
      public function §_-fi§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§_-wH§ = new §_-IC§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Lb§ = new §_-ZW§(this);
         §_-Lb§.init(§_-Iy§.§_-y-§.Views.View_LevelEndRio[0]);
         var _loc1_:§_-To§ = §_-Lb§.getItemByName("TextField_LevelCompleted") as §_-To§;
         _loc1_.setText(§_-Sn§.getText("Text_Level_Completed"));
         this.§ if§ = new §_-my§(0,0,0,0);
         §_-Lb§.mMovieClip.addChildAt(this.§ if§,§_-Lb§.mMovieClip.numChildren - 1);
         this.§_-oY§ = new Vector.<§_-qv§>();
         §_-0B§.§_-2b§(§_-Je§,1,1);
         §_-0B§.§_-2b§(§_-x2§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-Kk§.§_-NR§)
         {
            §_-Kk§.§_-NR§.start();
         }
         this.mNewScoreCounter = 0;
         this.§_-Vg§ = false;
         §_-0B§.playSound("LevelCompletedTheme1");
         this.§ if§.§_-Y0§(0.7);
         this.§_-3w§();
         (§_-Lb§.getItemByName("Button_CutScene") as §_-Ng§).setVisibility(§_-Sa§.§_-0-D§());
         if(§_-Sa§.§_-LZ§ == "1-3")
         {
            (§_-Lb§.getItemByName("Button_Next") as §_-Ng§).setVisibility(false);
         }
         else
         {
            (§_-Lb§.getItemByName("Button_Next") as §_-Ng§).setVisibility(true);
         }
      }
      
      private function §_-3w§() : void
      {
         this.§_-jF§();
         this.§_-BP§ = new Timer(100);
         this.§_-PQ§ = 0;
         this.§_-BP§.addEventListener(TimerEvent.TIMER,this.§_-BL§);
         this.§_-BP§.start();
      }
      
      private function §_-jF§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Number = §_-Vc§.§_-3K§.§_-GE§(§_-Sa§.§_-LZ§);
         var _loc2_:Number = (§_-XR§.§_-Og§ as §_-27§).getScore();
         this.§_-zP§ = _loc2_ > _loc1_;
         if(this.§_-zP§)
         {
            _loc1_ = _loc2_;
            §_-Vc§.§_-3K§.§false§(§_-Sa§.§_-LZ§,_loc1_);
            §_-Lb§.setText(§_-Sn§.getText("Text_New_Highscore"),"TextField_BestScore");
         }
         else
         {
            §_-Lb§.setText(§_-Sn§.getText("Text_Best") + " " + _loc1_.toString(),"TextField_BestScore");
            _loc3_ = §_-Sa§.§_-1o§(§_-Sa§.§_-LZ§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§_-Lb§.getItemByName("MovieClip_BestScoreStars") as §_-ue§).§_-FJ§("OneStar");
                  break;
               case 2:
                  (§_-Lb§.getItemByName("MovieClip_BestScoreStars") as §_-ue§).§_-FJ§("TwoStar");
                  break;
               case 3:
                  (§_-Lb§.getItemByName("MovieClip_BestScoreStars") as §_-ue§).§_-FJ§("ThreeStar");
            }
         }
         (§_-Lb§.getItemByName("MovieClip_NewHighScoreBadge") as §_-ue§).setVisibility(false);
         (§_-Lb§.getItemByName("MovieClip_StarLeft") as §_-ue§).mClip.gotoAndStop("UnLit");
         (§_-Lb§.getItemByName("MovieClip_StarCenter") as §_-ue§).mClip.gotoAndStop("UnLit");
         (§_-Lb§.getItemByName("MovieClip_StarRight") as §_-ue§).mClip.gotoAndStop("UnLit");
      }
      
      private function §_-uB§() : void
      {
         if(this.§_-zP§)
         {
            §_-0B§.§_-f8§(§_-x2§);
            §_-0B§.playSound("Hiscore_Badge",§_-x2§);
            §_-Lb§.setText(§_-Sn§.getText("Text_New_Highscore"),"TextField_NewHighScore");
            (§_-Lb§.getItemByName("TextField_NewHighScore") as §_-To§).setVisibility(true);
            (§_-Lb§.getItemByName("MovieClip_BestScoreStars") as §_-ue§).setVisibility(false);
            this.§_-hn§();
         }
         else
         {
            (§_-Lb§.getItemByName("TextField_BestScore") as §_-To§).setVisibility(true);
            (§_-Lb§.getItemByName("MovieClip_BestScoreStars") as §_-ue§).setVisibility(true);
         }
      }
      
      private function §_-hn§() : void
      {
         this.§_-3o§ = (§_-Lb§.getItemByName("Container_LevelEndStripe") as §_-L8§).x;
         this.§_-p7§ = (§_-Lb§.getItemByName("Container_LevelEndStripe") as §_-L8§).y;
         this.§_-Pl§ = §_-KG§;
      }
      
      private function §_-Vn§(param1:Number) : void
      {
         if(this.§_-Pl§ <= 0)
         {
            (§_-Lb§.getItemByName("Container_LevelEndStripe") as §_-L8§).x = this.§_-3o§;
            (§_-Lb§.getItemByName("Container_LevelEndStripe") as §_-L8§).y = this.§_-p7§;
         }
         else
         {
            (§_-Lb§.getItemByName("Container_LevelEndStripe") as §_-L8§).x = this.§_-3o§ + Math.random() * (this.§_-Pl§ / §_-KG§) * 20;
            (§_-Lb§.getItemByName("Container_LevelEndStripe") as §_-L8§).y = this.§_-p7§ + Math.random() * (this.§_-Pl§ / §_-KG§) * 20;
         }
         this.§_-Pl§ -= param1 / 10;
      }
      
      private function §_-BL§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §_-Sa§.§_-x1§(§_-Sa§.§_-LZ§).§_-oT§;
         var _loc5_:Number = §_-Sa§.§_-x1§(§_-Sa§.§_-LZ§).§_-W6§;
         if((§_-Lb§.getItemByName("MovieClip_StarLeft") as §_-ue§).mClip.currentLabel == "UnLit")
         {
            §_-0B§.playSound("Hiscore_Count",§_-Je§,100);
            §_-0B§.§_-f8§(§_-x2§);
            §_-0B§.playSound("Hiscore_Star_Splash1",§_-x2§);
            this.§_-BP§.delay = 1000;
            this.§_-wH§.§_-li§(§_-XR§.§_-Og§.getScore());
            _loc6_ = this.§_-wH§.getValue() / _loc4_ * 2;
            this.§_-Yd§ = §_-lq§.§var §.§_-OC§(this,{"mNewScoreCounter":this.§_-wH§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§_-Yd§.onComplete = this.§_-jJ§;
            this.§_-Yd§.play();
            (§_-Lb§.getItemByName("MovieClip_StarLeft") as §_-ue§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-Lb§.getItemByName("MovieClip_StarLeft") as §_-ue§).x + (§_-Lb§.getItemByName("Container_LevelEndStripe") as §_-L8§).x;
            _loc3_ = (§_-Lb§.getItemByName("MovieClip_StarLeft") as §_-ue§).y + (§_-Lb§.getItemByName("Container_LevelEndStripe") as §_-L8§).y;
            this.§_-YV§ = new §_-qv§(§_-Vc§.§_-jC§,§_-Vc§.§_-0-3§,_loc2_,_loc3_,§_-qv§.§_-01§);
            §_-Lb§.addChild(this.§_-YV§);
            this.§_-oY§.push(this.§_-YV§);
         }
         else if(this.§_-wH§.getValue() >= _loc5_ && (§_-Lb§.getItemByName("MovieClip_StarCenter") as §_-ue§).mClip.currentLabel == "UnLit")
         {
            §_-0B§.§_-f8§(§_-x2§);
            §_-0B§.playSound("Hiscore_Star_Splash2",§_-x2§);
            (§_-Lb§.getItemByName("MovieClip_StarCenter") as §_-ue§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-Lb§.getItemByName("MovieClip_StarCenter") as §_-ue§).x + (§_-Lb§.getItemByName("Container_LevelEndStripe") as §_-L8§).x;
            _loc3_ = (§_-Lb§.getItemByName("MovieClip_StarCenter") as §_-ue§).y + (§_-Lb§.getItemByName("Container_LevelEndStripe") as §_-L8§).y;
            this.§_-YV§ = new §_-qv§(§_-Vc§.§_-jC§,§_-Vc§.§_-0-3§,_loc2_,_loc3_,§_-qv§.§_-zx§);
            §_-Lb§.addChild(this.§_-YV§);
            this.§_-oY§.push(this.§_-YV§);
         }
         else if(this.§_-wH§.getValue() >= _loc4_ && (§_-Lb§.getItemByName("MovieClip_StarRight") as §_-ue§).mClip.currentLabel == "UnLit")
         {
            §_-0B§.§_-f8§(§_-x2§);
            §_-0B§.playSound("Hiscore_Star_Splash3",§_-x2§);
            (§_-Lb§.getItemByName("MovieClip_StarRight") as §_-ue§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-Lb§.getItemByName("MovieClip_StarRight") as §_-ue§).x + (§_-Lb§.getItemByName("Container_LevelEndStripe") as §_-L8§).x;
            _loc3_ = (§_-Lb§.getItemByName("MovieClip_StarRight") as §_-ue§).y + (§_-Lb§.getItemByName("Container_LevelEndStripe") as §_-L8§).y;
            this.§_-YV§ = new §_-qv§(§_-Vc§.§_-jC§,§_-Vc§.§_-0-3§,_loc2_,_loc3_,§_-qv§.§_-6I§);
            §_-Lb§.addChild(this.§_-YV§);
            this.§_-oY§.push(this.§_-YV§);
         }
         else if(!this.§_-Vg§)
         {
            this.§_-Vg§ = true;
         }
         else
         {
            this.§_-BP§.stop();
            if(this.§_-zP§)
            {
               (§_-Lb§.getItemByName("MovieClip_NewHighScoreBadge") as §_-ue§).setVisibility(true);
            }
            else
            {
               (§_-Lb§.getItemByName("MovieClip_NewHighScoreBadge") as §_-ue§).setVisibility(false);
            }
            this.§_-xO§ = §_-lq§.§var §.§_-OC§((§_-Lb§.getItemByName("MovieClip_NewHighScoreBadge") as §_-ue§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§_-xO§.onComplete = this.§_-uB§;
            this.§_-xO§.play();
         }
         ++this.§_-PQ§;
      }
      
      private function §_-jJ§() : void
      {
         §_-0B§.§_-f8§(§_-Je§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§_-qv§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-eK§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§_-NI§();
         §_-Lb§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §_-Lb§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§_-oY§)
         {
            _loc3_.update(param1);
         }
         if(this.§_-Pl§ > 0)
         {
            this.§_-Vn§(param1);
         }
         if(mNextState.length > 0)
         {
            return §_-eK§.STATE_STATUS_COMPLETED;
         }
         return §_-eK§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§ if§.§_-vP§(0);
         this.§_-D3§();
         this.§_-Pl§ = 0;
         §_-0B§.§_-f8§(§_-Je§);
         (§_-Lb§.getItemByName("Button_Menu") as §_-Ng§).setComponentVisualState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§_-Lb§.getItemByName("Button_Replay") as §_-Ng§).setComponentVisualState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§_-Lb§.getItemByName("Button_CutScene") as §_-Ng§).setVisibility(true);
         (§_-Lb§.getItemByName("Button_Claim_Prize") as §_-Ng§).setComponentVisualState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §_-Lb§.setText("0","TextField_LevelEndScore");
         §_-Lb§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §_-D3§() : void
      {
         var _loc1_:§_-qv§ = null;
         if(this.§_-BP§)
         {
            this.§_-BP§.stop();
            this.§_-BP§.removeEventListener(TimerEvent.TIMER,this.§_-BL§);
         }
         for each(_loc1_ in this.§_-oY§)
         {
            if(§_-Lb§.contains(_loc1_))
            {
               §_-Lb§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§_-oY§ = new Vector.<§_-qv§>();
         (§_-Lb§.getItemByName("TextField_BestScore") as §_-To§).setVisibility(false);
         (§_-Lb§.getItemByName("MovieClip_BestScoreStars") as §_-ue§).setVisibility(false);
         (§_-Lb§.getItemByName("TextField_NewHighScore") as §_-To§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-xD§) : void
      {
         var checkBoxComponent:§_-DA§ = null;
         var claimPrizeButton:§_-Ng§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§_-xD§ = param3;
         switch(eventName)
         {
            case "NEXT_LEVEL":
               if((§_-XR§.§_-Xv§ as §_-Eu§).§_-cj§() && !§_-Sa§.§_-0-D§())
               {
                  if(!§_-cN§.sCheetosPopups.showPopup(§_-1v§.§_-V8§))
                  {
                     this.§_-I§();
                     break;
                  }
                  break;
               }
               this.§_-I§();
               break;
            case "REPLAY":
               if((§_-XR§.§_-Xv§ as §_-Eu§).§_-cj§())
               {
                  if(!§_-cN§.sCheetosPopups.showPopup(§_-1v§.RESTART_LEVEL))
                  {
                     this.§_-9M§();
                     break;
                  }
                  break;
               }
               this.§_-9M§();
               break;
            case "MENU":
               this.§_-es§();
               break;
            case "BUTTON_NO":
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.§_-V8§)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.§_-KF§)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               break;
            case "BUTTON_YES":
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.RESTART_LEVEL)
               {
                  this.§_-9M§();
                  break;
               }
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.§_-V8§)
               {
                  this.§_-I§();
                  break;
               }
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.§_-KF§)
               {
                  this.§_-es§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §_-DA§;
               §_-Vc§.§_-qI§.§_-rL§ = !§_-Vc§.§_-qI§.§_-rL§;
               if(§_-Vc§.§_-qI§.§_-rL§)
               {
                  checkBoxComponent.setComponentState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§_-DA§.§_-MR§);
               break;
            case "CLAIM_PRIZE":
               try
               {
                  §_-Dp§.§_-JB§("claimPrize",§_-zb§.userPrizeId);
               }
               catch(e:Error)
               {
               }
               finally
               {
                  claimPrizeButton = §_-Lb§.getItemByName("Button_Claim_Prize") as §_-Ng§;
                  claimPrizeButton.setComponentState(§_-DA§.§_-MR§);
                  claimPrizeButton.setEnabled(false);
               }
         }
      }
      
      private function §_-NI§() : void
      {
         var _loc1_:§_-Ng§ = §_-Lb§.getItemByName("Button_Replay") as §_-Ng§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§_-Ng§ = §_-Lb§.getItemByName("Button_Next") as §_-Ng§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§_-Ng§ = §_-Lb§.getItemByName("Button_Menu") as §_-Ng§;
         var _loc6_:§_-Ng§ = §_-Lb§.getItemByName("Button_Claim_Prize") as §_-Ng§;
         if(§_-zb§.hasWonPrize)
         {
            _loc6_.visible = true;
         }
         else
         {
            _loc6_.visible = false;
         }
         if((§_-XR§.§_-Xv§ as §_-Eu§).§_-cj§())
         {
            _loc2_.visible = true;
            if(§_-Sa§.§_-LZ§ == null)
            {
               _loc4_.visible = false;
            }
            else
            {
               _loc4_.visible = !§_-Sa§.§_-0-D§();
            }
         }
         else
         {
            _loc2_.visible = false;
            _loc4_.visible = false;
         }
      }
      
      private function §_-9M§() : void
      {
         §_-V0§.§_-70§();
         mNextState = §_-V0§.§_-bg§;
      }
      
      private function §_-I§() : void
      {
         §_-V0§.§_-xE§();
         mNextState = StateCutScene.§_-bg§;
      }
      
      private function §_-es§() : void
      {
         mNextState = §_-Pw§.§_-bg§;
      }
   }
}
