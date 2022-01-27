package §5G§
{
   import § g§.§<n§;
   import §!V§.§<!g§;
   import §!V§.§>d§;
   import §"§.§%!$§;
   import §&!F§.§"!d§;
   import §&!F§.§3S§;
   import §'!D§.§08§;
   import §'!D§.§0j§;
   import §,§.§7!N§;
   import §-!Q§.§,!7§;
   import §09§.§ $§;
   import §09§.§4!7§;
   import §09§.§^V§;
   import §1!E§.§>f§;
   import §12§.§25§;
   import §12§.§4!1§;
   import §2v§.§!L§;
   import §2v§.§&O§;
   import §6;§.§%[§;
   import §6H§.§^5§;
   import §<!0§.§%g§;
   import §<!0§.§7g§;
   import §=!&§.§3!-§;
   import §=!g§.§!!@§;
   import §>M§.§^-§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §[h§.§0!0§;
   import §[h§.§4I§;
   import §[h§.§7Z§;
   import §[h§.§[!U§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.utils.Timer;
   
   public class StatePlay extends §!`§ implements §7Z§
   {
      
      public static const §3!?§:String = "StatePlay";
      
      private static const §!7§:Number = -10 * 1000;
      
      private static const §"3§:Number = 15 * 1000;
      
      private static const §8s§:int = 8;
      
      private static const §]+§:int = 0;
       
      
      private var §[!S§:Boolean = true;
      
      private var §@!P§:Boolean = false;
      
      private var §?!F§:Number = -10000.0;
      
      private var §4=§:int = 0;
      
      private var §"!g§:Boolean;
      
      private var §'_§:Boolean;
      
      private var callObject:Object;
      
      private var §]^§:Number;
      
      private var §86§:Number;
      
      private var §,!T§:Boolean = true;
      
      private var §0!a§:Boolean = false;
      
      private var §!F§:§7g§ = null;
      
      private var §6!i§:Boolean = false;
      
      private var §,!>§:int;
      
      private var §"2§:§3!-§;
      
      private var §-8§:§3S§;
      
      private var §6!D§:String;
      
      private var §[;§:Boolean;
      
      private var §>n§:int;
      
      private var §;i§:Timer;
      
      private var §4!,§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%!0§ = new §5!§(this);
         §%!0§.init(§>!;§.§ get§.Views.View_LevelPlay[0]);
         if(§>f§.§%!`§)
         {
            this.§-8§ = §>f§.§%!`§.§06§;
         }
         this.§"2§ = new §3!-§(this);
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         §!!@§.addCallback("navigationAttempt",this.§"Z§);
      }
      
      private function §"Z§(param1:String) : void
      {
         var url:String = param1;
         §>f§.§%!-§ = url;
         if(§5!9§.§-!O§.§@n§() != null && §5!9§.§-!O§.§@n§() == StatePlay.§3!?§)
         {
            §?,§.sCheetosPopups.showPopup(§&O§.CONFIRM_LEAVE,§4I§.getText("Popup_Confirm_Leave"));
            try
            {
               §%!0§.container.setObjectToFront(§?,§.sCheetosPopups.container);
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
            §!!@§.§%Q§("navigationConfirmed",§>f§.§%!-§);
            §?,§.sCheetosPopups.hidePopup();
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§,!>§ = §@!Z§.§;!,§.slingshot.§@S§() as int;
         if(this.§!F§ != null)
         {
            this.§!F§.§!^§();
            this.§!F§ = null;
         }
         ((§@!Z§.§;!,§ as § $§).§7!h§ as §^5§).§1f§();
         §@!Z§.§,R§();
         this.§'_§ = false;
         if(§@;§.§6!K§ != "1-1" && §@;§.§6!K§ != "1-2" && §@;§.§6!K§ != "1-3")
         {
            this.§]!%§();
         }
         else
         {
            this.§4!,§ = true;
         }
         §,!7§.§13§();
         §>d§.§@Y§(§<!g§.§#S§,§@;§.§6!K§);
         §5!9§.§-!O§.§5N§.§@Y§(§0!0§.§'!c§);
         if(§5!9§.§-!O§.§7!6§(§@;§.§6!K§).charAt(0) == "1")
         {
            §>d§.§@Y§(§>d§.§&`§,§5!9§.§-!O§.§7!6§(§@;§.§6!K§));
         }
         else
         {
            §>d§.§@Y§(§>d§.§3B§,§5!9§.§-!O§.§7!6§(§@;§.§6!K§));
         }
         this.§"!g§ = false;
         §,!7§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§]^§ = new Date().time;
         this.§"2§.§>3§();
         this.§ E§();
      }
      
      private function § E§() : void
      {
         try
         {
            §!!@§.§%Q§("levelStart",§5!9§.§-!O§.§ !&§(§@;§.§6!K§));
         }
         catch(e:Error)
         {
            §+!D§(e);
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§%[§.§`1§)
         {
            §%[§.§`1§.start();
         }
         if(this.§!F§)
         {
            this.§!F§.play();
         }
         this.§&s§();
         §%!0§.setText(§4I§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
         §%!0§.setText(§4I§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
         §%!0§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         §%!0§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§+g§();
         this.§`!G§();
         this.§,!T§ = true;
         this.§[;§ = false;
         this.§>n§ = 0;
         if(§@!Z§.§;!,§.§5!H§ == 0)
         {
            this.§4!,§ = false;
         }
         else
         {
            this.§4!,§ = true;
         }
      }
      
      override public function deActivate() : void
      {
         §!!@§.§,2§("navigationAttempt",this.§"Z§);
         if(this.§!F§ && !this.§!F§.isCompleted)
         {
            this.§!F§.§@0§();
         }
         super.deActivate();
         this.§5p§();
         this.§`!G§();
         this.§-8§.removeEventListener(§25§.§&g§,this.§95§);
         this.§-8§.removeEventListener(§25§.§ -§,this.§6!@§);
         this.§-8§.removeEventListener(§25§.§&a§,this.§1!@§);
         this.§-8§.removeEventListener(§25§.§?n§,this.§`!d§);
         this.§-8§.removeEventListener(§25§.§case §,this.§=v§);
         this.§-8§.removeEventListener(§25§.§^!9§,this.§>x§);
         this.§"2§.removeEventListener(§4!1§.§1!8§,this.§,5§);
         this.§"2§.removeEventListener(§4!1§.§3!>§,this.§=R§);
         if(this.§;i§)
         {
            this.§;i§.stop();
            this.§;i§.removeEventListener(TimerEvent.TIMER,this.§;!M§);
            this.§;i§ = null;
         }
         §5!9§.§-!O§.§5N§.§5R§();
      }
      
      private function §5p§() : void
      {
         var _loc1_:int = 0;
         if(!this.§@!P§)
         {
            if(this.§?!F§ > §"3§)
            {
               this.§@!P§ = true;
               _loc1_ = Math.round(1000 / this.§?!F§ * this.§4=§);
               if(§%[§.§4$§)
               {
                  §>d§.§@Y§(§<!g§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §>d§.§@Y§(§<!g§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §8!Q§(param1:Number) : void
      {
         this.§?!F§ += param1;
         if(this.§?!F§ > 0)
         {
            ++this.§4=§;
         }
      }
      
      private function §`!G§() : void
      {
         this.§?!F§ = §!7§;
         this.§4=§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(§@!Z§.isPaused)
         {
            return 0;
         }
         if(this.§,!T§ && this.§4!,§)
         {
            this.§,!T§ = false;
            §!L§.§'@§(§%!0§);
         }
         if(this.§"!g§ && !this.§'_§)
         {
            (§@!Z§.§;!,§ as § $§).§&§();
            if(§@!Z§.§;!,§.slingshot.§ b§())
            {
               ((§@!Z§.§;!,§ as § $§).slingshot as §4!7§).§0!7§();
               this.§!F§ = §%g§.§'I§.§5!0§(null,null,null,§^V§.§3N§);
               this.§!F§.play();
            }
            else if(this.§!F§ == null)
            {
               this.§!F§ = ((§@!Z§.§;!,§ as § $§).slingshot as §4!7§).§?!5§();
            }
            this.§'_§ = true;
            if(this.§4!,§)
            {
               §!L§.§'@§(§%!0§);
            }
         }
         var _loc2_:String = mNextState;
         var _loc3_:int = super.run(param1);
         if(mNextState == this.getVictoryState())
         {
            this.§6!D§ = mNextState;
            mNextState = _loc2_;
         }
         if(_loc3_ != §%!$§.STATE_STATUS_RUNNING)
         {
            return _loc3_;
         }
         this.§8!Q§(param1);
         this.§&s§();
         var _loc4_:§^-§ = §%!0§.getItemByName("Button_LaunchCheetos") as §^-§;
         if((§@!Z§.§;!,§.slingshot.mSlingShotState == §7!N§.§4!G§ || !§@!Z§.§;!,§.slingshot.birdsAvailable && §@!Z§.§;!,§.objects.isPigsAlive()) && §<M§.mLevelState != §<n§.§7!O§ && !this.§"!g§ && !this.§'_§ && (§>f§.§%!`§ && §>f§.§%!`§.§`!b§ >= §"!d§.§7!c§ || !(§@!Z§.§;!,§ as § $§).§,!e§()))
         {
            _loc4_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc4_.setComponentState(§0j§.§%!T§);
         }
         if(mNextState.length > 0)
         {
            return §%!$§.STATE_STATUS_COMPLETED;
         }
         if(this.§`!5§.length > 0 && this.§0!K§())
         {
            this.§"2§.§5>§();
         }
         else if(this.§`!5§ == §;!8§.§3!?§)
         {
            this.§"2§.§5>§();
         }
         return §%!$§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         if(!this.§[;§)
         {
            this.§"2§.levelCompleted();
            this.§"2§.addEventListener(§4!1§.§1!8§,this.§,5§);
            this.§"2§.addEventListener(§4!1§.§3!>§,this.§=R§);
            §>d§.§@Y§(§<!g§.§0!=§,§@;§.§6!K§,this.§58§.getScore());
            this.§[;§ = true;
            §!!@§.§%Q§("levelComplete",§5!9§.§-!O§.§ !&§(§@;§.§6!K§),true);
         }
      }
      
      override public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §[!U§.§ !=§((e.currentTarget as URLLoader).data);
            if(returnObject.error)
            {
               switch(returnObject.error.code)
               {
                  case § B§:
                     §5!9§.§-!O§.§;!;§(§39§.§3!?§);
                     §?,§.sCheetosPopups.showPopup(§&O§.ERROR,§4I§.getText("Popup_Session_Expired"));
                     break;
                  default:
                     this.§+!D§(returnObject.error.message + " Code:" + returnObject.error.code);
               }
               return;
            }
         }
         catch(e:Error)
         {
         }
         this.§0!a§ = false;
         if(!§!L§.§2!,§ && !§&O§.§2!,§)
         {
            §@!Z§.§,R§();
         }
         super.onComplete(e);
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         this.§0!a§ = false;
         §5!9§.§-!O§.§;!;§(§39§.§3!?§);
      }
      
      private function §+!D§(param1:*) : void
      {
         §5!9§.§-!O§.§;!;§(§39§.§3!?§);
         §?,§.sCheetosPopups.showPopup(§&O§.ERROR,§4I§.getText("Error"));
      }
      
      override public function getVictoryState() : String
      {
         return §1!F§.§3!?§;
      }
      
      override public function getLoserState() : String
      {
         return §;!8§.§3!?§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
      {
         var checkBoxComponent:§0j§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§08§ = param3;
         if(eventIndex == 1)
         {
            if(§@!Z§.§;!,§.slingshot.mDragging)
            {
               §@!Z§.§;!,§.slingshot.shoot();
               §<M§.changeGameState(§<n§.§7!O§);
               return;
            }
            §@!Z§.§;!,§.camera.stopDragging();
         }
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               §!L§.§&!Y§();
               break;
            case "PAUSE":
               mNextState = §@t§.§3!?§;
               break;
            case "RESTART_LEVEL":
               if((§@!Z§.§;!,§ as § $§).§,!e§())
               {
                  if(!§?,§.sCheetosPopups.showPopup(§&O§.RESTART_LEVEL))
                  {
                     this.§+8§();
                  }
               }
               else
               {
                  this.§+8§();
               }
               break;
            case "CONTINUE":
               sCheetosPopups.hidePopup();
               break;
            case "LAUNCH_CHEETOS":
               if((§@!Z§.§;!,§ as § $§).§,!e§())
               {
                  if(!§?,§.sCheetosPopups.showPopup(§&O§.§3^§))
                  {
                     this.§'^§();
                  }
               }
               else
               {
                  this.§'^§();
               }
               break;
            case "ZOOM_IN":
               §<M§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §<M§.doUserZoom(false);
               break;
            case "BUTTON_NO":
               if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§3^§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.CONFIRM_LEAVE)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§3^§)
               {
                  this.§'^§();
                  sCheetosPopups.hidePopup();
               }
               else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.RESTART_LEVEL)
               {
                  this.§+8§();
               }
               else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.CONFIRM_LEAVE)
               {
                  this.navigationConfirmed();
               }
               break;
            case "CREDIT_OK":
               sCheetosPopups.hidePopup();
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §0j§;
               if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§3^§)
               {
                  §5!9§.§-!O§.§+!1§ = !§5!9§.§-!O§.§+!1§;
                  if(§5!9§.§-!O§.§+!1§)
                  {
                     checkBoxComponent.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  else
                  {
                     checkBoxComponent.setComponentState(§0j§.§+o§);
                  }
                  break;
               }
               §5!9§.§-!O§.§8!&§ = !§5!9§.§-!O§.§8!&§;
               if(§5!9§.§-!O§.§8!&§)
               {
                  checkBoxComponent.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§0j§.§+o§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §!!@§.§%Q§("addCredits");
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
      
      private function §'^§() : void
      {
         if(!this.§"!g§)
         {
            if((§@!Z§.§;!,§ as § $§).§,!e§())
            {
               §@!Z§.§@0§();
               this.§0>§();
               this.§"!g§ = true;
               this.§0!i§(false);
            }
            else
            {
               this.§"!g§ = true;
               this.§0!i§(false);
            }
            §@!Z§.§;!,§.camera.goToBirdView();
         }
      }
      
      private function §+8§() : void
      {
         §'!9§.§7T§();
         mNextState = §'!9§.§3!?§;
         this.§"2§.§5>§();
      }
      
      private function §&s§() : void
      {
         var _loc1_:int = §<M§.getScore();
         §%!0§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §5!9§.§#%§.§9!C§(§@;§.§6!K§);
         §%!0§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      private function §]!%§() : void
      {
         this.§-8§.addEventListener(§25§.§&a§,this.§1!@§);
         this.§-8§.addEventListener(§25§.§?n§,this.§`!d§);
         this.§-8§.§4!0§();
      }
      
      private function §0>§() : void
      {
         this.§-8§.addEventListener(§25§.§case §,this.§=v§);
         this.§-8§.addEventListener(§25§.§^!9§,this.§>x§);
         this.§-8§.§4!Z§();
      }
      
      private function §=v§(param1:§25§) : void
      {
         this.§^!M§();
         this.§-8§.removeEventListener(§25§.§case §,this.§=v§);
         this.§-8§.removeEventListener(§25§.§^!9§,this.§>x§);
      }
      
      private function §^!M§() : void
      {
         if(§&O§.§2!,§ == false)
         {
            §@!Z§.§,R§();
         }
         this.§"!g§ = true;
         this.§0!i§(false);
      }
      
      private function §>x§(param1:§25§) : void
      {
         §?,§.sCheetosPopups.showPopup(§&O§.NO_CREDIT,"NO_CREDIT");
         this.§-8§.removeEventListener(§25§.§case §,this.§=v§);
         this.§-8§.removeEventListener(§25§.§^!9§,this.§>x§);
         this.§"!g§ = false;
         this.§0!i§(true);
      }
      
      private function §+g§() : void
      {
         var _loc1_:§^-§ = §%!0§.getItemByName("Button_LaunchCheetos") as §^-§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         _loc1_.setComponentState(§0j§.§%!T§);
         if((§@!Z§.§;!,§ as § $§).§,!e§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function §95§(param1:Event) : void
      {
         if(!this.§'_§)
         {
            if(§>f§.§%!`§ && §>f§.§%!`§.§`!b§ >= §"!d§.§7!c§)
            {
               this.§0!i§(true);
            }
            else
            {
               this.§0!i§(false);
            }
         }
      }
      
      private function §0!i§(param1:Boolean) : void
      {
         var _loc2_:§^-§ = §%!0§.getItemByName("Button_LaunchCheetos") as §^-§;
         if(param1)
         {
            _loc2_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc2_.setComponentState(§0j§.§%!T§);
         }
      }
      
      private function §6!@§(param1:Event) : void
      {
      }
      
      public function get §58§() : §<n§
      {
         return §<M§;
      }
      
      public function get §`!5§() : String
      {
         return mNextState;
      }
      
      protected function §0!K§() : Boolean
      {
         return this.§"2§.§,!@§;
      }
      
      private function §1!@§(param1:Event) : void
      {
         this.§4!,§ = true;
      }
      
      private function §`!d§(param1:Event) : void
      {
         §5!9§.§-!O§.§;!;§(§39§.§3!?§);
         §?,§.sCheetosPopups.showPopup(§&O§.NO_CREDIT,"NO_CREDIT");
      }
      
      public function §%n§() : void
      {
         mNextState = this.§6!D§;
         this.§6!D§ = null;
      }
      
      private function §=R§(param1:§4!1§) : void
      {
         this.§"2§.removeEventListener(§4!1§.§1!8§,this.§,5§);
         this.§"2§.removeEventListener(§4!1§.§3!>§,this.§=R§);
         if(this.§>n§ < §8s§)
         {
            this.§;i§ = new Timer(1000 * 2 * (this.§>n§ + 1) + 2000);
            this.§;i§.addEventListener(TimerEvent.TIMER,this.§;!M§);
            this.§;i§.start();
            ++this.§>n§;
         }
         else
         {
            mNextState = §39§.§3!?§;
         }
      }
      
      private function §;!M§(param1:TimerEvent) : void
      {
         this.§"2§.§>3§();
         this.§"2§.levelCompleted();
         this.§"2§.addEventListener(§4!1§.§1!8§,this.§,5§);
         this.§"2§.addEventListener(§4!1§.§3!>§,this.§=R§);
         if(this.§;i§)
         {
            this.§;i§.removeEventListener(TimerEvent.TIMER,this.§;!M§);
         }
      }
      
      private function §,5§(param1:§4!1§) : void
      {
         this.§"2§.removeEventListener(§4!1§.§3!>§,this.§=R§);
         this.§"2§.removeEventListener(§4!1§.§1!8§,this.§,5§);
         if(this.§;i§)
         {
            this.§;i§.removeEventListener(TimerEvent.TIMER,this.§;!M§);
            this.§;i§.stop();
            this.§;i§ = null;
         }
      }
   }
}
