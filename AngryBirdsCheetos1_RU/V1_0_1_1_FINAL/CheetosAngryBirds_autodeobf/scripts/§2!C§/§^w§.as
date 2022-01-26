package §2!C§
{
   import §&h§.§+Y§;
   import §+!X§.§8v§;
   import §,+§.§6!&§;
   import §1e§.§&!R§;
   import §2K§.§ 3§;
   import §2K§.;
   import §2K§.§,!@§;
   import §39§.§-W§;
   import §6!K§.§#![§;
   import §6!K§.§3l§;
   import §6!K§.§7!!§;
   import §6!S§.§,!9§;
   import §94§.§&!7§;
   import §>!D§.§3Q§;
   import §>!D§.§;,§;
   import §[p§.§"w§;
   import §]u§.§+e§;
   import §^Q§.§,^§;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §^w§ extends §1!b§
   {
      
      public static const §+!a§:String = "LevelSelectionState";
      
      private static const §'g§:Number = 0.5;
       
      
      private var §3f§:Boolean = false;
      
      private var §#$§:MovieClip;
      
      private var §7!@§:Array;
      
      private var §3j§:Array;
      
      private var §`R§:int = 0;
      
      private var §&m§:Boolean = false;
      
      private var §&G§:§,!9§ = null;
      
      private var §4Q§:String;
      
      private var §,0§:Dictionary;
      
      private var §+r§:Array;
      
      private var §%9§:Boolean = false;
      
      private var §implements§:Array;
      
      private var §;Y§:Boolean = false;
      
      private var §4^§:Boolean = false;
      
      private var §[!K§:Number = 0;
      
      private var §+R§:Number = 0;
      
      private var §else§:Number = 0;
      
      private var §!!!§:Number = 0;
      
      private var §=J§:Number;
      
      private var §=g§:Number;
      
      private var §^g§:Number;
      
      private var §;@§:Number;
      
      public function §^w§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?!?§ = new §;,§(this);
         §?!?§.init(§3Q§.§?6§.Views.View_LevelSelection[0]);
         this.§#$§ = new MovieClip();
         §?!?§.addChild(this.§#$§);
         this.§3j§ = [];
         this.§7!@§ = [];
         this.§=J§ = (§?!?§.getItemByName("Container_MenuLeftButtons") as §,!@§).height;
         this.§=g§ = (§?!?§.getItemByName("Container_MenuRightButtons") as §,!@§).height;
         this.§^g§ = §?!?§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§;@§ = §?!?§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§&!7§.§>!M§)
         {
            §&!7§.§>!M§.stop();
         }
         if(!this.§%9§)
         {
            this.§%9§ = true;
            §6!&§.§08§(§6!&§.§4!U§);
         }
         §,^§.§0K§.§5W§(false);
         this.§@'§();
         var _loc1_:Boolean = §7d§.§ 7§();
         if(_loc1_)
         {
            §7d§.§+!>§();
         }
         §?!?§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      override public function activateComplete() : void
      {
         super.activateComplete();
      }
      
      private function §#%§(param1:FocusEvent) : void
      {
         §?!?§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §+Y§.STATE_STATUS_COMPLETED;
         }
         this.§^g§ = §?!?§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§;@§ = §?!?§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§+!#§(param1);
         return §+Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§;Y§ = false;
         this.§4^§ = false;
         this.§else§ = 0;
         this.§!!!§ = 0;
         this.§+R§ = 0;
         this.§[!K§ = 0;
         (§?!?§.getItemByName("Container_MenuLeftButtons") as §,!@§).setVisibility(false);
         (§?!?§.getItemByName("Container_MenuRightButtons") as §,!@§).setVisibility(false);
         super.deActivate();
         this.§1!I§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#![§) : void
      {
         var insertCodeComponent:§7!!§ = null;
         var code:String = null;
         var soundsEnabled:Boolean = false;
         var checkBoxComponent:§3l§ = null;
         var eventNameSubstring:String = null;
         var buttonGotoFrame:String = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§#![§ = param3;
         if(eventName == "")
         {
            return;
         }
         switch(eventName)
         {
            case "OPEN_LEFT_MENU":
               if(this.§;Y§)
               {
                  this.§;Y§ = false;
               }
               else
               {
                  this.§;Y§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§4^§)
               {
                  this.§4^§ = false;
               }
               else
               {
                  this.§4^§ = true;
               }
               break;
            case "CANCEL":
               insertCodeComponent = §?!?§.getItemByName("InsertCodePopup");
               insertCodeComponent.setVisibility(false);
               break;
            case "SEND_CODE":
               code = §?!?§.getText("TextField_Code");
               break;
            case "SOUNDS_BUTTON":
               soundsEnabled = !§7d§.§ 7§();
               §7d§.§`!G§(soundsEnabled);
               if(soundsEnabled)
               {
                  §7d§.§+!>§();
               }
               §?!?§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "CREDITS_BUTTON":
               mNextState = §?h§.§+!a§;
               this.§;Y§ = false;
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
               if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.§?!b§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = §^w§.§+!a§;
                  return;
               }
               break;
            case "BUTTON_YES":
               if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.§?!b§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§+!a§;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §3l§;
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
            case "CONTINUE":
               §1!b§.sCheetosPopups.hidePopup();
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
                  (component as §#1§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(buttonGotoFrame);
                  break;
               }
               this.§1l§(eventName);
               if(eventName == "1-1" || eventName == "1-2" || eventName == "1-3")
               {
                  §1!b§.sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§+!a§;
                  break;
               }
               if(eventName == "CREDIT_OK")
               {
                  §1!b§.sCheetosPopups.hidePopup();
                  break;
               }
               if(§"w§.credits <= 0)
               {
                  §1!b§.sCheetosPopups.showPopup(§&!R§.NO_CREDIT,"NO_CREDIT");
                  return;
               }
               if(!§1!b§.sCheetosPopups.showPopup(§&!R§.§?!b§))
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§+!a§;
                  break;
               }
               break;
         }
      }
      
      private function §1l§(param1:String) : void
      {
         var _loc2_:String = param1;
         if(!§"w§.§=!<§(param1))
         {
            StateCutSceneDynamic.§+!F§ = true;
            §-W§.§,[§ = param1;
            §-W§.§#N§(param1.toLowerCase());
         }
      }
      
      public function §@'§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§+r§ = [];
         this.§`R§ = §-W§.§`L§(§-W§.§15§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §-W§.§`L§(§-W§.§15§).pageIndexes.length)
         {
            _loc3_ = §-W§.§`L§(§-W§.§15§).§+$§(§-W§.§`L§(§-W§.§15§).pageIndexes[_loc2_]);
            this.§+r§.push(§-W§.§`L§(§-W§.§15§).§%!K§(_loc2_));
            _loc1_ = this.§ x§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function § x§(param1:Array, param2:Number) : Number
      {
         var _loc4_:String = null;
         var _loc5_:§ 3§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         this.§implements§ = [];
         var _loc3_:Number = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            _loc5_ = §?!?§.getItemByName("LevelButton" + (_loc3_ + 1)) as § 3§;
            this.§implements§[_loc3_] = _loc5_;
            if(!(_loc6_ = §"w§.§=!<§(_loc4_)))
            {
               _loc5_.setComponentState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               _loc5_.setComponentState(§3l§.§,!8§);
            }
            _loc7_ = §7d§.§4'§.§<v§(_loc4_);
            _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
            _loc3_++;
         }
         return Number(param2 + §7d§.§=!#§);
      }
      
      private function §1!I§() : void
      {
         while(this.§#$§.numChildren > 0)
         {
            this.§#$§.removeChildAt(0);
         }
         this.§3j§ = [];
      }
      
      private function §4%§(param1:MouseEvent) : void
      {
         mNextState = §^w§.§+!a§;
      }
      
      private function §+!#§(param1:Number) : void
      {
         (§?!?§.getItemByName("Container_MenuLeftButtons") as §,!@§).mClip.scrollRect = new Rectangle(0,0,(§?!?§.getItemByName("Container_MenuLeftButtons") as §,!@§).width,this.§=J§ + 20 - (this.§=J§ - this.§else§));
         (§?!?§.getItemByName("Container_MenuRightButtons") as §,!@§).mClip.scrollRect = new Rectangle(0,0,(§?!?§.getItemByName("Container_MenuRightButtons") as §,!@§).width,this.§=g§ + 20 - (this.§=g§ - this.§!!!§));
         if(this.§;Y§)
         {
            (§?!?§.getItemByName("Container_MenuLeftButtons") as §,!@§).setVisibility(true);
            if(this.§[!K§ < 90)
            {
               this.§[!K§ += 0.3 * param1;
            }
            if(this.§[!K§ > 90)
            {
               this.§[!K§ = 90;
            }
            if(this.§else§ < this.§=J§)
            {
               this.§else§ += 0.5 * param1;
            }
            if(this.§else§ > this.§=J§)
            {
               this.§else§ = this.§=J§;
            }
         }
         else
         {
            if(this.§[!K§ > 0)
            {
               this.§[!K§ -= 0.3 * param1;
            }
            if(this.§[!K§ < 0)
            {
               this.§[!K§ = 0;
            }
            if(this.§else§ > 0)
            {
               this.§else§ -= 0.5 * param1;
            }
            if(this.§else§ < 0)
            {
               (§?!?§.getItemByName("Container_MenuLeftButtons") as §,!@§).setVisibility(false);
               this.§else§ = 0;
            }
         }
         if(this.§4^§)
         {
            (§?!?§.getItemByName("Container_MenuRightButtons") as §,!@§).setVisibility(true);
            if(this.§+R§ < 180)
            {
               this.§+R§ += 0.5 * param1;
               (§?!?§.getItemByName("Container_MenuRightButtons") as §,!@§).y = (§?!?§.getItemByName("Container_MenuRightButtons") as §,!@§).y - 0.5 * param1;
            }
            if(this.§+R§ > 180)
            {
               this.§+R§ = 180;
            }
            if(this.§!!!§ <= this.§=g§)
            {
               this.§!!!§ += 0.5 * param1;
            }
            if(this.§!!!§ > this.§=g§)
            {
               this.§!!!§ = this.§=g§;
            }
         }
         else
         {
            if(this.§+R§ > 0)
            {
               this.§+R§ -= 0.5 * param1;
               (§?!?§.getItemByName("Container_MenuRightButtons") as §,!@§).y = (§?!?§.getItemByName("Container_MenuRightButtons") as §,!@§).y + 0.5 * param1;
            }
            if(this.§+R§ < 0)
            {
               this.§+R§ = 0;
            }
            if(this.§!!!§ >= 0)
            {
               this.§!!!§ -= 0.5 * param1;
            }
            if(this.§!!!§ < 0)
            {
               (§?!?§.getItemByName("Container_MenuRightButtons") as §,!@§).setVisibility(false);
               this.§!!!§ = 0;
            }
         }
         (§?!?§.getItemByName("Button_LeftMenuOpen") as § 3§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§?!?§.getItemByName("Button_RightMenuOpen") as § 3§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§?!?§.getItemByName("Button_LeftMenuOpen") as § 3§).mClip.MovieClip_LeftMenuImage.rotation = this.§[!K§;
         (§?!?§.getItemByName("Button_RightMenuOpen") as § 3§).mClip.MovieClip_RightMenuImage.rotation = this.§+R§;
         (§?!?§.getItemByName("Container_MenuLeftButtons") as §,!@§).y = this.§^g§ - this.§else§;
         (§?!?§.getItemByName("Container_MenuRightButtons") as §,!@§).y = this.§;@§ - this.§!!!§;
      }
      
      public function refreshSession() : void
      {
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§8v§.§8!J§,
               "sessionID":§8v§.§<!E§(),
               "userID":§"w§.§2C§.name
            };
            new §8v§(callObject,§7d§.§8!J§,this,§8v§.§;t§);
         }
         catch(e:Error)
         {
         }
      }
   }
}
