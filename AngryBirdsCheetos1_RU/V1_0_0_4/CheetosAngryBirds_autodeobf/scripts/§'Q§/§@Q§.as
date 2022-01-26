package §'Q§
{
   import §!!S§.§'+§;
   import §!!S§.§>a§;
   import §!!S§.§^P§;
   import §#!5§.§>!0§;
   import §3!M§.§6A§;
   import §3!M§.§7^§;
   import §3!M§.§`!;§;
   import §4!R§.§@,§;
   import §6!P§.§88§;
   import §6=§.§`!<§;
   import §;!X§.§7`§;
   import §=q§.§<!,§;
   import §?!F§.§0!Y§;
   import §@w§.§1§;
   import §^3§.§@!"§;
   import §`B§.§ P§;
   import §`B§.§-Z§;
   import §`M§.§'C§;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §@Q§ extends §=!R§
   {
      
      public static const §1o§:String = "LevelSelectionState";
      
      private static const §2!>§:Number = 0.5;
       
      
      private var §,u§:Boolean = false;
      
      private var §,!J§:MovieClip;
      
      private var §;O§:Array;
      
      private var §"!7§:Array;
      
      private var §@2§:int = 0;
      
      private var §+!+§:Boolean = false;
      
      private var §'!F§:§88§ = null;
      
      private var §&m§:String;
      
      private var §,7§:Dictionary;
      
      private var §&U§:Array;
      
      private var §?!V§:Boolean = false;
      
      private var §3H§:Array;
      
      private var §99§:Boolean = false;
      
      private var §8!3§:Boolean = false;
      
      private var §`!9§:Number = 0;
      
      private var §-H§:Number = 0;
      
      private var §7-§:Number = 0;
      
      private var §?b§:Number = 0;
      
      private var §6e§:Number;
      
      private var §]i§:Number;
      
      private var §!@§:Number;
      
      private var §<?§:Number;
      
      public function §@Q§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2m§ = new §-Z§(this);
         §2m§.init(§ P§.§!A§.Views.View_LevelSelection[0]);
         this.§,!J§ = new MovieClip();
         §2m§.addChild(this.§,!J§);
         this.§"!7§ = [];
         this.§;O§ = [];
         this.§6e§ = (§2m§.getItemByName("Container_MenuLeftButtons") as §7^§).height;
         this.§]i§ = (§2m§.getItemByName("Container_MenuRightButtons") as §7^§).height;
         this.§!@§ = §2m§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§<?§ = §2m§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§'C§.§3b§)
         {
            §'C§.§3b§.stop();
         }
         if(!this.§?!V§)
         {
            this.§?!V§ = true;
            §@!"§.§2^§(§@!"§.§;!O§);
         }
         §7`§.§2'§.§8!-§(false);
         this.§#5§();
         var _loc1_:Boolean = §4+§.§-n§();
         if(_loc1_)
         {
            §4+§.§]!§();
         }
         §2m§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      override public function activateComplete() : void
      {
         super.activateComplete();
      }
      
      private function §=7§(param1:FocusEvent) : void
      {
         §2m§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §0!Y§.STATE_STATUS_COMPLETED;
         }
         this.§!@§ = §2m§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§<?§ = §2m§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§0B§(param1);
         return §0!Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§99§ = false;
         this.§8!3§ = false;
         this.§7-§ = 0;
         this.§?b§ = 0;
         this.§-H§ = 0;
         this.§`!9§ = 0;
         (§2m§.getItemByName("Container_MenuLeftButtons") as §7^§).setVisibility(false);
         (§2m§.getItemByName("Container_MenuRightButtons") as §7^§).setVisibility(false);
         super.deActivate();
         this.§?!D§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^P§) : void
      {
         var insertCodeComponent:§'+§ = null;
         var code:String = null;
         var soundsEnabled:Boolean = false;
         var checkBoxComponent:§>a§ = null;
         var eventNameSubstring:String = null;
         var buttonGotoFrame:String = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§^P§ = param3;
         if(eventName == "")
         {
            return;
         }
         switch(eventName)
         {
            case "OPEN_LEFT_MENU":
               if(this.§99§)
               {
                  this.§99§ = false;
               }
               else
               {
                  this.§99§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§8!3§)
               {
                  this.§8!3§ = false;
               }
               else
               {
                  this.§8!3§ = true;
               }
               break;
            case "CANCEL":
               insertCodeComponent = §2m§.getItemByName("InsertCodePopup");
               insertCodeComponent.setVisibility(false);
               break;
            case "SEND_CODE":
               code = §2m§.getText("TextField_Code");
               break;
            case "SOUNDS_BUTTON":
               soundsEnabled = !§4+§.§-n§();
               §4+§.§&!X§(soundsEnabled);
               if(soundsEnabled)
               {
                  §4+§.§]!§();
               }
               §2m§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "CREDITS_BUTTON":
               mNextState = §7!2§.§1o§;
               this.§99§ = false;
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
               if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.§6M§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = §@Q§.§1o§;
                  return;
               }
               break;
            case "BUTTON_YES":
               if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.§6M§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§1o§;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §>a§;
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
            default:
               eventNameSubstring = eventName.substr(0,4);
               if(eventNameSubstring == "OUT1")
               {
                  eventNameSubstring = "OUT";
               }
               if(eventNameSubstring == "OVER" || eventNameSubstring == "OUT")
               {
                  buttonGotoFrame = eventNameSubstring.toLowerCase();
                  (component as §6A§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(buttonGotoFrame);
                  break;
               }
               this.§8C§(eventName);
               if(eventName == "1-1" || eventName == "1-2" || eventName == "1-3")
               {
                  §=!R§.sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§1o§;
                  break;
               }
               if(eventName == "CREDIT_OK")
               {
                  §=!R§.sCheetosPopups.hidePopup();
                  break;
               }
               if(§@,§.credits <= 0)
               {
                  §=!R§.sCheetosPopups.showPopup(§`!<§.NO_CREDIT,"NO_CREDIT");
                  return;
               }
               if(!§=!R§.sCheetosPopups.showPopup(§`!<§.§6M§))
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§1o§;
                  break;
               }
               break;
         }
      }
      
      private function §8C§(param1:String) : void
      {
         var _loc2_:String = param1;
         if(!§@,§.§?!,§(param1))
         {
            StateCutSceneDynamic.§8>§ = true;
            §<!,§.§1D§ = param1;
            §<!,§.§4b§(param1.toLowerCase());
         }
      }
      
      public function §#5§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§&U§ = [];
         this.§@2§ = §<!,§.§9!C§(§<!,§.§7Z§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §<!,§.§9!C§(§<!,§.§7Z§).pageIndexes.length)
         {
            _loc3_ = §<!,§.§9!C§(§<!,§.§7Z§).§@!$§(§<!,§.§9!C§(§<!,§.§7Z§).pageIndexes[_loc2_]);
            this.§&U§.push(§<!,§.§9!C§(§<!,§.§7Z§).§1R§(_loc2_));
            _loc1_ = this.§8!0§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §8!0§(param1:Array, param2:Number) : Number
      {
         var _loc4_:String = null;
         var _loc5_:§`!;§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         this.§3H§ = [];
         var _loc3_:Number = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            _loc5_ = §2m§.getItemByName("LevelButton" + (_loc3_ + 1)) as §`!;§;
            this.§3H§[_loc3_] = _loc5_;
            if(!(_loc6_ = §@,§.§?!,§(_loc4_)))
            {
               _loc5_.setComponentState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               _loc5_.setComponentState(§>a§.§9E§);
            }
            _loc7_ = §4+§.§2!K§.§4d§(_loc4_);
            _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
            _loc3_++;
         }
         return Number(param2 + §4+§.§1=§);
      }
      
      private function §?!D§() : void
      {
         while(this.§,!J§.numChildren > 0)
         {
            this.§,!J§.removeChildAt(0);
         }
         this.§"!7§ = [];
      }
      
      private function §with§(param1:MouseEvent) : void
      {
         mNextState = §@Q§.§1o§;
      }
      
      private function §0B§(param1:Number) : void
      {
         (§2m§.getItemByName("Container_MenuLeftButtons") as §7^§).mClip.scrollRect = new Rectangle(0,0,(§2m§.getItemByName("Container_MenuLeftButtons") as §7^§).width,this.§6e§ + 20 - (this.§6e§ - this.§7-§));
         (§2m§.getItemByName("Container_MenuRightButtons") as §7^§).mClip.scrollRect = new Rectangle(0,0,(§2m§.getItemByName("Container_MenuRightButtons") as §7^§).width,this.§]i§ + 20 - (this.§]i§ - this.§?b§));
         if(this.§99§)
         {
            (§2m§.getItemByName("Container_MenuLeftButtons") as §7^§).setVisibility(true);
            if(this.§`!9§ < 90)
            {
               this.§`!9§ += 0.3 * param1;
            }
            if(this.§`!9§ > 90)
            {
               this.§`!9§ = 90;
            }
            if(this.§7-§ < this.§6e§)
            {
               this.§7-§ += 0.5 * param1;
            }
            if(this.§7-§ > this.§6e§)
            {
               this.§7-§ = this.§6e§;
            }
         }
         else
         {
            if(this.§`!9§ > 0)
            {
               this.§`!9§ -= 0.3 * param1;
            }
            if(this.§`!9§ < 0)
            {
               this.§`!9§ = 0;
            }
            if(this.§7-§ > 0)
            {
               this.§7-§ -= 0.5 * param1;
            }
            if(this.§7-§ < 0)
            {
               (§2m§.getItemByName("Container_MenuLeftButtons") as §7^§).setVisibility(false);
               this.§7-§ = 0;
            }
         }
         if(this.§8!3§)
         {
            (§2m§.getItemByName("Container_MenuRightButtons") as §7^§).setVisibility(true);
            if(this.§-H§ < 180)
            {
               this.§-H§ += 0.5 * param1;
               (§2m§.getItemByName("Container_MenuRightButtons") as §7^§).y = (§2m§.getItemByName("Container_MenuRightButtons") as §7^§).y - 0.5 * param1;
            }
            if(this.§-H§ > 180)
            {
               this.§-H§ = 180;
            }
            if(this.§?b§ <= this.§]i§)
            {
               this.§?b§ += 0.5 * param1;
            }
            if(this.§?b§ > this.§]i§)
            {
               this.§?b§ = this.§]i§;
            }
         }
         else
         {
            if(this.§-H§ > 0)
            {
               this.§-H§ -= 0.5 * param1;
               (§2m§.getItemByName("Container_MenuRightButtons") as §7^§).y = (§2m§.getItemByName("Container_MenuRightButtons") as §7^§).y + 0.5 * param1;
            }
            if(this.§-H§ < 0)
            {
               this.§-H§ = 0;
            }
            if(this.§?b§ >= 0)
            {
               this.§?b§ -= 0.5 * param1;
            }
            if(this.§?b§ < 0)
            {
               (§2m§.getItemByName("Container_MenuRightButtons") as §7^§).setVisibility(false);
               this.§?b§ = 0;
            }
         }
         (§2m§.getItemByName("Button_LeftMenuOpen") as §`!;§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§2m§.getItemByName("Button_RightMenuOpen") as §`!;§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§2m§.getItemByName("Button_LeftMenuOpen") as §`!;§).mClip.MovieClip_LeftMenuImage.rotation = this.§`!9§;
         (§2m§.getItemByName("Button_RightMenuOpen") as §`!;§).mClip.MovieClip_RightMenuImage.rotation = this.§-H§;
         (§2m§.getItemByName("Container_MenuLeftButtons") as §7^§).y = this.§!@§ - this.§7-§;
         (§2m§.getItemByName("Container_MenuRightButtons") as §7^§).y = this.§<?§ - this.§?b§;
      }
      
      public function refreshSession() : void
      {
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§1§.§>,§,
               "sessionID":§1§.§3!B§(),
               "userID":§@,§.§&!;§.name
            };
            new §1§(callObject,§4+§.§>,§,this,§1§.§>!V§);
         }
         catch(e:Error)
         {
         }
      }
   }
}
