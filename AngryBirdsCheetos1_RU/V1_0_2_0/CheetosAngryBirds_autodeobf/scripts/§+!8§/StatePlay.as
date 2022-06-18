package §+!8§
{
   import §!7§.§=!3§;
   import §!7§.§@a§;
   import §!7§.§^-§;
   import §"I§.§-x§;
   import §#J§.§,x§;
   import §#J§.§9^§;
   import §#J§.§]B§;
   import §#[§.§#!Q§;
   import §#[§.§9;§;
   import §#b§.§5!#§;
   import §&8§.§8h§;
   import §&8§.§<O§;
   import §'=§.§-!1§;
   import §'=§.§]d§;
   import §,'§.§[2§;
   import §-!;§.§4^§;
   import §-!;§.§^!,§;
   import §-A§.§ '§;
   import §-A§.§?s§;
   import §1o§.§'M§;
   import §2!P§.§6=§;
   import §4!F§.§4m§;
   import §6!P§.§5!+§;
   import §7L§.§+!$§;
   import §7L§.§9I§;
   import §8O§.§'S§;
   import §9T§.§+8§;
   import §@!W§.§8!W§;
   import §[]§.§+F§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   
   public class StatePlay extends §>q§ implements §9^§
   {
      
      public static const §,!+§:String = "StatePlay";
      
      private static const §%=§:Number = -10 * 1000;
      
      private static const §`A§:Number = 15 * 1000;
      
      private static const §3F§:int = 0;
      
      private static const § ^§:int = 3;
       
      
      private var §8![§:Boolean = true;
      
      private var §,f§:Boolean = false;
      
      private var §+!M§:Number = -10000.0;
      
      private var §2!O§:int = 0;
      
      private var §>!9§:Boolean;
      
      private var §5§:Boolean;
      
      private var callObject:Object;
      
      private var §'!U§:Number;
      
      private var §2$§:Number;
      
      private var §+P§:Boolean = true;
      
      private var §9Y§:Boolean = false;
      
      private var §>s§:§4^§ = null;
      
      private var §5!5§:Boolean = false;
      
      private var §7q§:int;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&X§ = new §<O§(this);
         §&X§.init(§8h§.§9!>§.Views.View_LevelPlay[0]);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         §[2§.addCallback("navigationAttempt",this.§&6§);
      }
      
      private function §&6§(param1:String) : void
      {
         var url:String = param1;
         §'S§.§6r§ = url;
         if(§@!!§.§%F§.§@!?§() != null && §@!!§.§%F§.§@!?§() == StatePlay.§,!+§)
         {
            §;A§.sCheetosPopups.showPopup(§]d§.CONFIRM_LEAVE,§]B§.getText("Popup_Confirm_Leave"));
            try
            {
               §&X§.container.setObjectToFront(§;A§.sCheetosPopups.container);
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
            §[2§.§^J§("navigationConfirmed",§'S§.§6r§);
            §;A§.sCheetosPopups.hidePopup();
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§7q§ = §8!W§.§=X§.slingshot.§?N§() as int;
         if(this.§>s§ != null)
         {
            this.§>s§.§<J§();
            this.§>s§ = null;
         }
         ((§8!W§.§=X§ as §=!3§).§>9§ as §+8§).§ +§();
         §8!W§.§?!,§();
         this.§5§ = false;
         this.§6!G§();
         §'M§.§"!?§();
         §#!Q§.§ 3§(§9;§.§5e§,§5!#§.§'D§);
         this.§>!9§ = false;
         §'M§.§1T§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §'S§.§"q§(§5!#§.§'D§).numberOfBirdsShot = §8!W§.§=X§.slingshot.§?N§();
         this.§'!U§ = new Date().time;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§6=§.§4!8§)
         {
            §6=§.§4!8§.start();
         }
         if(this.§>s§)
         {
            this.§>s§.play();
         }
         this.§49§();
         §&X§.setText(§]B§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
         §&X§.setText(§]B§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
         §&X§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         §&X§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§^!%§();
         this.§]!T§();
         this.§+P§ = true;
      }
      
      override public function deActivate() : void
      {
         §[2§.§6m§("navigationAttempt",this.§&6§);
         if(this.§>s§ && !this.§>s§.isCompleted)
         {
            this.§>s§.§-'§();
         }
         super.deActivate();
         this.§&s§();
         this.§]!T§();
      }
      
      private function §&s§() : void
      {
         var _loc1_:int = 0;
         if(!this.§,f§)
         {
            if(this.§+!M§ > §`A§)
            {
               this.§,f§ = true;
               _loc1_ = Math.round(1000 / this.§+!M§ * this.§2!O§);
               if(§6=§.§9B§)
               {
                  §#!Q§.§ 3§(§9;§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §#!Q§.§ 3§(§9;§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §=o§(param1:Number) : void
      {
         this.§+!M§ += param1;
         if(this.§+!M§ > 0)
         {
            ++this.§2!O§;
         }
      }
      
      private function §]!T§() : void
      {
         this.§+!M§ = §%=§;
         this.§2!O§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(§8!W§.isPaused)
         {
            return 0;
         }
         if(this.§+P§)
         {
            this.§+P§ = false;
            §-!1§.§;T§(§&X§);
         }
         if(this.§>!9§ && !this.§5§)
         {
            (§8!W§.§=X§ as §=!3§).§-W§();
            if(§8!W§.§=X§.slingshot.§try§())
            {
               ((§8!W§.§=X§ as §=!3§).slingshot as §@a§).§5L§();
               this.§>s§ = §^!,§.§0!S§.§3n§(null,null,null,§^-§.§in§);
               this.§>s§.play();
            }
            else if(this.§>s§ == null)
            {
               this.§>s§ = ((§8!W§.§=X§ as §=!3§).slingshot as §@a§).§!!4§();
            }
            this.§5§ = true;
            §-!1§.§;T§(§&X§);
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§=o§(param1);
         this.§49§();
         var _loc3_:§+F§ = §&X§.getItemByName("Button_LaunchCheetos") as §+F§;
         if(§8!W§.§=X§.slingshot.mSlingShotState == § '§.§#h§ && !this.§5§ && (§'S§.credits >= § ^§ || !(§8!W§.§=X§ as §=!3§).§^!7§()))
         {
            _loc3_.setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc3_.setComponentState(§+!$§.§2!H§);
         }
         if(mNextState.length > 0)
         {
            return §-x§.STATE_STATUS_COMPLETED;
         }
         if(§8!W§.§=X§.slingshot.mSlingShotState == § '§.§+<§)
         {
            (§8!W§.§=X§.slingshot as §@a§).§,!<§();
         }
         return §-x§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:String = §5!#§.§'D§;
         var _loc2_:Object = §'S§.§"q§(§5!#§.§'D§);
         var _loc3_:int = §1B§.getScore();
         var _loc4_:int = §5!#§.§<!P§(_loc1_,_loc3_);
         var _loc5_:Number = new Date().time;
         _loc2_.userId = §'S§.§^!+§.name;
         _loc2_.levelId = _loc1_;
         _loc2_.score = _loc3_;
         _loc2_.stars = _loc4_;
         _loc2_.blocks = §?s§.§,M§();
         _loc2_.gameplay = §8!W§.§=X§.§[!#§().toString();
         _loc2_.numberOfBirdsShot = this.§7q§ - (§8!W§.§=X§.slingshot.§?N§() as int);
         _loc2_.time = _loc5_ - this.§'!U§;
         _loc2_.sessionId = §4m§.§!J§();
         _loc2_.userLevelId = §'S§.userLevelId;
         _loc2_.security = §4m§.§#![§(_loc2_);
         this.callObject = {
            "type":§4m§.§3%§,
            "sessionID":_loc2_.sessionId,
            "userID":_loc2_.userId,
            "levelID":_loc2_.levelId,
            "score":_loc2_.score,
            "stars":_loc2_.stars,
            "blocks":_loc2_.blocks,
            "security":_loc2_.security,
            "time":_loc2_.time,
            "gameplay":_loc2_.gameplay,
            "numberOfBirdsShot":_loc2_.numberOfBirdsShot,
            "userLevelID":_loc2_.userLevelId
         };
         var _loc6_:§4m§ = new §4m§(this.callObject,§@!!§.§[!S§,this,§4m§.§5N§);
         §#!Q§.§ 3§(§9;§.§[!Y§,§5!#§.§'D§);
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
            returnObject = §,x§.§%x§((e.currentTarget as URLLoader).data);
            if(returnObject.error)
            {
               switch(returnObject.error.code)
               {
                  case §"4§:
                     §@!!§.§%F§.§3S§(§=f§.§,!+§);
                     §;A§.sCheetosPopups.showPopup(§]d§.NO_CREDIT,"NO_CREDIT");
                     break;
                  case §[!G§:
                     §@!!§.§%F§.§3S§(§=f§.§,!+§);
                     §;A§.sCheetosPopups.showPopup(§]d§.ERROR,§]B§.getText("Popup_Session_Expired"));
                     break;
                  default:
                     this.§>_§(returnObject.error.message + " Code:" + returnObject.error.code);
               }
               return;
            }
            if(this.callObject.type != null)
            {
               switch(this.callObject.type)
               {
                  case §4m§.§3%§:
                     try
                     {
                        §[2§.§^J§("levelComplete",§5!#§.§'D§,true);
                        §'S§.§-!$§(§5!#§.§8!<§());
                     }
                     catch(e:Error)
                     {
                        §>_§(e);
                     }
                     break;
                  case §4m§.§2!Z§:
                     if(§]d§.§,o§ == false)
                     {
                        §8!W§.§?!,§();
                     }
                     levelProfile = §'S§.§"q§(§5!#§.§'D§);
                     securityPurchasePowerUp = §4m§.§'!N§(returnObject.userID,returnObject.credits,this.§2$§);
                     if(returnObject.security)
                     {
                        if(securityPurchasePowerUp.toUpperCase() == returnObject.security.toUpperCase())
                        {
                           if(returnObject.credits < §3F§)
                           {
                              §@!!§.§%F§.§3S§(§=f§.§,!+§);
                              §;A§.sCheetosPopups.showPopup(§]d§.NO_CREDIT,"NO_CREDIT");
                           }
                           else
                           {
                              this.§>!9§ = true;
                           }
                        }
                     }
                     break;
                  case §4m§.§?!J§:
                     try
                     {
                        §[2§.§^J§("levelStart",§5!#§.§'D§);
                     }
                     catch(e:Error)
                     {
                        §>_§(e);
                     }
                     if(returnObject.userLevelID)
                     {
                        §'S§.userLevelId = returnObject.userLevelID;
                     }
                     try
                     {
                        credits = returnObject.credits as int;
                        §'S§.credits = credits;
                     }
                     catch(e:Error)
                     {
                     }
                     if(returnObject.credits < §3F§)
                     {
                        §@!!§.§%F§.§3S§(§=f§.§,!+§);
                        §;A§.sCheetosPopups.showPopup(§]d§.NO_CREDIT,"NO_CREDIT");
                     }
               }
            }
         }
         catch(e:Error)
         {
         }
         this.§9Y§ = false;
         if(!§-!1§.§,o§ && !§]d§.§,o§)
         {
            §8!W§.§?!,§();
         }
         super.onComplete(e);
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         this.§9Y§ = false;
         §@!!§.§%F§.§3S§(§=f§.§,!+§);
         §;A§.sCheetosPopups.showPopup(§]d§.ERROR,§]B§.getText("Error"));
      }
      
      private function §>_§(param1:*) : void
      {
         §@!!§.§%F§.§3S§(§=f§.§,!+§);
         §;A§.sCheetosPopups.showPopup(§]d§.ERROR,§]B§.getText("Error"));
      }
      
      override public function getVictoryState() : String
      {
         return §0!7§.§,!+§;
      }
      
      override public function getLoserState() : String
      {
         return §;!]§.§,!+§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9I§) : void
      {
         var checkBoxComponent:§+!$§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§9I§ = param3;
         if(§8!W§.§=X§.slingshot.mDragging)
         {
            if(eventIndex == 1)
            {
               §8!W§.§=X§.slingshot.shoot();
               §1B§.changeGameState(§5!+§.§+v§);
            }
            return;
         }
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               §-!1§.§ !,§();
               break;
            case "PAUSE":
               mNextState = §1!B§.§,!+§;
               break;
            case "RESTART_LEVEL":
               if((§8!W§.§=X§ as §=!3§).§^!7§())
               {
                  if(!§;A§.sCheetosPopups.showPopup(§]d§.RESTART_LEVEL))
                  {
                     this.§7^§();
                  }
               }
               else
               {
                  this.§7^§();
               }
               break;
            case "CONTINUE":
               sCheetosPopups.hidePopup();
               break;
            case "LAUNCH_CHEETOS":
               if((§8!W§.§=X§ as §=!3§).§^!7§())
               {
                  if(!§;A§.sCheetosPopups.showPopup(§]d§.§'!4§))
                  {
                     this.§-3§();
                  }
               }
               else
               {
                  this.§-3§();
               }
               break;
            case "ZOOM_IN":
               §1B§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §1B§.doUserZoom(false);
               break;
            case "BUTTON_NO":
               if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.§'!4§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.CONFIRM_LEAVE)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.§'!4§)
               {
                  this.§-3§();
                  sCheetosPopups.hidePopup();
               }
               else if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.RESTART_LEVEL)
               {
                  this.§7^§();
               }
               else if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.CONFIRM_LEAVE)
               {
                  this.navigationConfirmed();
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §+!$§;
               if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.§'!4§)
               {
                  §@!!§.§%F§.§7W§ = !§@!!§.§%F§.§7W§;
                  if(§@!!§.§%F§.§7W§)
                  {
                     checkBoxComponent.setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  else
                  {
                     checkBoxComponent.setComponentState(§+!$§.§^U§);
                  }
                  break;
               }
               §@!!§.§%F§.§4<§ = !§@!!§.§%F§.§4<§;
               if(§@!!§.§%F§.§4<§)
               {
                  checkBoxComponent.setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§+!$§.§^U§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §[2§.§^J§("addCredits");
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
      
      private function §-3§() : void
      {
         if(!this.§>!9§)
         {
            if((§8!W§.§=X§ as §=!3§).§^!7§())
            {
               §8!W§.§-'§();
               this.§!!"§();
            }
            else
            {
               this.§>!9§ = true;
            }
         }
      }
      
      private function §7^§() : void
      {
         §=!S§.§?#§();
         mNextState = §=!S§.§,!+§;
      }
      
      private function §49§() : void
      {
         var _loc1_:int = §1B§.getScore();
         §&X§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §@!!§.§<R§.§2!_§(§5!#§.§'D§);
         §&X§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      private function §6!G§() : void
      {
         this.§9Y§ = true;
         this.callObject = {
            "type":§4m§.§?!J§,
            "sessionID":§4m§.§!J§(),
            "userID":§'S§.§^!+§.name,
            "levelId":§5!#§.§'D§
         };
         new §4m§(this.callObject,§@!!§.§?!J§,this,§4m§.§5N§);
      }
      
      private function §!!"§() : void
      {
         this.§2$§ = new Date().time;
         this.callObject = {
            "type":§4m§.§2!Z§,
            "sessionID":§4m§.§!J§(),
            "userID":§'S§.§^!+§.name,
            "purchaseTime":this.§2$§
         };
         new §4m§(this.callObject,§@!!§.§2!Z§,this,§4m§.§5N§);
      }
      
      private function §^!%§() : void
      {
         var _loc1_:§+F§ = §&X§.getItemByName("Button_LaunchCheetos") as §+F§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         _loc1_.setComponentState(§+!$§.§2!H§);
         if((§8!W§.§=X§ as §=!3§).§^!7§())
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
