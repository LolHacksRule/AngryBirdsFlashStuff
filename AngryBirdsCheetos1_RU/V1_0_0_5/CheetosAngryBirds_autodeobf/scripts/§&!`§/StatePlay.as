package §&!`§
{
   import § =§.§ x§;
   import §!%§.§ D§;
   import §!%§.§!w§;
   import §%b§.§=!!§;
   import §%b§.§?0§;
   import §'Y§.§"!J§;
   import §'Y§.§;J§;
   import §'d§.§3>§;
   import §+k§.§+!&§;
   import §+k§.§=! §;
   import §0C§.§"!T§;
   import §2V§.§!!_§;
   import §2V§.§&!Q§;
   import §4!§.§&6§;
   import §4!§.§&J§;
   import §4!§.§2!L§;
   import §7G§.§1d§;
   import §7f§.§8!M§;
   import §7f§.§9i§;
   import §7f§.§@+§;
   import §9$§.§;!K§;
   import §;C§.§5!O§;
   import §;k§.§[§;
   import §<s§.§&4§;
   import §<s§.§]@§;
   import §?!N§.§?!"§;
   import §[%§.§6!§;
   import §]_§.§!F§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   
   public class StatePlay extends §=2§ implements §2!L§
   {
      
      public static const §="§:String = "StatePlay";
      
      private static const § [§:Number = -10 * 1000;
      
      private static const §17§:Number = 15 * 1000;
      
      private static const §57§:int = 0;
      
      private static const §6J§:int = 3;
       
      
      private var §=!P§:Boolean = true;
      
      private var §1;§:Boolean = false;
      
      private var §1V§:Number = -10000.0;
      
      private var §"2§:int = 0;
      
      private var §^D§:Boolean;
      
      private var §+!2§:Boolean;
      
      private var callObject:Object;
      
      private var §'%§:Number;
      
      private var §9§:Number;
      
      private var §#!K§:Boolean = true;
      
      private var §"!?§:Boolean = false;
      
      private var §^+§:§=! § = null;
      
      private var §&M§:Boolean = false;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §^!]§ = new §;J§(this);
         §^!]§.init(§"!J§.§1!P§.Views.View_LevelPlay[0]);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         §?!"§.addCallback("navigationAttempt",this.§5!?§);
      }
      
      private function §5!?§(param1:String) : void
      {
         var url:String = param1;
         §;!K§.§5s§ = url;
         if(§3§.§]T§.§@!K§() != null && §3§.§]T§.§@!K§() == StatePlay.§="§)
         {
            §&A§.sCheetosPopups.showPopup(§!!_§.CONFIRM_LEAVE,§&J§.getText("Popup_Confirm_Leave"));
            try
            {
               §^!]§.container.setObjectToFront(§&A§.sCheetosPopups.container);
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
            §?!"§.§7`§("navigationConfirmed",§;!K§.§5s§);
            §&A§.sCheetosPopups.hidePopup();
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         if(this.§^+§ != null)
         {
            this.§^+§.§-e§();
            this.§^+§ = null;
         }
         ((§3>§.§8!$§ as §@+§).§&5§ as §1d§).§!q§();
         §3>§.§7k§();
         this.§+!2§ = false;
         this.§ 2§();
         §5!O§.§ for§();
         §!w§.§]!§(§ D§.§[!H§,§"!T§.§-Q§);
         this.§^D§ = false;
         §5!O§.§-q§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         §;!K§.§%!0§(§"!T§.§-Q§).numberOfBirdsShot = §3>§.§8!$§.slingshot.§for§();
         this.§'%§ = new Date().time;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§!F§.§[M§)
         {
            §!F§.§[M§.start();
         }
         if(this.§^+§)
         {
            this.§^+§.play();
         }
         this.§<k§();
         §^!]§.setText(§&J§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
         §^!]§.setText(§&J§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
         §^!]§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         §^!]§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§=f§();
         this.§`i§();
         this.§#!K§ = true;
      }
      
      override public function deActivate() : void
      {
         §?!"§.§true§("navigationAttempt",this.§5!?§);
         if(this.§^+§ && !this.§^+§.isCompleted)
         {
            this.§^+§.§-!>§();
         }
         super.deActivate();
         this.§+!S§();
         this.§`i§();
      }
      
      private function §+!S§() : void
      {
         var _loc1_:int = 0;
         if(!this.§1;§)
         {
            if(this.§1V§ > §17§)
            {
               this.§1;§ = true;
               _loc1_ = Math.round(1000 / this.§1V§ * this.§"2§);
               if(§!F§.§3h§)
               {
                  §!w§.§]!§(§ D§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §!w§.§]!§(§ D§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §?9§(param1:Number) : void
      {
         this.§1V§ += param1;
         if(this.§1V§ > 0)
         {
            ++this.§"2§;
         }
      }
      
      private function §`i§() : void
      {
         this.§1V§ = § [§;
         this.§"2§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(§3>§.isPaused)
         {
            return 0;
         }
         if(this.§#!K§)
         {
            this.§#!K§ = false;
            §&!Q§.§%!Y§(§^!]§);
         }
         if(this.§^D§ && !this.§+!2§)
         {
            (§3>§.§8!$§ as §@+§).§=G§();
            if(§3>§.§8!$§.slingshot.§]!G§())
            {
               ((§3>§.§8!$§ as §@+§).slingshot as §8!M§).§;`§();
               this.§^+§ = §+!&§.§,§.§9x§(null,null,null,§9i§.§4!+§);
               this.§^+§.play();
            }
            else if(this.§^+§ == null)
            {
               this.§^+§ = ((§3>§.§8!$§ as §@+§).slingshot as §8!M§).§implements§();
            }
            this.§+!2§ = true;
            §&!Q§.§%!Y§(§^!]§);
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§?9§(param1);
         this.§<k§();
         var _loc3_:§6!§ = §^!]§.getItemByName("Button_LaunchCheetos") as §6!§;
         if(§3>§.§8!$§.slingshot.mSlingShotState == §=!!§.§#<§ && !this.§+!2§ && (§;!K§.credits >= §6J§ || !(§3>§.§8!$§ as §@+§).§[!7§()))
         {
            _loc3_.setComponentState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc3_.setComponentState(§&4§.§'!U§);
         }
         if(mNextState.length > 0)
         {
            return § x§.STATE_STATUS_COMPLETED;
         }
         if(§3>§.§8!$§.slingshot.mSlingShotState == §=!!§.§ f§)
         {
            (§3>§.§8!$§.slingshot as §8!M§).§`$§();
         }
         return § x§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:String = §"!T§.§-Q§;
         var _loc2_:Object = §;!K§.§%!0§(§"!T§.§-Q§);
         var _loc3_:int = §7D§.getScore();
         var _loc4_:int = §"!T§.§?X§(_loc1_,_loc3_);
         var _loc5_:Number = new Date().time;
         _loc2_.userId = §;!K§.§+!K§.name;
         _loc2_.levelId = _loc1_;
         _loc2_.score = _loc3_;
         _loc2_.stars = _loc4_;
         _loc2_.blocks = §?0§.§68§();
         _loc2_.gameplay = §3>§.§8!$§.§#!H§().toString();
         _loc2_.numberOfBirdsShot = (_loc2_.numberOfBirdsShot as int) - (§3>§.§8!$§.slingshot.§for§() as int);
         _loc2_.time = _loc5_ - this.§'%§;
         _loc2_.sessionId = §[§.§^a§();
         _loc2_.userLevelId = §;!K§.userLevelId;
         _loc2_.security = §[§.§5e§(_loc2_);
         this.callObject = {
            "type":§[§.§`_§,
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
         var _loc6_:§[§ = new §[§(this.callObject,§3§.§!!4§,this,§[§.§'! §);
         §!w§.§]!§(§ D§.§9!K§,§"!T§.§-Q§);
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
            returnObject = §&6§.§1!2§((e.currentTarget as URLLoader).data);
            if(returnObject.error)
            {
               switch(returnObject.error.code)
               {
                  case § !2§:
                     §3§.§]T§.§]s§(§4q§.§="§);
                     §&A§.sCheetosPopups.showPopup(§!!_§.NO_CREDIT,"NO_CREDIT");
                     break;
                  case §>m§:
                     §3§.§]T§.§]s§(§4q§.§="§);
                     §&A§.sCheetosPopups.showPopup(§!!_§.ERROR,§&J§.getText("Popup_Session_Expired"));
                     break;
                  default:
                     this.§"m§(returnObject.error.message + " Code:" + returnObject.error.code);
               }
               return;
            }
            if(this.callObject.type != null)
            {
               switch(this.callObject.type)
               {
                  case §[§.§`_§:
                     try
                     {
                        §?!"§.§7`§("levelComplete",§"!T§.§-Q§,true);
                        §;!K§.§-g§(§"!T§.§6!2§());
                     }
                     catch(e:Error)
                     {
                        §"m§(e);
                     }
                     break;
                  case §[§.§!G§:
                     if(§!!_§.§=T§ == false)
                     {
                        §3>§.§7k§();
                     }
                     levelProfile = §;!K§.§%!0§(§"!T§.§-Q§);
                     securityPurchasePowerUp = §[§.§=!§(returnObject.userID,returnObject.credits,this.§9§);
                     if(returnObject.security)
                     {
                        if(securityPurchasePowerUp.toUpperCase() == returnObject.security.toUpperCase())
                        {
                           if(returnObject.credits < §57§)
                           {
                              §3§.§]T§.§]s§(§4q§.§="§);
                              §&A§.sCheetosPopups.showPopup(§!!_§.NO_CREDIT,"NO_CREDIT");
                           }
                           else
                           {
                              this.§^D§ = true;
                           }
                        }
                     }
                     break;
                  case §[§.§#@§:
                     try
                     {
                        §?!"§.§7`§("levelStart",§"!T§.§-Q§);
                     }
                     catch(e:Error)
                     {
                        §"m§(e);
                     }
                     if(returnObject.userLevelID)
                     {
                        §;!K§.userLevelId = returnObject.userLevelID;
                     }
                     try
                     {
                        credits = returnObject.credits as int;
                        §;!K§.credits = credits;
                     }
                     catch(e:Error)
                     {
                     }
                     if(returnObject.credits < §57§)
                     {
                        §3§.§]T§.§]s§(§4q§.§="§);
                        §&A§.sCheetosPopups.showPopup(§!!_§.NO_CREDIT,"NO_CREDIT");
                     }
               }
            }
         }
         catch(e:Error)
         {
         }
         this.§"!?§ = false;
         if(!§&!Q§.§=T§ && !§!!_§.§=T§)
         {
            §3>§.§7k§();
         }
         super.onComplete(e);
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         this.§"!?§ = false;
         §3§.§]T§.§]s§(§4q§.§="§);
         §&A§.sCheetosPopups.showPopup(§!!_§.ERROR,§&J§.getText("Error"));
      }
      
      private function §"m§(param1:*) : void
      {
         §3§.§]T§.§]s§(§4q§.§="§);
         §&A§.sCheetosPopups.showPopup(§!!_§.ERROR,§&J§.getText("Error"));
      }
      
      override public function getVictoryState() : String
      {
         return §!]§.§="§;
      }
      
      override public function getLoserState() : String
      {
         return § 9§.§="§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]@§) : void
      {
         var checkBoxComponent:§&4§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§]@§ = param3;
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               §&!Q§.§8Y§();
               break;
            case "PAUSE":
               mNextState = §>!B§.§="§;
               break;
            case "RESTART_LEVEL":
               if((§3>§.§8!$§ as §@+§).§[!7§())
               {
                  if(!§&A§.sCheetosPopups.showPopup(§!!_§.RESTART_LEVEL))
                  {
                     this.§02§();
                  }
               }
               else
               {
                  this.§02§();
               }
               break;
            case "CONTINUE":
               sCheetosPopups.hidePopup();
               break;
            case "LAUNCH_CHEETOS":
               if((§3>§.§8!$§ as §@+§).§[!7§())
               {
                  if(!§&A§.sCheetosPopups.showPopup(§!!_§.§@!7§))
                  {
                     this.§,1§();
                  }
               }
               else
               {
                  this.§,1§();
               }
               break;
            case "ZOOM_IN":
               §7D§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §7D§.doUserZoom(false);
               break;
            case "BUTTON_NO":
               if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.§@!7§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.CONFIRM_LEAVE)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.§@!7§)
               {
                  this.§,1§();
                  sCheetosPopups.hidePopup();
               }
               else if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.RESTART_LEVEL)
               {
                  this.§02§();
               }
               else if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.CONFIRM_LEAVE)
               {
                  this.navigationConfirmed();
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §&4§;
               if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.§@!7§)
               {
                  §3§.§]T§.§9p§ = !§3§.§]T§.§9p§;
                  if(§3§.§]T§.§9p§)
                  {
                     checkBoxComponent.setComponentState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  else
                  {
                     checkBoxComponent.setComponentState(§&4§.§=!'§);
                  }
                  break;
               }
               §3§.§]T§.§];§ = !§3§.§]T§.§];§;
               if(§3§.§]T§.§];§)
               {
                  checkBoxComponent.setComponentState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§&4§.§=!'§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §?!"§.§7`§("addCredits");
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
      
      private function §,1§() : void
      {
         if(!this.§^D§)
         {
            if((§3>§.§8!$§ as §@+§).§[!7§())
            {
               §3>§.§-!>§();
               this.§5;§();
            }
            else
            {
               this.§^D§ = true;
            }
         }
      }
      
      private function §02§() : void
      {
         §8!@§.§-_§();
         mNextState = §8!@§.§="§;
      }
      
      private function §<k§() : void
      {
         var _loc1_:int = §7D§.getScore();
         §^!]§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §3§.§6!Z§.§3!]§(§"!T§.§-Q§);
         §^!]§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      private function § 2§() : void
      {
         this.§"!?§ = true;
         this.callObject = {
            "type":§[§.§#@§,
            "sessionID":§[§.§^a§(),
            "userID":§;!K§.§+!K§.name,
            "levelId":§"!T§.§-Q§
         };
         new §[§(this.callObject,§3§.§#@§,this,§[§.§'! §);
      }
      
      private function §5;§() : void
      {
         this.§9§ = new Date().time;
         this.callObject = {
            "type":§[§.§!G§,
            "sessionID":§[§.§^a§(),
            "userID":§;!K§.§+!K§.name,
            "purchaseTime":this.§9§
         };
         new §[§(this.callObject,§3§.§!G§,this,§[§.§'! §);
      }
      
      private function §=f§() : void
      {
         var _loc1_:§6!§ = §^!]§.getItemByName("Button_LaunchCheetos") as §6!§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         _loc1_.setComponentState(§&4§.§'!U§);
         if((§3>§.§8!$§ as §@+§).§[!7§())
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
