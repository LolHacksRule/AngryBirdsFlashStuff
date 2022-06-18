package §,!?§
{
   import §!!V§.§<!>§;
   import §!!V§.§[Q§;
   import §"!S§.§"_§;
   import §"4§.§<h§;
   import §&!S§.§]F§;
   import §-!O§.§7'§;
   import §1E§.§2^§;
   import §3X§.§#!B§;
   import §3X§.§%+§;
   import §3X§.§9§;
   import §4x§.§"!X§;
   import §4x§.§?R§;
   import §82§.§&A§;
   import §9!Z§.§2!,§;
   import §9!Z§.§<!W§;
   import §;!<§.§"$§;
   import §;!<§.§-U§;
   import §;!<§.§6C§;
   import §>8§.§?2§;
   import §?u§.§+V§;
   import §]!&§.§#?§;
   import §]!5§.§-!3§;
   import §]!5§.§=j§;
   import §]!Y§.§4]§;
   import §]!Y§.§5W§;
   import §^!!§.§'!_§;
   import §`!@§.§&[§;
   import §`!@§.§^@§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   
   public class StatePlay extends §6t§ implements §"$§
   {
      
      public static const §@B§:String = "StatePlay";
      
      private static const §"!%§:Number = -10 * 1000;
      
      private static const §[!J§:Number = 15 * 1000;
      
      private static const §5!a§:int = 0;
      
      private static const §4!-§:int = 3;
       
      
      private var §&+§:Boolean = true;
      
      private var § I§:Boolean = false;
      
      private var §=J§:Number = -10000.0;
      
      private var §+1§:int = 0;
      
      private var §>j§:Boolean;
      
      private var §;V§:Boolean;
      
      private var callObject:Object;
      
      private var §'<§:Number;
      
      private var §>b§:Number;
      
      private var §<!@§:Boolean = true;
      
      private var § !'§:Boolean = false;
      
      private var §%&§:§?R§ = null;
      
      private var §^p§:Boolean = false;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §??§ = new §5W§(this);
         §??§.init(§4]§.§['§.Views.View_LevelPlay[0]);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         §+V§.addCallback("navigationAttempt",this.§#!'§);
      }
      
      private function §#!'§(param1:String) : void
      {
         var url:String = param1;
         §'!_§.§[!H§ = url;
         if(§2!-§.§"7§.§1B§() != null && §2!-§.§"7§.§1B§() == StatePlay.§@B§)
         {
            §-! §.sCheetosPopups.showPopup(§<!W§.CONFIRM_LEAVE,§6C§.getText("Popup_Confirm_Leave"));
            try
            {
               §??§.container.setObjectToFront(§-! §.sCheetosPopups.container);
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
            §+V§.§3!'§("navigationConfirmed",§'!_§.§[!H§);
            §-! §.sCheetosPopups.hidePopup();
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         if(this.§%&§ != null)
         {
            this.§%&§.§ p§();
            this.§%&§ = null;
         }
         ((§"_§.§+!^§ as §#!B§).§@!T§ as §]F§).§`P§();
         §"_§.§@A§();
         this.§;V§ = false;
         this.§;![§();
         §2^§.§ !]§();
         §^@§.§ !9§(§&[§.§4;§,§?2§.§=$§);
         this.§>j§ = false;
         §2^§.§ !C§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §'!_§.§@I§(§?2§.§=$§).numberOfBirdsShot = §"_§.§+!^§.slingshot.§8P§();
         this.§'<§ = new Date().time;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§<h§.§%!]§)
         {
            §<h§.§%!]§.start();
         }
         if(this.§%&§)
         {
            this.§%&§.play();
         }
         this.§#R§();
         §??§.setText(§6C§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
         §??§.setText(§6C§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
         §??§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         §??§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§!!Z§();
         this.§6!Z§();
         this.§<!@§ = true;
      }
      
      override public function deActivate() : void
      {
         §+V§.§&&§("navigationAttempt",this.§#!'§);
         if(this.§%&§ && !this.§%&§.isCompleted)
         {
            this.§%&§.§5q§();
         }
         super.deActivate();
         this.§<!6§();
         this.§6!Z§();
      }
      
      private function §<!6§() : void
      {
         var _loc1_:int = 0;
         if(!this.§ I§)
         {
            if(this.§=J§ > §[!J§)
            {
               this.§ I§ = true;
               _loc1_ = Math.round(1000 / this.§=J§ * this.§+1§);
               if(§<h§.§+"§)
               {
                  §^@§.§ !9§(§&[§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §^@§.§ !9§(§&[§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §#7§(param1:Number) : void
      {
         this.§=J§ += param1;
         if(this.§=J§ > 0)
         {
            ++this.§+1§;
         }
      }
      
      private function §6!Z§() : void
      {
         this.§=J§ = §"!%§;
         this.§+1§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(§"_§.isPaused)
         {
            return 0;
         }
         if(this.§<!@§)
         {
            this.§<!@§ = false;
            §2!,§.§"z§(§??§);
         }
         if(this.§>j§ && !this.§;V§)
         {
            (§"_§.§+!^§ as §#!B§).§?H§();
            if(§"_§.§+!^§.slingshot.§8!$§())
            {
               ((§"_§.§+!^§ as §#!B§).slingshot as §%+§).§#z§();
               this.§%&§ = §"!X§.§0E§.§5`§(null,null,null,§9§.§<T§);
               this.§%&§.play();
            }
            else if(this.§%&§ == null)
            {
               this.§%&§ = ((§"_§.§+!^§ as §#!B§).slingshot as §%+§).§+I§();
            }
            this.§;V§ = true;
            §2!,§.§"z§(§??§);
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §7'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§#7§(param1);
         this.§#R§();
         var _loc3_:§#?§ = §??§.getItemByName("Button_LaunchCheetos") as §#?§;
         if(§"_§.§+!^§.slingshot.mSlingShotState == §<!>§.dynamic && !this.§;V§ && (§'!_§.credits >= §4!-§ || !(§"_§.§+!^§ as §#!B§).§=!N§()))
         {
            _loc3_.setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc3_.setComponentState(§=j§.§in §);
         }
         if(mNextState.length > 0)
         {
            return §7'§.STATE_STATUS_COMPLETED;
         }
         if(§"_§.§+!^§.slingshot.mSlingShotState == §<!>§.§?J§)
         {
            (§"_§.§+!^§.slingshot as §%+§).§50§();
         }
         return §7'§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:String = §?2§.§=$§;
         var _loc2_:Object = §'!_§.§@I§(§?2§.§=$§);
         var _loc3_:int = §"r§.getScore();
         var _loc4_:int = §?2§.§#!E§(_loc1_,_loc3_);
         var _loc5_:Number = new Date().time;
         _loc2_.userId = §'!_§.§=!"§.name;
         _loc2_.levelId = _loc1_;
         _loc2_.score = _loc3_;
         _loc2_.stars = _loc4_;
         _loc2_.blocks = §[Q§.§%=§();
         _loc2_.gameplay = §"_§.§+!^§.§@c§().toString();
         _loc2_.numberOfBirdsShot = (_loc2_.numberOfBirdsShot as int) - (§"_§.§+!^§.slingshot.§8P§() as int);
         _loc2_.time = _loc5_ - this.§'<§;
         _loc2_.sessionId = §&A§.§?![§();
         _loc2_.userLevelId = §'!_§.userLevelId;
         _loc2_.security = §&A§.§ !U§(_loc2_);
         this.callObject = {
            "type":§&A§.§3!D§,
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
         var _loc6_:§&A§ = new §&A§(this.callObject,§2!-§.§@!+§,this,§&A§.§6!Q§);
         §^@§.§ !9§(§&[§.§%,§,§?2§.§=$§);
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
            returnObject = §-U§.§[f§((e.currentTarget as URLLoader).data);
            if(returnObject.error)
            {
               switch(returnObject.error.code)
               {
                  case §%K§:
                     §2!-§.§"7§.§&q§(§&c§.§@B§);
                     §-! §.sCheetosPopups.showPopup(§<!W§.NO_CREDIT,"NO_CREDIT");
                     break;
                  case §8Y§:
                     §2!-§.§"7§.§&q§(§&c§.§@B§);
                     §-! §.sCheetosPopups.showPopup(§<!W§.ERROR,§6C§.getText("Popup_Session_Expired"));
                     break;
                  default:
                     this.§=;§(returnObject.error.message + " Code:" + returnObject.error.code);
               }
               return;
            }
            if(this.callObject.type != null)
            {
               switch(this.callObject.type)
               {
                  case §&A§.§3!D§:
                     try
                     {
                        §+V§.§3!'§("levelComplete",§?2§.§=$§,true);
                        §'!_§.§@J§(§?2§.§?f§());
                     }
                     catch(e:Error)
                     {
                        §=;§(e);
                     }
                     break;
                  case §&A§.§"-§:
                     if(§<!W§.§<+§ == false)
                     {
                        §"_§.§@A§();
                     }
                     levelProfile = §'!_§.§@I§(§?2§.§=$§);
                     securityPurchasePowerUp = §&A§.§8X§(returnObject.userID,returnObject.credits,this.§>b§);
                     if(returnObject.security)
                     {
                        if(securityPurchasePowerUp.toUpperCase() == returnObject.security.toUpperCase())
                        {
                           if(returnObject.credits < §5!a§)
                           {
                              §2!-§.§"7§.§&q§(§&c§.§@B§);
                              §-! §.sCheetosPopups.showPopup(§<!W§.NO_CREDIT,"NO_CREDIT");
                           }
                           else
                           {
                              this.§>j§ = true;
                           }
                        }
                     }
                     break;
                  case §&A§.§"o§:
                     try
                     {
                        §+V§.§3!'§("levelStart",§?2§.§=$§);
                     }
                     catch(e:Error)
                     {
                        §=;§(e);
                     }
                     if(returnObject.userLevelID)
                     {
                        §'!_§.userLevelId = returnObject.userLevelID;
                     }
                     try
                     {
                        credits = returnObject.credits as int;
                        §'!_§.credits = credits;
                     }
                     catch(e:Error)
                     {
                     }
                     if(returnObject.credits < §5!a§)
                     {
                        §2!-§.§"7§.§&q§(§&c§.§@B§);
                        §-! §.sCheetosPopups.showPopup(§<!W§.NO_CREDIT,"NO_CREDIT");
                     }
               }
            }
         }
         catch(e:Error)
         {
         }
         this.§ !'§ = false;
         if(!§2!,§.§<+§ && !§<!W§.§<+§)
         {
            §"_§.§@A§();
         }
         super.onComplete(e);
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         this.§ !'§ = false;
         §2!-§.§"7§.§&q§(§&c§.§@B§);
         §-! §.sCheetosPopups.showPopup(§<!W§.ERROR,§6C§.getText("Error"));
      }
      
      private function §=;§(param1:*) : void
      {
         §2!-§.§"7§.§&q§(§&c§.§@B§);
         §-! §.sCheetosPopups.showPopup(§<!W§.ERROR,§6C§.getText("Error"));
      }
      
      override public function getVictoryState() : String
      {
         return §@3§.§@B§;
      }
      
      override public function getLoserState() : String
      {
         return §;>§.§@B§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!3§) : void
      {
         var checkBoxComponent:§=j§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§-!3§ = param3;
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               §2!,§.§+!`§();
               break;
            case "PAUSE":
               mNextState = §#§.§@B§;
               break;
            case "RESTART_LEVEL":
               if((§"_§.§+!^§ as §#!B§).§=!N§())
               {
                  if(!§-! §.sCheetosPopups.showPopup(§<!W§.RESTART_LEVEL))
                  {
                     this.§3!X§();
                  }
               }
               else
               {
                  this.§3!X§();
               }
               break;
            case "CONTINUE":
               sCheetosPopups.hidePopup();
               break;
            case "LAUNCH_CHEETOS":
               if((§"_§.§+!^§ as §#!B§).§=!N§())
               {
                  if(!§-! §.sCheetosPopups.showPopup(§<!W§.§#!$§))
                  {
                     this.§5!H§();
                  }
               }
               else
               {
                  this.§5!H§();
               }
               break;
            case "ZOOM_IN":
               §"r§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §"r§.doUserZoom(false);
               break;
            case "BUTTON_NO":
               if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.§#!$§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.CONFIRM_LEAVE)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.§#!$§)
               {
                  this.§5!H§();
                  sCheetosPopups.hidePopup();
               }
               else if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.RESTART_LEVEL)
               {
                  this.§3!X§();
               }
               else if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.CONFIRM_LEAVE)
               {
                  this.navigationConfirmed();
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §=j§;
               if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.§#!$§)
               {
                  §2!-§.§"7§.§;z§ = !§2!-§.§"7§.§;z§;
                  if(§2!-§.§"7§.§;z§)
                  {
                     checkBoxComponent.setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  else
                  {
                     checkBoxComponent.setComponentState(§=j§.§@!9§);
                  }
                  break;
               }
               §2!-§.§"7§.§^I§ = !§2!-§.§"7§.§^I§;
               if(§2!-§.§"7§.§^I§)
               {
                  checkBoxComponent.setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§=j§.§@!9§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §+V§.§3!'§("addCredits");
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
      
      private function §5!H§() : void
      {
         if(!this.§>j§)
         {
            if((§"_§.§+!^§ as §#!B§).§=!N§())
            {
               §"_§.§5q§();
               this.§,l§();
            }
            else
            {
               this.§>j§ = true;
            }
         }
      }
      
      private function §3!X§() : void
      {
         §0T§.§6k§();
         mNextState = §0T§.§@B§;
      }
      
      private function §#R§() : void
      {
         var _loc1_:int = §"r§.getScore();
         §??§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §2!-§.§5R§.§!h§(§?2§.§=$§);
         §??§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      private function §;![§() : void
      {
         this.§ !'§ = true;
         this.callObject = {
            "type":§&A§.§"o§,
            "sessionID":§&A§.§?![§(),
            "userID":§'!_§.§=!"§.name,
            "levelId":§?2§.§=$§
         };
         new §&A§(this.callObject,§2!-§.§"o§,this,§&A§.§6!Q§);
      }
      
      private function §,l§() : void
      {
         this.§>b§ = new Date().time;
         this.callObject = {
            "type":§&A§.§"-§,
            "sessionID":§&A§.§?![§(),
            "userID":§'!_§.§=!"§.name,
            "purchaseTime":this.§>b§
         };
         new §&A§(this.callObject,§2!-§.§"-§,this,§&A§.§6!Q§);
      }
      
      private function §!!Z§() : void
      {
         var _loc1_:§#?§ = §??§.getItemByName("Button_LaunchCheetos") as §#?§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         _loc1_.setComponentState(§=j§.§in §);
         if((§"_§.§+!^§ as §#!B§).§=!N§())
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
