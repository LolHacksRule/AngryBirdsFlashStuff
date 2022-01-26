package §_-Xz§
{
   import §_-0-K§.§_-8r§;
   import §_-0-K§.§_-xV§;
   import §_-16§.§_-8n§;
   import §_-16§.§_-VR§;
   import §_-5b§.§_-Mm§;
   import §_-Aq§.§_-TN§;
   import §_-Aq§.§_-oL§;
   import §_-CA§.§_-4-§;
   import §_-E5§.§_-Wo§;
   import §_-EH§.§_-uz§;
   import §_-Eg§.§_-hf§;
   import §_-G§.§_-o5§;
   import §_-Is§.§_-3Q§;
   import §_-KM§.§_-0A§;
   import §_-Q2§.§_-Zr§;
   import §_-Q2§.§_-nx§;
   import §_-TX§.§_-0X§;
   import §_-Y7§.§_-Sg§;
   import §_-Y7§.§_-Y-§;
   import §_-Y7§.§_-d8§;
   import §_-aD§.§_-OS§;
   import §_-kI§.§_-Iv§;
   import §_-r6§.§_-oy§;
   import §_-xL§.§_-1-§;
   import §_-xL§.§_-y9§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   
   public class StatePlay extends §_-Dc§ implements §_-Sg§
   {
      
      public static const §_-3o§:String = "StatePlay";
      
      private static const §_-3Z§:Number = -10 * 1000;
      
      private static const §_-Lo§:Number = 15 * 1000;
      
      private static const §_-8O§:int = 0;
      
      private static const §_-zu§:int = 3;
       
      
      private var §_-VU§:Boolean = true;
      
      private var §_-Eb§:Boolean = false;
      
      private var §_-bk§:Number = -10000.0;
      
      private var §_-RW§:int = 0;
      
      private var §_-f§:Boolean;
      
      private var callObject:Object;
      
      private var §_-SJ§:Boolean = false;
      
      private var §_-90§:Number;
      
      private var §_-uI§:Number;
      
      private var §_-oh§:Boolean = true;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-nq§ = new §_-1-§(this);
         §_-nq§.init(§_-y9§.§_-HN§.Views.View_LevelPlay[0]);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         §_-3Q§.addCallback("navigationAttempt",this.§_-pB§);
      }
      
      private function §_-pB§(param1:String) : void
      {
         var url:String = param1;
         §_-Iv§.§_-s0§ = url;
         if(§_-WX§.§_-nw§.§_-X8§() != null && §_-WX§.§_-nw§.§_-X8§() == StatePlay.§_-3o§)
         {
            §_-SW§.sCheetosPopups.showPopup(§_-Zr§.CONFIRM_LEAVE,§_-Y-§.getText("Popup_Confirm_Leave"));
            try
            {
               §_-nq§.container.setObjectToFront(§_-SW§.sCheetosPopups.container);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private function navigationConfirmed() : void
      {
         try
         {
            §_-3Q§.§_-st§("navigationConfirmed",§_-Iv§.§_-s0§);
            §_-SW§.sCheetosPopups.hidePopup();
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §_-0X§.§_-fc§();
         this.§_-kN§();
         §_-Wo§.§_-EQ§();
         §_-OS§.§_-0-7§(§_-OS§.§_-2c§,§_-Mm§.§_-Kw§);
         this.§_-f§ = false;
         §_-Wo§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §_-Iv§.§_-Xq§(§_-Mm§.§_-Kw§).numberOfBirdsShot = §_-0X§.§_-O2§.slingshot.§_-FE§();
         this.§_-90§ = new Date().time;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-0A§.§_-bz§)
         {
            §_-0A§.§_-bz§.start();
         }
         this.§_-aH§();
         §_-nq§.setText(§_-Y-§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
         §_-nq§.setText(§_-Y-§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
         §_-nq§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         §_-nq§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§_-SJ§ = false;
         this.§_-00Q§();
         this.§_-y8§();
         this.§_-oh§ = true;
      }
      
      override public function deActivate() : void
      {
         §_-3Q§.§_-Mf§("navigationAttempt",this.§_-pB§);
         super.deActivate();
         this.§_-t1§();
         this.§_-y8§();
      }
      
      private function §_-t1§() : void
      {
         var _loc1_:int = 0;
         if(!this.§_-Eb§)
         {
            if(this.§_-bk§ > §_-Lo§)
            {
               this.§_-Eb§ = true;
               _loc1_ = Math.round(1000 / this.§_-bk§ * this.§_-RW§);
               if(§_-0A§.§_-lj§)
               {
                  §_-OS§.§_-0-7§(§_-OS§.§_-3D§,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §_-OS§.§_-0-7§(§_-OS§.§_-mj§,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §_-00Y§(param1:Number) : void
      {
         this.§_-bk§ += param1;
         if(this.§_-bk§ > 0)
         {
            ++this.§_-RW§;
         }
      }
      
      private function §_-y8§() : void
      {
         this.§_-bk§ = §_-3Z§;
         this.§_-RW§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§_-oh§)
         {
            §_-nx§.§_-00F§(§_-nq§);
         }
         if(§_-nx§.§_-MS§)
         {
            return 0;
         }
         if(§_-0X§.§_-QF§)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-uz§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§_-00Y§(param1);
         this.§_-aH§();
         var _loc3_:§_-hf§ = §_-nq§.getItemByName("Button_LaunchCheetos") as §_-hf§;
         if(§_-0X§.§_-O2§.slingshot.mSlingShotState == §_-xV§.§_-BM§ && !this.§_-f§ && (§_-Iv§.credits >= §_-zu§ || !(§_-0X§.§_-O2§ as §_-TN§).§_-dx§()))
         {
            _loc3_.setComponentState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc3_.setComponentState(§_-8n§.§_-uX§);
         }
         if(mNextState.length > 0)
         {
            return §_-uz§.STATE_STATUS_COMPLETED;
         }
         if(§_-0X§.§_-O2§.slingshot.mSlingShotState == §_-xV§.§_-Qo§)
         {
            (§_-0X§.§_-O2§.slingshot as §_-oL§).§_-FM§();
         }
         return §_-uz§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:String = §_-Mm§.§_-Kw§;
         var _loc2_:Object = §_-Iv§.§_-Xq§(§_-Mm§.§_-Kw§);
         var _loc3_:int = §_-g1§.getScore();
         var _loc4_:int = §_-Mm§.§_-Kv§(_loc1_,_loc3_);
         var _loc5_:Number = new Date().time;
         _loc2_.userId = §_-Iv§.§_-r5§.name;
         _loc2_.levelId = _loc1_;
         _loc2_.score = _loc3_;
         _loc2_.stars = _loc4_;
         _loc2_.blocks = §_-8r§.§_-MQ§();
         _loc2_.gameplay = §_-0X§.§_-O2§.§_-BR§().toString();
         _loc2_.numberOfBirdsShot = (_loc2_.numberOfBirdsShot as Number) - §_-0X§.§_-O2§.slingshot.§_-FE§();
         _loc2_.time = _loc5_ - this.§_-90§;
         _loc2_.sessionId = §_-o5§.§_-YD§();
         _loc2_.userLevelId = §_-Iv§.userLevelId;
         _loc2_.security = §_-o5§.§_-oN§(_loc2_);
         this.callObject = {
            "type":§_-o5§.§_-Jh§,
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
         var _loc6_:§_-o5§ = new §_-o5§(this.callObject,§_-WX§.§_-nQ§,this,§_-o5§.§_-oS§);
         §_-OS§.§_-0-7§(§_-OS§.§_-gK§,§_-Mm§.§_-Kw§);
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
            returnObject = §_-d8§.§_-QX§((e.currentTarget as URLLoader).data);
            if(returnObject.error)
            {
               switch(returnObject.error.code)
               {
                  case §_-83§:
                     §_-WX§.§_-nw§.§_-SD§(§_-0N§.§_-3o§);
                     §_-SW§.sCheetosPopups.showPopup(§_-Zr§.NO_CREDIT,"NO_CREDIT");
                     break;
                  case §_-EE§:
                     §_-WX§.§_-nw§.§_-SD§(§_-0N§.§_-3o§);
                     §_-SW§.sCheetosPopups.showPopup(§_-Zr§.ERROR,§_-Y-§.getText("Popup_Session_Expired"));
                     break;
                  default:
                     this.§_-LU§(returnObject.error.message + " Code:" + returnObject.error.code);
               }
               return;
            }
            if(this.callObject.type != null)
            {
               switch(this.callObject.type)
               {
                  case §_-o5§.§_-Jh§:
                     try
                     {
                        if(returnObject.hasWonPrize)
                        {
                           §_-Iv§.hasWonPrize = returnObject.hasWonPrize;
                        }
                        else
                        {
                           §_-Iv§.hasWonPrize = false;
                        }
                        if(returnObject.userPrizeId)
                        {
                           §_-Iv§.userPrizeId = returnObject.userPrizeId;
                        }
                        else
                        {
                           §_-Iv§.userPrizeId = null;
                        }
                        §_-3Q§.§_-st§("levelComplete",§_-Mm§.§_-Kw§,true);
                        §_-Iv§.§_-wU§(§_-Mm§.§_-iM§());
                     }
                     catch(e:Error)
                     {
                        §_-LU§(e);
                     }
                     break;
                  case §_-o5§.§_-x4§:
                     levelProfile = §_-Iv§.§_-Xq§(§_-Mm§.§_-Kw§);
                     securityPurchasePowerUp = §_-o5§.§_-Ye§(returnObject.userID,returnObject.credits,this.§_-uI§);
                     if(returnObject.security)
                     {
                        if(securityPurchasePowerUp.toUpperCase() == returnObject.security.toUpperCase())
                        {
                           if(returnObject.credits < §_-8O§)
                           {
                              §_-WX§.§_-nw§.§_-SD§(§_-0N§.§_-3o§);
                              §_-SW§.sCheetosPopups.showPopup(§_-Zr§.NO_CREDIT,"NO_CREDIT");
                           }
                           else
                           {
                              this.§_-XT§();
                           }
                        }
                     }
                     break;
                  case §_-o5§.§_-Sl§:
                     try
                     {
                        §_-3Q§.§_-st§("levelStart",§_-Mm§.§_-Kw§);
                     }
                     catch(e:Error)
                     {
                        §_-LU§(e);
                     }
                     if(returnObject.userLevelID)
                     {
                        §_-Iv§.userLevelId = returnObject.userLevelID;
                     }
                     try
                     {
                        credits = returnObject.credits as int;
                        §_-Iv§.credits = credits;
                     }
                     catch(e:Error)
                     {
                     }
                     if(returnObject != null && returnObject.spotPrize != null && returnObject.spotPrize && returnObject.credits >= §_-8O§)
                     {
                        this.§_-SJ§ = ((§_-0X§.§_-O2§ as §_-TN§).§_-Jb§ as §_-4-§).§_-AQ§();
                        if(!§_-nx§.§_-MS§ && this.§_-SJ§)
                        {
                           §_-SW§.sCheetosPopups.showPopup(§_-Zr§.SPOT_PRIZE_AVAILABLE,"SPOT_PRIZE_AVAILABLE");
                        }
                     }
                     else if(returnObject.credits >= §_-8O§)
                     {
                        ((§_-0X§.§_-O2§ as §_-TN§).§_-Jb§ as §_-4-§).§_-eV§();
                     }
                     else if(returnObject.credits < §_-8O§)
                     {
                        §_-WX§.§_-nw§.§_-SD§(§_-0N§.§_-3o§);
                        §_-SW§.sCheetosPopups.showPopup(§_-Zr§.NO_CREDIT,"NO_CREDIT");
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
         §_-WX§.§_-nw§.§_-SD§(§_-0N§.§_-3o§);
         §_-SW§.sCheetosPopups.showPopup(§_-Zr§.ERROR,§_-Y-§.getText("Error"));
      }
      
      private function §_-LU§(param1:*) : void
      {
         §_-WX§.§_-nw§.§_-SD§(§_-0N§.§_-3o§);
         §_-SW§.sCheetosPopups.showPopup(§_-Zr§.ERROR,§_-Y-§.getText("Error"));
      }
      
      override public function getVictoryState() : String
      {
         return §_-cB§.§_-3o§;
      }
      
      override public function getLoserState() : String
      {
         return §_-VB§.§_-3o§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-VR§) : void
      {
         var checkBoxComponent:§_-8n§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§_-VR§ = param3;
         if(component is §_-hf§)
         {
            if(eventIndex == §_-VR§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §_-oy§.§_-6D§();
            }
            else if(eventIndex == §_-VR§.LISTENER_EVENT_MOUSE_UP)
            {
               §_-oy§.§_-4e§();
            }
         }
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               §_-nx§.§_-sX§();
               if(!§_-nx§.§_-MS§ && this.§_-SJ§)
               {
                  §_-SW§.sCheetosPopups.showPopup(§_-Zr§.SPOT_PRIZE_AVAILABLE,"SPOT_PRIZE_AVAILABLE");
                  this.§_-SJ§ = false;
                  break;
               }
               break;
            case "PAUSE":
               mNextState = §_-Jx§.§_-3o§;
               break;
            case "RESTART_LEVEL":
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
            case "CONTINUE":
               sCheetosPopups.hidePopup();
               break;
            case "LAUNCH_CHEETOS":
               if((§_-0X§.§_-O2§ as §_-TN§).§_-dx§())
               {
                  if(!§_-SW§.sCheetosPopups.showPopup(§_-Zr§.§_-fH§))
                  {
                     this.§_-P9§();
                     break;
                  }
                  break;
               }
               this.§_-P9§();
               break;
            case "ZOOM_IN":
               §_-g1§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §_-g1§.doUserZoom(false);
               break;
            case "BUTTON_NO":
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.§_-fH§)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.CONFIRM_LEAVE)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               break;
            case "BUTTON_YES":
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.§_-fH§)
               {
                  this.§_-P9§();
                  sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.RESTART_LEVEL)
               {
                  this.§_-s1§();
                  break;
               }
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.CONFIRM_LEAVE)
               {
                  this.navigationConfirmed();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §_-8n§;
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.§_-fH§)
               {
                  §_-WX§.§_-nw§.§_-51§ = !§_-WX§.§_-nw§.§_-51§;
                  if(§_-WX§.§_-nw§.§_-51§)
                  {
                     checkBoxComponent.setComponentState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     break;
                  }
                  checkBoxComponent.setComponentState(§_-8n§.§_-qC§);
                  break;
               }
               §_-WX§.§_-nw§.§_-gf§ = !§_-WX§.§_-nw§.§_-gf§;
               if(§_-WX§.§_-nw§.§_-gf§)
               {
                  checkBoxComponent.setComponentState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§_-8n§.§_-qC§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §_-3Q§.§_-st§("addCredits");
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
      
      private function §_-P9§() : void
      {
         if(!this.§_-f§)
         {
            if((§_-0X§.§_-O2§ as §_-TN§).§_-dx§())
            {
               §_-0X§.§_-fc§();
               this.§_-AK§();
            }
            else
            {
               this.§_-XT§();
            }
         }
      }
      
      private function §_-XT§() : void
      {
         this.§_-f§ = true;
         (§_-0X§.§_-O2§ as §_-TN§).§_-JF§();
         (§_-0X§.§_-O2§.slingshot as §_-oL§).§_-XT§();
         §_-0X§.§_-O2§.camera.goToBirdView();
         §_-nx§.§_-00F§(§_-nq§);
      }
      
      private function §_-s1§() : void
      {
         §_-SA§.§_-FK§();
         mNextState = §_-SA§.§_-3o§;
      }
      
      private function §_-aH§() : void
      {
         var _loc1_:int = §_-g1§.getScore();
         §_-nq§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §_-WX§.§_-ZR§.§_-yH§(§_-Mm§.§_-Kw§);
         §_-nq§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      private function §_-kN§() : void
      {
         this.callObject = {
            "type":§_-o5§.§_-Sl§,
            "sessionID":§_-o5§.§_-YD§(),
            "userID":§_-Iv§.§_-r5§.name,
            "levelId":§_-Mm§.§_-Kw§
         };
         new §_-o5§(this.callObject,§_-WX§.§_-Sl§,this,§_-o5§.§_-oS§);
      }
      
      private function §_-AK§() : void
      {
         this.§_-uI§ = new Date().time;
         this.callObject = {
            "type":§_-o5§.§_-x4§,
            "sessionID":§_-o5§.§_-YD§(),
            "userID":§_-Iv§.§_-r5§.name,
            "purchaseTime":this.§_-uI§
         };
         new §_-o5§(this.callObject,§_-WX§.§_-x4§,this,§_-o5§.§_-oS§);
      }
      
      private function §_-00Q§() : void
      {
         var _loc1_:§_-hf§ = §_-nq§.getItemByName("Button_LaunchCheetos") as §_-hf§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§_-0X§.§_-O2§ as §_-TN§).§_-dx§())
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
