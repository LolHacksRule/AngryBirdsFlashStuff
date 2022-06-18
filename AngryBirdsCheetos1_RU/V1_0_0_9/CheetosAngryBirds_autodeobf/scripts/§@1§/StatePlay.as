package §@1§
{
   import § !X§.§+2§;
   import § !X§.§8J§;
   import §!>§.§!#§;
   import §!>§.§5!$§;
   import §"!@§.§3!+§;
   import §"A§.§?3§;
   import §"A§.§`!N§;
   import §'!S§.§,!%§;
   import §+!7§.§'u§;
   import §+!7§.§-;§;
   import §+!7§.§[!]§;
   import §0!F§.§,!U§;
   import §0!F§.§3>§;
   import §3E§.§7!+§;
   import §3E§.§]Y§;
   import §5!G§.§31§;
   import §7!U§.§2!7§;
   import §7f§.§,!>§;
   import §8!#§.§6G§;
   import §<!P§.§>l§;
   import §=!M§.§ ]§;
   import §>!1§.§!!Q§;
   import §>!1§.§9A§;
   import §>!1§.§>!A§;
   import §>!6§.§0L§;
   import §^!0§.§0!2§;
   import §^r§.§%%§;
   import §^r§.§>`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   
   public class StatePlay extends §>a§ implements §>!A§
   {
      
      public static const §]U§:String = "StatePlay";
      
      private static const §1V§:Number = -10 * 1000;
      
      private static const §1!Q§:Number = 15 * 1000;
      
      private static const §finally§:int = 0;
      
      private static const §0+§:int = 3;
       
      
      private var §26§:Boolean = true;
      
      private var §3F§:Boolean = false;
      
      private var § 0§:Number = -10000.0;
      
      private var §@!R§:int = 0;
      
      private var §<!?§:Boolean;
      
      private var §1Y§:Boolean;
      
      private var callObject:Object;
      
      private var §>X§:Number;
      
      private var §4!0§:Number;
      
      private var §@&§:Boolean = true;
      
      private var §-!E§:Boolean = false;
      
      private var §8!T§:§5!$§ = null;
      
      private var §9!4§:Boolean = false;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[B§ = new §?3§(this);
         §[B§.init(§`!N§.§,!T§.Views.View_LevelPlay[0]);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         §0L§.addCallback("navigationAttempt",this.§<!'§);
      }
      
      private function §<!'§(param1:String) : void
      {
         var url:String = param1;
         §6G§.§"!9§ = url;
         if(§+§.§ each§.§0^§() != null && §+§.§ each§.§0^§() == StatePlay.§]U§)
         {
            §]R§.sCheetosPopups.showPopup(§+2§.CONFIRM_LEAVE,§9A§.getText("Popup_Confirm_Leave"));
            try
            {
               §[B§.container.setObjectToFront(§]R§.sCheetosPopups.container);
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
            §0L§.§[!H§("navigationConfirmed",§6G§.§"!9§);
            §]R§.sCheetosPopups.hidePopup();
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         if(this.§8!T§ != null)
         {
            this.§8!T§.§]#§();
            this.§8!T§ = null;
         }
         ((§2!7§.§5G§ as §'u§).§`Z§ as § ]§).§^!M§();
         §2!7§.§2T§();
         this.§1Y§ = false;
         this.§4!%§();
         §31§.§55§();
         §3>§.§7!]§(§,!U§.§"!4§,§3!+§.§%2§);
         this.§<!?§ = false;
         §31§.§>%§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §6G§.§=!^§(§3!+§.§%2§).numberOfBirdsShot = §2!7§.§5G§.slingshot.§,!$§();
         this.§>X§ = new Date().time;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§,!%§.§]!C§)
         {
            §,!%§.§]!C§.start();
         }
         if(this.§8!T§)
         {
            this.§8!T§.play();
         }
         this.§'!+§();
         §[B§.setText(§9A§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
         §[B§.setText(§9A§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
         §[B§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         §[B§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§`4§();
         this.§>!V§();
         this.§@&§ = true;
      }
      
      override public function deActivate() : void
      {
         §0L§.§4!E§("navigationAttempt",this.§<!'§);
         if(this.§8!T§ && !this.§8!T§.isCompleted)
         {
            this.§8!T§.§9!V§();
         }
         super.deActivate();
         this.§<!]§();
         this.§>!V§();
      }
      
      private function §<!]§() : void
      {
         var _loc1_:int = 0;
         if(!this.§3F§)
         {
            if(this.§ 0§ > §1!Q§)
            {
               this.§3F§ = true;
               _loc1_ = Math.round(1000 / this.§ 0§ * this.§@!R§);
               if(§,!%§.§96§)
               {
                  §3>§.§7!]§(§,!U§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §3>§.§7!]§(§,!U§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §-G§(param1:Number) : void
      {
         this.§ 0§ += param1;
         if(this.§ 0§ > 0)
         {
            ++this.§@!R§;
         }
      }
      
      private function §>!V§() : void
      {
         this.§ 0§ = §1V§;
         this.§@!R§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(§2!7§.isPaused)
         {
            return 0;
         }
         if(this.§@&§)
         {
            this.§@&§ = false;
            §8J§.§^a§(§[B§);
         }
         if(this.§<!?§ && !this.§1Y§)
         {
            (§2!7§.§5G§ as §'u§).§"!8§();
            if(§2!7§.§5G§.slingshot.§&7§())
            {
               ((§2!7§.§5G§ as §'u§).slingshot as §[!]§).§[!A§();
               this.§8!T§ = §!#§.§!5§.§&![§(null,null,null,§-;§.§#[§);
               this.§8!T§.play();
            }
            else if(this.§8!T§ == null)
            {
               this.§8!T§ = ((§2!7§.§5G§ as §'u§).slingshot as §[!]§).§8!A§();
            }
            this.§1Y§ = true;
            §8J§.§^a§(§[B§);
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>l§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§-G§(param1);
         this.§'!+§();
         var _loc3_:§,!>§ = §[B§.getItemByName("Button_LaunchCheetos") as §,!>§;
         if(§2!7§.§5G§.slingshot.mSlingShotState == §]Y§.§?!H§ && !this.§1Y§ && (§6G§.credits >= §0+§ || !(§2!7§.§5G§ as §'u§).§#!9§()))
         {
            _loc3_.setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc3_.setComponentState(§%%§.§@!]§);
         }
         if(mNextState.length > 0)
         {
            return §>l§.STATE_STATUS_COMPLETED;
         }
         if(§2!7§.§5G§.slingshot.mSlingShotState == §]Y§.§;F§)
         {
            (§2!7§.§5G§.slingshot as §[!]§).§"!M§();
         }
         return §>l§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:String = §3!+§.§%2§;
         var _loc2_:Object = §6G§.§=!^§(§3!+§.§%2§);
         var _loc3_:int = §11§.getScore();
         var _loc4_:int = §3!+§.§0f§(_loc1_,_loc3_);
         var _loc5_:Number = new Date().time;
         _loc2_.userId = §6G§.§+J§.name;
         _loc2_.levelId = _loc1_;
         _loc2_.score = _loc3_;
         _loc2_.stars = _loc4_;
         _loc2_.blocks = §7!+§.§<h§();
         _loc2_.gameplay = §2!7§.§5G§.§4^§().toString();
         _loc2_.numberOfBirdsShot = (_loc2_.numberOfBirdsShot as int) - (§2!7§.§5G§.slingshot.§,!$§() as int);
         _loc2_.time = _loc5_ - this.§>X§;
         _loc2_.sessionId = §0!2§.§;!#§();
         _loc2_.userLevelId = §6G§.userLevelId;
         _loc2_.security = §0!2§.§ !N§(_loc2_);
         this.callObject = {
            "type":§0!2§.§+I§,
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
         var _loc6_:§0!2§ = new §0!2§(this.callObject,§+§.§+5§,this,§0!2§.§^!O§);
         §3>§.§7!]§(§,!U§.§"9§,§3!+§.§%2§);
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
            returnObject = §!!Q§.§+!!§((e.currentTarget as URLLoader).data);
            if(returnObject.error)
            {
               switch(returnObject.error.code)
               {
                  case §"y§:
                     §+§.§ each§.§=!0§(§05§.§]U§);
                     §]R§.sCheetosPopups.showPopup(§+2§.NO_CREDIT,"NO_CREDIT");
                     break;
                  case §+!9§:
                     §+§.§ each§.§=!0§(§05§.§]U§);
                     §]R§.sCheetosPopups.showPopup(§+2§.ERROR,§9A§.getText("Popup_Session_Expired"));
                     break;
                  default:
                     this.§7!R§(returnObject.error.message + " Code:" + returnObject.error.code);
               }
               return;
            }
            if(this.callObject.type != null)
            {
               switch(this.callObject.type)
               {
                  case §0!2§.§+I§:
                     try
                     {
                        §0L§.§[!H§("levelComplete",§3!+§.§%2§,true);
                        §6G§.§6W§(§3!+§.§'^§());
                     }
                     catch(e:Error)
                     {
                        §7!R§(e);
                     }
                     break;
                  case §0!2§.§[!J§:
                     if(§+2§.§@!U§ == false)
                     {
                        §2!7§.§2T§();
                     }
                     levelProfile = §6G§.§=!^§(§3!+§.§%2§);
                     securityPurchasePowerUp = §0!2§.§>V§(returnObject.userID,returnObject.credits,this.§4!0§);
                     if(returnObject.security)
                     {
                        if(securityPurchasePowerUp.toUpperCase() == returnObject.security.toUpperCase())
                        {
                           if(returnObject.credits < §finally§)
                           {
                              §+§.§ each§.§=!0§(§05§.§]U§);
                              §]R§.sCheetosPopups.showPopup(§+2§.NO_CREDIT,"NO_CREDIT");
                           }
                           else
                           {
                              this.§<!?§ = true;
                           }
                        }
                     }
                     break;
                  case §0!2§.§8o§:
                     try
                     {
                        §0L§.§[!H§("levelStart",§3!+§.§%2§);
                     }
                     catch(e:Error)
                     {
                        §7!R§(e);
                     }
                     if(returnObject.userLevelID)
                     {
                        §6G§.userLevelId = returnObject.userLevelID;
                     }
                     try
                     {
                        credits = returnObject.credits as int;
                        §6G§.credits = credits;
                     }
                     catch(e:Error)
                     {
                     }
                     if(returnObject.credits < §finally§)
                     {
                        §+§.§ each§.§=!0§(§05§.§]U§);
                        §]R§.sCheetosPopups.showPopup(§+2§.NO_CREDIT,"NO_CREDIT");
                     }
               }
            }
         }
         catch(e:Error)
         {
         }
         this.§-!E§ = false;
         if(!§8J§.§@!U§ && !§+2§.§@!U§)
         {
            §2!7§.§2T§();
         }
         super.onComplete(e);
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         this.§-!E§ = false;
         §+§.§ each§.§=!0§(§05§.§]U§);
         §]R§.sCheetosPopups.showPopup(§+2§.ERROR,§9A§.getText("Error"));
      }
      
      private function §7!R§(param1:*) : void
      {
         §+§.§ each§.§=!0§(§05§.§]U§);
         §]R§.sCheetosPopups.showPopup(§+2§.ERROR,§9A§.getText("Error"));
      }
      
      override public function getVictoryState() : String
      {
         return §`§.§]U§;
      }
      
      override public function getLoserState() : String
      {
         return §0G§.§]U§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§>`§) : void
      {
         var checkBoxComponent:§%%§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§>`§ = param3;
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               §8J§.§8U§();
               break;
            case "PAUSE":
               mNextState = §53§.§]U§;
               break;
            case "RESTART_LEVEL":
               if((§2!7§.§5G§ as §'u§).§#!9§())
               {
                  if(!§]R§.sCheetosPopups.showPopup(§+2§.RESTART_LEVEL))
                  {
                     this.§<X§();
                  }
               }
               else
               {
                  this.§<X§();
               }
               break;
            case "CONTINUE":
               sCheetosPopups.hidePopup();
               break;
            case "LAUNCH_CHEETOS":
               if((§2!7§.§5G§ as §'u§).§#!9§())
               {
                  if(!§]R§.sCheetosPopups.showPopup(§+2§.§5k§))
                  {
                     this.§=j§();
                  }
               }
               else
               {
                  this.§=j§();
               }
               break;
            case "ZOOM_IN":
               §11§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §11§.doUserZoom(false);
               break;
            case "BUTTON_NO":
               if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.§5k§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.CONFIRM_LEAVE)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.§5k§)
               {
                  this.§=j§();
                  sCheetosPopups.hidePopup();
               }
               else if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.RESTART_LEVEL)
               {
                  this.§<X§();
               }
               else if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.CONFIRM_LEAVE)
               {
                  this.navigationConfirmed();
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §%%§;
               if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.§5k§)
               {
                  §+§.§ each§.§,!8§ = !§+§.§ each§.§,!8§;
                  if(§+§.§ each§.§,!8§)
                  {
                     checkBoxComponent.setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  else
                  {
                     checkBoxComponent.setComponentState(§%%§.§'$§);
                  }
                  break;
               }
               §+§.§ each§.§3l§ = !§+§.§ each§.§3l§;
               if(§+§.§ each§.§3l§)
               {
                  checkBoxComponent.setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§%%§.§'$§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §0L§.§[!H§("addCredits");
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
      
      private function §=j§() : void
      {
         if(!this.§<!?§)
         {
            if((§2!7§.§5G§ as §'u§).§#!9§())
            {
               §2!7§.§9!V§();
               this.§!Q§();
            }
            else
            {
               this.§<!?§ = true;
            }
         }
      }
      
      private function §<X§() : void
      {
         §#!5§.§#!,§();
         mNextState = §#!5§.§]U§;
      }
      
      private function §'!+§() : void
      {
         var _loc1_:int = §11§.getScore();
         §[B§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §+§.§3s§.§6=§(§3!+§.§%2§);
         §[B§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      private function §4!%§() : void
      {
         this.§-!E§ = true;
         this.callObject = {
            "type":§0!2§.§8o§,
            "sessionID":§0!2§.§;!#§(),
            "userID":§6G§.§+J§.name,
            "levelId":§3!+§.§%2§
         };
         new §0!2§(this.callObject,§+§.§8o§,this,§0!2§.§^!O§);
      }
      
      private function §!Q§() : void
      {
         this.§4!0§ = new Date().time;
         this.callObject = {
            "type":§0!2§.§[!J§,
            "sessionID":§0!2§.§;!#§(),
            "userID":§6G§.§+J§.name,
            "purchaseTime":this.§4!0§
         };
         new §0!2§(this.callObject,§+§.§[!J§,this,§0!2§.§^!O§);
      }
      
      private function §`4§() : void
      {
         var _loc1_:§,!>§ = §[B§.getItemByName("Button_LaunchCheetos") as §,!>§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         _loc1_.setComponentState(§%%§.§@!]§);
         if((§2!7§.§5G§ as §'u§).§#!9§())
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
