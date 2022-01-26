package §_-fg§
{
   import §_-05§.§ do§;
   import §_-2r§.§_-Qo§;
   import §_-2r§.§_-fU§;
   import §_-3N§.§_-Dp§;
   import §_-9J§.§_-DA§;
   import §_-9J§.§_-xD§;
   import §_-ES§.§_-Ng§;
   import §_-Py§.§_-eK§;
   import §_-T8§.§_-Sa§;
   import §_-U0§.§_-M9§;
   import §_-aX§.§_-DY§;
   import §_-bw§.§_-zb§;
   import §_-cb§.§_-0B§;
   import §_-gC§.§_-XR§;
   import §_-q1§.§_-LA§;
   import §_-q1§.§_-Sn§;
   import §_-q1§.§_-VA§;
   import §_-q6§.§_-Iy§;
   import §_-q6§.§_-ZW§;
   import §_-uG§.§_-Eu§;
   import §_-uG§.§_-uL§;
   import §_-vB§.§_-Kk§;
   import §_-wO§.§_-e9§;
   import §_-zM§.§_-1v§;
   import §_-zM§.§_-kL§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   
   public class StatePlay extends §_-AG§ implements §_-LA§
   {
      
      public static const §_-bg§:String = "StatePlay";
      
      private static const §_-eo§:Number = -10 * 1000;
      
      private static const §_-oI§:Number = 15 * 1000;
      
      private static const §_-9V§:int = 0;
       
      
      private var §_-sH§:Boolean = true;
      
      private var §_-VY§:Boolean = false;
      
      private var §_-z1§:Number = -10000.0;
      
      private var §_-Ar§:int = 0;
      
      private var §_-DB§:Boolean;
      
      private var callObject:Object;
      
      private var §_-xB§:Boolean = false;
      
      private var §_-tM§:Number;
      
      private var §_-0l§:Number;
      
      private var §_-0-r§:Boolean = true;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Lb§ = new §_-ZW§(this);
         §_-Lb§.init(§_-Iy§.§_-y-§.Views.View_LevelPlay[0]);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         §_-Dp§.addCallback("navigationAttempt",this.§_-6E§);
      }
      
      private function §_-6E§(param1:String) : void
      {
         §_-zb§.§_-Xg§ = param1;
         if(§_-Vc§.§_-qI§.§_-kK§() != null && §_-Vc§.§_-qI§.§_-kK§() == StatePlay.§_-bg§)
         {
            §_-cN§.sCheetosPopups.showPopup(§_-1v§.CONFIRM_LEAVE,§_-Sn§.getText("Popup_Confirm_Leave"));
         }
      }
      
      private function navigationConfirmed() : void
      {
         try
         {
            §_-Dp§.§_-JB§("navigationConfirmed",§_-zb§.§_-Xg§);
            §_-cN§.sCheetosPopups.hidePopup();
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §_-XR§.§_-Tr§();
         this.§_-qS§();
         §_-0B§.§_-ws§();
         §_-e9§.§_-k§(§_-e9§.§_-od§,§_-Sa§.§_-LZ§);
         this.§_-DB§ = false;
         §_-0B§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §_-zb§.§_-6r§(§_-Sa§.§_-LZ§).numberOfBirdsShot = §_-XR§.§_-Xv§.slingshot.§_-G§();
         this.§_-tM§ = new Date().time;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-Kk§.§_-NR§)
         {
            §_-Kk§.§_-NR§.start();
         }
         this.§_-ie§();
         §_-Lb§.setText(§_-Sn§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
         §_-Lb§.setText(§_-Sn§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
         §_-Lb§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         §_-Lb§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§_-xB§ = false;
         this.§_-NI§();
         this.§_-MB§();
         this.§_-0-r§ = true;
      }
      
      override public function deActivate() : void
      {
         §_-Dp§.§_-Zc§("navigationAttempt",this.§_-6E§);
         super.deActivate();
         this.§_-m7§();
         this.§_-MB§();
      }
      
      private function §_-m7§() : void
      {
         var _loc1_:int = 0;
         if(!this.§_-VY§)
         {
            if(this.§_-z1§ > §_-oI§)
            {
               this.§_-VY§ = true;
               _loc1_ = Math.round(1000 / this.§_-z1§ * this.§_-Ar§);
               if(§_-Kk§.§_-GU§)
               {
                  §_-e9§.§_-k§(§_-e9§.§_-Oo§,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §_-e9§.§_-k§(§_-e9§.§_-iV§,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §_-9F§(param1:Number) : void
      {
         this.§_-z1§ += param1;
         if(this.§_-z1§ > 0)
         {
            ++this.§_-Ar§;
         }
      }
      
      private function §_-MB§() : void
      {
         this.§_-z1§ = §_-eo§;
         this.§_-Ar§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§_-0-r§)
         {
            §_-kL§.§_-90§(§_-Lb§);
         }
         if(§_-kL§.§_-PV§)
         {
            return 0;
         }
         if(§_-XR§.§_-xg§)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-eK§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§_-9F§(param1);
         this.§_-ie§();
         var _loc3_:§_-Ng§ = §_-Lb§.getItemByName("Button_LaunchCheetos") as §_-Ng§;
         if(§_-XR§.§_-Xv§.slingshot.mSlingShotState == §_-Qo§.§_-oS§ && !this.§_-DB§ && (§_-zb§.credits > 0 || !(§_-XR§.§_-Xv§ as §_-Eu§).§_-cj§()))
         {
            _loc3_.setComponentState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc3_.setComponentState(§_-DA§.§_-La§);
         }
         if(mNextState.length > 0)
         {
            return §_-eK§.STATE_STATUS_COMPLETED;
         }
         if(§_-XR§.§_-Xv§.slingshot.mSlingShotState == §_-Qo§.§_-vR§)
         {
            (§_-XR§.§_-Xv§.slingshot as §_-uL§).§_-Pf§();
         }
         return §_-eK§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:String = §_-Sa§.§_-LZ§;
         var _loc2_:Object = §_-zb§.§_-6r§(§_-Sa§.§_-LZ§);
         var _loc3_:int = §_-D9§.getScore();
         var _loc4_:int = §_-Sa§.§_-1o§(_loc1_,_loc3_);
         var _loc5_:Number = new Date().time;
         _loc2_.userId = §_-zb§.§_-0Y§.name;
         _loc2_.levelId = _loc1_;
         _loc2_.score = _loc3_;
         _loc2_.stars = _loc4_;
         _loc2_.blocks = §_-fU§.§_-rb§();
         _loc2_.gameplay = §_-XR§.§_-Xv§.§_-cs§().toString();
         _loc2_.numberOfBirdsShot = (_loc2_.numberOfBirdsShot as Number) - §_-XR§.§_-Xv§.slingshot.§_-G§();
         _loc2_.time = _loc5_ - this.§_-tM§;
         _loc2_.sessionId = § do§.§_-Ne§();
         _loc2_.userLevelId = §_-zb§.userLevelId;
         _loc2_.security = § do§.§_-30§(_loc2_);
         this.callObject = {
            "type":§ do§.§_-w9§,
            "sessionID":_loc2_.sessionId,
            "userID":_loc2_.userId,
            "levelID":_loc2_.levelId,
            "score":_loc2_.score,
            "blocks":_loc2_.blocks,
            "security":_loc2_.security,
            "time":_loc2_.time,
            "gameplay":_loc2_.gameplay,
            "numberOfBirdsShot":_loc2_.numberOfBirdsShot,
            "userLevelID":_loc2_.userLevelId
         };
         var _loc6_:§ do§ = new § do§(this.callObject,§_-Vc§.§_-2s§,this,§ do§.§_-rq§);
         §_-e9§.§_-k§(§_-e9§.§_-Md§,§_-Sa§.§_-LZ§);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var levelProfile:Object = null;
         var securityPurchasePowerUp:String = null;
         var credits:int = 0;
         var e:Event = param1;
         try
         {
            returnObject = §_-VA§.§_-ji§((e.currentTarget as URLLoader).data);
            if(returnObject.error)
            {
               switch(returnObject.error.code)
               {
                  case §_-aZ§:
                     §_-Vc§.§_-qI§.§_-to§(§_-Pw§.§_-bg§);
                     §_-cN§.sCheetosPopups.showPopup(§_-1v§.NO_CREDIT,"NO_CREDIT");
                     break;
                  case §_-rC§:
                     §_-Vc§.§_-qI§.§_-to§(§_-Pw§.§_-bg§);
                     §_-cN§.sCheetosPopups.showPopup(§_-1v§.ERROR,§_-Sn§.getText("Popup_Session_Expired"));
                     break;
                  default:
                     this.§_-7I§(returnObject.error.message + " Code:" + returnObject.error.code);
               }
               return;
            }
            if(this.callObject.type != null)
            {
               switch(this.callObject.type)
               {
                  case § do§.§_-w9§:
                     try
                     {
                        if(returnObject.hasWonPrize)
                        {
                           §_-zb§.hasWonPrize = returnObject.hasWonPrize;
                        }
                        else
                        {
                           §_-zb§.hasWonPrize = false;
                        }
                        if(returnObject.userPrizeId)
                        {
                           §_-zb§.userPrizeId = returnObject.userPrizeId;
                        }
                        else
                        {
                           §_-zb§.userPrizeId = null;
                        }
                        §_-Dp§.§_-JB§("levelComplete",§_-Sa§.§_-LZ§,true);
                        §_-zb§.§_-0-U§(§_-Sa§.§_-TD§());
                     }
                     catch(e:Error)
                     {
                        §_-7I§(e);
                     }
                     break;
                  case § do§.§_-wA§:
                     levelProfile = §_-zb§.§_-6r§(§_-Sa§.§_-LZ§);
                     securityPurchasePowerUp = § do§.§_-QU§(returnObject.userID,returnObject.credits,this.§_-0l§);
                     if(returnObject.security)
                     {
                        if(securityPurchasePowerUp.toUpperCase() == returnObject.security.toUpperCase())
                        {
                           if(returnObject.credits < §_-9V§)
                           {
                              §_-Vc§.§_-qI§.§_-to§(§_-Pw§.§_-bg§);
                              §_-cN§.sCheetosPopups.showPopup(§_-1v§.NO_CREDIT,"NO_CREDIT");
                           }
                           else
                           {
                              this.§_-cy§();
                           }
                        }
                     }
                     break;
                  case § do§.§_-uo§:
                     try
                     {
                        §_-Dp§.§_-JB§("levelStart",§_-Sa§.§_-LZ§);
                     }
                     catch(e:Error)
                     {
                        §_-7I§(e);
                     }
                     if(returnObject.userLevelID)
                     {
                        §_-zb§.userLevelId = returnObject.userLevelID;
                     }
                     try
                     {
                        credits = returnObject.credits as int;
                        §_-zb§.credits = credits;
                     }
                     catch(e:Error)
                     {
                     }
                     if(returnObject != null && returnObject.spotPrize != null && returnObject.spotPrize && returnObject.credits >= §_-9V§)
                     {
                        this.§_-xB§ = ((§_-XR§.§_-Xv§ as §_-Eu§).§_-VX§ as §_-DY§).§_-6U§();
                        if(!§_-kL§.§_-PV§ && this.§_-xB§)
                        {
                           §_-cN§.sCheetosPopups.showPopup(§_-1v§.SPOT_PRIZE_AVAILABLE,"SPOT_PRIZE_AVAILABLE");
                        }
                     }
                     else if(returnObject.credits >= §_-9V§)
                     {
                        ((§_-XR§.§_-Xv§ as §_-Eu§).§_-VX§ as §_-DY§).§_-EA§();
                     }
                     else if(returnObject.credits < §_-9V§)
                     {
                        §_-Vc§.§_-qI§.§_-to§(§_-Pw§.§_-bg§);
                        §_-cN§.sCheetosPopups.showPopup(§_-1v§.NO_CREDIT,"NO_CREDIT");
                     }
               }
            }
         }
         catch(e:Error)
         {
         }
         super.onComplete(e);
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         §_-Vc§.§_-qI§.§_-to§(§_-Pw§.§_-bg§);
         §_-cN§.sCheetosPopups.showPopup(§_-1v§.ERROR,§_-Sn§.getText("Error"));
      }
      
      private function §_-7I§(param1:*) : void
      {
         §_-Vc§.§_-qI§.§_-to§(§_-Pw§.§_-bg§);
         §_-cN§.sCheetosPopups.showPopup(§_-1v§.ERROR,§_-Sn§.getText("Error"));
      }
      
      override public function getVictoryState() : String
      {
         return §_-fi§.§_-bg§;
      }
      
      override public function getLoserState() : String
      {
         return §_-7o§.§_-bg§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-xD§) : void
      {
         var checkBoxComponent:§_-DA§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§_-xD§ = param3;
         if(component is §_-Ng§)
         {
            if(eventIndex == §_-xD§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §_-M9§.§_-5K§();
            }
            else if(eventIndex == §_-xD§.LISTENER_EVENT_MOUSE_UP)
            {
               §_-M9§.§_-RI§();
            }
         }
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               §_-kL§.§_-Lr§();
               if(!§_-kL§.§_-PV§ && this.§_-xB§)
               {
                  §_-cN§.sCheetosPopups.showPopup(§_-1v§.SPOT_PRIZE_AVAILABLE,"SPOT_PRIZE_AVAILABLE");
                  this.§_-xB§ = false;
                  break;
               }
               break;
            case "PAUSE":
               mNextState = §_-Xa§.§_-bg§;
               break;
            case "RESTART_LEVEL":
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
            case "CONTINUE":
               sCheetosPopups.hidePopup();
               break;
            case "LAUNCH_CHEETOS":
               if((§_-XR§.§_-Xv§ as §_-Eu§).§_-cj§())
               {
                  if(!§_-cN§.sCheetosPopups.showPopup(§_-1v§.§_-it§))
                  {
                     this.§_-Th§();
                     break;
                  }
                  break;
               }
               this.§_-Th§();
               break;
            case "ZOOM_IN":
               §_-D9§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §_-D9§.doUserZoom(false);
               break;
            case "BUTTON_NO":
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.§_-it§)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.CONFIRM_LEAVE)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               break;
            case "BUTTON_YES":
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.§_-it§)
               {
                  this.§_-Th§();
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.RESTART_LEVEL)
               {
                  this.§_-9M§();
                  break;
               }
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.CONFIRM_LEAVE)
               {
                  this.navigationConfirmed();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §_-DA§;
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.§_-it§)
               {
                  §_-Vc§.§_-qI§.§_-8n§ = !§_-Vc§.§_-qI§.§_-8n§;
                  if(§_-Vc§.§_-qI§.§_-8n§)
                  {
                     checkBoxComponent.setComponentState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     break;
                  }
                  checkBoxComponent.setComponentState(§_-DA§.§_-MR§);
                  break;
               }
               §_-Vc§.§_-qI§.§_-rL§ = !§_-Vc§.§_-qI§.§_-rL§;
               if(§_-Vc§.§_-qI§.§_-rL§)
               {
                  checkBoxComponent.setComponentState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§_-DA§.§_-MR§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §_-Dp§.§_-JB§("addCredits");
                  sCheetosPopups.hidePopup();
                  break;
               }
               catch(e:Error)
               {
                  break;
               }
               break;
            case "CONFIRM_LEAVE":
               try
               {
                  this.navigationConfirmed();
                  break;
               }
               catch(e:Error)
               {
                  break;
               }
         }
      }
      
      private function §_-Th§() : void
      {
         if(!this.§_-DB§)
         {
            if((§_-XR§.§_-Xv§ as §_-Eu§).§_-cj§())
            {
               §_-XR§.§_-Tr§();
               this.§_-pO§();
            }
            else
            {
               this.§_-cy§();
            }
         }
      }
      
      private function §_-cy§() : void
      {
         this.§_-DB§ = true;
         (§_-XR§.§_-Xv§ as §_-Eu§).§_-pK§();
         (§_-XR§.§_-Xv§.slingshot as §_-uL§).§_-cy§();
         §_-XR§.§_-Xv§.camera.goToBirdView();
         §_-kL§.§_-90§(§_-Lb§);
      }
      
      private function §_-9M§() : void
      {
         §_-V0§.§_-70§();
         mNextState = §_-V0§.§_-bg§;
      }
      
      private function §_-ie§() : void
      {
         var _loc1_:int = §_-D9§.getScore();
         §_-Lb§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §_-Vc§.§_-3K§.§_-GE§(§_-Sa§.§_-LZ§);
         §_-Lb§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      private function §_-qS§() : void
      {
         this.callObject = {
            "type":§ do§.§_-uo§,
            "sessionID":§ do§.§_-Ne§(),
            "userID":§_-zb§.§_-0Y§.name,
            "levelId":§_-Sa§.§_-LZ§
         };
         new § do§(this.callObject,§_-Vc§.§_-uo§,this,§ do§.§_-rq§);
      }
      
      private function §_-pO§() : void
      {
         this.§_-0l§ = new Date().time;
         this.callObject = {
            "type":§ do§.§_-wA§,
            "sessionID":§ do§.§_-Ne§(),
            "userID":§_-zb§.§_-0Y§.name,
            "purchaseTime":this.§_-0l§
         };
         new § do§(this.callObject,§_-Vc§.§_-wA§,this,§ do§.§_-rq§);
      }
      
      private function §_-NI§() : void
      {
         var _loc1_:§_-Ng§ = §_-Lb§.getItemByName("Button_LaunchCheetos") as §_-Ng§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§_-XR§.§_-Xv§ as §_-Eu§).§_-cj§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
   }
}
