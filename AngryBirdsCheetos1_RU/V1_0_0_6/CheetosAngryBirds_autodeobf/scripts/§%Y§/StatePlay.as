package §%Y§
{
   import §!7§.§!>§;
   import §!7§.§`R§;
   import §#!<§.§8!3§;
   import §#!]§.§6'§;
   import §%!5§.§;D§;
   import §'!N§.§71§;
   import §'!N§.§9!O§;
   import §'O§.§!#§;
   import §'O§.§1E§;
   import §+X§.§]D§;
   import §,B§.§#!!§;
   import §,B§.§4!0§;
   import §-!§.§-§;
   import §0H§.§7M§;
   import §1!§.§@!Q§;
   import §2>§.§?!1§;
   import §6<§.§9H§;
   import §6<§.§=$§;
   import §6<§.§`<§;
   import §8!`§.§%G§;
   import §8!`§.§%t§;
   import §;!K§.§+!4§;
   import §;!K§.§9T§;
   import §;[§.§7!F§;
   import §=@§.§4k§;
   import §=@§.§5c§;
   import §=@§.§<E§;
   import §]m§.§-D§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   
   public class StatePlay extends §]V§ implements §5c§
   {
      
      public static const §7!Q§:String = "StatePlay";
      
      private static const §<r§:Number = -10 * 1000;
      
      private static const §[#§:Number = 15 * 1000;
      
      private static const §!&§:int = 0;
      
      private static const §6!1§:int = 3;
       
      
      private var §0W§:Boolean = true;
      
      private var §0!+§:Boolean = false;
      
      private var §]x§:Number = -10000.0;
      
      private var §1x§:int = 0;
      
      private var §7V§:Boolean;
      
      private var §%-§:Boolean;
      
      private var callObject:Object;
      
      private var §77§:Number;
      
      private var §>!U§:Number;
      
      private var §<^§:Boolean = true;
      
      private var §'8§:Boolean = false;
      
      private var §<!F§:§!>§ = null;
      
      private var §[!V§:Boolean = false;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>#§ = new §+!4§(this);
         §>#§.init(§9T§.§>!`§.Views.View_LevelPlay[0]);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         §;D§.addCallback("navigationAttempt",this.§,U§);
      }
      
      private function §,U§(param1:String) : void
      {
         var url:String = param1;
         §8!3§.§%!O§ = url;
         if(§1R§.§]c§.§%P§() != null && §1R§.§]c§.§%P§() == StatePlay.§7!Q§)
         {
            §,5§.sCheetosPopups.showPopup(§4!0§.CONFIRM_LEAVE,§4k§.getText("Popup_Confirm_Leave"));
            try
            {
               §>#§.container.setObjectToFront(§,5§.sCheetosPopups.container);
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
            §;D§.§;!6§("navigationConfirmed",§8!3§.§%!O§);
            §,5§.sCheetosPopups.hidePopup();
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         if(this.§<!F§ != null)
         {
            this.§<!F§.§7!E§();
            this.§<!F§ = null;
         }
         ((§@!Q§.§7l§ as §9H§).§"!X§ as §]D§).§?!G§();
         §@!Q§.§5m§();
         this.§%-§ = false;
         this.§`6§();
         §?!1§.§>a§();
         §1E§.§6!S§(§!#§.§0!'§,§7M§.§9-§);
         this.§7V§ = false;
         §?!1§.§0!O§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §8!3§.§]z§(§7M§.§9-§).numberOfBirdsShot = §@!Q§.§7l§.slingshot.§!V§();
         this.§77§ = new Date().time;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§-§.§-G§)
         {
            §-§.§-G§.start();
         }
         if(this.§<!F§)
         {
            this.§<!F§.play();
         }
         this.§6r§();
         §>#§.setText(§4k§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
         §>#§.setText(§4k§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
         §>#§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         §>#§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§0!I§();
         this.§?p§();
         this.§<^§ = true;
      }
      
      override public function deActivate() : void
      {
         §;D§.§#"§("navigationAttempt",this.§,U§);
         if(this.§<!F§ && !this.§<!F§.isCompleted)
         {
            this.§<!F§.§?!]§();
         }
         super.deActivate();
         this.§<!`§();
         this.§?p§();
      }
      
      private function §<!`§() : void
      {
         var _loc1_:int = 0;
         if(!this.§0!+§)
         {
            if(this.§]x§ > §[#§)
            {
               this.§0!+§ = true;
               _loc1_ = Math.round(1000 / this.§]x§ * this.§1x§);
               if(§-§.§?7§)
               {
                  §1E§.§6!S§(§!#§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §1E§.§6!S§(§!#§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §4[§(param1:Number) : void
      {
         this.§]x§ += param1;
         if(this.§]x§ > 0)
         {
            ++this.§1x§;
         }
      }
      
      private function §?p§() : void
      {
         this.§]x§ = §<r§;
         this.§1x§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(§@!Q§.isPaused)
         {
            return 0;
         }
         if(this.§<^§)
         {
            this.§<^§ = false;
            §#!!§.§@!W§(§>#§);
         }
         if(this.§7V§ && !this.§%-§)
         {
            (§@!Q§.§7l§ as §9H§).§#6§();
            if(§@!Q§.§7l§.slingshot.§5n§())
            {
               ((§@!Q§.§7l§ as §9H§).slingshot as §=$§).§4`§();
               this.§<!F§ = §`R§.§!!8§.§ B§(null,null,null,§`<§.§5!V§);
               this.§<!F§.play();
            }
            else if(this.§<!F§ == null)
            {
               this.§<!F§ = ((§@!Q§.§7l§ as §9H§).slingshot as §=$§).§=U§();
            }
            this.§%-§ = true;
            §#!!§.§@!W§(§>#§);
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-D§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§4[§(param1);
         this.§6r§();
         var _loc3_:§7!F§ = §>#§.getItemByName("Button_LaunchCheetos") as §7!F§;
         if(§@!Q§.§7l§.slingshot.mSlingShotState == §%t§.§-X§ && !this.§%-§ && (§8!3§.credits >= §6!1§ || !(§@!Q§.§7l§ as §9H§).§8u§()))
         {
            _loc3_.setComponentState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc3_.setComponentState(§71§.§'!,§);
         }
         if(mNextState.length > 0)
         {
            return §-D§.STATE_STATUS_COMPLETED;
         }
         if(§@!Q§.§7l§.slingshot.mSlingShotState == §%t§.§use §)
         {
            (§@!Q§.§7l§.slingshot as §=$§).§ true§();
         }
         return §-D§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:String = §7M§.§9-§;
         var _loc2_:Object = §8!3§.§]z§(§7M§.§9-§);
         var _loc3_:int = §'!Q§.getScore();
         var _loc4_:int = §7M§.§=2§(_loc1_,_loc3_);
         var _loc5_:Number = new Date().time;
         _loc2_.userId = §8!3§.§^!E§.name;
         _loc2_.levelId = _loc1_;
         _loc2_.score = _loc3_;
         _loc2_.stars = _loc4_;
         _loc2_.blocks = §%G§.§4g§();
         _loc2_.gameplay = §@!Q§.§7l§.§5!K§().toString();
         _loc2_.numberOfBirdsShot = (_loc2_.numberOfBirdsShot as int) - (§@!Q§.§7l§.slingshot.§!V§() as int);
         _loc2_.time = _loc5_ - this.§77§;
         _loc2_.sessionId = §6'§.§^!R§();
         _loc2_.userLevelId = §8!3§.userLevelId;
         _loc2_.security = §6'§.§-!Q§(_loc2_);
         this.callObject = {
            "type":§6'§.§@!6§,
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
         var _loc6_:§6'§ = new §6'§(this.callObject,§1R§.§4!8§,this,§6'§.§?>§);
         §1E§.§6!S§(§!#§.§6s§,§7M§.§9-§);
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
            returnObject = §<E§.§!C§((e.currentTarget as URLLoader).data);
            if(returnObject.error)
            {
               switch(returnObject.error.code)
               {
                  case §?z§:
                     §1R§.§]c§.§%!G§(§@4§.§7!Q§);
                     §,5§.sCheetosPopups.showPopup(§4!0§.NO_CREDIT,"NO_CREDIT");
                     break;
                  case §!!6§:
                     §1R§.§]c§.§%!G§(§@4§.§7!Q§);
                     §,5§.sCheetosPopups.showPopup(§4!0§.ERROR,§4k§.getText("Popup_Session_Expired"));
                     break;
                  default:
                     this.§ #§(returnObject.error.message + " Code:" + returnObject.error.code);
               }
               return;
            }
            if(this.callObject.type != null)
            {
               switch(this.callObject.type)
               {
                  case §6'§.§@!6§:
                     try
                     {
                        §;D§.§;!6§("levelComplete",§7M§.§9-§,true);
                        §8!3§.§^_§(§7M§.§]b§());
                     }
                     catch(e:Error)
                     {
                        § #§(e);
                     }
                     break;
                  case §6'§.§^J§:
                     if(§4!0§.§<3§ == false)
                     {
                        §@!Q§.§5m§();
                     }
                     levelProfile = §8!3§.§]z§(§7M§.§9-§);
                     securityPurchasePowerUp = §6'§.§+!-§(returnObject.userID,returnObject.credits,this.§>!U§);
                     if(returnObject.security)
                     {
                        if(securityPurchasePowerUp.toUpperCase() == returnObject.security.toUpperCase())
                        {
                           if(returnObject.credits < §!&§)
                           {
                              §1R§.§]c§.§%!G§(§@4§.§7!Q§);
                              §,5§.sCheetosPopups.showPopup(§4!0§.NO_CREDIT,"NO_CREDIT");
                           }
                           else
                           {
                              this.§7V§ = true;
                           }
                        }
                     }
                     break;
                  case §6'§.§"M§:
                     try
                     {
                        §;D§.§;!6§("levelStart",§7M§.§9-§);
                     }
                     catch(e:Error)
                     {
                        § #§(e);
                     }
                     if(returnObject.userLevelID)
                     {
                        §8!3§.userLevelId = returnObject.userLevelID;
                     }
                     try
                     {
                        credits = returnObject.credits as int;
                        §8!3§.credits = credits;
                     }
                     catch(e:Error)
                     {
                     }
                     if(returnObject.credits < §!&§)
                     {
                        §1R§.§]c§.§%!G§(§@4§.§7!Q§);
                        §,5§.sCheetosPopups.showPopup(§4!0§.NO_CREDIT,"NO_CREDIT");
                     }
               }
            }
         }
         catch(e:Error)
         {
         }
         this.§'8§ = false;
         if(!§#!!§.§<3§ && !§4!0§.§<3§)
         {
            §@!Q§.§5m§();
         }
         super.onComplete(e);
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         this.§'8§ = false;
         §1R§.§]c§.§%!G§(§@4§.§7!Q§);
         §,5§.sCheetosPopups.showPopup(§4!0§.ERROR,§4k§.getText("Error"));
      }
      
      private function § #§(param1:*) : void
      {
         §1R§.§]c§.§%!G§(§@4§.§7!Q§);
         §,5§.sCheetosPopups.showPopup(§4!0§.ERROR,§4k§.getText("Error"));
      }
      
      override public function getVictoryState() : String
      {
         return §2]§.§7!Q§;
      }
      
      override public function getLoserState() : String
      {
         return §null§.§7!Q§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9!O§) : void
      {
         var checkBoxComponent:§71§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§9!O§ = param3;
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               §#!!§.§5C§();
               break;
            case "PAUSE":
               mNextState = §9g§.§7!Q§;
               break;
            case "RESTART_LEVEL":
               if((§@!Q§.§7l§ as §9H§).§8u§())
               {
                  if(!§,5§.sCheetosPopups.showPopup(§4!0§.RESTART_LEVEL))
                  {
                     this.§=o§();
                  }
               }
               else
               {
                  this.§=o§();
               }
               break;
            case "CONTINUE":
               sCheetosPopups.hidePopup();
               break;
            case "LAUNCH_CHEETOS":
               if((§@!Q§.§7l§ as §9H§).§8u§())
               {
                  if(!§,5§.sCheetosPopups.showPopup(§4!0§.§,M§))
                  {
                     this.§0!C§();
                  }
               }
               else
               {
                  this.§0!C§();
               }
               break;
            case "ZOOM_IN":
               §'!Q§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §'!Q§.doUserZoom(false);
               break;
            case "BUTTON_NO":
               if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.§,M§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.CONFIRM_LEAVE)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.§,M§)
               {
                  this.§0!C§();
                  sCheetosPopups.hidePopup();
               }
               else if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.RESTART_LEVEL)
               {
                  this.§=o§();
               }
               else if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.CONFIRM_LEAVE)
               {
                  this.navigationConfirmed();
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §71§;
               if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.§,M§)
               {
                  §1R§.§]c§.§3!>§ = !§1R§.§]c§.§3!>§;
                  if(§1R§.§]c§.§3!>§)
                  {
                     checkBoxComponent.setComponentState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  else
                  {
                     checkBoxComponent.setComponentState(§71§.§69§);
                  }
                  break;
               }
               §1R§.§]c§.§0]§ = !§1R§.§]c§.§0]§;
               if(§1R§.§]c§.§0]§)
               {
                  checkBoxComponent.setComponentState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§71§.§69§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §;D§.§;!6§("addCredits");
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
      
      private function §0!C§() : void
      {
         if(!this.§7V§)
         {
            if((§@!Q§.§7l§ as §9H§).§8u§())
            {
               §@!Q§.§?!]§();
               this.§6!,§();
            }
            else
            {
               this.§7V§ = true;
            }
         }
      }
      
      private function §=o§() : void
      {
         §2O§.§]! §();
         mNextState = §2O§.§7!Q§;
      }
      
      private function §6r§() : void
      {
         var _loc1_:int = §'!Q§.getScore();
         §>#§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §1R§.§0!N§.§"!B§(§7M§.§9-§);
         §>#§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      private function §`6§() : void
      {
         this.§'8§ = true;
         this.callObject = {
            "type":§6'§.§"M§,
            "sessionID":§6'§.§^!R§(),
            "userID":§8!3§.§^!E§.name,
            "levelId":§7M§.§9-§
         };
         new §6'§(this.callObject,§1R§.§"M§,this,§6'§.§?>§);
      }
      
      private function §6!,§() : void
      {
         this.§>!U§ = new Date().time;
         this.callObject = {
            "type":§6'§.§^J§,
            "sessionID":§6'§.§^!R§(),
            "userID":§8!3§.§^!E§.name,
            "purchaseTime":this.§>!U§
         };
         new §6'§(this.callObject,§1R§.§^J§,this,§6'§.§?>§);
      }
      
      private function §0!I§() : void
      {
         var _loc1_:§7!F§ = §>#§.getItemByName("Button_LaunchCheetos") as §7!F§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         _loc1_.setComponentState(§71§.§'!,§);
         if((§@!Q§.§7l§ as §9H§).§8u§())
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
