package §%w§
{
   import §#!F§.§'^§;
   import §#!V§.§&!!§;
   import §&!7§.§,!A§;
   import §&p§.§9!H§;
   import §,j§.§"!F§;
   import §,j§.§0!@§;
   import §,j§.§1-§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §1§.§&!3§;
   import §1§.§'n§;
   import §1§.§;d§;
   import §6v§.§>S§;
   import §?m§.§7?§;
   import §@!?§.§0!U§;
   import §]!F§.§7e§;
   import §`C§.§9!'§;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §`L§ extends §;s§
   {
      
      public static const §9!P§:String = "LevelSelectionState";
      
      private static const §,_§:Number = 0.5;
       
      
      private var §0!_§:Boolean = false;
      
      private var §!8§:MovieClip;
      
      private var §-!Y§:Array;
      
      private var §3H§:Array;
      
      private var §[!1§:int = 0;
      
      private var §4,§:Boolean = false;
      
      private var §0!0§:§&!!§ = null;
      
      private var §]^§:String;
      
      private var §+!P§:Dictionary;
      
      private var §4!^§:Array;
      
      private var §-h§:Boolean = false;
      
      private var §,C§:Array;
      
      private var §-!S§:Boolean = false;
      
      private var §[L§:Boolean = false;
      
      private var §-!<§:Number = 0;
      
      private var §55§:Number = 0;
      
      private var §1c§:Number = 0;
      
      private var §[!#§:Number = 0;
      
      private var §"W§:Number;
      
      private var §?v§:Number;
      
      private var §4B§:Number;
      
      private var §5!!§:Number;
      
      public function §`L§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3t§ = new §'j§(this);
         §3t§.init(§0p§.§'! §.Views.View_LevelSelection[0]);
         this.§!8§ = new MovieClip();
         §3t§.addChild(this.§!8§);
         this.§3H§ = [];
         this.§-!Y§ = [];
         this.§"W§ = (§3t§.getItemByName("Container_MenuLeftButtons") as §1-§).height;
         this.§?v§ = (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).height;
         this.§4B§ = §3t§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§5!!§ = §3t§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§9!'§.§7!Z§)
         {
            §9!'§.§7!Z§.stop();
         }
         if(!this.§-h§)
         {
            this.§-h§ = true;
            §'^§.§`0§(§'^§.§"'§);
         }
         §7?§.§4!H§.§'![§(false);
         this.§]!§();
         var _loc1_:Boolean = §#x§.§7!S§();
         if(_loc1_)
         {
            §#x§.§`! §();
         }
         §3t§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      override public function activateComplete() : void
      {
         super.activateComplete();
      }
      
      private function §2,§(param1:FocusEvent) : void
      {
         §3t§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&c§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §&c§.STATE_STATUS_COMPLETED;
         }
         this.§4B§ = §3t§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§5!!§ = §3t§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§7F§(param1);
         return §&c§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§-!S§ = false;
         this.§[L§ = false;
         this.§1c§ = 0;
         this.§[!#§ = 0;
         this.§55§ = 0;
         this.§-!<§ = 0;
         (§3t§.getItemByName("Container_MenuLeftButtons") as §1-§).setVisibility(false);
         (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).setVisibility(false);
         super.deActivate();
         this.§9_§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
      {
         var insertCodeComponent:§;d§ = null;
         var code:String = null;
         var soundsEnabled:Boolean = false;
         var checkBoxComponent:§&!3§ = null;
         var eventNameSubstring:String = null;
         var buttonGotoFrame:String = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§'n§ = param3;
         if(eventName == "")
         {
            return;
         }
         switch(eventName)
         {
            case "OPEN_LEFT_MENU":
               if(this.§-!S§)
               {
                  this.§-!S§ = false;
               }
               else
               {
                  this.§-!S§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§[L§)
               {
                  this.§[L§ = false;
               }
               else
               {
                  this.§[L§ = true;
               }
               break;
            case "PLAY_NEXT":
               §[!X§.§9P§();
               mNextState = StateCutScene.§9!P§;
               break;
            case "RESTART_LEVEL":
               §[!X§.§]!J§();
               mNextState = §[!X§.§9!P§;
               break;
            case "CANCEL":
               insertCodeComponent = §3t§.getItemByName("InsertCodePopup");
               insertCodeComponent.setVisibility(false);
               break;
            case "SEND_CODE":
               code = §3t§.getText("TextField_Code");
               break;
            case "SOUNDS_BUTTON":
               soundsEnabled = !§#x§.§7!S§();
               §#x§.§<]§(soundsEnabled);
               if(soundsEnabled)
               {
                  §#x§.§`! §();
               }
               §3t§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "CREDITS_BUTTON":
               mNextState = §,%§.§9!P§;
               this.§-!S§ = false;
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
            case "PRACTICE":
               §7e§.§!!@§("1-1");
               mNextState = StateCutScene.§9!P§;
               break;
            case "BUTTON_NO":
               if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§`1§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = §`L§.§9!P§;
                  return;
               }
               break;
            case "BUTTON_YES":
               if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§`1§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutScene.§9!P§;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §&!3§;
               §#x§.§=!!§.§9!E§ = !§#x§.§=!!§.§9!E§;
               if(§#x§.§=!!§.§9!E§)
               {
                  checkBoxComponent.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§&!3§.§;2§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §,!A§.§9!M§("addCredits");
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
                  (component as §"!F§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(buttonGotoFrame);
                  break;
               }
               this.§each §(eventName);
               if(eventName == "1-1" || eventName == "1-2" || eventName == "1-3")
               {
                  §;s§.sCheetosPopups.hidePopup();
                  mNextState = StateCutScene.§9!P§;
                  break;
               }
               if(eventName == "CREDIT_OK")
               {
                  §;s§.sCheetosPopups.hidePopup();
                  break;
               }
               if(§9!H§.credits <= 0 && !§7e§.§7!N§())
               {
                  §;s§.sCheetosPopups.showPopup(§0!U§.NO_CREDIT,"NO_CREDIT");
                  return;
               }
               if(!§;s§.sCheetosPopups.showPopup(§0!U§.§`1§))
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutScene.§9!P§;
                  break;
               }
               break;
         }
      }
      
      private function §each §(param1:String) : void
      {
         if(!§9!H§.§[R§(param1))
         {
            §7e§.§!!@§(param1.toLowerCase());
         }
      }
      
      public function §]!§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§4!^§ = [];
         this.§[!1§ = §7e§.§2§(§7e§.§]!U§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §7e§.§2§(§7e§.§]!U§).pageIndexes.length)
         {
            _loc3_ = §7e§.§2§(§7e§.§]!U§).§4!=§(§7e§.§2§(§7e§.§]!U§).pageIndexes[_loc2_]);
            this.§4!^§.push(§7e§.§2§(§7e§.§]!U§).§5Z§(_loc2_));
            _loc1_ = this.§?!,§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §?!,§(param1:Array, param2:Number) : Number
      {
         var _loc4_:String = null;
         var _loc5_:§0!@§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         this.§,C§ = [];
         var _loc3_:Number = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            _loc5_ = §3t§.getItemByName("LevelButton" + (_loc3_ + 1)) as §0!@§;
            this.§,C§[_loc3_] = _loc5_;
            if(!(_loc6_ = §9!H§.§[R§(_loc4_)))
            {
               _loc5_.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               _loc5_.setComponentState(§&!3§.§#!$§);
            }
            _loc7_ = §#x§.§[Y§.§try §(_loc4_);
            _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
            _loc3_++;
         }
         return Number(param2 + §#x§.§;#§);
      }
      
      private function §9_§() : void
      {
         while(this.§!8§.numChildren > 0)
         {
            this.§!8§.removeChildAt(0);
         }
         this.§3H§ = [];
      }
      
      private function §=!J§(param1:MouseEvent) : void
      {
         mNextState = §`L§.§9!P§;
      }
      
      private function §7F§(param1:Number) : void
      {
         (§3t§.getItemByName("Container_MenuLeftButtons") as §1-§).mClip.scrollRect = new Rectangle(0,0,(§3t§.getItemByName("Container_MenuLeftButtons") as §1-§).width,this.§"W§ + 20 - (this.§"W§ - this.§1c§));
         (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).mClip.scrollRect = new Rectangle(0,0,(§3t§.getItemByName("Container_MenuRightButtons") as §1-§).width,this.§?v§ + 20 - (this.§?v§ - this.§[!#§));
         if(this.§-!S§)
         {
            (§3t§.getItemByName("Container_MenuLeftButtons") as §1-§).setVisibility(true);
            if(this.§-!<§ < 90)
            {
               this.§-!<§ += 0.3 * param1;
            }
            if(this.§-!<§ > 90)
            {
               this.§-!<§ = 90;
            }
            if(this.§1c§ < this.§"W§)
            {
               this.§1c§ += 0.5 * param1;
            }
            if(this.§1c§ > this.§"W§)
            {
               this.§1c§ = this.§"W§;
            }
         }
         else
         {
            if(this.§-!<§ > 0)
            {
               this.§-!<§ -= 0.3 * param1;
            }
            if(this.§-!<§ < 0)
            {
               this.§-!<§ = 0;
            }
            if(this.§1c§ > 0)
            {
               this.§1c§ -= 0.5 * param1;
            }
            if(this.§1c§ < 0)
            {
               (§3t§.getItemByName("Container_MenuLeftButtons") as §1-§).setVisibility(false);
               this.§1c§ = 0;
            }
         }
         if(this.§[L§)
         {
            (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).setVisibility(true);
            if(this.§55§ < 180)
            {
               this.§55§ += 0.5 * param1;
               (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).y = (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).y - 0.5 * param1;
            }
            if(this.§55§ > 180)
            {
               this.§55§ = 180;
            }
            if(this.§[!#§ < this.§?v§)
            {
               this.§[!#§ += 0.5 * param1;
            }
            if(this.§[!#§ > this.§?v§)
            {
               this.§[!#§ = this.§?v§;
            }
         }
         else
         {
            if(this.§55§ > 0)
            {
               this.§55§ -= 0.5 * param1;
               (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).y = (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).y + 0.5 * param1;
            }
            if(this.§55§ < 0)
            {
               this.§55§ = 0;
            }
            if(this.§[!#§ > 0)
            {
               this.§[!#§ -= 0.5 * param1;
            }
            if(this.§[!#§ < 0)
            {
               (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).setVisibility(false);
               this.§[!#§ = 0;
            }
         }
         (§3t§.getItemByName("Button_LeftMenuOpen") as §0!@§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§3t§.getItemByName("Button_RightMenuOpen") as §0!@§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§3t§.getItemByName("Button_LeftMenuOpen") as §0!@§).mClip.MovieClip_LeftMenuImage.rotation = this.§-!<§;
         (§3t§.getItemByName("Button_RightMenuOpen") as §0!@§).mClip.MovieClip_RightMenuImage.rotation = this.§55§;
         (§3t§.getItemByName("Container_MenuLeftButtons") as §1-§).y = this.§4B§ - this.§1c§;
         (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).y = this.§5!!§ - this.§[!#§;
      }
      
      public function refreshSession() : void
      {
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§>S§.§<!0§,
               "sessionID":§>S§.§9J§(),
               "userID":§9!H§.§ o§.name
            };
            new §>S§(callObject,§#x§.§<!0§,this,§>S§.§"!H§);
         }
         catch(e:Error)
         {
         }
      }
   }
}
