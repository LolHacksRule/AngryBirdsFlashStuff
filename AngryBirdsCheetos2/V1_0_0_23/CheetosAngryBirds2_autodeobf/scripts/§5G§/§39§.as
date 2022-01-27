package §5G§
{
   import §!V§.§>d§;
   import §"§.§%!$§;
   import §&!F§.§"!d§;
   import §'!D§.§08§;
   import §'!D§.§0j§;
   import §'!D§.§?!h§;
   import §09§.§ $§;
   import §1!E§.§>f§;
   import §12§.§25§;
   import §2v§.§&O§;
   import §6;§.§%[§;
   import §<!0§.§7g§;
   import §=!g§.§!!@§;
   import §>M§.§'V§;
   import §>M§.§[!D§;
   import §>M§.§^-§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §39§ extends §?,§
   {
      
      public static const §3!?§:String = "LevelSelectionState";
      
      private static const §2!b§:Number = 0.5;
       
      
      private var §-!H§:Boolean = false;
      
      private var §<!N§:MovieClip;
      
      private var §;h§:Array;
      
      private var §=![§:Array;
      
      private var §9!9§:int = 0;
      
      private var §,!g§:Boolean = false;
      
      private var §+k§:§7g§ = null;
      
      private var §<!c§:String;
      
      private var §'!`§:Dictionary;
      
      private var §'!S§:Array;
      
      private var §?!0§:Boolean = false;
      
      private var §#t§:Array;
      
      private var §^!C§:Boolean;
      
      private var §9!W§:String;
      
      public function §39§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%!0§ = new §5!§(this);
         §%!0§.init(§>!;§.§ get§.Views.View_LevelSelection[0]);
         this.§<!N§ = new MovieClip();
         §%!0§.addChild(this.§<!N§);
         this.§=![§ = [];
         this.§;h§ = [];
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§%[§.§`1§)
         {
            §%[§.§`1§.stop();
         }
         if(!this.§?!0§)
         {
            this.§?!0§ = true;
            §>d§.§@Y§(§>d§.§<§);
         }
         §@!Z§.§;!,§.§%d§(false);
         §@!Z§.§;!,§.§;!i§(false);
         this.§&!g§();
         this.§5;§();
         if(§>f§.§%!`§ && §>f§.§%!`§.§06§)
         {
            §>f§.§%!`§.§06§.addEventListener(§25§.§&g§,this.§95§);
         }
      }
      
      override public function activateComplete() : void
      {
         super.activateComplete();
      }
      
      private function §<"§(param1:FocusEvent) : void
      {
         §%!0§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §%!$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §%!$§.STATE_STATUS_COMPLETED;
         }
         this.§5;§();
         return §%!$§.STATE_STATUS_RUNNING;
      }
      
      private function §5;§() : void
      {
         var _loc1_:Boolean = §5!9§.§!t§();
         if(_loc1_)
         {
            §5!9§.§3!K§();
         }
         §%!0§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§?g§();
         if(§>f§.§%!`§ && §>f§.§%!`§.§06§)
         {
            §>f§.§%!`§.§06§.removeEventListener(§25§.§&g§,this.§95§);
         }
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
      {
         var insertCodeComponent:§?!h§ = null;
         var code:String = null;
         var soundsEnabled:Boolean = false;
         var checkBoxComponent:§0j§ = null;
         var replayData:String = null;
         var levelName:String = null;
         var eventNameSubstring:String = null;
         var buttonGotoFrame:String = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§08§ = param3;
         if(eventName == "")
         {
            return;
         }
         switch(eventName)
         {
            case "CANCEL":
               insertCodeComponent = §%!0§.getItemByName("InsertCodePopup");
               insertCodeComponent.setVisibility(false);
               break;
            case "SEND_CODE":
               code = §%!0§.getText("TextField_Code");
               break;
            case "SOUNDS_BUTTON":
               soundsEnabled = !§5!9§.§!t§();
               §5!9§.§+#§(soundsEnabled);
               if(soundsEnabled)
               {
                  §5!9§.§3!K§();
               }
               §%!0§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "CREDITS_BUTTON":
               mNextState = §9!$§.§3!?§;
               break;
            case "VKONTAKTE":
               navigateToURL(new URLRequest("http://www.vk.com/angrybirds"),"_blank");
               break;
            case "FACEBOOK":
               navigateToURL(new URLRequest("http://www.facebook.com/angrybirds"),"_blank");
               break;
            case "TWITTER":
               navigateToURL(new URLRequest("http://twitter.com/AngryBirds"),"_blank");
               break;
            case "CHROME":
               navigateToURL(new URLRequest("http://chrome.angrybirds.com/"),"_blank");
               break;
            case "BUTTON_NO":
               if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§"!?§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = §39§.§3!?§;
                  return;
               }
               break;
            case "BUTTON_YES":
               if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§"!?§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§3!?§;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §0j§;
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
            case "CONTINUE":
               §?,§.sCheetosPopups.hidePopup();
               break;
            case "PLAY_REPLAY":
               replayData = (§%!0§.getItemByName("TextField_EnterReplay") as §'V§).§2!%§.text;
               levelName = replayData.slice(3,6);
               § $§.§8#§ = replayData;
               §@;§.§6!K§ = levelName;
               §@;§.§2Q§(levelName);
               §?,§.sCheetosPopups.hidePopup();
               mNextState = StateCutSceneDynamic.§3!?§;
               break;
            default:
               eventNameSubstring = eventName.substr(0,4);
               if(eventNameSubstring == "OUT1")
               {
                  eventNameSubstring = "OUT";
               }
               if(eventNameSubstring == "OVER" || eventNameSubstring == "OUT")
               {
                  buttonGotoFrame = eventNameSubstring.toLowerCase();
                  (component as §[!D§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(buttonGotoFrame);
                  break;
               }
               this.§?!§(eventName);
               break;
         }
      }
      
      private function §?!§(param1:String) : void
      {
         if(§>f§.§%!`§ && !§>f§.§%!`§.§>!b§())
         {
            this.§9!W§ = param1;
            return;
         }
         this.§;!0§(param1);
         if(param1 == "1-1" || param1 == "1-2" || param1 == "1-3")
         {
            §?,§.sCheetosPopups.hidePopup();
            mNextState = StateCutSceneDynamic.§3!?§;
         }
         else if(param1 == "CREDIT_OK")
         {
            §?,§.sCheetosPopups.hidePopup();
         }
         else
         {
            if(§>f§.§%!`§ && §>f§.§%!`§.§`!b§ <= 0)
            {
               §?,§.sCheetosPopups.showPopup(§&O§.NO_CREDIT,"NO_CREDIT");
               return;
            }
            if(!§?,§.sCheetosPopups.showPopup(§&O§.§"!?§))
            {
               sCheetosPopups.hidePopup();
               mNextState = StateCutSceneDynamic.§3!?§;
            }
         }
      }
      
      private function §;!0§(param1:String) : void
      {
         var _loc2_:String = param1;
         StateCutSceneDynamic.§^C§ = true;
         §@;§.§6!K§ = param1;
         §@;§.§2Q§(param1.toLowerCase());
      }
      
      public function §&!g§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§'!S§ = [];
         this.§9!9§ = §@;§.§default§(§@;§.§5!K§).§ !X§;
         var _loc2_:Number = 0;
         while(_loc2_ < §@;§.§default§(§@;§.§5!K§).pageIndexes.length)
         {
            _loc3_ = §@;§.§default§(§@;§.§5!K§).§2!D§(§@;§.§default§(§@;§.§5!K§).pageIndexes[_loc2_]);
            this.§'!S§.push(§@;§.§default§(§@;§.§5!K§).§5Z§(_loc2_));
            _loc1_ = this.§'e§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §'e§(param1:Array, param2:Number) : Number
      {
         var _loc4_:String = null;
         var _loc5_:§^-§ = null;
         var _loc6_:String = null;
         var _loc7_:* = false;
         var _loc8_:Number = NaN;
         this.§#t§ = [];
         var _loc3_:Number = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            _loc5_ = §%!0§.getItemByName("LevelButton" + (_loc3_ + 1)) as §^-§;
            this.§#t§[_loc3_] = _loc5_;
            _loc6_ = _loc4_;
            if(!(_loc7_ = !§>f§.§^!a§(_loc6_)))
            {
               _loc5_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               _loc5_.setComponentState(§0j§.§%!T§);
            }
            _loc8_ = §5!9§.§#%§.§[![§(_loc6_);
            _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc8_.toString() + "_stars");
            _loc3_++;
         }
         return Number(param2 + §5!9§.§?!L§);
      }
      
      private function §?g§() : void
      {
         while(this.§<!N§.numChildren > 0)
         {
            this.§<!N§.removeChildAt(0);
         }
         this.§=![§ = [];
      }
      
      private function §7`§(param1:MouseEvent) : void
      {
         mNextState = §39§.§3!?§;
      }
      
      public function refreshSession() : void
      {
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§"!d§.§]q§,
               "sessionID":§"!d§.§>%§(),
               "userID":§>f§.§%!`§.name
            };
            new §"!d§(callObject,§5!9§.§]q§,this,§"!d§.§9X§);
         }
         catch(e:Error)
         {
         }
      }
      
      private function §95§(param1:Event) : void
      {
         if(this.§9!W§ != null)
         {
            this.§?!§(this.§9!W§);
            this.§9!W§ = null;
         }
      }
   }
}
