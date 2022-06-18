package §%Y§
{
   import §!7§.§!>§;
   import §#!<§.§8!3§;
   import §#!]§.§6'§;
   import §%!5§.§;D§;
   import §'!N§.§2!3§;
   import §'!N§.§71§;
   import §'!N§.§9!O§;
   import §'O§.§1E§;
   import §,B§.§4!0§;
   import §-!§.§-§;
   import §0H§.§7M§;
   import §1!§.§@!Q§;
   import §;!K§.§+!4§;
   import §;!K§.§9T§;
   import §;[§.§7!F§;
   import §;[§.§8Y§;
   import §;[§.§>!^§;
   import §]m§.§-D§;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §@4§ extends §,5§
   {
      
      public static const §7!Q§:String = "LevelSelectionState";
      
      private static const §5!B§:Number = 0.5;
       
      
      private var §]!W§:Boolean = false;
      
      private var §break§:MovieClip;
      
      private var §<!>§:Array;
      
      private var §,,§:Array;
      
      private var §3!"§:int = 0;
      
      private var §`!]§:Boolean = false;
      
      private var §`!&§:§!>§ = null;
      
      private var §`!G§:String;
      
      private var §+]§:Dictionary;
      
      private var §?f§:Array;
      
      private var §]!J§:Boolean = false;
      
      private var §4-§:Array;
      
      private var §4!%§:Boolean = false;
      
      private var §[!I§:Boolean = false;
      
      private var §@!^§:Number = 0;
      
      private var §3G§:Number = 0;
      
      private var §-I§:Number = 0;
      
      private var §+!W§:Number = 0;
      
      private var §&!1§:Number;
      
      private var §9'§:Number;
      
      private var §>!R§:Number;
      
      private var §`O§:Number;
      
      public function §@4§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>#§ = new §+!4§(this);
         §>#§.init(§9T§.§>!`§.Views.View_LevelSelection[0]);
         this.§break§ = new MovieClip();
         §>#§.addChild(this.§break§);
         this.§,,§ = [];
         this.§<!>§ = [];
         this.§&!1§ = (§>#§.getItemByName("Container_MenuLeftButtons") as §>!^§).height;
         this.§9'§ = (§>#§.getItemByName("Container_MenuRightButtons") as §>!^§).height;
         this.§>!R§ = §>#§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§`O§ = §>#§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§-§.§-G§)
         {
            §-§.§-G§.stop();
         }
         if(!this.§]!J§)
         {
            this.§]!J§ = true;
            §1E§.§6!S§(§1E§.§3]§);
         }
         §@!Q§.§7l§.§?!J§(false);
         this.§]#§();
         var _loc1_:Boolean = §1R§.§^A§();
         if(_loc1_)
         {
            §1R§.§&a§();
         }
         §>#§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      override public function activateComplete() : void
      {
         super.activateComplete();
      }
      
      private function §%!J§(param1:FocusEvent) : void
      {
         §>#§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-D§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §-D§.STATE_STATUS_COMPLETED;
         }
         this.§>!R§ = §>#§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§`O§ = §>#§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§><§(param1);
         return §-D§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§4!%§ = false;
         this.§[!I§ = false;
         this.§-I§ = 0;
         this.§+!W§ = 0;
         this.§3G§ = 0;
         this.§@!^§ = 0;
         (§>#§.getItemByName("Container_MenuLeftButtons") as §>!^§).setVisibility(false);
         (§>#§.getItemByName("Container_MenuRightButtons") as §>!^§).setVisibility(false);
         super.deActivate();
         this.§9x§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9!O§) : void
      {
         var insertCodeComponent:§2!3§ = null;
         var code:String = null;
         var soundsEnabled:Boolean = false;
         var checkBoxComponent:§71§ = null;
         var eventNameSubstring:String = null;
         var buttonGotoFrame:String = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§9!O§ = param3;
         if(eventName == "")
         {
            return;
         }
         switch(eventName)
         {
            case "OPEN_LEFT_MENU":
               if(this.§4!%§)
               {
                  this.§4!%§ = false;
               }
               else
               {
                  this.§4!%§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§[!I§)
               {
                  this.§[!I§ = false;
               }
               else
               {
                  this.§[!I§ = true;
               }
               break;
            case "CANCEL":
               insertCodeComponent = §>#§.getItemByName("InsertCodePopup");
               insertCodeComponent.setVisibility(false);
               break;
            case "SEND_CODE":
               code = §>#§.getText("TextField_Code");
               break;
            case "SOUNDS_BUTTON":
               soundsEnabled = !§1R§.§^A§();
               §1R§.§5K§(soundsEnabled);
               if(soundsEnabled)
               {
                  §1R§.§&a§();
               }
               §>#§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "CREDITS_BUTTON":
               mNextState = §7!X§.§7!Q§;
               this.§4!%§ = false;
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
               if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.§^!&§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = §@4§.§7!Q§;
                  return;
               }
               break;
            case "BUTTON_YES":
               if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.§^!&§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§7!Q§;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §71§;
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
            default:
               eventNameSubstring = eventName.substr(0,4);
               if(eventNameSubstring == "OUT1")
               {
                  eventNameSubstring = "OUT";
               }
               if(eventNameSubstring == "OVER" || eventNameSubstring == "OUT")
               {
                  buttonGotoFrame = eventNameSubstring.toLowerCase();
                  (component as §8Y§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(buttonGotoFrame);
                  break;
               }
               this.§`! §(eventName);
               if(eventName == "1-1" || eventName == "1-2" || eventName == "1-3")
               {
                  §,5§.sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§7!Q§;
                  break;
               }
               if(eventName == "CREDIT_OK")
               {
                  §,5§.sCheetosPopups.hidePopup();
                  break;
               }
               if(§8!3§.credits <= 0)
               {
                  §,5§.sCheetosPopups.showPopup(§4!0§.NO_CREDIT,"NO_CREDIT");
                  return;
               }
               if(!§,5§.sCheetosPopups.showPopup(§4!0§.§^!&§))
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§7!Q§;
                  break;
               }
               break;
         }
      }
      
      private function §`! §(param1:String) : void
      {
         var _loc2_:String = param1;
         if(!§8!3§.§-!I§(param1))
         {
            StateCutSceneDynamic.§&!&§ = true;
            §7M§.§9-§ = param1;
            §7M§.§"1§(param1.toLowerCase());
         }
      }
      
      public function §]#§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§?f§ = [];
         this.§3!"§ = §7M§.§8!Q§(§7M§.§-@§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §7M§.§8!Q§(§7M§.§-@§).pageIndexes.length)
         {
            _loc3_ = §7M§.§8!Q§(§7M§.§-@§).§=§(§7M§.§8!Q§(§7M§.§-@§).pageIndexes[_loc2_]);
            this.§?f§.push(§7M§.§8!Q§(§7M§.§-@§).§5!?§(_loc2_));
            _loc1_ = this.§ -§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function § -§(param1:Array, param2:Number) : Number
      {
         var _loc4_:String = null;
         var _loc5_:§7!F§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         this.§4-§ = [];
         var _loc3_:Number = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            _loc5_ = §>#§.getItemByName("LevelButton" + (_loc3_ + 1)) as §7!F§;
            this.§4-§[_loc3_] = _loc5_;
            if(!(_loc6_ = §8!3§.§-!I§(_loc4_)))
            {
               _loc5_.setComponentState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               _loc5_.setComponentState(§71§.§'!,§);
            }
            _loc7_ = §1R§.§0!N§.§;!X§(_loc4_);
            _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
            _loc3_++;
         }
         return Number(param2 + §1R§.§`!N§);
      }
      
      private function §9x§() : void
      {
         while(this.§break§.numChildren > 0)
         {
            this.§break§.removeChildAt(0);
         }
         this.§,,§ = [];
      }
      
      private function §,-§(param1:MouseEvent) : void
      {
         mNextState = §@4§.§7!Q§;
      }
      
      private function §><§(param1:Number) : void
      {
         (§>#§.getItemByName("Container_MenuLeftButtons") as §>!^§).mClip.scrollRect = new Rectangle(0,0,(§>#§.getItemByName("Container_MenuLeftButtons") as §>!^§).width,this.§&!1§ + 20 - (this.§&!1§ - this.§-I§));
         (§>#§.getItemByName("Container_MenuRightButtons") as §>!^§).mClip.scrollRect = new Rectangle(0,0,(§>#§.getItemByName("Container_MenuRightButtons") as §>!^§).width,this.§9'§ + 20 - (this.§9'§ - this.§+!W§));
         if(this.§4!%§)
         {
            (§>#§.getItemByName("Container_MenuLeftButtons") as §>!^§).setVisibility(true);
            if(this.§@!^§ < 90)
            {
               this.§@!^§ += 0.3 * param1;
            }
            if(this.§@!^§ > 90)
            {
               this.§@!^§ = 90;
            }
            if(this.§-I§ < this.§&!1§)
            {
               this.§-I§ += 0.5 * param1;
            }
            if(this.§-I§ > this.§&!1§)
            {
               this.§-I§ = this.§&!1§;
            }
         }
         else
         {
            if(this.§@!^§ > 0)
            {
               this.§@!^§ -= 0.3 * param1;
            }
            if(this.§@!^§ < 0)
            {
               this.§@!^§ = 0;
            }
            if(this.§-I§ > 0)
            {
               this.§-I§ -= 0.5 * param1;
            }
            if(this.§-I§ < 0)
            {
               (§>#§.getItemByName("Container_MenuLeftButtons") as §>!^§).setVisibility(false);
               this.§-I§ = 0;
            }
         }
         if(this.§[!I§)
         {
            (§>#§.getItemByName("Container_MenuRightButtons") as §>!^§).setVisibility(true);
            if(this.§3G§ < 180)
            {
               this.§3G§ += 0.5 * param1;
               (§>#§.getItemByName("Container_MenuRightButtons") as §>!^§).y = (§>#§.getItemByName("Container_MenuRightButtons") as §>!^§).y - 0.5 * param1;
            }
            if(this.§3G§ > 180)
            {
               this.§3G§ = 180;
            }
            if(this.§+!W§ <= this.§9'§)
            {
               this.§+!W§ += 0.5 * param1;
            }
            if(this.§+!W§ > this.§9'§)
            {
               this.§+!W§ = this.§9'§;
            }
         }
         else
         {
            if(this.§3G§ > 0)
            {
               this.§3G§ -= 0.5 * param1;
               (§>#§.getItemByName("Container_MenuRightButtons") as §>!^§).y = (§>#§.getItemByName("Container_MenuRightButtons") as §>!^§).y + 0.5 * param1;
            }
            if(this.§3G§ < 0)
            {
               this.§3G§ = 0;
            }
            if(this.§+!W§ >= 0)
            {
               this.§+!W§ -= 0.5 * param1;
            }
            if(this.§+!W§ < 0)
            {
               (§>#§.getItemByName("Container_MenuRightButtons") as §>!^§).setVisibility(false);
               this.§+!W§ = 0;
            }
         }
         (§>#§.getItemByName("Button_LeftMenuOpen") as §7!F§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§>#§.getItemByName("Button_RightMenuOpen") as §7!F§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§>#§.getItemByName("Button_LeftMenuOpen") as §7!F§).mClip.MovieClip_LeftMenuImage.rotation = this.§@!^§;
         (§>#§.getItemByName("Button_RightMenuOpen") as §7!F§).mClip.MovieClip_RightMenuImage.rotation = this.§3G§;
         (§>#§.getItemByName("Container_MenuLeftButtons") as §>!^§).y = this.§>!R§ - this.§-I§;
         (§>#§.getItemByName("Container_MenuRightButtons") as §>!^§).y = this.§`O§ - this.§+!W§;
      }
      
      public function refreshSession() : void
      {
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§6'§.§>,§,
               "sessionID":§6'§.§^!R§(),
               "userID":§8!3§.§^!E§.name
            };
            new §6'§(callObject,§1R§.§>,§,this,§6'§.§?>§);
         }
         catch(e:Error)
         {
         }
      }
   }
}
