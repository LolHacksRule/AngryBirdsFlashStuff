package §'Q§
{
   import §!!S§.§>a§;
   import §!!S§.§^P§;
   import §#!5§.§>!0§;
   import §#K§.§,3§;
   import §0&§.§0z§;
   import §0&§.§<!+§;
   import §0&§.§@o§;
   import §3!M§.§`!;§;
   import §4!R§.§@,§;
   import §6!P§.§88§;
   import §6!P§.§^!>§;
   import §6=§.§"!^§;
   import §6=§.§`!<§;
   import §7z§.§0!D§;
   import §7z§.§3a§;
   import §;!X§.§7`§;
   import §=q§.§<!,§;
   import §?!F§.§0!Y§;
   import §?[§.§[t§;
   import §@w§.§1§;
   import §[I§.§5y§;
   import §[I§.§8!B§;
   import §[I§.§;!K§;
   import §^3§.§=!Z§;
   import §^3§.§@!"§;
   import §`B§.§ P§;
   import §`B§.§-Z§;
   import §`M§.§'C§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   
   public class StatePlay extends §&T§ implements §5y§
   {
      
      public static const §1o§:String = "StatePlay";
      
      private static const §<=§:Number = -10 * 1000;
      
      private static const §8§:Number = 15 * 1000;
      
      private static const §[W§:int = 0;
      
      private static const § 3§:int = 3;
       
      
      private var §;!!§:Boolean = true;
      
      private var §6c§:Boolean = false;
      
      private var §%=§:Number = -10000.0;
      
      private var §4!+§:int = 0;
      
      private var §2<§:Boolean;
      
      private var §]!Z§:Boolean;
      
      private var callObject:Object;
      
      private var §`j§:Number;
      
      private var §6t§:Number;
      
      private var §2L§:Boolean = true;
      
      private var §>t§:Boolean = false;
      
      private var §<!%§:§88§ = null;
      
      private var § !>§:Boolean = false;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2m§ = new §-Z§(this);
         §2m§.init(§ P§.§!A§.Views.View_LevelPlay[0]);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         §>!0§.addCallback("navigationAttempt",this.§0!=§);
      }
      
      private function §0!=§(param1:String) : void
      {
         var url:String = param1;
         §@,§.§'!'§ = url;
         if(§4+§.§;U§.§]!1§() != null && §4+§.§;U§.§]!1§() == StatePlay.§1o§)
         {
            §=!R§.sCheetosPopups.showPopup(§`!<§.CONFIRM_LEAVE,§8!B§.getText("Popup_Confirm_Leave"));
            try
            {
               §2m§.container.setObjectToFront(§=!R§.sCheetosPopups.container);
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
            §>!0§.§7!I§("navigationConfirmed",§@,§.§'!'§);
            §=!R§.sCheetosPopups.hidePopup();
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         if(this.§<!%§ != null)
         {
            this.§<!%§.§-!B§();
            this.§<!%§ = null;
         }
         ((§7`§.§2'§ as §@o§).§<R§ as §[t§).§+2§();
         §7`§.§,!V§();
         this.§]!Z§ = false;
         this.§'u§();
         §,3§.§`8§();
         §@!"§.§2^§(§=!Z§.§+!%§,§<!,§.§1D§);
         this.§2<§ = false;
         §,3§.§7!=§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §@,§.§=!J§(§<!,§.§1D§).numberOfBirdsShot = §7`§.§2'§.slingshot.§<$§();
         this.§`j§ = new Date().time;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§'C§.§3b§)
         {
            §'C§.§3b§.start();
         }
         if(this.§<!%§)
         {
            this.§<!%§.play();
         }
         this.§`!#§();
         §2m§.setText(§8!B§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
         §2m§.setText(§8!B§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
         §2m§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         §2m§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§=!X§();
         this.§"W§();
         this.§2L§ = true;
      }
      
      override public function deActivate() : void
      {
         §>!0§.§9!6§("navigationAttempt",this.§0!=§);
         if(this.§<!%§ && !this.§<!%§.isCompleted)
         {
            this.§<!%§.§,-§();
         }
         super.deActivate();
         this.§5!"§();
         this.§"W§();
      }
      
      private function §5!"§() : void
      {
         var _loc1_:int = 0;
         if(!this.§6c§)
         {
            if(this.§%=§ > §8§)
            {
               this.§6c§ = true;
               _loc1_ = Math.round(1000 / this.§%=§ * this.§4!+§);
               if(§'C§.§+w§)
               {
                  §@!"§.§2^§(§=!Z§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §@!"§.§2^§(§=!Z§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §+!W§(param1:Number) : void
      {
         this.§%=§ += param1;
         if(this.§%=§ > 0)
         {
            ++this.§4!+§;
         }
      }
      
      private function §"W§() : void
      {
         this.§%=§ = §<=§;
         this.§4!+§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(§7`§.isPaused)
         {
            return 0;
         }
         if(this.§2L§)
         {
            this.§2L§ = false;
            §"!^§.§&#§(§2m§);
         }
         if(this.§2<§ && !this.§]!Z§)
         {
            (§7`§.§2'§ as §@o§).§<x§();
            if(§7`§.§2'§.slingshot.§2i§())
            {
               ((§7`§.§2'§ as §@o§).slingshot as §<!+§).§9q§();
               this.§<!%§ = §^!>§.§[P§.§@m§(null,null,null,§0z§.§1!#§);
               this.§<!%§.play();
            }
            else if(this.§<!%§ == null)
            {
               this.§<!%§ = ((§7`§.§2'§ as §@o§).slingshot as §<!+§).§,!H§();
            }
            this.§]!Z§ = true;
            §"!^§.§&#§(§2m§);
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§+!W§(param1);
         this.§`!#§();
         var _loc3_:§`!;§ = §2m§.getItemByName("Button_LaunchCheetos") as §`!;§;
         if(§7`§.§2'§.slingshot.mSlingShotState == §0!D§.§%2§ && !this.§]!Z§ && (§@,§.credits >= § 3§ || !(§7`§.§2'§ as §@o§).§ null§()))
         {
            _loc3_.setComponentState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc3_.setComponentState(§>a§.§9E§);
         }
         if(mNextState.length > 0)
         {
            return §0!Y§.STATE_STATUS_COMPLETED;
         }
         if(§7`§.§2'§.slingshot.mSlingShotState == §0!D§.§=N§)
         {
            (§7`§.§2'§.slingshot as §<!+§).§?!'§();
         }
         return §0!Y§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:String = §<!,§.§1D§;
         var _loc2_:Object = §@,§.§=!J§(§<!,§.§1D§);
         var _loc3_:int = §;e§.getScore();
         var _loc4_:int = §<!,§.§<[§(_loc1_,_loc3_);
         var _loc5_:Number = new Date().time;
         _loc2_.userId = §@,§.§&!;§.name;
         _loc2_.levelId = _loc1_;
         _loc2_.score = _loc3_;
         _loc2_.stars = _loc4_;
         _loc2_.blocks = §3a§.§,&§();
         _loc2_.gameplay = §7`§.§2'§.§54§().toString();
         _loc2_.numberOfBirdsShot = (_loc2_.numberOfBirdsShot as int) - (§7`§.§2'§.slingshot.§<$§() as int);
         _loc2_.time = _loc5_ - this.§`j§;
         _loc2_.sessionId = §1§.§3!B§();
         _loc2_.userLevelId = §@,§.userLevelId;
         _loc2_.security = §1§.§,!P§(_loc2_);
         this.callObject = {
            "type":§1§.§%w§,
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
         var _loc6_:§1§ = new §1§(this.callObject,§4+§.§,! §,this,§1§.§>!V§);
         §@!"§.§2^§(§=!Z§.§]J§,§<!,§.§1D§);
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
            returnObject = §;!K§.§#[§((e.currentTarget as URLLoader).data);
            if(returnObject.error)
            {
               switch(returnObject.error.code)
               {
                  case §4l§:
                     §4+§.§;U§.§8z§(§@Q§.§1o§);
                     §=!R§.sCheetosPopups.showPopup(§`!<§.NO_CREDIT,"NO_CREDIT");
                     break;
                  case § !C§:
                     §4+§.§;U§.§8z§(§@Q§.§1o§);
                     §=!R§.sCheetosPopups.showPopup(§`!<§.ERROR,§8!B§.getText("Popup_Session_Expired"));
                     break;
                  default:
                     this.§6+§(returnObject.error.message + " Code:" + returnObject.error.code);
               }
               return;
            }
            if(this.callObject.type != null)
            {
               switch(this.callObject.type)
               {
                  case §1§.§%w§:
                     try
                     {
                        §>!0§.§7!I§("levelComplete",§<!,§.§1D§,true);
                        §@,§.§,!B§(§<!,§.§8`§());
                     }
                     catch(e:Error)
                     {
                        §6+§(e);
                     }
                     break;
                  case §1§.§1a§:
                     if(§`!<§.§^!!§ == false)
                     {
                        §7`§.§,!V§();
                     }
                     levelProfile = §@,§.§=!J§(§<!,§.§1D§);
                     securityPurchasePowerUp = §1§.§&!+§(returnObject.userID,returnObject.credits,this.§6t§);
                     if(returnObject.security)
                     {
                        if(securityPurchasePowerUp.toUpperCase() == returnObject.security.toUpperCase())
                        {
                           if(returnObject.credits < §[W§)
                           {
                              §4+§.§;U§.§8z§(§@Q§.§1o§);
                              §=!R§.sCheetosPopups.showPopup(§`!<§.NO_CREDIT,"NO_CREDIT");
                           }
                           else
                           {
                              this.§2<§ = true;
                           }
                        }
                     }
                     break;
                  case §1§.§2@§:
                     try
                     {
                        §>!0§.§7!I§("levelStart",§<!,§.§1D§);
                     }
                     catch(e:Error)
                     {
                        §6+§(e);
                     }
                     if(returnObject.userLevelID)
                     {
                        §@,§.userLevelId = returnObject.userLevelID;
                     }
                     try
                     {
                        credits = returnObject.credits as int;
                        §@,§.credits = credits;
                     }
                     catch(e:Error)
                     {
                     }
                     if(returnObject.credits < §[W§)
                     {
                        §4+§.§;U§.§8z§(§@Q§.§1o§);
                        §=!R§.sCheetosPopups.showPopup(§`!<§.NO_CREDIT,"NO_CREDIT");
                     }
               }
            }
         }
         catch(e:Error)
         {
         }
         this.§>t§ = false;
         if(!§"!^§.§^!!§ && !§`!<§.§^!!§)
         {
            §7`§.§,!V§();
         }
         super.onComplete(e);
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         this.§>t§ = false;
         §4+§.§;U§.§8z§(§@Q§.§1o§);
         §=!R§.sCheetosPopups.showPopup(§`!<§.ERROR,§8!B§.getText("Error"));
      }
      
      private function §6+§(param1:*) : void
      {
         §4+§.§;U§.§8z§(§@Q§.§1o§);
         §=!R§.sCheetosPopups.showPopup(§`!<§.ERROR,§8!B§.getText("Error"));
      }
      
      override public function getVictoryState() : String
      {
         return §'L§.§1o§;
      }
      
      override public function getLoserState() : String
      {
         return §&!'§.§1o§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^P§) : void
      {
         var checkBoxComponent:§>a§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§^P§ = param3;
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               §"!^§.§]5§();
               break;
            case "PAUSE":
               mNextState = §8!O§.§1o§;
               break;
            case "RESTART_LEVEL":
               if((§7`§.§2'§ as §@o§).§ null§())
               {
                  if(!§=!R§.sCheetosPopups.showPopup(§`!<§.RESTART_LEVEL))
                  {
                     this.§+@§();
                  }
               }
               else
               {
                  this.§+@§();
               }
               break;
            case "CONTINUE":
               sCheetosPopups.hidePopup();
               break;
            case "LAUNCH_CHEETOS":
               if((§7`§.§2'§ as §@o§).§ null§())
               {
                  if(!§=!R§.sCheetosPopups.showPopup(§`!<§.§>![§))
                  {
                     this.§3i§();
                  }
               }
               else
               {
                  this.§3i§();
               }
               break;
            case "ZOOM_IN":
               §;e§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §;e§.doUserZoom(false);
               break;
            case "BUTTON_NO":
               if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.§>![§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.CONFIRM_LEAVE)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.§>![§)
               {
                  this.§3i§();
                  sCheetosPopups.hidePopup();
               }
               else if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.RESTART_LEVEL)
               {
                  this.§+@§();
               }
               else if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.CONFIRM_LEAVE)
               {
                  this.navigationConfirmed();
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §>a§;
               if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.§>![§)
               {
                  §4+§.§;U§.§=M§ = !§4+§.§;U§.§=M§;
                  if(§4+§.§;U§.§=M§)
                  {
                     checkBoxComponent.setComponentState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  else
                  {
                     checkBoxComponent.setComponentState(§>a§.§%b§);
                  }
                  break;
               }
               §4+§.§;U§.§^5§ = !§4+§.§;U§.§^5§;
               if(§4+§.§;U§.§^5§)
               {
                  checkBoxComponent.setComponentState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§>a§.§%b§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §>!0§.§7!I§("addCredits");
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
      
      private function §3i§() : void
      {
         if(!this.§2<§)
         {
            if((§7`§.§2'§ as §@o§).§ null§())
            {
               §7`§.§,-§();
               this.§94§();
            }
            else
            {
               this.§2<§ = true;
            }
         }
      }
      
      private function §+@§() : void
      {
         §8!E§.§1!5§();
         mNextState = §8!E§.§1o§;
      }
      
      private function §`!#§() : void
      {
         var _loc1_:int = §;e§.getScore();
         §2m§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §4+§.§2!K§.§^i§(§<!,§.§1D§);
         §2m§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      private function §'u§() : void
      {
         this.§>t§ = true;
         this.callObject = {
            "type":§1§.§2@§,
            "sessionID":§1§.§3!B§(),
            "userID":§@,§.§&!;§.name,
            "levelId":§<!,§.§1D§
         };
         new §1§(this.callObject,§4+§.§2@§,this,§1§.§>!V§);
      }
      
      private function §94§() : void
      {
         this.§6t§ = new Date().time;
         this.callObject = {
            "type":§1§.§1a§,
            "sessionID":§1§.§3!B§(),
            "userID":§@,§.§&!;§.name,
            "purchaseTime":this.§6t§
         };
         new §1§(this.callObject,§4+§.§1a§,this,§1§.§>!V§);
      }
      
      private function §=!X§() : void
      {
         var _loc1_:§`!;§ = §2m§.getItemByName("Button_LaunchCheetos") as §`!;§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         _loc1_.setComponentState(§>a§.§9E§);
         if((§7`§.§2'§ as §@o§).§ null§())
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
