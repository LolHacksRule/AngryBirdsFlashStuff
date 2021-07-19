package §%w§
{
   import § !G§.§`e§;
   import §!X§.§#K§;
   import §!X§.§7@§;
   import §#!F§.§"!L§;
   import §#!F§.§'^§;
   import §#!V§.§&!!§;
   import §#!V§.§';§;
   import §#![§.§7v§;
   import §&!7§.§,!A§;
   import §&p§.§9!H§;
   import §'!3§.§"!Q§;
   import §'!3§.§3n§;
   import §'!3§.§4C§;
   import §,j§.§0!@§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §1§.§&!3§;
   import §1§.§'n§;
   import §5!M§.§%!T§;
   import §5!M§.§7!0§;
   import §5!M§.§<e§;
   import §6v§.§>S§;
   import §?m§.§7?§;
   import §@!?§.§0!U§;
   import §@!?§.§1!C§;
   import §]!F§.§7e§;
   import §`!K§.§!!>§;
   import §`C§.§9!'§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   
   public class StatePlay extends §[>§ implements §3n§
   {
      
      public static const §9!P§:String = "StatePlay";
      
      private static const § S§:Number = -10 * 1000;
      
      private static const §1o§:Number = 15 * 1000;
      
      private static const § r§:int = 0;
      
      private static const §>!<§:int = 3;
       
      
      private var §6!P§:Boolean = true;
      
      private var §"!#§:Boolean = false;
      
      private var §[!R§:Number = -10000.0;
      
      private var §5!I§:int = 0;
      
      private var §2!G§:Boolean;
      
      private var §=E§:Boolean;
      
      private var callObject:Object;
      
      private var §7,§:Boolean = false;
      
      private var §,!§:Number;
      
      private var §,!4§:Number;
      
      private var §>!-§:Boolean = true;
      
      private var §,!"§:Boolean = false;
      
      private var §=d§:§&!!§;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3t§ = new §'j§(this);
         §3t§.init(§0p§.§'! §.Views.View_LevelPlay[0]);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         §,!A§.addCallback("navigationAttempt",this.§-9§);
      }
      
      private function §-9§(param1:String) : void
      {
         var url:String = param1;
         §9!H§.§;a§ = url;
         if(§#x§.§=!!§.§&G§() != null && §#x§.§=!!§.§&G§() == StatePlay.§9!P§)
         {
            §;s§.sCheetosPopups.showPopup(§0!U§.CONFIRM_LEAVE,§4C§.getText("Popup_Confirm_Leave"));
            try
            {
               §3t§.container.setObjectToFront(§;s§.sCheetosPopups.container);
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
            §,!A§.§9!M§("navigationConfirmed",§9!H§.§;a§);
            §;s§.sCheetosPopups.hidePopup();
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         if(this.§=d§ != null)
         {
            this.§=d§.§!S§();
            this.§=d§ = null;
         }
         this.§=E§ = false;
         §7?§.§3J§();
         this.§6§();
         §!!>§.§ &§();
         §'^§.§`0§(§"!L§.§0y§,§7e§.§^"§);
         this.§2!G§ = false;
         §!!>§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §9!H§.§"B§(§7e§.§^"§).numberOfBirdsShot = §7?§.§4!H§.slingshot.§&!_§();
         this.§,!§ = new Date().time;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§9!'§.§7!Z§)
         {
            §9!'§.§7!Z§.start();
         }
         this.§[Z§();
         §3t§.setText(§4C§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
         §3t§.setText(§4C§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
         §3t§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         §3t§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§7,§ = false;
         this.§?<§();
         this.§>!G§();
         this.§>!-§ = true;
      }
      
      override public function deActivate() : void
      {
         §,!A§.§]Q§("navigationAttempt",this.§-9§);
         if(this.§=d§ && !this.§=d§.isCompleted)
         {
            this.§=d§.§!S§();
            ((§7?§.§4!H§ as §<e§).slingshot as §7!0§).§1e§();
            this.§=d§ = null;
         }
         super.deActivate();
         this.§8x§();
         this.§>!G§();
      }
      
      private function §8x§() : void
      {
         var _loc1_:int = 0;
         if(!this.§"!#§)
         {
            if(this.§[!R§ > §1o§)
            {
               this.§"!#§ = true;
               _loc1_ = Math.round(1000 / this.§[!R§ * this.§5!I§);
               if(§9!'§.§'!$§)
               {
                  §'^§.§`0§(§"!L§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §'^§.§`0§(§"!L§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §3!R§(param1:Number) : void
      {
         this.§[!R§ += param1;
         if(this.§[!R§ > 0)
         {
            ++this.§5!I§;
         }
      }
      
      private function §>!G§() : void
      {
         this.§[!R§ = § S§;
         this.§5!I§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:§&!!§ = null;
         if(this.§>!-§)
         {
            §1!C§.§]o§(§3t§);
            this.§>!-§ = false;
         }
         if(§1!C§.§84§)
         {
            if(this.§=d§ && !this.§=d§.isCompleted)
            {
               this.§=d§.§3J§();
            }
            return 0;
         }
         if(this.§,!"§)
         {
            §7?§.§3J§();
         }
         if(§7?§.isPaused)
         {
            return 0;
         }
         if(this.§=d§ && this.§=d§.isPaused)
         {
            this.§=d§.play();
         }
         if(this.§2!G§ && !this.§=E§)
         {
            if(§7?§.§4!H§.slingshot.§5#§())
            {
               ((§7?§.§4!H§ as §<e§).slingshot as §7!0§).§<!<§();
               this.§=d§ = §';§.§%!O§.§set §(null,null,null,§%!T§.§7C§);
               this.§=d§.play();
            }
            else if((_loc4_ = ((§7?§.§4!H§ as §<e§).slingshot as §7!0§).§]!&§()) != null)
            {
               this.§=d§ = _loc4_;
            }
            this.§=E§ = true;
            §1!C§.§]o§(§3t§);
         }
         if(§7?§.isPaused)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&c§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§3!R§(param1);
         this.§[Z§();
         var _loc3_:§0!@§ = §3t§.getItemByName("Button_LaunchCheetos") as §0!@§;
         if(§7?§.§4!H§.slingshot.mSlingShotState == §#K§.§-I§ && !this.§2!G§ && (§9!H§.credits >= §>!<§ || !(§7?§.§4!H§ as §<e§).§#n§()))
         {
            _loc3_.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc3_.setComponentState(§&!3§.§#!$§);
         }
         if(mNextState.length > 0)
         {
            return §&c§.STATE_STATUS_COMPLETED;
         }
         if(§7?§.§4!H§.slingshot.mSlingShotState == §#K§.§ !P§)
         {
            (§7?§.§4!H§.slingshot as §7!0§).§2Q§();
         }
         return §&c§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:String = §7e§.§^"§;
         var _loc2_:Object = §9!H§.§"B§(§7e§.§^"§);
         var _loc3_:int = §>_§.getScore();
         var _loc4_:int = §7e§.§]!7§(_loc1_,_loc3_);
         var _loc5_:Number = new Date().time;
         _loc2_.userId = §9!H§.§ o§.name;
         _loc2_.levelId = _loc1_;
         _loc2_.score = _loc3_;
         _loc2_.stars = _loc4_;
         _loc2_.blocks = §7@§.§1'§();
         _loc2_.gameplay = §7?§.§4!H§.§=8§().toString();
         _loc2_.numberOfBirdsShot = (_loc2_.numberOfBirdsShot as Number) - §7?§.§4!H§.slingshot.§&!_§();
         _loc2_.time = _loc5_ - this.§,!§;
         _loc2_.sessionId = §>S§.§9J§();
         _loc2_.userLevelId = §9!H§.userLevelId;
         _loc2_.security = §>S§.§ J§(_loc2_);
         this.callObject = {
            "type":§>S§.§2I§,
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
         var _loc6_:§>S§ = new §>S§(this.callObject,§#x§.§1P§,this,§>S§.§"!H§);
         §'^§.§`0§(§"!L§.§6>§,§7e§.§^"§);
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
            returnObject = §"!Q§.§!i§((e.currentTarget as URLLoader).data);
            if(returnObject.error)
            {
               switch(returnObject.error.code)
               {
                  case §@D§:
                     §#x§.§=!!§.§3!3§(§`L§.§9!P§);
                     §;s§.sCheetosPopups.showPopup(§0!U§.NO_CREDIT,"NO_CREDIT");
                     break;
                  case §%=§:
                     §#x§.§=!!§.§3!3§(§`L§.§9!P§);
                     §;s§.sCheetosPopups.showPopup(§0!U§.ERROR,§4C§.getText("Popup_Session_Expired"));
                     break;
                  default:
                     this.§']§(returnObject.error.message + " Code:" + returnObject.error.code);
               }
               return;
            }
            if(this.callObject.type != null)
            {
               switch(this.callObject.type)
               {
                  case §>S§.§2I§:
                     try
                     {
                        if(returnObject.hasWonPrize)
                        {
                           §9!H§.hasWonPrize = returnObject.hasWonPrize;
                        }
                        else
                        {
                           §9!H§.hasWonPrize = false;
                        }
                        if(returnObject.userPrizeId)
                        {
                           §9!H§.userPrizeId = returnObject.userPrizeId;
                        }
                        else
                        {
                           §9!H§.userPrizeId = null;
                        }
                        §,!A§.§9!M§("levelComplete",§7e§.§^"§,true);
                        §9!H§.§64§(§7e§.§3N§());
                        break;
                     }
                     catch(e:Error)
                     {
                        §']§(e);
                        break;
                     }
                     break;
                  case §>S§.§[0§:
                     levelProfile = §9!H§.§"B§(§7e§.§^"§);
                     securityPurchasePowerUp = §>S§.§^g§(returnObject.userID,returnObject.credits,this.§,!4§);
                     if(returnObject.security)
                     {
                        if(securityPurchasePowerUp.toUpperCase() == returnObject.security.toUpperCase())
                        {
                           if(returnObject.credits < § r§)
                           {
                              §#x§.§=!!§.§3!3§(§`L§.§9!P§);
                              §;s§.sCheetosPopups.showPopup(§0!U§.NO_CREDIT,"NO_CREDIT");
                              break;
                           }
                           this.§2!G§ = true;
                           break;
                        }
                        break;
                     }
                     break;
                  case §>S§.§%!K§:
                     try
                     {
                        §,!A§.§9!M§("levelStart",§7e§.§^"§);
                     }
                     catch(e:Error)
                     {
                        §']§(e);
                     }
                     if(returnObject.userLevelID)
                     {
                        §9!H§.userLevelId = returnObject.userLevelID;
                     }
                     try
                     {
                        credits = returnObject.credits as int;
                        §9!H§.credits = credits;
                     }
                     catch(e:Error)
                     {
                     }
                     if(returnObject != null && returnObject.spotPrize != null && returnObject.spotPrize && returnObject.credits >= § r§)
                     {
                        this.§7,§ = ((§7?§.§4!H§ as §<e§).§<J§ as §7v§).§0!L§();
                        if(!§1!C§.§84§ && this.§7,§)
                        {
                           §;s§.sCheetosPopups.showPopup(§0!U§.SPOT_PRIZE_AVAILABLE,"SPOT_PRIZE_AVAILABLE");
                        }
                        break;
                     }
                     if(returnObject.credits >= § r§)
                     {
                        ((§7?§.§4!H§ as §<e§).§<J§ as §7v§).§9g§();
                        break;
                     }
                     if(returnObject.credits < § r§)
                     {
                        §#x§.§=!!§.§3!3§(§`L§.§9!P§);
                        §;s§.sCheetosPopups.showPopup(§0!U§.NO_CREDIT,"NO_CREDIT");
                        break;
                     }
                     break;
               }
            }
         }
         catch(e:Error)
         {
            if(callObject.type != null && callObject.type == §>S§.§%!K§)
            {
               ((§7?§.§4!H§ as §<e§).§<J§ as §7v§).§9g§();
            }
         }
         this.§,!"§ = false;
         super.onComplete(e);
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         this.§,!"§ = false;
         §#x§.§=!!§.§3!3§(§`L§.§9!P§);
         §;s§.sCheetosPopups.showPopup(§0!U§.ERROR,§4C§.getText("Error"));
      }
      
      private function §']§(param1:*) : void
      {
         §#x§.§=!!§.§3!3§(§`L§.§9!P§);
         §;s§.sCheetosPopups.showPopup(§0!U§.ERROR,§4C§.getText("Error"));
      }
      
      override public function getVictoryState() : String
      {
         return § p§.§9!P§;
      }
      
      override public function getLoserState() : String
      {
         return §0!6§.§9!P§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
      {
         var checkBoxComponent:§&!3§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§'n§ = param3;
         if(component is §0!@§)
         {
            if(eventIndex == §'n§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §`e§.§`i§();
            }
            else if(eventIndex == §'n§.LISTENER_EVENT_MOUSE_UP)
            {
               §`e§.§+z§();
            }
         }
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               §1!C§.§9!!§();
               if(!§1!C§.§84§ && this.§7,§)
               {
                  §;s§.sCheetosPopups.showPopup(§0!U§.SPOT_PRIZE_AVAILABLE,"SPOT_PRIZE_AVAILABLE");
                  this.§7,§ = false;
               }
               break;
            case "PAUSE":
               mNextState = §>d§.§9!P§;
               break;
            case "RESTART_LEVEL":
               if((§7?§.§4!H§ as §<e§).§#n§())
               {
                  if(!§;s§.sCheetosPopups.showPopup(§0!U§.RESTART_LEVEL))
                  {
                     this.§ A§();
                  }
               }
               else
               {
                  this.§ A§();
               }
               break;
            case "CONTINUE":
               sCheetosPopups.hidePopup();
               break;
            case "LAUNCH_CHEETOS":
               if((§7?§.§4!H§ as §<e§).§#n§())
               {
                  if(!§;s§.sCheetosPopups.showPopup(§0!U§.§6!5§))
                  {
                     this.§'s§();
                  }
               }
               else
               {
                  this.§'s§();
               }
               break;
            case "ZOOM_IN":
               §>_§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §>_§.doUserZoom(false);
               break;
            case "BUTTON_NO":
               if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§6!5§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.CONFIRM_LEAVE)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§6!5§)
               {
                  this.§'s§();
                  sCheetosPopups.hidePopup();
               }
               else if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.RESTART_LEVEL)
               {
                  this.§ A§();
               }
               else if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.CONFIRM_LEAVE)
               {
                  this.navigationConfirmed();
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §&!3§;
               if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§6!5§)
               {
                  §#x§.§=!!§.§]s§ = !§#x§.§=!!§.§]s§;
                  if(§#x§.§=!!§.§]s§)
                  {
                     checkBoxComponent.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  else
                  {
                     checkBoxComponent.setComponentState(§&!3§.§;2§);
                  }
               }
               else
               {
                  §#x§.§=!!§.§9!E§ = !§#x§.§=!!§.§9!E§;
                  if(§#x§.§=!!§.§9!E§)
                  {
                     checkBoxComponent.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  else
                  {
                     checkBoxComponent.setComponentState(§&!3§.§;2§);
                  }
               }
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §,!A§.§9!M§("addCredits");
                  sCheetosPopups.hidePopup();
               }
               catch(e:Error)
               {
               }
               break;
            case "CONFIRM_LEAVE":
               try
               {
                  this.navigationConfirmed();
               }
               catch(e:Error)
               {
               }
         }
      }
      
      private function §'s§() : void
      {
         if(!this.§2!G§)
         {
            if((§7?§.§4!H§ as §<e§).§#n§())
            {
               §7?§.§3J§();
               this.§5!6§();
            }
            else
            {
               this.§2!G§ = true;
            }
         }
      }
      
      private function § A§() : void
      {
         §[!X§.§]!J§();
         mNextState = §[!X§.§9!P§;
      }
      
      private function §[Z§() : void
      {
         var _loc1_:int = §>_§.getScore();
         §3t§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §#x§.§[Y§.§`>§(§7e§.§^"§);
         §3t§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      private function §6§() : void
      {
         this.§,!"§ = true;
         this.callObject = {
            "type":§>S§.§%!K§,
            "sessionID":§>S§.§9J§(),
            "userID":§9!H§.§ o§.name,
            "levelId":§7e§.§^"§
         };
         new §>S§(this.callObject,§#x§.§%!K§,this,§>S§.§"!H§);
      }
      
      private function §5!6§() : void
      {
         this.§,!4§ = new Date().time;
         this.callObject = {
            "type":§>S§.§[0§,
            "sessionID":§>S§.§9J§(),
            "userID":§9!H§.§ o§.name,
            "purchaseTime":this.§,!4§
         };
         new §>S§(this.callObject,§#x§.§[0§,this,§>S§.§"!H§);
      }
      
      private function §?<§() : void
      {
         var _loc1_:§0!@§ = §3t§.getItemByName("Button_LaunchCheetos") as §0!@§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         _loc1_.setComponentState(§&!3§.§#!$§);
         if((§7?§.§4!H§ as §<e§).§#n§())
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
