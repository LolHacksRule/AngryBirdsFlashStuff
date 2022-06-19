package §<!U§
{
   import §!J§.§[&§;
   import §![§.§4!6§;
   import §#K§.§<!+§;
   import §&! §.§%!Q§;
   import §&N§.§6§;
   import §'G§.§false§;
   import §-M§.§+?§;
   import §-M§.§3!6§;
   import §-V§.§9d§;
   import §-V§.§@R§;
   import §0!>§.§-i§;
   import §0!>§.§1!#§;
   import §0!>§.§=w§;
   import §2!6§.§%!$§;
   import §2e§.§4!E§;
   import §3!C§.§3o§;
   import §4!H§.§[4§;
   import §7W§.§ !+§;
   import §?!1§.§+a§;
   import §?!1§.§,t§;
   import §?'§.§'L§;
   import §?'§.§74§;
   import §?w§.§!&§;
   import §?w§.§null§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import §package§.§'!"§;
   
   public class StatePlay extends §#W§ implements §-i§
   {
      
      public static const §`O§:String = "StatePlay";
      
      private static const §47§:Number = -10 * 1000;
      
      private static const §4!A§:Number = 15 * 1000;
      
      private static const §]&§:int = 0;
      
      private static const §'!-§:int = 3;
       
      
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
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §"c§ = new §3!6§(this);
         §"c§.init(§+?§.§@]§.Views.View_LevelPlay[0]);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         §4!6§.addCallback("navigationAttempt",this.§@r§);
      }
      
      private function §@r§(param1:String) : void
      {
         var url:String = param1;
         §3o§.§">§ = url;
         if(§,l§.§,?§.§0!B§() != null && §,l§.§,?§.§0!B§() == StatePlay.§`O§)
         {
            §]u§.sCheetosPopups.showPopup(§+a§.CONFIRM_LEAVE,§1!#§.getText("Popup_Confirm_Leave"));
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
            §4!6§.§]l§("navigationConfirmed",§3o§.§">§);
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
         this.§>O§();
         §%!$§.§=!J§();
         §%!Q§.§4$§(§%!Q§.§@"§,§<!+§.§^R§);
         this.§6B§ = false;
         §%!$§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §3o§.§,!0§(§<!+§.§^R§).numberOfBirdsShot = §[&§.§&!'§.slingshot.§`v§();
         this.§`!X§ = new Date().time;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§ !+§.§ Z§)
         {
            § !+§.§ Z§.start();
         }
         this.§;X§();
         §"c§.setText(§1!#§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
         §"c§.setText(§1!#§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
         §"c§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         §"c§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§5@§ = false;
         this.§;z§();
         this.§?!E§();
         this.§=,§ = true;
      }
      
      override public function deActivate() : void
      {
         §4!6§.§@_§("navigationAttempt",this.§@r§);
         super.deActivate();
         this.§7@§();
         this.§?!E§();
      }
      
      private function §7@§() : void
      {
         var _loc1_:int = 0;
         if(!this.§5s§)
         {
            if(this.§6!-§ > §4!A§)
            {
               this.§5s§ = true;
               _loc1_ = Math.round(1000 / this.§6!-§ * this.§2!W§);
               if(§ !+§.§?t§)
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
      
      private function §]D§(param1:Number) : void
      {
         this.§6!-§ += param1;
         if(this.§6!-§ > 0)
         {
            ++this.§2!W§;
         }
      }
      
      private function §?!E§() : void
      {
         this.§6!-§ = §47§;
         this.§2!W§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§=,§)
         {
            §,t§.§ ! §(§"c§);
         }
         if(§,t§.§#!=§)
         {
            return 0;
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
         this.§]D§(param1);
         this.§;X§();
         var _loc3_:§false§ = §"c§.getItemByName("Button_LaunchCheetos") as §false§;
         if(§[&§.§&!'§.slingshot.mSlingShotState == §'L§.§0'§ && !this.§6B§ && (§3o§.credits >= §'!-§ || !(§[&§.§&!'§ as §!&§).§`!P§()))
         {
            _loc3_.setComponentState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc3_.setComponentState(§9d§.§^#§);
         }
         if(mNextState.length > 0)
         {
            return §[4§.STATE_STATUS_COMPLETED;
         }
         if(§[&§.§&!'§.slingshot.mSlingShotState == §'L§.§"!R§)
         {
            (§[&§.§&!'§.slingshot as §null§).§9!N§();
         }
         return §[4§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:String = §<!+§.§^R§;
         var _loc2_:Object = §3o§.§,!0§(§<!+§.§^R§);
         var _loc3_:int = §4b§.getScore();
         var _loc4_:int = §<!+§.§,!Q§(_loc1_,_loc3_);
         var _loc5_:Number = new Date().time;
         _loc2_.userId = §3o§.§-j§.name;
         _loc2_.levelId = _loc1_;
         _loc2_.score = _loc3_;
         _loc2_.stars = _loc4_;
         _loc2_.blocks = §74§.§=!A§();
         _loc2_.gameplay = §[&§.§&!'§.§"C§().toString();
         _loc2_.numberOfBirdsShot = (_loc2_.numberOfBirdsShot as Number) - §[&§.§&!'§.slingshot.§`v§();
         _loc2_.time = _loc5_ - this.§`!X§;
         _loc2_.sessionId = §4!E§.§0E§();
         _loc2_.userLevelId = §3o§.userLevelId;
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
         §%!Q§.§4$§(§%!Q§.§2!?§,§<!+§.§^R§);
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
            returnObject = §=w§.§`m§((e.currentTarget as URLLoader).data);
            if(returnObject.error)
            {
               switch(returnObject.error.code)
               {
                  case §@!B§:
                     §,l§.§,?§.§2y§(§6l§.§`O§);
                     §]u§.sCheetosPopups.showPopup(§+a§.NO_CREDIT,"NO_CREDIT");
                     break;
                  case §0?§:
                     §,l§.§,?§.§2y§(§6l§.§`O§);
                     §]u§.sCheetosPopups.showPopup(§+a§.ERROR,§1!#§.getText("Popup_Session_Expired"));
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
                           §3o§.hasWonPrize = returnObject.hasWonPrize;
                        }
                        else
                        {
                           §3o§.hasWonPrize = false;
                        }
                        if(returnObject.userPrizeId)
                        {
                           §3o§.userPrizeId = returnObject.userPrizeId;
                        }
                        else
                        {
                           §3o§.userPrizeId = null;
                        }
                        §4!6§.§]l§("levelComplete",§<!+§.§^R§,true);
                        §3o§.§"v§(§<!+§.§+i§());
                     }
                     catch(e:Error)
                     {
                        §<p§(e);
                     }
                     break;
                  case §4!E§.§9p§:
                     levelProfile = §3o§.§,!0§(§<!+§.§^R§);
                     securityPurchasePowerUp = §4!E§.§2!>§(returnObject.userID,returnObject.credits,this.§ @§);
                     if(returnObject.security)
                     {
                        if(securityPurchasePowerUp.toUpperCase() == returnObject.security.toUpperCase())
                        {
                           if(returnObject.credits < §]&§)
                           {
                              §,l§.§,?§.§2y§(§6l§.§`O§);
                              §]u§.sCheetosPopups.showPopup(§+a§.NO_CREDIT,"NO_CREDIT");
                           }
                           else
                           {
                              this.§`K§();
                           }
                        }
                     }
                     break;
                  case §4!E§.§1!Q§:
                     try
                     {
                        §4!6§.§]l§("levelStart",§<!+§.§^R§);
                     }
                     catch(e:Error)
                     {
                        §<p§(e);
                     }
                     if(returnObject.userLevelID)
                     {
                        §3o§.userLevelId = returnObject.userLevelID;
                     }
                     try
                     {
                        credits = returnObject.credits as int;
                        §3o§.credits = credits;
                     }
                     catch(e:Error)
                     {
                     }
                     if(returnObject != null && returnObject.spotPrize != null && returnObject.spotPrize && returnObject.credits >= §]&§)
                     {
                        this.§5@§ = ((§[&§.§&!'§ as §!&§).§,8§ as §'!"§).§+!X§();
                        if(!§,t§.§#!=§ && this.§5@§)
                        {
                           §]u§.sCheetosPopups.showPopup(§+a§.SPOT_PRIZE_AVAILABLE,"SPOT_PRIZE_AVAILABLE");
                        }
                     }
                     else if(returnObject.credits >= §]&§)
                     {
                        ((§[&§.§&!'§ as §!&§).§,8§ as §'!"§).§"k§();
                     }
                     else if(returnObject.credits < §]&§)
                     {
                        §,l§.§,?§.§2y§(§6l§.§`O§);
                        §]u§.sCheetosPopups.showPopup(§+a§.NO_CREDIT,"NO_CREDIT");
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
         §,l§.§,?§.§2y§(§6l§.§`O§);
         §]u§.sCheetosPopups.showPopup(§+a§.ERROR,§1!#§.getText("Error"));
      }
      
      private function §<p§(param1:*) : void
      {
         §,l§.§,?§.§2y§(§6l§.§`O§);
         §]u§.sCheetosPopups.showPopup(§+a§.ERROR,§1!#§.getText("Error"));
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@R§) : void
      {
         var checkBoxComponent:§9d§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§@R§ = param3;
         if(component is §false§)
         {
            if(eventIndex == §@R§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §6§.§@!Y§();
            }
            else if(eventIndex == §@R§.LISTENER_EVENT_MOUSE_UP)
            {
               §6§.§%!@§();
            }
         }
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               §,t§.§[!<§();
               if(!§,t§.§#!=§ && this.§5@§)
               {
                  §]u§.sCheetosPopups.showPopup(§+a§.SPOT_PRIZE_AVAILABLE,"SPOT_PRIZE_AVAILABLE");
                  this.§5@§ = false;
               }
               break;
            case "PAUSE":
               mNextState = § !#§.§`O§;
               break;
            case "RESTART_LEVEL":
               if((§[&§.§&!'§ as §!&§).§`!P§())
               {
                  if(!§]u§.sCheetosPopups.showPopup(§+a§.RESTART_LEVEL))
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
                  if(!§]u§.sCheetosPopups.showPopup(§+a§.§%!M§))
                  {
                     this.§7M§();
                  }
               }
               else
               {
                  this.§7M§();
               }
               break;
            case "ZOOM_IN":
               §4b§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §4b§.doUserZoom(false);
               break;
            case "BUTTON_NO":
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.§%!M§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.CONFIRM_LEAVE)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.§%!M§)
               {
                  this.§7M§();
                  sCheetosPopups.hidePopup();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.RESTART_LEVEL)
               {
                  this.§;!F§();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.CONFIRM_LEAVE)
               {
                  this.navigationConfirmed();
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §9d§;
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.§%!M§)
               {
                  §,l§.§,?§.§#! § = !§,l§.§,?§.§#! §;
                  if(§,l§.§,?§.§#! §)
                  {
                     checkBoxComponent.setComponentState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  else
                  {
                     checkBoxComponent.setComponentState(§9d§.§%C§);
                  }
                  break;
               }
               §,l§.§,?§.§+d§ = !§,l§.§,?§.§+d§;
               if(§,l§.§,?§.§+d§)
               {
                  checkBoxComponent.setComponentState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§9d§.§%C§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §4!6§.§]l§("addCredits");
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
      
      private function §7M§() : void
      {
         if(!this.§6B§)
         {
            if((§[&§.§&!'§ as §!&§).§`!P§())
            {
               §[&§.§[]§();
               this.§+E§();
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
         §,t§.§ ! §(§"c§);
      }
      
      private function §;!F§() : void
      {
         §0"§.§!7§();
         mNextState = §0"§.§`O§;
      }
      
      private function §;X§() : void
      {
         var _loc1_:int = §4b§.getScore();
         §"c§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §,l§.§3!,§.§=!V§(§<!+§.§^R§);
         §"c§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      private function §>O§() : void
      {
         this.callObject = {
            "type":§4!E§.§1!Q§,
            "sessionID":§4!E§.§0E§(),
            "userID":§3o§.§-j§.name,
            "levelId":§<!+§.§^R§
         };
         new §4!E§(this.callObject,§,l§.§1!Q§,this,§4!E§.§;4§);
      }
      
      private function §+E§() : void
      {
         this.§ @§ = new Date().time;
         this.callObject = {
            "type":§4!E§.§9p§,
            "sessionID":§4!E§.§0E§(),
            "userID":§3o§.§-j§.name,
            "purchaseTime":this.§ @§
         };
         new §4!E§(this.callObject,§,l§.§9p§,this,§4!E§.§;4§);
      }
      
      private function §;z§() : void
      {
         var _loc1_:§false§ = §"c§.getItemByName("Button_LaunchCheetos") as §false§;
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
