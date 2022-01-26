package §_-Xz§
{
   import §_-16§.§_-8n§;
   import §_-16§.§_-VR§;
   import §_-5b§.§_-Mm§;
   import §_-9s§.§_-Vc§;
   import §_-9s§.§_-db§;
   import §_-Aq§.§_-TN§;
   import §_-E5§.§_-Wo§;
   import §_-EH§.§_-uz§;
   import §_-Eg§.§_-AG§;
   import §_-Eg§.§_-MT§;
   import §_-Eg§.§_-Up§;
   import §_-Eg§.§_-hf§;
   import §_-G§.§_-Ug§;
   import §_-Is§.§_-3Q§;
   import §_-KM§.§_-0A§;
   import §_-Q2§.§_-Zr§;
   import §_-TX§.§_-0X§;
   import §_-Y7§.§_-Y-§;
   import §_-YK§.§_-80§;
   import §_-aD§.§_-Y5§;
   import §_-be§.§_-ss§;
   import §_-kI§.§_-Iv§;
   import §_-xL§.§_-1-§;
   import §_-xL§.§_-y9§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §_-cB§ extends §_-SW§
   {
      
      public static const §_-3o§:String = "LevelEndState3";
      
      public static const §_-6C§:Number = 30;
      
      private static const §_-Va§:String = "ScoreLoopCountChannel";
      
      private static const §_-fp§:String = "EndScreenEffectChannel";
       
      
      private var §_-hM§:§_-Vc§;
      
      private var §_-df§:Number;
      
      private var §_-1G§:Number;
      
      private var §_-Y8§:Number;
      
      private var §_-Ku§:Boolean = false;
      
      private var §_-tZ§:Timer;
      
      private var §_-I1§:§_-Ug§;
      
      private var §_-9X§:§_-80§;
      
      private var §_-cY§:Vector.<§_-80§>;
      
      public var mNewScoreCounter:int;
      
      private var §_-9S§:int;
      
      private var §_-Tn§:Boolean;
      
      private var §_-IY§:§_-Y5§;
      
      private var §_-WG§:Boolean;
      
      private var §_-6g§:§_-Vc§;
      
      public function §_-cB§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§_-IY§ = new §_-Y5§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-nq§ = new §_-1-§(this);
         §_-nq§.init(§_-y9§.§_-HN§.Views.View_LevelEndRio[0]);
         var _loc1_:§_-MT§ = §_-nq§.getItemByName("TextField_LevelCompleted") as §_-MT§;
         _loc1_.setText(§_-Y-§.getText("Text_Level_Completed"));
         this.§_-I1§ = new §_-Ug§(0,0,0,0);
         §_-nq§.mMovieClip.addChildAt(this.§_-I1§,§_-nq§.mMovieClip.numChildren - 1);
         this.§_-cY§ = new Vector.<§_-80§>();
         §_-Wo§.§_-FT§(§_-Va§,1,1);
         §_-Wo§.§_-FT§(§_-fp§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-0A§.§_-bz§)
         {
            §_-0A§.§_-bz§.start();
         }
         this.mNewScoreCounter = 0;
         this.§_-Tn§ = false;
         §_-Wo§.playSound("LevelCompletedTheme1");
         this.§_-I1§.§_-EU§(0.7);
         this.§_-NV§();
         (§_-nq§.getItemByName("Button_CutScene") as §_-hf§).setVisibility(§_-Mm§.§_-xG§());
         if(§_-Mm§.§_-Kw§ == "1-3")
         {
            (§_-nq§.getItemByName("Button_Next") as §_-hf§).setVisibility(false);
         }
         else
         {
            (§_-nq§.getItemByName("Button_Next") as §_-hf§).setVisibility(true);
         }
      }
      
      private function §_-NV§() : void
      {
         this.§_-XI§();
         this.§_-tZ§ = new Timer(100);
         this.§_-9S§ = 0;
         this.§_-tZ§.addEventListener(TimerEvent.TIMER,this.§_-z3§);
         this.§_-tZ§.start();
      }
      
      private function §_-XI§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Number = §_-WX§.§_-ZR§.§_-yH§(§_-Mm§.§_-Kw§);
         var _loc2_:Number = (§_-0X§.§ try§ as §_-ss§).getScore();
         this.§_-WG§ = _loc2_ > _loc1_;
         if(this.§_-WG§)
         {
            _loc1_ = _loc2_;
            §_-WX§.§_-ZR§.§_-9P§(§_-Mm§.§_-Kw§,_loc1_);
            §_-nq§.setText(§_-Y-§.getText("Text_New_Highscore"),"TextField_BestScore");
         }
         else
         {
            §_-nq§.setText(§_-Y-§.getText("Text_Best") + " " + _loc1_.toString(),"TextField_BestScore");
            _loc3_ = §_-Mm§.§_-Kv§(§_-Mm§.§_-Kw§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§_-nq§.getItemByName("MovieClip_BestScoreStars") as §_-AG§).§_-bg§("OneStar");
                  break;
               case 2:
                  (§_-nq§.getItemByName("MovieClip_BestScoreStars") as §_-AG§).§_-bg§("TwoStar");
                  break;
               case 3:
                  (§_-nq§.getItemByName("MovieClip_BestScoreStars") as §_-AG§).§_-bg§("ThreeStar");
            }
         }
         (§_-nq§.getItemByName("MovieClip_NewHighScoreBadge") as §_-AG§).setVisibility(false);
         (§_-nq§.getItemByName("MovieClip_StarLeft") as §_-AG§).mClip.gotoAndStop("UnLit");
         (§_-nq§.getItemByName("MovieClip_StarCenter") as §_-AG§).mClip.gotoAndStop("UnLit");
         (§_-nq§.getItemByName("MovieClip_StarRight") as §_-AG§).mClip.gotoAndStop("UnLit");
      }
      
      private function §_-sP§() : void
      {
         if(this.§_-WG§)
         {
            §_-Wo§.§_-qF§(§_-fp§);
            §_-Wo§.playSound("Hiscore_Badge",§_-fp§);
            §_-nq§.setText(§_-Y-§.getText("Text_New_Highscore"),"TextField_NewHighScore");
            (§_-nq§.getItemByName("TextField_NewHighScore") as §_-MT§).setVisibility(true);
            (§_-nq§.getItemByName("MovieClip_BestScoreStars") as §_-AG§).setVisibility(false);
            this.§_-JT§();
         }
         else
         {
            (§_-nq§.getItemByName("TextField_BestScore") as §_-MT§).setVisibility(true);
            (§_-nq§.getItemByName("MovieClip_BestScoreStars") as §_-AG§).setVisibility(true);
         }
      }
      
      private function §_-JT§() : void
      {
         this.§_-1G§ = (§_-nq§.getItemByName("Container_LevelEndStripe") as §_-Up§).x;
         this.§_-Y8§ = (§_-nq§.getItemByName("Container_LevelEndStripe") as §_-Up§).y;
         this.§_-df§ = §_-6C§;
      }
      
      private function §_-YN§(param1:Number) : void
      {
         if(this.§_-df§ <= 0)
         {
            (§_-nq§.getItemByName("Container_LevelEndStripe") as §_-Up§).x = this.§_-1G§;
            (§_-nq§.getItemByName("Container_LevelEndStripe") as §_-Up§).y = this.§_-Y8§;
         }
         else
         {
            (§_-nq§.getItemByName("Container_LevelEndStripe") as §_-Up§).x = this.§_-1G§ + Math.random() * (this.§_-df§ / §_-6C§) * 20;
            (§_-nq§.getItemByName("Container_LevelEndStripe") as §_-Up§).y = this.§_-Y8§ + Math.random() * (this.§_-df§ / §_-6C§) * 20;
         }
         this.§_-df§ -= param1 / 10;
      }
      
      private function §_-z3§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §_-Mm§.§_-Bp§(§_-Mm§.§_-Kw§).§_-pr§;
         var _loc5_:Number = §_-Mm§.§_-Bp§(§_-Mm§.§_-Kw§).§_-pL§;
         if((§_-nq§.getItemByName("MovieClip_StarLeft") as §_-AG§).mClip.currentLabel == "UnLit")
         {
            §_-Wo§.playSound("Hiscore_Count",§_-Va§,100);
            §_-Wo§.§_-qF§(§_-fp§);
            §_-Wo§.playSound("Hiscore_Star_Splash1",§_-fp§);
            this.§_-tZ§.delay = 1000;
            this.§_-IY§.§_-1a§(§_-0X§.§ try§.getScore());
            _loc6_ = this.§_-IY§.getValue() / _loc4_ * 2;
            this.§_-6g§ = §_-db§.§_-yU§.§_-mZ§(this,{"mNewScoreCounter":this.§_-IY§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§_-6g§.onComplete = this.§_-6z§;
            this.§_-6g§.play();
            (§_-nq§.getItemByName("MovieClip_StarLeft") as §_-AG§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-nq§.getItemByName("MovieClip_StarLeft") as §_-AG§).x + (§_-nq§.getItemByName("Container_LevelEndStripe") as §_-Up§).x;
            _loc3_ = (§_-nq§.getItemByName("MovieClip_StarLeft") as §_-AG§).y + (§_-nq§.getItemByName("Container_LevelEndStripe") as §_-Up§).y;
            this.§_-9X§ = new §_-80§(§_-WX§.§_-I0§,§_-WX§.§_-ZV§,_loc2_,_loc3_,§_-80§.§_-9R§);
            §_-nq§.addChild(this.§_-9X§);
            this.§_-cY§.push(this.§_-9X§);
         }
         else if(this.§_-IY§.getValue() >= _loc5_ && (§_-nq§.getItemByName("MovieClip_StarCenter") as §_-AG§).mClip.currentLabel == "UnLit")
         {
            §_-Wo§.§_-qF§(§_-fp§);
            §_-Wo§.playSound("Hiscore_Star_Splash2",§_-fp§);
            (§_-nq§.getItemByName("MovieClip_StarCenter") as §_-AG§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-nq§.getItemByName("MovieClip_StarCenter") as §_-AG§).x + (§_-nq§.getItemByName("Container_LevelEndStripe") as §_-Up§).x;
            _loc3_ = (§_-nq§.getItemByName("MovieClip_StarCenter") as §_-AG§).y + (§_-nq§.getItemByName("Container_LevelEndStripe") as §_-Up§).y;
            this.§_-9X§ = new §_-80§(§_-WX§.§_-I0§,§_-WX§.§_-ZV§,_loc2_,_loc3_,§_-80§.§_-GQ§);
            §_-nq§.addChild(this.§_-9X§);
            this.§_-cY§.push(this.§_-9X§);
         }
         else if(this.§_-IY§.getValue() >= _loc4_ && (§_-nq§.getItemByName("MovieClip_StarRight") as §_-AG§).mClip.currentLabel == "UnLit")
         {
            §_-Wo§.§_-qF§(§_-fp§);
            §_-Wo§.playSound("Hiscore_Star_Splash3",§_-fp§);
            (§_-nq§.getItemByName("MovieClip_StarRight") as §_-AG§).mClip.gotoAndStop("Lit");
            _loc2_ = (§_-nq§.getItemByName("MovieClip_StarRight") as §_-AG§).x + (§_-nq§.getItemByName("Container_LevelEndStripe") as §_-Up§).x;
            _loc3_ = (§_-nq§.getItemByName("MovieClip_StarRight") as §_-AG§).y + (§_-nq§.getItemByName("Container_LevelEndStripe") as §_-Up§).y;
            this.§_-9X§ = new §_-80§(§_-WX§.§_-I0§,§_-WX§.§_-ZV§,_loc2_,_loc3_,§_-80§.§_-rj§);
            §_-nq§.addChild(this.§_-9X§);
            this.§_-cY§.push(this.§_-9X§);
         }
         else if(!this.§_-Tn§)
         {
            this.§_-Tn§ = true;
         }
         else
         {
            this.§_-tZ§.stop();
            if(this.§_-WG§)
            {
               (§_-nq§.getItemByName("MovieClip_NewHighScoreBadge") as §_-AG§).setVisibility(true);
            }
            else
            {
               (§_-nq§.getItemByName("MovieClip_NewHighScoreBadge") as §_-AG§).setVisibility(false);
            }
            this.§_-hM§ = §_-db§.§_-yU§.§_-mZ§((§_-nq§.getItemByName("MovieClip_NewHighScoreBadge") as §_-AG§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§_-hM§.onComplete = this.§_-sP§;
            this.§_-hM§.play();
         }
         ++this.§_-9S§;
      }
      
      private function §_-6z§() : void
      {
         §_-Wo§.§_-qF§(§_-Va§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§_-80§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-uz§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§_-00Q§();
         §_-nq§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §_-nq§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§_-cY§)
         {
            _loc3_.update(param1);
         }
         if(this.§_-df§ > 0)
         {
            this.§_-YN§(param1);
         }
         if(mNextState.length > 0)
         {
            return §_-uz§.STATE_STATUS_COMPLETED;
         }
         return §_-uz§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-I1§.§_-Hi§(0);
         this.§_-7M§();
         this.§_-df§ = 0;
         §_-Wo§.§_-qF§(§_-Va§);
         (§_-nq§.getItemByName("Button_Menu") as §_-hf§).setComponentVisualState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§_-nq§.getItemByName("Button_Replay") as §_-hf§).setComponentVisualState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§_-nq§.getItemByName("Button_CutScene") as §_-hf§).setVisibility(true);
         (§_-nq§.getItemByName("Button_Claim_Prize") as §_-hf§).setComponentVisualState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §_-nq§.setText("0","TextField_LevelEndScore");
         §_-nq§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §_-7M§() : void
      {
         var _loc1_:§_-80§ = null;
         if(this.§_-tZ§)
         {
            this.§_-tZ§.stop();
            this.§_-tZ§.removeEventListener(TimerEvent.TIMER,this.§_-z3§);
         }
         for each(_loc1_ in this.§_-cY§)
         {
            if(§_-nq§.contains(_loc1_))
            {
               §_-nq§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§_-cY§ = new Vector.<§_-80§>();
         (§_-nq§.getItemByName("TextField_BestScore") as §_-MT§).setVisibility(false);
         (§_-nq§.getItemByName("MovieClip_BestScoreStars") as §_-AG§).setVisibility(false);
         (§_-nq§.getItemByName("TextField_NewHighScore") as §_-MT§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-VR§) : void
      {
         var checkBoxComponent:§_-8n§ = null;
         var claimPrizeButton:§_-hf§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§_-VR§ = param3;
         switch(eventName)
         {
            case "NEXT_LEVEL":
               if((§_-0X§.§_-O2§ as §_-TN§).§_-dx§() && !§_-Mm§.§_-xG§())
               {
                  if(!§_-SW§.sCheetosPopups.showPopup(§_-Zr§.§_-f6§))
                  {
                     this.§_-Ad§();
                     break;
                  }
                  break;
               }
               this.§_-Ad§();
               break;
            case "REPLAY":
               if((§_-0X§.§_-O2§ as §_-TN§).§_-dx§())
               {
                  if(!§_-SW§.sCheetosPopups.showPopup(§_-Zr§.RESTART_LEVEL))
                  {
                     this.§_-s1§();
                     break;
                  }
                  break;
               }
               this.§_-s1§();
               break;
            case "MENU":
               this.§_-qU§();
               break;
            case "BUTTON_NO":
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.§_-f6§)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.§_-el§)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               break;
            case "BUTTON_YES":
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.RESTART_LEVEL)
               {
                  this.§_-s1§();
                  break;
               }
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.§_-f6§)
               {
                  this.§_-Ad§();
                  break;
               }
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.§_-el§)
               {
                  this.§_-qU§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §_-8n§;
               §_-WX§.§_-nw§.§_-gf§ = !§_-WX§.§_-nw§.§_-gf§;
               if(§_-WX§.§_-nw§.§_-gf§)
               {
                  checkBoxComponent.setComponentState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§_-8n§.§_-qC§);
               break;
            case "CLAIM_PRIZE":
               try
               {
                  §_-3Q§.§_-st§("claimPrize",§_-Iv§.userPrizeId);
               }
               catch(e:Error)
               {
               }
               finally
               {
                  claimPrizeButton = §_-nq§.getItemByName("Button_Claim_Prize") as §_-hf§;
                  claimPrizeButton.setComponentState(§_-8n§.§_-qC§);
                  claimPrizeButton.setEnabled(false);
               }
         }
      }
      
      private function §_-00Q§() : void
      {
         var _loc1_:§_-hf§ = §_-nq§.getItemByName("Button_Replay") as §_-hf§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§_-hf§ = §_-nq§.getItemByName("Button_Next") as §_-hf§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§_-hf§ = §_-nq§.getItemByName("Button_Menu") as §_-hf§;
         var _loc6_:§_-hf§ = §_-nq§.getItemByName("Button_Claim_Prize") as §_-hf§;
         if(§_-Iv§.hasWonPrize)
         {
            _loc6_.visible = true;
         }
         else
         {
            _loc6_.visible = false;
         }
         if((§_-0X§.§_-O2§ as §_-TN§).§_-dx§())
         {
            _loc2_.visible = true;
            if(§_-Mm§.§_-Kw§ == null)
            {
               _loc4_.visible = false;
            }
            else
            {
               _loc4_.visible = !§_-Mm§.§_-xG§();
            }
         }
         else
         {
            _loc2_.visible = false;
            _loc4_.visible = false;
         }
      }
      
      private function §_-s1§() : void
      {
         §_-SA§.§_-FK§();
         mNextState = §_-SA§.§_-3o§;
      }
      
      private function §_-Ad§() : void
      {
         §_-SA§.§_-7t§();
         mNextState = StateCutScene.§_-3o§;
      }
      
      private function §_-qU§() : void
      {
         mNextState = §_-0N§.§_-3o§;
      }
   }
}
