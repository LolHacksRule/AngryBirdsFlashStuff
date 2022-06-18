package §3n§
{
   import §!q§.§!!B§;
   import §"Z§.§-N§;
   import §"Z§.§5!2§;
   import §#h§.§]!"§;
   import §#h§.§^!+§;
   import §#h§.§break§;
   import §+!^§.§'Y§;
   import §+d§.§3!9§;
   import §+d§.dynamic;
   import §,!2§.§-!S§;
   import §0L§.§&Y§;
   import §0q§.§#!_§;
   import §0q§.§-!V§;
   import §0q§.§7+§;
   import §1Y§.§+$§;
   import §4p§.§-5§;
   import §4p§.§;O§;
   import §7!7§.§return§;
   import §7'§.§'q§;
   import §7'§.§-!6§;
   import §8E§.§&M§;
   import §8v§.§#Z§;
   import §8v§.include;
   import §9T§.§#!4§;
   import §9T§.§2s§;
   import §>N§.§"u§;
   import §?>§.§!&§;
   import §^9§.§[!L§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import §import§.§&^§;
   
   public class StatePlay extends §'!O§ implements §break§
   {
      
      public static const §,F§:String = "StatePlay";
      
      private static const §#!5§:Number = -10 * 1000;
      
      private static const § !R§:Number = 15 * 1000;
      
      private static const §-!a§:int = 0;
      
      private static const §;n§:int = 3;
       
      
      private var §>!§:Boolean = true;
      
      private var §6b§:Boolean = false;
      
      private var §`p§:Number = -10000.0;
      
      private var §9! §:int = 0;
      
      private var §<A§:Boolean;
      
      private var §#R§:Boolean;
      
      private var callObject:Object;
      
      private var §78§:Number;
      
      private var §5k§:Number;
      
      private var §@§:Boolean = true;
      
      private var §'!@§:Boolean = false;
      
      private var §-!9§:§5!2§ = null;
      
      private var §=x§:Boolean = false;
      
      private var §,q§:int;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!J§ = new §#Z§(this);
         §2!J§.init(include.§%!I§.Views.View_LevelPlay[0]);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         §&^§.addCallback("navigationAttempt",this.§6!4§);
      }
      
      private function §6!4§(param1:String) : void
      {
         var url:String = param1;
         §&Y§.§#!a§ = url;
         if(§7!^§.§-!@§.§%!P§() != null && §7!^§.§-!@§.§%!P§() == StatePlay.§,F§)
         {
            §<D§.sCheetosPopups.showPopup(§-5§.CONFIRM_LEAVE,§^!+§.getText("Popup_Confirm_Leave"));
            try
            {
               §2!J§.container.setObjectToFront(§<D§.sCheetosPopups.container);
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
            §&^§.§4'§("navigationConfirmed",§&Y§.§#!a§);
            §<D§.sCheetosPopups.hidePopup();
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§,q§ = §'Y§.§@j§.slingshot.§+!F§() as int;
         if(this.§-!9§ != null)
         {
            this.§-!9§.§7§();
            this.§-!9§ = null;
         }
         ((§'Y§.§@j§ as §7+§).§,G§ as §-!S§).§+0§();
         §'Y§.§"r§();
         this.§#R§ = false;
         this.§6]§();
         §return§.§+r§();
         dynamic.§&!V§(§3!9§.§[!!§,§[!L§.§^!X§);
         this.§<A§ = false;
         §return§.§2!S§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §&Y§.§;!#§(§[!L§.§^!X§).numberOfBirdsShot = §'Y§.§@j§.slingshot.§+!F§();
         this.§78§ = new Date().time;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§"u§.§-2§)
         {
            §"u§.§-2§.start();
         }
         if(this.§-!9§)
         {
            this.§-!9§.play();
         }
         this.§+6§();
         §2!J§.setText(§^!+§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
         §2!J§.setText(§^!+§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
         §2!J§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         §2!J§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§&v§();
         this.§!;§();
         this.§@§ = true;
      }
      
      override public function deActivate() : void
      {
         §&^§.§#c§("navigationAttempt",this.§6!4§);
         if(this.§-!9§ && !this.§-!9§.isCompleted)
         {
            this.§-!9§.§ D§();
         }
         super.deActivate();
         this.§5!!§();
         this.§!;§();
      }
      
      private function §5!!§() : void
      {
         var _loc1_:int = 0;
         if(!this.§6b§)
         {
            if(this.§`p§ > § !R§)
            {
               this.§6b§ = true;
               _loc1_ = Math.round(1000 / this.§`p§ * this.§9! §);
               if(§"u§.§,z§)
               {
                  dynamic.§&!V§(§3!9§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  dynamic.§&!V§(§3!9§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §?y§(param1:Number) : void
      {
         this.§`p§ += param1;
         if(this.§`p§ > 0)
         {
            ++this.§9! §;
         }
      }
      
      private function §!;§() : void
      {
         this.§`p§ = §#!5§;
         this.§9! § = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(§'Y§.isPaused)
         {
            return 0;
         }
         if(this.§@§)
         {
            this.§@§ = false;
            §;O§.§]8§(§2!J§);
         }
         if(this.§<A§ && !this.§#R§)
         {
            (§'Y§.§@j§ as §7+§).§26§();
            if(§'Y§.§@j§.slingshot.§2k§())
            {
               ((§'Y§.§@j§ as §7+§).slingshot as §#!_§).§>9§();
               this.§-!9§ = §-N§.§<?§.§,!D§(null,null,null,§-!V§.§]!2§);
               this.§-!9§.play();
            }
            else if(this.§-!9§ == null)
            {
               this.§-!9§ = ((§'Y§.§@j§ as §7+§).slingshot as §#!_§).§#!#§();
            }
            this.§#R§ = true;
            §;O§.§]8§(§2!J§);
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§?y§(param1);
         this.§+6§();
         var _loc3_:§!&§ = §2!J§.getItemByName("Button_LaunchCheetos") as §!&§;
         if(§'Y§.§@j§.slingshot.mSlingShotState == §#!4§.§]7§ && !this.§#R§ && (§&Y§.credits >= §;n§ || !(§'Y§.§@j§ as §7+§).§^!G§()))
         {
            _loc3_.setComponentState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc3_.setComponentState(§'q§.§,%§);
         }
         if(mNextState.length > 0)
         {
            return §+$§.STATE_STATUS_COMPLETED;
         }
         if(§'Y§.§@j§.slingshot.mSlingShotState == §#!4§.§;P§)
         {
            (§'Y§.§@j§.slingshot as §#!_§).§[!Z§();
         }
         return §+$§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:String = §[!L§.§^!X§;
         var _loc2_:Object = §&Y§.§;!#§(§[!L§.§^!X§);
         var _loc3_:int = §?W§.getScore();
         var _loc4_:int = §[!L§.§"!&§(_loc1_,_loc3_);
         var _loc5_:Number = new Date().time;
         _loc2_.userId = §&Y§.§>!_§.name;
         _loc2_.levelId = _loc1_;
         _loc2_.score = _loc3_;
         _loc2_.stars = _loc4_;
         _loc2_.blocks = §2s§.§23§();
         _loc2_.gameplay = §'Y§.§@j§.§6!`§().toString();
         _loc2_.numberOfBirdsShot = this.§,q§ - (§'Y§.§@j§.slingshot.§+!F§() as int);
         _loc2_.time = _loc5_ - this.§78§;
         _loc2_.sessionId = §!!B§.§4V§();
         _loc2_.userLevelId = §&Y§.userLevelId;
         _loc2_.security = §!!B§.§ !>§(_loc2_);
         this.callObject = {
            "type":§!!B§.§`!D§,
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
         var _loc6_:§!!B§ = new §!!B§(this.callObject,§7!^§.§@!4§,this,§!!B§.§9!Y§);
         dynamic.§&!V§(§3!9§.§]q§,§[!L§.§^!X§);
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
            returnObject = §]!"§.§5A§((e.currentTarget as URLLoader).data);
            if(returnObject.error)
            {
               switch(returnObject.error.code)
               {
                  case §=I§:
                     §7!^§.§-!@§.§-!I§(§-'§.§,F§);
                     §<D§.sCheetosPopups.showPopup(§-5§.NO_CREDIT,"NO_CREDIT");
                     break;
                  case §+!A§:
                     §7!^§.§-!@§.§-!I§(§-'§.§,F§);
                     §<D§.sCheetosPopups.showPopup(§-5§.ERROR,§^!+§.getText("Popup_Session_Expired"));
                     break;
                  default:
                     this.§6v§(returnObject.error.message + " Code:" + returnObject.error.code);
               }
               return;
            }
            if(this.callObject.type != null)
            {
               switch(this.callObject.type)
               {
                  case §!!B§.§`!D§:
                     try
                     {
                        §&^§.§4'§("levelComplete",§[!L§.§^!X§,true);
                        §&Y§.§]<§(§[!L§.§6m§());
                     }
                     catch(e:Error)
                     {
                        §6v§(e);
                     }
                     break;
                  case §!!B§.§3s§:
                     if(§-5§.§%?§ == false)
                     {
                        §'Y§.§"r§();
                     }
                     levelProfile = §&Y§.§;!#§(§[!L§.§^!X§);
                     securityPurchasePowerUp = §!!B§.§&!]§(returnObject.userID,returnObject.credits,this.§5k§);
                     if(returnObject.security)
                     {
                        if(securityPurchasePowerUp.toUpperCase() == returnObject.security.toUpperCase())
                        {
                           if(returnObject.credits < §-!a§)
                           {
                              §7!^§.§-!@§.§-!I§(§-'§.§,F§);
                              §<D§.sCheetosPopups.showPopup(§-5§.NO_CREDIT,"NO_CREDIT");
                           }
                           else
                           {
                              this.§<A§ = true;
                           }
                        }
                     }
                     break;
                  case §!!B§.§ if§:
                     try
                     {
                        §&^§.§4'§("levelStart",§[!L§.§^!X§);
                     }
                     catch(e:Error)
                     {
                        §6v§(e);
                     }
                     if(returnObject.userLevelID)
                     {
                        §&Y§.userLevelId = returnObject.userLevelID;
                     }
                     try
                     {
                        credits = returnObject.credits as int;
                        §&Y§.credits = credits;
                     }
                     catch(e:Error)
                     {
                     }
                     if(returnObject.credits < §-!a§)
                     {
                        §7!^§.§-!@§.§-!I§(§-'§.§,F§);
                        §<D§.sCheetosPopups.showPopup(§-5§.NO_CREDIT,"NO_CREDIT");
                     }
               }
            }
         }
         catch(e:Error)
         {
         }
         this.§'!@§ = false;
         if(!§;O§.§%?§ && !§-5§.§%?§)
         {
            §'Y§.§"r§();
         }
         super.onComplete(e);
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         this.§'!@§ = false;
         §7!^§.§-!@§.§-!I§(§-'§.§,F§);
         §<D§.sCheetosPopups.showPopup(§-5§.ERROR,§^!+§.getText("Error"));
      }
      
      private function §6v§(param1:*) : void
      {
         §7!^§.§-!@§.§-!I§(§-'§.§,F§);
         §<D§.sCheetosPopups.showPopup(§-5§.ERROR,§^!+§.getText("Error"));
      }
      
      override public function getVictoryState() : String
      {
         return §`!V§.§,F§;
      }
      
      override public function getLoserState() : String
      {
         return §&!J§.§,F§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!6§) : void
      {
         var checkBoxComponent:§'q§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§-!6§ = param3;
         if(eventIndex == 1)
         {
            if(§'Y§.§@j§.slingshot.mDragging)
            {
               §'Y§.§@j§.slingshot.shoot();
               §?W§.changeGameState(§&M§.§,!U§);
               return;
            }
            §'Y§.§@j§.camera.stopDragging();
         }
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               §;O§.§=%§();
               break;
            case "PAUSE":
               mNextState = §;A§.§,F§;
               break;
            case "RESTART_LEVEL":
               if((§'Y§.§@j§ as §7+§).§^!G§())
               {
                  if(!§<D§.sCheetosPopups.showPopup(§-5§.RESTART_LEVEL))
                  {
                     this.§?t§();
                  }
               }
               else
               {
                  this.§?t§();
               }
               break;
            case "CONTINUE":
               sCheetosPopups.hidePopup();
               break;
            case "LAUNCH_CHEETOS":
               if((§'Y§.§@j§ as §7+§).§^!G§())
               {
                  if(!§<D§.sCheetosPopups.showPopup(§-5§.§8j§))
                  {
                     this.§%p§();
                  }
               }
               else
               {
                  this.§%p§();
               }
               break;
            case "ZOOM_IN":
               §?W§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §?W§.doUserZoom(false);
               break;
            case "BUTTON_NO":
               if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.§8j§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.CONFIRM_LEAVE)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.§8j§)
               {
                  this.§%p§();
                  sCheetosPopups.hidePopup();
               }
               else if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.RESTART_LEVEL)
               {
                  this.§?t§();
               }
               else if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.CONFIRM_LEAVE)
               {
                  this.navigationConfirmed();
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §'q§;
               if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.§8j§)
               {
                  §7!^§.§-!@§.§2!E§ = !§7!^§.§-!@§.§2!E§;
                  if(§7!^§.§-!@§.§2!E§)
                  {
                     checkBoxComponent.setComponentState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  else
                  {
                     checkBoxComponent.setComponentState(§'q§.§"!^§);
                  }
                  break;
               }
               §7!^§.§-!@§.§=-§ = !§7!^§.§-!@§.§=-§;
               if(§7!^§.§-!@§.§=-§)
               {
                  checkBoxComponent.setComponentState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§'q§.§"!^§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §&^§.§4'§("addCredits");
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
      
      private function §%p§() : void
      {
         if(!this.§<A§)
         {
            if((§'Y§.§@j§ as §7+§).§^!G§())
            {
               §'Y§.§ D§();
               this.§'![§();
            }
            else
            {
               this.§<A§ = true;
            }
         }
      }
      
      private function §?t§() : void
      {
         §7!6§.§]!D§();
         mNextState = §7!6§.§,F§;
      }
      
      private function §+6§() : void
      {
         var _loc1_:int = §?W§.getScore();
         §2!J§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §7!^§.§3!U§.§;#§(§[!L§.§^!X§);
         §2!J§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      private function §6]§() : void
      {
         this.§'!@§ = true;
         this.callObject = {
            "type":§!!B§.§ if§,
            "sessionID":§!!B§.§4V§(),
            "userID":§&Y§.§>!_§.name,
            "levelId":§[!L§.§^!X§
         };
         new §!!B§(this.callObject,§7!^§.§ if§,this,§!!B§.§9!Y§);
      }
      
      private function §'![§() : void
      {
         this.§5k§ = new Date().time;
         this.callObject = {
            "type":§!!B§.§3s§,
            "sessionID":§!!B§.§4V§(),
            "userID":§&Y§.§>!_§.name,
            "purchaseTime":this.§5k§
         };
         new §!!B§(this.callObject,§7!^§.§3s§,this,§!!B§.§9!Y§);
      }
      
      private function §&v§() : void
      {
         var _loc1_:§!&§ = §2!J§.getItemByName("Button_LaunchCheetos") as §!&§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         _loc1_.setComponentState(§'q§.§,%§);
         if((§'Y§.§@j§ as §7+§).§^!G§())
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
