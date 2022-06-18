package §+!8§
{
   import §"I§.§-x§;
   import §#[§.§#!Q§;
   import §#b§.§5!#§;
   import §&8§.§8h§;
   import §&8§.§<O§;
   import §'=§.§]d§;
   import §,'§.§[2§;
   import §-!;§.§4^§;
   import §2!P§.§6=§;
   import §4!F§.§4m§;
   import §7L§.§+!$§;
   import §7L§.§-!B§;
   import §7L§.§9I§;
   import §8O§.§'S§;
   import §@!W§.§8!W§;
   import §[]§.§+F§;
   import §[]§.§^T§;
   import §[]§.§`!`§;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §=f§ extends §;A§
   {
      
      public static const §,!+§:String = "LevelSelectionState";
      
      private static const §7i§:Number = 0.5;
       
      
      private var §=Q§:Boolean = false;
      
      private var §8R§:MovieClip;
      
      private var §;!_§:Array;
      
      private var §=!U§:Array;
      
      private var §!F§:int = 0;
      
      private var §>k§:Boolean = false;
      
      private var §0A§:§4^§ = null;
      
      private var §&`§:String;
      
      private var §-1§:Dictionary;
      
      private var §=d§:Array;
      
      private var §<!1§:Boolean = false;
      
      private var §8b§:Array;
      
      private var §;3§:Boolean = false;
      
      private var §`O§:Boolean = false;
      
      private var §#M§:Number = 0;
      
      private var §;!0§:Number = 0;
      
      private var §8n§:Number = 0;
      
      private var §3!!§:Number = 0;
      
      private var §#!^§:Number;
      
      private var §9!U§:Number;
      
      private var §>!P§:Number;
      
      private var §3P§:Number;
      
      public function §=f§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&X§ = new §<O§(this);
         §&X§.init(§8h§.§9!>§.Views.View_LevelSelection[0]);
         this.§8R§ = new MovieClip();
         §&X§.addChild(this.§8R§);
         this.§=!U§ = [];
         this.§;!_§ = [];
         this.§#!^§ = (§&X§.getItemByName("Container_MenuLeftButtons") as §`!`§).height;
         this.§9!U§ = (§&X§.getItemByName("Container_MenuRightButtons") as §`!`§).height;
         this.§>!P§ = §&X§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§3P§ = §&X§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§6=§.§4!8§)
         {
            §6=§.§4!8§.stop();
         }
         if(!this.§<!1§)
         {
            this.§<!1§ = true;
            §#!Q§.§ 3§(§#!Q§.§+!H§);
         }
         §8!W§.§=X§.§=!@§(false);
         this.§,g§();
         var _loc1_:Boolean = §@!!§.§7!1§();
         if(_loc1_)
         {
            §@!!§.§;y§();
         }
         §&X§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      override public function activateComplete() : void
      {
         super.activateComplete();
      }
      
      private function §&0§(param1:FocusEvent) : void
      {
         §&X§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §-x§.STATE_STATUS_COMPLETED;
         }
         this.§>!P§ = §&X§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§3P§ = §&X§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§?!!§(param1);
         return §-x§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§;3§ = false;
         this.§`O§ = false;
         this.§8n§ = 0;
         this.§3!!§ = 0;
         this.§;!0§ = 0;
         this.§#M§ = 0;
         (§&X§.getItemByName("Container_MenuLeftButtons") as §`!`§).setVisibility(false);
         (§&X§.getItemByName("Container_MenuRightButtons") as §`!`§).setVisibility(false);
         super.deActivate();
         this.§%!G§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9I§) : void
      {
         var insertCodeComponent:§-!B§ = null;
         var code:String = null;
         var soundsEnabled:Boolean = false;
         var checkBoxComponent:§+!$§ = null;
         var eventNameSubstring:String = null;
         var buttonGotoFrame:String = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§9I§ = param3;
         if(eventName == "")
         {
            return;
         }
         switch(eventName)
         {
            case "OPEN_LEFT_MENU":
               if(this.§;3§)
               {
                  this.§;3§ = false;
               }
               else
               {
                  this.§;3§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§`O§)
               {
                  this.§`O§ = false;
               }
               else
               {
                  this.§`O§ = true;
               }
               break;
            case "CANCEL":
               insertCodeComponent = §&X§.getItemByName("InsertCodePopup");
               insertCodeComponent.setVisibility(false);
               break;
            case "SEND_CODE":
               code = §&X§.getText("TextField_Code");
               break;
            case "SOUNDS_BUTTON":
               soundsEnabled = !§@!!§.§7!1§();
               §@!!§.§&!F§(soundsEnabled);
               if(soundsEnabled)
               {
                  §@!!§.§;y§();
               }
               §&X§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "CREDITS_BUTTON":
               mNextState = §]!4§.§,!+§;
               this.§;3§ = false;
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
               if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.§+!5§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = §=f§.§,!+§;
                  return;
               }
               break;
            case "BUTTON_YES":
               if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.§+!5§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§,!+§;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §+!$§;
               §@!!§.§%F§.§4<§ = !§@!!§.§%F§.§4<§;
               if(§@!!§.§%F§.§4<§)
               {
                  checkBoxComponent.setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§+!$§.§^U§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §[2§.§^J§("addCredits");
                  sCheetosPopups.hidePopup();
                  break;
               }
               catch(e:Error)
               {
                  break;
               }
               break;
            case "CONTINUE":
               §;A§.sCheetosPopups.hidePopup();
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
                  (component as §^T§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(buttonGotoFrame);
                  break;
               }
               this.§+!0§(eventName);
               if(eventName == "1-1" || eventName == "1-2" || eventName == "1-3")
               {
                  §;A§.sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§,!+§;
                  break;
               }
               if(eventName == "CREDIT_OK")
               {
                  §;A§.sCheetosPopups.hidePopup();
                  break;
               }
               if(§'S§.credits <= 0)
               {
                  §;A§.sCheetosPopups.showPopup(§]d§.NO_CREDIT,"NO_CREDIT");
                  return;
               }
               if(!§;A§.sCheetosPopups.showPopup(§]d§.§+!5§))
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§,!+§;
                  break;
               }
               break;
         }
      }
      
      private function §+!0§(param1:String) : void
      {
         var _loc2_:String = param1;
         if(!§'S§.§>>§(param1))
         {
            StateCutSceneDynamic.§%n§ = true;
            §5!#§.§'D§ = param1;
            §5!#§.§6F§(param1.toLowerCase());
         }
      }
      
      public function §,g§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§=d§ = [];
         this.§!F§ = §5!#§.§^=§(§5!#§.§[F§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §5!#§.§^=§(§5!#§.§[F§).pageIndexes.length)
         {
            _loc3_ = §5!#§.§^=§(§5!#§.§[F§).§5Z§(§5!#§.§^=§(§5!#§.§[F§).pageIndexes[_loc2_]);
            this.§=d§.push(§5!#§.§^=§(§5!#§.§[F§).§>%§(_loc2_));
            _loc1_ = this.§!<§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §!<§(param1:Array, param2:Number) : Number
      {
         var _loc4_:String = null;
         var _loc5_:§+F§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         this.§8b§ = [];
         var _loc3_:Number = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            _loc5_ = §&X§.getItemByName("LevelButton" + (_loc3_ + 1)) as §+F§;
            this.§8b§[_loc3_] = _loc5_;
            if(!(_loc6_ = §'S§.§>>§(_loc4_)))
            {
               _loc5_.setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               _loc5_.setComponentState(§+!$§.§2!H§);
            }
            _loc7_ = §@!!§.§<R§.§@M§(_loc4_);
            _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
            _loc3_++;
         }
         return Number(param2 + §@!!§.§34§);
      }
      
      private function §%!G§() : void
      {
         while(this.§8R§.numChildren > 0)
         {
            this.§8R§.removeChildAt(0);
         }
         this.§=!U§ = [];
      }
      
      private function §+!P§(param1:MouseEvent) : void
      {
         mNextState = §=f§.§,!+§;
      }
      
      private function §?!!§(param1:Number) : void
      {
         (§&X§.getItemByName("Container_MenuLeftButtons") as §`!`§).mClip.scrollRect = new Rectangle(0,0,(§&X§.getItemByName("Container_MenuLeftButtons") as §`!`§).width,this.§#!^§ + 20 - (this.§#!^§ - this.§8n§));
         (§&X§.getItemByName("Container_MenuRightButtons") as §`!`§).mClip.scrollRect = new Rectangle(0,0,(§&X§.getItemByName("Container_MenuRightButtons") as §`!`§).width,this.§9!U§ + 20 - (this.§9!U§ - this.§3!!§));
         if(this.§;3§)
         {
            (§&X§.getItemByName("Container_MenuLeftButtons") as §`!`§).setVisibility(true);
            if(this.§#M§ < 90)
            {
               this.§#M§ += 0.3 * param1;
            }
            if(this.§#M§ > 90)
            {
               this.§#M§ = 90;
            }
            if(this.§8n§ < this.§#!^§)
            {
               this.§8n§ += 0.5 * param1;
            }
            if(this.§8n§ > this.§#!^§)
            {
               this.§8n§ = this.§#!^§;
            }
         }
         else
         {
            if(this.§#M§ > 0)
            {
               this.§#M§ -= 0.3 * param1;
            }
            if(this.§#M§ < 0)
            {
               this.§#M§ = 0;
            }
            if(this.§8n§ > 0)
            {
               this.§8n§ -= 0.5 * param1;
            }
            if(this.§8n§ < 0)
            {
               (§&X§.getItemByName("Container_MenuLeftButtons") as §`!`§).setVisibility(false);
               this.§8n§ = 0;
            }
         }
         if(this.§`O§)
         {
            (§&X§.getItemByName("Container_MenuRightButtons") as §`!`§).setVisibility(true);
            if(this.§;!0§ < 180)
            {
               this.§;!0§ += 0.5 * param1;
               (§&X§.getItemByName("Container_MenuRightButtons") as §`!`§).y = (§&X§.getItemByName("Container_MenuRightButtons") as §`!`§).y - 0.5 * param1;
            }
            if(this.§;!0§ > 180)
            {
               this.§;!0§ = 180;
            }
            if(this.§3!!§ <= this.§9!U§)
            {
               this.§3!!§ += 0.5 * param1;
            }
            if(this.§3!!§ > this.§9!U§)
            {
               this.§3!!§ = this.§9!U§;
            }
         }
         else
         {
            if(this.§;!0§ > 0)
            {
               this.§;!0§ -= 0.5 * param1;
               (§&X§.getItemByName("Container_MenuRightButtons") as §`!`§).y = (§&X§.getItemByName("Container_MenuRightButtons") as §`!`§).y + 0.5 * param1;
            }
            if(this.§;!0§ < 0)
            {
               this.§;!0§ = 0;
            }
            if(this.§3!!§ >= 0)
            {
               this.§3!!§ -= 0.5 * param1;
            }
            if(this.§3!!§ < 0)
            {
               (§&X§.getItemByName("Container_MenuRightButtons") as §`!`§).setVisibility(false);
               this.§3!!§ = 0;
            }
         }
         (§&X§.getItemByName("Button_LeftMenuOpen") as §+F§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§&X§.getItemByName("Button_RightMenuOpen") as §+F§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§&X§.getItemByName("Button_LeftMenuOpen") as §+F§).mClip.MovieClip_LeftMenuImage.rotation = this.§#M§;
         (§&X§.getItemByName("Button_RightMenuOpen") as §+F§).mClip.MovieClip_RightMenuImage.rotation = this.§;!0§;
         (§&X§.getItemByName("Container_MenuLeftButtons") as §`!`§).y = this.§>!P§ - this.§8n§;
         (§&X§.getItemByName("Container_MenuRightButtons") as §`!`§).y = this.§3P§ - this.§3!!§;
      }
      
      public function refreshSession() : void
      {
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§4m§.§&y§,
               "sessionID":§4m§.§!J§(),
               "userID":§'S§.§^!+§.name
            };
            new §4m§(callObject,§@!!§.§&y§,this,§4m§.§5N§);
         }
         catch(e:Error)
         {
         }
      }
   }
}
