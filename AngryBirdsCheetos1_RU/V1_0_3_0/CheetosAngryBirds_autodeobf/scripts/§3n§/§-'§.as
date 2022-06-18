package §3n§
{
   import §!q§.§!!B§;
   import §"Z§.§5!2§;
   import §+!^§.§'Y§;
   import §+d§.dynamic;
   import §0L§.§&Y§;
   import §1Y§.§+$§;
   import §4p§.§-5§;
   import §7'§.§ ?§;
   import §7'§.§'q§;
   import §7'§.§-!6§;
   import §8v§.§#Z§;
   import §8v§.include;
   import §>N§.§"u§;
   import §?>§.§ !V§;
   import §?>§.§!&§;
   import §?>§.§3! §;
   import §^9§.§[!L§;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   import §import§.§&^§;
   
   public class §-'§ extends §<D§
   {
      
      public static const §,F§:String = "LevelSelectionState";
      
      private static const §6!0§:Number = 0.5;
       
      
      private var §6E§:Boolean = false;
      
      private var §"%§:MovieClip;
      
      private var §^!=§:Array;
      
      private var §#I§:Array;
      
      private var §#g§:int = 0;
      
      private var §`![§:Boolean = false;
      
      private var §28§:§5!2§ = null;
      
      private var §"g§:String;
      
      private var §]!&§:Dictionary;
      
      private var §,@§:Array;
      
      private var §1!L§:Boolean = false;
      
      private var §;h§:Array;
      
      private var §'!V§:Boolean = false;
      
      private var §;L§:Boolean = false;
      
      private var §2A§:Number = 0;
      
      private var §!!W§:Number = 0;
      
      private var §0!7§:Number = 0;
      
      private var §`N§:Number = 0;
      
      private var §&7§:Number;
      
      private var §1!3§:Number;
      
      private var §34§:Number;
      
      private var §1!7§:Number;
      
      public function §-'§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!J§ = new §#Z§(this);
         §2!J§.init(include.§%!I§.Views.View_LevelSelection[0]);
         this.§"%§ = new MovieClip();
         §2!J§.addChild(this.§"%§);
         this.§#I§ = [];
         this.§^!=§ = [];
         this.§&7§ = (§2!J§.getItemByName("Container_MenuLeftButtons") as § !V§).height;
         this.§1!3§ = (§2!J§.getItemByName("Container_MenuRightButtons") as § !V§).height;
         this.§34§ = §2!J§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§1!7§ = §2!J§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§"u§.§-2§)
         {
            §"u§.§-2§.stop();
         }
         if(!this.§1!L§)
         {
            this.§1!L§ = true;
            dynamic.§&!V§(dynamic.§^-§);
         }
         §'Y§.§@j§.§[!F§(false);
         this.§8d§();
         var _loc1_:Boolean = §7!^§.§4!J§();
         if(_loc1_)
         {
            §7!^§.§@$§();
         }
         §2!J§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      override public function activateComplete() : void
      {
         super.activateComplete();
      }
      
      private function § >§(param1:FocusEvent) : void
      {
         §2!J§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §+$§.STATE_STATUS_COMPLETED;
         }
         this.§34§ = §2!J§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§1!7§ = §2!J§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§8H§(param1);
         return §+$§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§'!V§ = false;
         this.§;L§ = false;
         this.§0!7§ = 0;
         this.§`N§ = 0;
         this.§!!W§ = 0;
         this.§2A§ = 0;
         (§2!J§.getItemByName("Container_MenuLeftButtons") as § !V§).setVisibility(false);
         (§2!J§.getItemByName("Container_MenuRightButtons") as § !V§).setVisibility(false);
         super.deActivate();
         this.§<$§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!6§) : void
      {
         var insertCodeComponent:§ ?§ = null;
         var code:String = null;
         var soundsEnabled:Boolean = false;
         var checkBoxComponent:§'q§ = null;
         var eventNameSubstring:String = null;
         var buttonGotoFrame:String = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§-!6§ = param3;
         if(eventName == "")
         {
            return;
         }
         switch(eventName)
         {
            case "OPEN_LEFT_MENU":
               if(this.§'!V§)
               {
                  this.§'!V§ = false;
               }
               else
               {
                  this.§'!V§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§;L§)
               {
                  this.§;L§ = false;
               }
               else
               {
                  this.§;L§ = true;
               }
               break;
            case "CANCEL":
               insertCodeComponent = §2!J§.getItemByName("InsertCodePopup");
               insertCodeComponent.setVisibility(false);
               break;
            case "SEND_CODE":
               code = §2!J§.getText("TextField_Code");
               break;
            case "SOUNDS_BUTTON":
               soundsEnabled = !§7!^§.§4!J§();
               §7!^§.§&g§(soundsEnabled);
               if(soundsEnabled)
               {
                  §7!^§.§@$§();
               }
               §2!J§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "CREDITS_BUTTON":
               mNextState = §8s§.§,F§;
               this.§'!V§ = false;
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
               if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.§4?§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = §-'§.§,F§;
                  return;
               }
               break;
            case "BUTTON_YES":
               if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.§4?§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§,F§;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §'q§;
               §7!^§.§-!@§.§=-§ = !§7!^§.§-!@§.§=-§;
               if(§7!^§.§-!@§.§=-§)
               {
                  checkBoxComponent.setComponentState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§'q§.§"!^§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §&^§.§4'§("addCredits");
                  sCheetosPopups.hidePopup();
                  break;
               }
               catch(e:Error)
               {
                  break;
               }
               break;
            case "CONTINUE":
               §<D§.sCheetosPopups.hidePopup();
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
                  (component as §3! §).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(buttonGotoFrame);
                  break;
               }
               this.§?!+§(eventName);
               if(eventName == "1-1" || eventName == "1-2" || eventName == "1-3")
               {
                  §<D§.sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§,F§;
                  break;
               }
               if(eventName == "CREDIT_OK")
               {
                  §<D§.sCheetosPopups.hidePopup();
                  break;
               }
               if(§&Y§.credits <= 0)
               {
                  §<D§.sCheetosPopups.showPopup(§-5§.NO_CREDIT,"NO_CREDIT");
                  return;
               }
               if(!§<D§.sCheetosPopups.showPopup(§-5§.§4?§))
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§,F§;
                  break;
               }
               break;
         }
      }
      
      private function §?!+§(param1:String) : void
      {
         var _loc2_:String = param1;
         if(!§&Y§.§[0§(param1))
         {
            StateCutSceneDynamic.§<9§ = true;
            §[!L§.§^!X§ = param1;
            §[!L§.§"!Y§(param1.toLowerCase());
         }
      }
      
      public function §8d§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§,@§ = [];
         this.§#g§ = §[!L§.§=k§(§[!L§.§6K§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §[!L§.§=k§(§[!L§.§6K§).pageIndexes.length)
         {
            _loc3_ = §[!L§.§=k§(§[!L§.§6K§).§]!^§(§[!L§.§=k§(§[!L§.§6K§).pageIndexes[_loc2_]);
            this.§,@§.push(§[!L§.§=k§(§[!L§.§6K§).§&e§(_loc2_));
            _loc1_ = this.§%!<§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §%!<§(param1:Array, param2:Number) : Number
      {
         var _loc4_:String = null;
         var _loc5_:§!&§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         this.§;h§ = [];
         var _loc3_:Number = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            _loc5_ = §2!J§.getItemByName("LevelButton" + (_loc3_ + 1)) as §!&§;
            this.§;h§[_loc3_] = _loc5_;
            if(!(_loc6_ = §&Y§.§[0§(_loc4_)))
            {
               _loc5_.setComponentState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               _loc5_.setComponentState(§'q§.§,%§);
            }
            _loc7_ = §7!^§.§3!U§.§&T§(_loc4_);
            _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
            _loc3_++;
         }
         return Number(param2 + §7!^§.§8o§);
      }
      
      private function §<$§() : void
      {
         while(this.§"%§.numChildren > 0)
         {
            this.§"%§.removeChildAt(0);
         }
         this.§#I§ = [];
      }
      
      private function §5j§(param1:MouseEvent) : void
      {
         mNextState = §-'§.§,F§;
      }
      
      private function §8H§(param1:Number) : void
      {
         (§2!J§.getItemByName("Container_MenuLeftButtons") as § !V§).mClip.scrollRect = new Rectangle(0,0,(§2!J§.getItemByName("Container_MenuLeftButtons") as § !V§).width,this.§&7§ + 20 - (this.§&7§ - this.§0!7§));
         (§2!J§.getItemByName("Container_MenuRightButtons") as § !V§).mClip.scrollRect = new Rectangle(0,0,(§2!J§.getItemByName("Container_MenuRightButtons") as § !V§).width,this.§1!3§ + 20 - (this.§1!3§ - this.§`N§));
         if(this.§'!V§)
         {
            (§2!J§.getItemByName("Container_MenuLeftButtons") as § !V§).setVisibility(true);
            if(this.§2A§ < 90)
            {
               this.§2A§ += 0.3 * param1;
            }
            if(this.§2A§ > 90)
            {
               this.§2A§ = 90;
            }
            if(this.§0!7§ < this.§&7§)
            {
               this.§0!7§ += 0.5 * param1;
            }
            if(this.§0!7§ > this.§&7§)
            {
               this.§0!7§ = this.§&7§;
            }
         }
         else
         {
            if(this.§2A§ > 0)
            {
               this.§2A§ -= 0.3 * param1;
            }
            if(this.§2A§ < 0)
            {
               this.§2A§ = 0;
            }
            if(this.§0!7§ > 0)
            {
               this.§0!7§ -= 0.5 * param1;
            }
            if(this.§0!7§ < 0)
            {
               (§2!J§.getItemByName("Container_MenuLeftButtons") as § !V§).setVisibility(false);
               this.§0!7§ = 0;
            }
         }
         if(this.§;L§)
         {
            (§2!J§.getItemByName("Container_MenuRightButtons") as § !V§).setVisibility(true);
            if(this.§!!W§ < 180)
            {
               this.§!!W§ += 0.5 * param1;
               (§2!J§.getItemByName("Container_MenuRightButtons") as § !V§).y = (§2!J§.getItemByName("Container_MenuRightButtons") as § !V§).y - 0.5 * param1;
            }
            if(this.§!!W§ > 180)
            {
               this.§!!W§ = 180;
            }
            if(this.§`N§ <= this.§1!3§)
            {
               this.§`N§ += 0.5 * param1;
            }
            if(this.§`N§ > this.§1!3§)
            {
               this.§`N§ = this.§1!3§;
            }
         }
         else
         {
            if(this.§!!W§ > 0)
            {
               this.§!!W§ -= 0.5 * param1;
               (§2!J§.getItemByName("Container_MenuRightButtons") as § !V§).y = (§2!J§.getItemByName("Container_MenuRightButtons") as § !V§).y + 0.5 * param1;
            }
            if(this.§!!W§ < 0)
            {
               this.§!!W§ = 0;
            }
            if(this.§`N§ >= 0)
            {
               this.§`N§ -= 0.5 * param1;
            }
            if(this.§`N§ < 0)
            {
               (§2!J§.getItemByName("Container_MenuRightButtons") as § !V§).setVisibility(false);
               this.§`N§ = 0;
            }
         }
         (§2!J§.getItemByName("Button_LeftMenuOpen") as §!&§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§2!J§.getItemByName("Button_RightMenuOpen") as §!&§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§2!J§.getItemByName("Button_LeftMenuOpen") as §!&§).mClip.MovieClip_LeftMenuImage.rotation = this.§2A§;
         (§2!J§.getItemByName("Button_RightMenuOpen") as §!&§).mClip.MovieClip_RightMenuImage.rotation = this.§!!W§;
         (§2!J§.getItemByName("Container_MenuLeftButtons") as § !V§).y = this.§34§ - this.§0!7§;
         (§2!J§.getItemByName("Container_MenuRightButtons") as § !V§).y = this.§1!7§ - this.§`N§;
      }
      
      public function refreshSession() : void
      {
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§!!B§.§"!<§,
               "sessionID":§!!B§.§4V§(),
               "userID":§&Y§.§>!_§.name
            };
            new §!!B§(callObject,§7!^§.§"!<§,this,§!!B§.§9!Y§);
         }
         catch(e:Error)
         {
         }
      }
   }
}
