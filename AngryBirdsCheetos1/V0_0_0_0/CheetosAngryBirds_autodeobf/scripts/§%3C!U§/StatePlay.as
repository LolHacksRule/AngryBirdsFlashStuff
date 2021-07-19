package §<!U§
{
   import § !+§.§0Z§;
   import §!J§.§[&§;
   import §"!+§.§2!U§;
   import §"!+§.§6!7§;
   import §"!+§.§=w§;
   import §%!$§.§=m§;
   import §&! §.§%!Q§;
   import §'!"§.§?!6§;
   import §+?§.§,!N§;
   import §+?§.§@]§;
   import §+a§.§,F§;
   import §+a§.§8!I§;
   import §2e§.§4!E§;
   import §3o§.§;!=§;
   import §4!6§.§,Y§;
   import §8!8§.§+!M§;
   import §9N§.§;c§;
   import §9N§.§^_§;
   import §<!+§.§[!!§;
   import §?w§.§!&§;
   import §?w§.§null§;
   import §@,§.§"j§;
   import §@R§.§<d§;
   import §@R§.§]^§;
   import §]2§.§[4§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   
   public class StatePlay extends §#W§ implements §=w§
   {
      
      public static const §`O§:String = "StatePlay";
      
      private static const §4!A§:Number = -10 * 1000;
      
      private static const §]&§:Number = 15 * 1000;
      
      private static const §'!-§:int = 0;
      
      private static const §[Q§:int = 3;
       
      
      private var §>z§:Boolean = true;
      
      private var §5s§:Boolean = false;
      
      private var §6!-§:Number = -10000.0;
      
      private var §2!W§:int = 0;
      
      private var §6B§:Boolean;
      
      private var callObject:Object;
      
      private var §5@§:Boolean = false;
      
      private var §`!X§:Number;
      
      private var § @§:Number;
      
      private var §=,§:Boolean = true;
      
      private var §@r§:Boolean = false;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §"c§ = new §,!N§(this);
         §"c§.init(§@]§.§3!6§.Views.View_LevelPlay[0]);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         §,Y§.addCallback("navigationAttempt",this.§7@§);
      }
      
      private function §7@§(param1:String) : void
      {
         var url:String = param1;
         §;!=§.§`S§ = url;
         if(§,l§.§,?§.§6!T§() != null && §,l§.§,?§.§6!T§() == StatePlay.§`O§)
         {
            §]u§.sCheetosPopups.showPopup(§8!I§.CONFIRM_LEAVE,§6!7§.getText("Popup_Confirm_Leave"));
            try
            {
               §"c§.container.setObjectToFront(§]u§.sCheetosPopups.container);
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
            §,Y§.§[[§("navigationConfirmed",§;!=§.§`S§);
            §]u§.sCheetosPopups.hidePopup();
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §[&§.§[]§();
         this.§+E§();
         §=m§.§,w§();
         §%!Q§.§4$§(§%!Q§.§@"§,§[!!§.§7!F§);
         this.§6B§ = false;
         §=m§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §;!=§.§"!'§(§[!!§.§7!F§).numberOfBirdsShot = §[&§.§&!'§.slingshot.§8c§();
         this.§`!X§ = new Date().time;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§0Z§.§4J§)
         {
            §0Z§.§4J§.start();
         }
         this.§>O§();
         §"c§.setText(§6!7§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
         §"c§.setText(§6!7§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
         §"c§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         §"c§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§5@§ = false;
         this.§;z§();
         this.§7M§();
         this.§=,§ = true;
      }
      
      override public function deActivate() : void
      {
         §,Y§.§!9§("navigationAttempt",this.§7@§);
         super.deActivate();
         this.§]D§();
         this.§7M§();
      }
      
      private function §]D§() : void
      {
         var _loc1_:int = 0;
         if(!this.§5s§)
         {
            if(this.§6!-§ > §]&§)
            {
               this.§5s§ = true;
               _loc1_ = Math.round(1000 / this.§6!-§ * this.§2!W§);
               if(§0Z§.§=2§)
               {
                  §%!Q§.§4$§(§%!Q§.§"!O§,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §%!Q§.§4$§(§%!Q§.§6!?§,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §?!E§(param1:Number) : void
      {
         this.§6!-§ += param1;
         if(this.§6!-§ > 0)
         {
            ++this.§2!W§;
         }
      }
      
      private function §7M§() : void
      {
         this.§6!-§ = §4!A§;
         this.§2!W§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§=,§)
         {
            §,F§.§ C§(§"c§);
         }
         if(§,F§.§,t§)
         {
            return 0;
         }
         if(this.§@r§)
         {
            §[&§.§[]§();
         }
         if(§[&§.§5!T§)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §[4§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§?!E§(param1);
         this.§>O§();
         var _loc3_:§+!M§ = §"c§.getItemByName("Button_LaunchCheetos") as §+!M§;
         if(§[&§.§&!'§.slingshot.mSlingShotState == §;c§.§?!S§ && !this.§6B§ && (§;!=§.credits >= §[Q§ || !(§[&§.§&!'§ as §!&§).§`!P§()))
         {
            _loc3_.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc3_.setComponentState(§<d§.§%^§);
         }
         if(mNextState.length > 0)
         {
            return §[4§.STATE_STATUS_COMPLETED;
         }
         if(§[&§.§&!'§.slingshot.mSlingShotState == §;c§.§<b§)
         {
            (§[&§.§&!'§.slingshot as §null§).§9!N§();
         }
         return §[4§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:String = §[!!§.§7!F§;
         var _loc2_:Object = §;!=§.§"!'§(§[!!§.§7!F§);
         var _loc3_:int = §4b§.getScore();
         var _loc4_:int = §[!!§.§``§(_loc1_,_loc3_);
         var _loc5_:Number = new Date().time;
         _loc2_.userId = §;!=§.§`!;§.name;
         _loc2_.levelId = _loc1_;
         _loc2_.score = _loc3_;
         _loc2_.stars = _loc4_;
         _loc2_.blocks = §^_§.§%!5§();
         _loc2_.gameplay = §[&§.§&!'§.§%!Z§().toString();
         _loc2_.numberOfBirdsShot = (_loc2_.numberOfBirdsShot as Number) - §[&§.§&!'§.slingshot.§8c§();
         _loc2_.time = _loc5_ - this.§`!X§;
         _loc2_.sessionId = §4!E§.§0E§();
         _loc2_.userLevelId = §;!=§.userLevelId;
         _loc2_.security = §4!E§.§-!X§(_loc2_);
         this.callObject = {
            "type":§4!E§.§'!<§,
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
         var _loc6_:§4!E§ = new §4!E§(this.callObject,§,l§.§#!8§,this,§4!E§.§;4§);
         §%!Q§.§4$§(§%!Q§.§2!?§,§[!!§.§7!F§);
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
            returnObject = §2!U§.§1!#§((e.currentTarget as URLLoader).data);
            if(returnObject.error)
            {
               switch(returnObject.error.code)
               {
                  case §@!B§:
                     §,l§.§,?§.§3C§(§6l§.§`O§);
                     §]u§.sCheetosPopups.showPopup(§8!I§.NO_CREDIT,"NO_CREDIT");
                     break;
                  case §0?§:
                     §,l§.§,?§.§3C§(§6l§.§`O§);
                     §]u§.sCheetosPopups.showPopup(§8!I§.ERROR,§6!7§.getText("Popup_Session_Expired"));
                     break;
                  default:
                     this.§<p§(returnObject.error.message + " Code:" + returnObject.error.code);
               }
               return;
            }
            if(this.callObject.type != null)
            {
               switch(this.callObject.type)
               {
                  case §4!E§.§'!<§:
                     try
                     {
                        if(returnObject.hasWonPrize)
                        {
                           §;!=§.hasWonPrize = returnObject.hasWonPrize;
                        }
                        else
                        {
                           §;!=§.hasWonPrize = false;
                        }
                        if(returnObject.userPrizeId)
                        {
                           §;!=§.userPrizeId = returnObject.userPrizeId;
                        }
                        else
                        {
                           §;!=§.userPrizeId = null;
                        }
                        §,Y§.§[[§("levelComplete",§[!!§.§7!F§,true);
                        §;!=§.§%j§(§[!!§.§?I§());
                        break;
                     }
                     catch(e:Error)
                     {
                        §<p§(e);
                        break;
                     }
                     break;
                  case §4!E§.§9p§:
                     levelProfile = §;!=§.§"!'§(§[!!§.§7!F§);
                     securityPurchasePowerUp = §4!E§.§2!>§(returnObject.userID,returnObject.credits,this.§ @§);
                     if(returnObject.security)
                     {
                        if(securityPurchasePowerUp.toUpperCase() == returnObject.security.toUpperCase())
                        {
                           if(returnObject.credits < §'!-§)
                           {
                              §,l§.§,?§.§3C§(§6l§.§`O§);
                              §]u§.sCheetosPopups.showPopup(§8!I§.NO_CREDIT,"NO_CREDIT");
                              break;
                           }
                           this.§`K§();
                           break;
                        }
                        break;
                     }
                     break;
                  case §4!E§.§1!Q§:
                     try
                     {
                        §,Y§.§[[§("levelStart",§[!!§.§7!F§);
                     }
                     catch(e:Error)
                     {
                        §<p§(e);
                     }
                     if(returnObject.userLevelID)
                     {
                        §;!=§.userLevelId = returnObject.userLevelID;
                     }
                     try
                     {
                        credits = returnObject.credits as int;
                        §;!=§.credits = credits;
                     }
                     catch(e:Error)
                     {
                     }
                     if(returnObject != null && returnObject.spotPrize != null && returnObject.spotPrize && returnObject.credits >= §'!-§)
                     {
                        this.§5@§ = ((§[&§.§&!'§ as §!&§).§ !4§ as §?!6§).§"k§();
                        if(!§,F§.§,t§ && this.§5@§)
                        {
                           §]u§.sCheetosPopups.showPopup(§8!I§.SPOT_PRIZE_AVAILABLE,"SPOT_PRIZE_AVAILABLE");
                        }
                        break;
                     }
                     if(returnObject.credits >= §'!-§)
                     {
                        ((§[&§.§&!'§ as §!&§).§ !4§ as §?!6§).§"!0§();
                        break;
                     }
                     if(returnObject.credits < §'!-§)
                     {
                        §,l§.§,?§.§3C§(§6l§.§`O§);
                        §]u§.sCheetosPopups.showPopup(§8!I§.NO_CREDIT,"NO_CREDIT");
                        break;
                     }
                     break;
               }
            }
         }
         catch(e:Error)
         {
         }
         this.§@r§ = false;
         super.onComplete(e);
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         this.§@r§ = false;
         §,l§.§,?§.§3C§(§6l§.§`O§);
         §]u§.sCheetosPopups.showPopup(§8!I§.ERROR,§6!7§.getText("Error"));
      }
      
      private function §<p§(param1:*) : void
      {
         §,l§.§,?§.§3C§(§6l§.§`O§);
         §]u§.sCheetosPopups.showPopup(§8!I§.ERROR,§6!7§.getText("Error"));
      }
      
      override public function getVictoryState() : String
      {
         return §^!§.§`O§;
      }
      
      override public function getLoserState() : String
      {
         return §<K§.§`O§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]^§) : void
      {
         var checkBoxComponent:§<d§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§]^§ = param3;
         if(component is §+!M§)
         {
            if(eventIndex == §]^§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §"j§.§%!@§();
            }
            else if(eventIndex == §]^§.LISTENER_EVENT_MOUSE_UP)
            {
               §"j§.§1!2§();
            }
         }
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               §,F§.§%_§();
               if(!§,F§.§,t§ && this.§5@§)
               {
                  §]u§.sCheetosPopups.showPopup(§8!I§.SPOT_PRIZE_AVAILABLE,"SPOT_PRIZE_AVAILABLE");
                  this.§5@§ = false;
               }
               break;
            case "PAUSE":
               mNextState = § !#§.§`O§;
               break;
            case "RESTART_LEVEL":
               if((§[&§.§&!'§ as §!&§).§`!P§())
               {
                  if(!§]u§.sCheetosPopups.showPopup(§8!I§.RESTART_LEVEL))
                  {
                     this.§;!F§();
                  }
               }
               else
               {
                  this.§;!F§();
               }
               break;
            case "CONTINUE":
               sCheetosPopups.hidePopup();
               break;
            case "LAUNCH_CHEETOS":
               if((§[&§.§&!'§ as §!&§).§`!P§())
               {
                  if(!§]u§.sCheetosPopups.showPopup(§8!I§.§0H§))
                  {
                     this.§;X§();
                  }
               }
               else
               {
                  this.§;X§();
               }
               break;
            case "ZOOM_IN":
               §4b§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §4b§.doUserZoom(false);
               break;
            case "BUTTON_NO":
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§0H§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.CONFIRM_LEAVE)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§0H§)
               {
                  this.§;X§();
                  sCheetosPopups.hidePopup();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.RESTART_LEVEL)
               {
                  this.§;!F§();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.CONFIRM_LEAVE)
               {
                  this.navigationConfirmed();
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §<d§;
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§0H§)
               {
                  §,l§.§,?§.§#! § = !§,l§.§,?§.§#! §;
                  if(§,l§.§,?§.§#! §)
                  {
                     checkBoxComponent.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  else
                  {
                     checkBoxComponent.setComponentState(§<d§.§^#§);
                  }
               }
               else
               {
                  §,l§.§,?§.§+d§ = !§,l§.§,?§.§+d§;
                  if(§,l§.§,?§.§+d§)
                  {
                     checkBoxComponent.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  else
                  {
                     checkBoxComponent.setComponentState(§<d§.§^#§);
                  }
               }
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §,Y§.§[[§("addCredits");
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
      
      private function §;X§() : void
      {
         if(!this.§6B§)
         {
            if((§[&§.§&!'§ as §!&§).§`!P§())
            {
               §[&§.§[]§();
               this.§47§();
            }
            else
            {
               this.§`K§();
            }
         }
      }
      
      private function §`K§() : void
      {
         this.§6B§ = true;
         (§[&§.§&!'§ as §!&§).§@!,§();
         (§[&§.§&!'§.slingshot as §null§).§`K§();
         §[&§.§&!'§.camera.goToBirdView();
         §,F§.§ C§(§"c§);
      }
      
      private function §;!F§() : void
      {
         §0"§.§!7§();
         mNextState = §0"§.§`O§;
      }
      
      private function §>O§() : void
      {
         var _loc1_:int = §4b§.getScore();
         §"c§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §,l§.§3!,§.§=!V§(§[!!§.§7!F§);
         §"c§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      private function §+E§() : void
      {
         this.§@r§ = true;
         this.callObject = {
            "type":§4!E§.§1!Q§,
            "sessionID":§4!E§.§0E§(),
            "userID":§;!=§.§`!;§.name,
            "levelId":§[!!§.§7!F§
         };
         new §4!E§(this.callObject,§,l§.§1!Q§,this,§4!E§.§;4§);
      }
      
      private function §47§() : void
      {
         this.§ @§ = new Date().time;
         this.callObject = {
            "type":§4!E§.§9p§,
            "sessionID":§4!E§.§0E§(),
            "userID":§;!=§.§`!;§.name,
            "purchaseTime":this.§ @§
         };
         new §4!E§(this.callObject,§,l§.§9p§,this,§4!E§.§;4§);
      }
      
      private function §;z§() : void
      {
         var _loc1_:§+!M§ = §"c§.getItemByName("Button_LaunchCheetos") as §+!M§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§[&§.§&!'§ as §!&§).§`!P§())
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
