package §_-ob§
{
   import §_-94§.§_-si§;
   import §_-A§.§_-KQ§;
   import §_-A§.§_-YT§;
   import §_-D9§.§_-89§;
   import §_-Kz§.§_-bv§;
   import §_-Kz§.§_-hD§;
   import §_-M6§.§_-Qg§;
   import §_-MP§.§_-N5§;
   import §_-Me§.§_-3A§;
   import §_-Ul§.§_-FD§;
   import §_-Ul§.§_-M5§;
   import §_-Ul§.§_-u-§;
   import §_-VH§.§_-X6§;
   import §_-Ye§.§_-cP§;
   import §_-aA§.§_-HE§;
   import §_-ab§.§_-q4§;
   import §_-fp§.§_-W9§;
   import §_-fp§.§_-cN§;
   import §_-gE§.§_-Tb§;
   import §_-hJ§.§_-5j§;
   import §_-hJ§.§_-mm§;
   import §_-l-§.§_-pI§;
   import §_-sj§.§_-qs§;
   import §_-w8§.§_-Jg§;
   import §_-w8§.§_-S6§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   
   public class StatePlay extends §_-VY§ implements §_-u-§
   {
      
      public static const §_-jn§:String = "StatePlay";
      
      private static const §_-dB§:Number = -10 * 1000;
      
      private static const §_-vN§:Number = 15 * 1000;
      
      private static const §_-cw§:int = 0;
      
      private static const §_-Tr§:int = 3;
       
      
      private var §_-Dy§:Boolean = true;
      
      private var §_-rc§:Boolean = false;
      
      private var §in §:Number = -10000.0;
      
      private var §_-zq§:int = 0;
      
      private var §_-m2§:Boolean;
      
      private var callObject:Object;
      
      private var §_-iJ§:Boolean = false;
      
      private var §_-My§:Number;
      
      private var §_-0r§:Number;
      
      private var §_-1S§:Boolean = true;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-x2§ = new §_-S6§(this);
         §_-x2§.init(§_-Jg§.§_-E§.Views.View_LevelPlay[0]);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         §_-Qg§.addCallback("navigationAttempt",this.§_-mn§);
      }
      
      private function §_-mn§(param1:String) : void
      {
         §_-Tb§.§_-MR§ = param1;
         if(§_-rs§.§_-hd§.§_-xC§() != null && §_-rs§.§_-hd§.§_-xC§() == StatePlay.§_-jn§)
         {
            §_-xw§.sCheetosPopups.showPopup(§_-5j§.CONFIRM_LEAVE,§_-FD§.getText("Popup_Confirm_Leave"));
         }
      }
      
      private function navigationConfirmed() : void
      {
         try
         {
            §_-Qg§.§_-No§("navigationConfirmed",§_-Tb§.§_-MR§);
            §_-xw§.sCheetosPopups.hidePopup();
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §_-si§.§_-Xb§();
         this.§_-6m§();
         §_-X6§.§_-bm§();
         §_-3A§.§_-me§(§_-3A§.§_-Gi§,§_-N5§.§_-sI§);
         this.§_-m2§ = false;
         §_-X6§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §_-Tb§.§_-mw§(§_-N5§.§_-sI§).numberOfBirdsShot = §_-si§.§_-HI§.slingshot.§_-Lt§();
         this.§_-My§ = new Date().time;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-cP§.§_-004§)
         {
            §_-cP§.§_-004§.start();
         }
         this.§_-2J§();
         §_-x2§.setText(§_-FD§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
         §_-x2§.setText(§_-FD§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
         §_-x2§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         §_-x2§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§_-iJ§ = false;
         this.§_-BO§();
         this.§_-b0§();
         this.§_-1S§ = true;
      }
      
      override public function deActivate() : void
      {
         §_-Qg§.§_-p2§("navigationAttempt",this.§_-mn§);
         super.deActivate();
         this.§_-5s§();
         this.§_-b0§();
      }
      
      private function §_-5s§() : void
      {
         var _loc1_:int = 0;
         if(!this.§_-rc§)
         {
            if(this.§in § > §_-vN§)
            {
               this.§_-rc§ = true;
               _loc1_ = Math.round(1000 / this.§in § * this.§_-zq§);
               if(§_-cP§.§_-PM§)
               {
                  §_-3A§.§_-me§(§_-3A§.§_-Zm§,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §_-3A§.§_-me§(§_-3A§.§_-Qo§,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §_-HC§(param1:Number) : void
      {
         this.§in § += param1;
         if(this.§in § > 0)
         {
            ++this.§_-zq§;
         }
      }
      
      private function §_-b0§() : void
      {
         this.§in § = §_-dB§;
         this.§_-zq§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§_-1S§)
         {
            §_-mm§.§_-B7§(§_-x2§);
         }
         if(§_-mm§.§_-Vc§)
         {
            return 0;
         }
         if(§_-si§.§_-Zn§)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-qs§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§_-HC§(param1);
         this.§_-2J§();
         var _loc3_:§_-q4§ = §_-x2§.getItemByName("Button_LaunchCheetos") as §_-q4§;
         if(§_-si§.§_-HI§.slingshot.mSlingShotState == §_-hD§.§_-Ez§ && !this.§_-m2§ && (§_-Tb§.credits >= §_-Tr§ || !(§_-si§.§_-HI§ as §_-W9§).§_-k4§()))
         {
            _loc3_.setComponentState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc3_.setComponentState(§_-YT§.§_-39§);
         }
         if(mNextState.length > 0)
         {
            return §_-qs§.STATE_STATUS_COMPLETED;
         }
         if(§_-si§.§_-HI§.slingshot.mSlingShotState == §_-hD§.§_-Vv§)
         {
            (§_-si§.§_-HI§.slingshot as §_-cN§).§_-b§();
         }
         return §_-qs§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:String = §_-N5§.§_-sI§;
         var _loc2_:Object = §_-Tb§.§_-mw§(§_-N5§.§_-sI§);
         var _loc3_:int = §_-ij§.getScore();
         var _loc4_:int = §_-N5§.§_-9k§(_loc1_,_loc3_);
         var _loc5_:Number = new Date().time;
         _loc2_.userId = §_-Tb§.§_-Bw§.name;
         _loc2_.levelId = _loc1_;
         _loc2_.score = _loc3_;
         _loc2_.stars = _loc4_;
         _loc2_.blocks = §_-bv§.§_-dh§();
         _loc2_.gameplay = §_-si§.§_-HI§.§_-zg§().toString();
         _loc2_.numberOfBirdsShot = (_loc2_.numberOfBirdsShot as Number) - §_-si§.§_-HI§.slingshot.§_-Lt§();
         _loc2_.time = _loc5_ - this.§_-My§;
         _loc2_.sessionId = §_-pI§.§_-o6§();
         _loc2_.userLevelId = §_-Tb§.userLevelId;
         _loc2_.security = §_-pI§.§_-km§(_loc2_);
         this.callObject = {
            "type":§_-pI§.§_-fD§,
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
         var _loc6_:§_-pI§ = new §_-pI§(this.callObject,§_-rs§.§_-ED§,this,§_-pI§.§package§);
         §_-3A§.§_-me§(§_-3A§.§_-0-v§,§_-N5§.§_-sI§);
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
            returnObject = §_-M5§.§_-uI§((e.currentTarget as URLLoader).data);
            if(returnObject.error)
            {
               switch(returnObject.error.code)
               {
                  case §_-JO§:
                     §_-rs§.§_-hd§.§_-k7§(§_-qP§.§_-jn§);
                     §_-xw§.sCheetosPopups.showPopup(§_-5j§.NO_CREDIT,"NO_CREDIT");
                     break;
                  case §_-u0§:
                     §_-rs§.§_-hd§.§_-k7§(§_-qP§.§_-jn§);
                     §_-xw§.sCheetosPopups.showPopup(§_-5j§.ERROR,§_-FD§.getText("Popup_Session_Expired"));
                     break;
                  default:
                     this.§_-0-R§(returnObject.error.message + " Code:" + returnObject.error.code);
               }
               return;
            }
            if(this.callObject.type != null)
            {
               switch(this.callObject.type)
               {
                  case §_-pI§.§_-fD§:
                     try
                     {
                        if(returnObject.hasWonPrize)
                        {
                           §_-Tb§.hasWonPrize = returnObject.hasWonPrize;
                        }
                        else
                        {
                           §_-Tb§.hasWonPrize = false;
                        }
                        if(returnObject.userPrizeId)
                        {
                           §_-Tb§.userPrizeId = returnObject.userPrizeId;
                        }
                        else
                        {
                           §_-Tb§.userPrizeId = null;
                        }
                        §_-Qg§.§_-No§("levelComplete",§_-N5§.§_-sI§,true);
                        §_-Tb§.§_-uJ§(§_-N5§.§ in§());
                     }
                     catch(e:Error)
                     {
                        §_-0-R§(e);
                     }
                     break;
                  case §_-pI§.§_-g§:
                     levelProfile = §_-Tb§.§_-mw§(§_-N5§.§_-sI§);
                     securityPurchasePowerUp = §_-pI§.§_-gV§(returnObject.userID,returnObject.credits,this.§_-0r§);
                     if(returnObject.security)
                     {
                        if(securityPurchasePowerUp.toUpperCase() == returnObject.security.toUpperCase())
                        {
                           if(returnObject.credits < §_-cw§)
                           {
                              §_-rs§.§_-hd§.§_-k7§(§_-qP§.§_-jn§);
                              §_-xw§.sCheetosPopups.showPopup(§_-5j§.NO_CREDIT,"NO_CREDIT");
                           }
                           else
                           {
                              this.§_-yr§();
                           }
                        }
                     }
                     break;
                  case §_-pI§.§_-vl§:
                     try
                     {
                        §_-Qg§.§_-No§("levelStart",§_-N5§.§_-sI§);
                     }
                     catch(e:Error)
                     {
                        §_-0-R§(e);
                     }
                     if(returnObject.userLevelID)
                     {
                        §_-Tb§.userLevelId = returnObject.userLevelID;
                     }
                     try
                     {
                        credits = returnObject.credits as int;
                        §_-Tb§.credits = credits;
                     }
                     catch(e:Error)
                     {
                     }
                     if(returnObject != null && returnObject.spotPrize != null && returnObject.spotPrize && returnObject.credits >= §_-cw§)
                     {
                        this.§_-iJ§ = ((§_-si§.§_-HI§ as §_-W9§).§_-QS§ as §_-89§).§_-vQ§();
                        if(!§_-mm§.§_-Vc§ && this.§_-iJ§)
                        {
                           §_-xw§.sCheetosPopups.showPopup(§_-5j§.SPOT_PRIZE_AVAILABLE,"SPOT_PRIZE_AVAILABLE");
                        }
                     }
                     else if(returnObject.credits >= §_-cw§)
                     {
                        ((§_-si§.§_-HI§ as §_-W9§).§_-QS§ as §_-89§).§_-LB§();
                     }
                     else if(returnObject.credits < §_-cw§)
                     {
                        §_-rs§.§_-hd§.§_-k7§(§_-qP§.§_-jn§);
                        §_-xw§.sCheetosPopups.showPopup(§_-5j§.NO_CREDIT,"NO_CREDIT");
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
         §_-rs§.§_-hd§.§_-k7§(§_-qP§.§_-jn§);
         §_-xw§.sCheetosPopups.showPopup(§_-5j§.ERROR,§_-FD§.getText("Error"));
      }
      
      private function §_-0-R§(param1:*) : void
      {
         §_-rs§.§_-hd§.§_-k7§(§_-qP§.§_-jn§);
         §_-xw§.sCheetosPopups.showPopup(§_-5j§.ERROR,§_-FD§.getText("Error"));
      }
      
      override public function getVictoryState() : String
      {
         return §_-7g§.§_-jn§;
      }
      
      override public function getLoserState() : String
      {
         return §_-4Z§.§_-jn§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-KQ§) : void
      {
         var checkBoxComponent:§_-YT§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§_-KQ§ = param3;
         if(component is §_-q4§)
         {
            if(eventIndex == §_-KQ§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §_-HE§.§_-Df§();
            }
            else if(eventIndex == §_-KQ§.LISTENER_EVENT_MOUSE_UP)
            {
               §_-HE§.§_-te§();
            }
         }
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               §_-mm§.§_-S4§();
               if(!§_-mm§.§_-Vc§ && this.§_-iJ§)
               {
                  §_-xw§.sCheetosPopups.showPopup(§_-5j§.SPOT_PRIZE_AVAILABLE,"SPOT_PRIZE_AVAILABLE");
                  this.§_-iJ§ = false;
                  break;
               }
               break;
            case "PAUSE":
               mNextState = §_-ZF§.§_-jn§;
               break;
            case "RESTART_LEVEL":
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
            case "CONTINUE":
               sCheetosPopups.hidePopup();
               break;
            case "LAUNCH_CHEETOS":
               if((§_-si§.§_-HI§ as §_-W9§).§_-k4§())
               {
                  if(!§_-xw§.sCheetosPopups.showPopup(§_-5j§.§_-gH§))
                  {
                     this.§_-Y0§();
                     break;
                  }
                  break;
               }
               this.§_-Y0§();
               break;
            case "ZOOM_IN":
               §_-ij§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §_-ij§.doUserZoom(false);
               break;
            case "BUTTON_NO":
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.§_-gH§)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.CONFIRM_LEAVE)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               break;
            case "BUTTON_YES":
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.§_-gH§)
               {
                  this.§_-Y0§();
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.RESTART_LEVEL)
               {
                  this.§_-MH§();
                  break;
               }
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.CONFIRM_LEAVE)
               {
                  this.navigationConfirmed();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §_-YT§;
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.§_-gH§)
               {
                  §_-rs§.§_-hd§.§_-ZI§ = !§_-rs§.§_-hd§.§_-ZI§;
                  if(§_-rs§.§_-hd§.§_-ZI§)
                  {
                     checkBoxComponent.setComponentState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     break;
                  }
                  checkBoxComponent.setComponentState(§_-YT§.§_-c7§);
                  break;
               }
               §_-rs§.§_-hd§.§_-2D§ = !§_-rs§.§_-hd§.§_-2D§;
               if(§_-rs§.§_-hd§.§_-2D§)
               {
                  checkBoxComponent.setComponentState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§_-YT§.§_-c7§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §_-Qg§.§_-No§("addCredits");
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
      
      private function §_-Y0§() : void
      {
         if(!this.§_-m2§)
         {
            if((§_-si§.§_-HI§ as §_-W9§).§_-k4§())
            {
               §_-si§.§_-Xb§();
               this.§_-dX§();
            }
            else
            {
               this.§_-yr§();
            }
         }
      }
      
      private function §_-yr§() : void
      {
         this.§_-m2§ = true;
         (§_-si§.§_-HI§ as §_-W9§).§_-Gr§();
         (§_-si§.§_-HI§.slingshot as §_-cN§).§_-yr§();
         §_-si§.§_-HI§.camera.goToBirdView();
         §_-mm§.§_-B7§(§_-x2§);
      }
      
      private function §_-MH§() : void
      {
         §_-0-n§.§_-5P§();
         mNextState = §_-0-n§.§_-jn§;
      }
      
      private function §_-2J§() : void
      {
         var _loc1_:int = §_-ij§.getScore();
         §_-x2§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §_-rs§.§_-Nr§.§_-Ex§(§_-N5§.§_-sI§);
         §_-x2§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      private function §_-6m§() : void
      {
         this.callObject = {
            "type":§_-pI§.§_-vl§,
            "sessionID":§_-pI§.§_-o6§(),
            "userID":§_-Tb§.§_-Bw§.name,
            "levelId":§_-N5§.§_-sI§
         };
         new §_-pI§(this.callObject,§_-rs§.§_-vl§,this,§_-pI§.§package§);
      }
      
      private function §_-dX§() : void
      {
         this.§_-0r§ = new Date().time;
         this.callObject = {
            "type":§_-pI§.§_-g§,
            "sessionID":§_-pI§.§_-o6§(),
            "userID":§_-Tb§.§_-Bw§.name,
            "purchaseTime":this.§_-0r§
         };
         new §_-pI§(this.callObject,§_-rs§.§_-g§,this,§_-pI§.§package§);
      }
      
      private function §_-BO§() : void
      {
         var _loc1_:§_-q4§ = §_-x2§.getItemByName("Button_LaunchCheetos") as §_-q4§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§_-si§.§_-HI§ as §_-W9§).§_-k4§())
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
