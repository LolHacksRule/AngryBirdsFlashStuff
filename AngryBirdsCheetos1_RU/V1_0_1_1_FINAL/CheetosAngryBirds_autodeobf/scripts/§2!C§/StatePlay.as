package §2!C§
{
   import § A§.§"Y§;
   import §!$§.§!!O§;
   import §&h§.§+Y§;
   import §+!X§.§8v§;
   import §,+§.§4!Z§;
   import §,+§.§6!&§;
   import §0V§.§;9§;
   import §0V§.§^K§;
   import §1e§.§&!R§;
   import §1e§.§>c§;
   import §2K§.§ 3§;
   import §3!8§.§8[§;
   import §3!8§.§[X§;
   import §3!8§.§`p§;
   import §39§.§-W§;
   import §3`§.§'c§;
   import §6!K§.§#![§;
   import §6!K§.§3l§;
   import §6!S§.§!<§;
   import §6!S§.§,!9§;
   import §9!S§.§%!%§;
   import §9!S§.§+!=§;
   import §9!S§.§@!G§;
   import §94§.§&!7§;
   import §>!D§.§3Q§;
   import §>!D§.§;,§;
   import §[p§.§"w§;
   import §]u§.§+e§;
   import §^Q§.§,^§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   
   public class StatePlay extends §8x§ implements §8[§
   {
      
      public static const §+!a§:String = "StatePlay";
      
      private static const §]!1§:Number = -10 * 1000;
      
      private static const §@q§:Number = 15 * 1000;
      
      private static const §^!V§:int = 0;
      
      private static const §,!c§:int = 3;
       
      
      private var §?!1§:Boolean = true;
      
      private var §8K§:Boolean = false;
      
      private var §!!<§:Number = -10000.0;
      
      private var §?!S§:int = 0;
      
      private var §?3§:Boolean;
      
      private var §9!L§:Boolean;
      
      private var callObject:Object;
      
      private var §6!4§:Number;
      
      private var §8A§:Number;
      
      private var §6k§:Boolean = true;
      
      private var §"7§:Boolean = false;
      
      private var §7K§:§,!9§ = null;
      
      private var §=-§:Boolean = false;
      
      private var §>;§:int;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?!?§ = new §;,§(this);
         §?!?§.init(§3Q§.§?6§.Views.View_LevelPlay[0]);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         §+e§.addCallback("navigationAttempt",this.§#d§);
      }
      
      private function §#d§(param1:String) : void
      {
         var url:String = param1;
         §"w§.§2N§ = url;
         if(§7d§.§`!<§.§<!Z§() != null && §7d§.§`!<§.§<!Z§() == StatePlay.§+!a§)
         {
            §1!b§.sCheetosPopups.showPopup(§&!R§.CONFIRM_LEAVE,§[X§.getText("Popup_Confirm_Leave"));
            try
            {
               §?!?§.container.setObjectToFront(§1!b§.sCheetosPopups.container);
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
            §+e§.§5?§("navigationConfirmed",§"w§.§2N§);
            §1!b§.sCheetosPopups.hidePopup();
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§>;§ = §,^§.§0K§.slingshot.§9C§() as int;
         if(this.§7K§ != null)
         {
            this.§7K§.§5!!§();
            this.§7K§ = null;
         }
         ((§,^§.§0K§ as §+!=§).§1?§ as §'c§).§^!>§();
         §,^§.§5H§();
         this.§9!L§ = false;
         this.§&e§();
         §!!O§.§+"§();
         §6!&§.§08§(§4!Z§.§+!`§,§-W§.§,[§);
         this.§?3§ = false;
         §!!O§.§<D§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §"w§.§'y§(§-W§.§,[§).numberOfBirdsShot = §,^§.§0K§.slingshot.§9C§();
         this.§6!4§ = new Date().time;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§&!7§.§>!M§)
         {
            §&!7§.§>!M§.start();
         }
         if(this.§7K§)
         {
            this.§7K§.play();
         }
         this.§3!H§();
         §?!?§.setText(§[X§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
         §?!?§.setText(§[X§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
         §?!?§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         §?!?§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§3!D§();
         this.§#y§();
         this.§6k§ = true;
      }
      
      override public function deActivate() : void
      {
         §+e§.§]!3§("navigationAttempt",this.§#d§);
         if(this.§7K§ && !this.§7K§.isCompleted)
         {
            this.§7K§.§9!§();
         }
         super.deActivate();
         this.§&6§();
         this.§#y§();
      }
      
      private function §&6§() : void
      {
         var _loc1_:int = 0;
         if(!this.§8K§)
         {
            if(this.§!!<§ > §@q§)
            {
               this.§8K§ = true;
               _loc1_ = Math.round(1000 / this.§!!<§ * this.§?!S§);
               if(§&!7§.§+X§)
               {
                  §6!&§.§08§(§4!Z§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §6!&§.§08§(§4!Z§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §<g§(param1:Number) : void
      {
         this.§!!<§ += param1;
         if(this.§!!<§ > 0)
         {
            ++this.§?!S§;
         }
      }
      
      private function §#y§() : void
      {
         this.§!!<§ = §]!1§;
         this.§?!S§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(§,^§.isPaused)
         {
            return 0;
         }
         if(this.§6k§)
         {
            this.§6k§ = false;
            §>c§.§,!^§(§?!?§);
         }
         if(this.§?3§ && !this.§9!L§)
         {
            (§,^§.§0K§ as §+!=§).§<R§();
            if(§,^§.§0K§.slingshot.§=!^§())
            {
               ((§,^§.§0K§ as §+!=§).slingshot as §@!G§).§`!0§();
               this.§7K§ = §!<§.§%b§.§9!!§(null,null,null,§%!%§.§;N§);
               this.§7K§.play();
            }
            else if(this.§7K§ == null)
            {
               this.§7K§ = ((§,^§.§0K§ as §+!=§).slingshot as §@!G§).§!x§();
            }
            this.§9!L§ = true;
            §>c§.§,!^§(§?!?§);
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§<g§(param1);
         this.§3!H§();
         var _loc3_:§ 3§ = §?!?§.getItemByName("Button_LaunchCheetos") as § 3§;
         if(§,^§.§0K§.slingshot.mSlingShotState == §^K§.§7M§ && !this.§9!L§ && (§"w§.credits >= §,!c§ || !(§,^§.§0K§ as §+!=§).§]!I§()))
         {
            _loc3_.setComponentState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc3_.setComponentState(§3l§.§,!8§);
         }
         if(mNextState.length > 0)
         {
            return §+Y§.STATE_STATUS_COMPLETED;
         }
         if(§,^§.§0K§.slingshot.mSlingShotState == §^K§.§1F§)
         {
            (§,^§.§0K§.slingshot as §@!G§).§&`§();
         }
         return §+Y§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:String = §-W§.§,[§;
         var _loc2_:Object = §"w§.§'y§(§-W§.§,[§);
         var _loc3_:int = § >§.getScore();
         var _loc4_:int = §-W§.§#V§(_loc1_,_loc3_);
         var _loc5_:Number = new Date().time;
         _loc2_.userId = §"w§.§2C§.name;
         _loc2_.levelId = _loc1_;
         _loc2_.score = _loc3_;
         _loc2_.stars = _loc4_;
         _loc2_.blocks = §;9§.§ §();
         _loc2_.gameplay = §,^§.§0K§.§=q§().toString();
         _loc2_.numberOfBirdsShot = this.§>;§ - (§,^§.§0K§.slingshot.§9C§() as int);
         _loc2_.time = _loc5_ - this.§6!4§;
         _loc2_.sessionId = §8v§.§<!E§();
         _loc2_.userLevelId = §"w§.userLevelId;
         _loc2_.security = §8v§.§?!$§(_loc2_);
         this.callObject = {
            "type":§8v§.§3!+§,
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
         var _loc6_:§8v§ = new §8v§(this.callObject,§7d§.§=!8§,this,§8v§.§;t§);
         §6!&§.§08§(§4!Z§.§!!5§,§-W§.§,[§);
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
            returnObject = §`p§.§=p§((e.currentTarget as URLLoader).data);
            if(returnObject.error)
            {
               switch(returnObject.error.code)
               {
                  case §>8§:
                     §7d§.§`!<§.§%>§(§^w§.§+!a§);
                     §1!b§.sCheetosPopups.showPopup(§&!R§.NO_CREDIT,"NO_CREDIT");
                     break;
                  case §4C§:
                     §7d§.§`!<§.§%>§(§^w§.§+!a§);
                     §1!b§.sCheetosPopups.showPopup(§&!R§.ERROR,§[X§.getText("Popup_Session_Expired"));
                     break;
                  default:
                     this.§4!M§(returnObject.error.message + " Code:" + returnObject.error.code);
               }
               return;
            }
            if(this.callObject.type != null)
            {
               switch(this.callObject.type)
               {
                  case §8v§.§3!+§:
                     try
                     {
                        §+e§.§5?§("levelComplete",§-W§.§,[§,true);
                        §"w§.§1!P§(§-W§.§[?§());
                     }
                     catch(e:Error)
                     {
                        §4!M§(e);
                     }
                     break;
                  case §8v§.§'5§:
                     if(§&!R§.§;!M§ == false)
                     {
                        §,^§.§5H§();
                     }
                     levelProfile = §"w§.§'y§(§-W§.§,[§);
                     securityPurchasePowerUp = §8v§.§7!>§(returnObject.userID,returnObject.credits,this.§8A§);
                     if(returnObject.security)
                     {
                        if(securityPurchasePowerUp.toUpperCase() == returnObject.security.toUpperCase())
                        {
                           if(returnObject.credits < §^!V§)
                           {
                              §7d§.§`!<§.§%>§(§^w§.§+!a§);
                              §1!b§.sCheetosPopups.showPopup(§&!R§.NO_CREDIT,"NO_CREDIT");
                           }
                           else
                           {
                              this.§?3§ = true;
                           }
                        }
                     }
                     break;
                  case §8v§.§ ![§:
                     try
                     {
                        §+e§.§5?§("levelStart",§-W§.§,[§);
                     }
                     catch(e:Error)
                     {
                        §4!M§(e);
                     }
                     if(returnObject.userLevelID)
                     {
                        §"w§.userLevelId = returnObject.userLevelID;
                     }
                     try
                     {
                        credits = returnObject.credits as int;
                        §"w§.credits = credits;
                     }
                     catch(e:Error)
                     {
                     }
                     if(returnObject.credits < §^!V§)
                     {
                        §7d§.§`!<§.§%>§(§^w§.§+!a§);
                        §1!b§.sCheetosPopups.showPopup(§&!R§.NO_CREDIT,"NO_CREDIT");
                     }
               }
            }
         }
         catch(e:Error)
         {
         }
         this.§"7§ = false;
         if(!§>c§.§;!M§ && !§&!R§.§;!M§)
         {
            §,^§.§5H§();
         }
         super.onComplete(e);
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         this.§"7§ = false;
         §7d§.§`!<§.§%>§(§^w§.§+!a§);
         §1!b§.sCheetosPopups.showPopup(§&!R§.ERROR,§[X§.getText("Error"));
      }
      
      private function §4!M§(param1:*) : void
      {
         §7d§.§`!<§.§%>§(§^w§.§+!a§);
         §1!b§.sCheetosPopups.showPopup(§&!R§.ERROR,§[X§.getText("Error"));
      }
      
      override public function getVictoryState() : String
      {
         return §[!+§.§+!a§;
      }
      
      override public function getLoserState() : String
      {
         return §9!1§.§+!a§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#![§) : void
      {
         var checkBoxComponent:§3l§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§#![§ = param3;
         if(eventIndex == 1)
         {
            if(§,^§.§0K§.slingshot.mDragging)
            {
               §,^§.§0K§.slingshot.shoot();
               § >§.changeGameState(§"Y§.§6M§);
               return;
            }
            §,^§.§0K§.camera.stopDragging();
         }
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               §>c§.§!l§();
               break;
            case "PAUSE":
               mNextState = §-8§.§+!a§;
               break;
            case "RESTART_LEVEL":
               if((§,^§.§0K§ as §+!=§).§]!I§())
               {
                  if(!§1!b§.sCheetosPopups.showPopup(§&!R§.RESTART_LEVEL))
                  {
                     this.§^!,§();
                  }
               }
               else
               {
                  this.§^!,§();
               }
               break;
            case "CONTINUE":
               sCheetosPopups.hidePopup();
               break;
            case "LAUNCH_CHEETOS":
               if((§,^§.§0K§ as §+!=§).§]!I§())
               {
                  if(!§1!b§.sCheetosPopups.showPopup(§&!R§.§2!L§))
                  {
                     this.§91§();
                  }
               }
               else
               {
                  this.§91§();
               }
               break;
            case "ZOOM_IN":
               § >§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               § >§.doUserZoom(false);
               break;
            case "BUTTON_NO":
               if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.§2!L§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.CONFIRM_LEAVE)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.§2!L§)
               {
                  this.§91§();
                  sCheetosPopups.hidePopup();
               }
               else if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.RESTART_LEVEL)
               {
                  this.§^!,§();
               }
               else if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.CONFIRM_LEAVE)
               {
                  this.navigationConfirmed();
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §3l§;
               if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.§2!L§)
               {
                  §7d§.§`!<§.§ ! § = !§7d§.§`!<§.§ ! §;
                  if(§7d§.§`!<§.§ ! §)
                  {
                     checkBoxComponent.setComponentState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  else
                  {
                     checkBoxComponent.setComponentState(§3l§.§0!c§);
                  }
                  break;
               }
               §7d§.§`!<§.§`-§ = !§7d§.§`!<§.§`-§;
               if(§7d§.§`!<§.§`-§)
               {
                  checkBoxComponent.setComponentState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§3l§.§0!c§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §+e§.§5?§("addCredits");
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
      
      private function §91§() : void
      {
         if(!this.§?3§)
         {
            if((§,^§.§0K§ as §+!=§).§]!I§())
            {
               §,^§.§9!§();
               this.§-!L§();
            }
            else
            {
               this.§?3§ = true;
            }
         }
      }
      
      private function §^!,§() : void
      {
         §,!]§.§10§();
         mNextState = §,!]§.§+!a§;
      }
      
      private function §3!H§() : void
      {
         var _loc1_:int = § >§.getScore();
         §?!?§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §7d§.§4'§.§,!H§(§-W§.§,[§);
         §?!?§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      private function §&e§() : void
      {
         this.§"7§ = true;
         this.callObject = {
            "type":§8v§.§ ![§,
            "sessionID":§8v§.§<!E§(),
            "userID":§"w§.§2C§.name,
            "levelId":§-W§.§,[§
         };
         new §8v§(this.callObject,§7d§.§ ![§,this,§8v§.§;t§);
      }
      
      private function §-!L§() : void
      {
         this.§8A§ = new Date().time;
         this.callObject = {
            "type":§8v§.§'5§,
            "sessionID":§8v§.§<!E§(),
            "userID":§"w§.§2C§.name,
            "purchaseTime":this.§8A§
         };
         new §8v§(this.callObject,§7d§.§'5§,this,§8v§.§;t§);
      }
      
      private function §3!D§() : void
      {
         var _loc1_:§ 3§ = §?!?§.getItemByName("Button_LaunchCheetos") as § 3§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         _loc1_.setComponentState(§3l§.§,!8§);
         if((§,^§.§0K§ as §+!=§).§]!I§())
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
