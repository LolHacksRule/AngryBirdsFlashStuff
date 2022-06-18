package §@1§
{
   import § !X§.§+2§;
   import §!>§.§5!$§;
   import §"!@§.§3!+§;
   import §"A§.§?3§;
   import §"A§.§`!N§;
   import §'!S§.§,!%§;
   import §0!F§.§3>§;
   import §7!U§.§2!7§;
   import §7f§.§,!>§;
   import §7f§.§2K§;
   import §7f§.§?i§;
   import §8!#§.§6G§;
   import §<!P§.§>l§;
   import §>!6§.§0L§;
   import §^!0§.§0!2§;
   import §^r§.§ ^§;
   import §^r§.§%%§;
   import §^r§.§>`§;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §05§ extends §]R§
   {
      
      public static const §]U§:String = "LevelSelectionState";
      
      private static const §8!N§:Number = 0.5;
       
      
      private var §^!,§:Boolean = false;
      
      private var §,+§:MovieClip;
      
      private var §2!4§:Array;
      
      private var §[!F§:Array;
      
      private var §-!7§:int = 0;
      
      private var §+,§:Boolean = false;
      
      private var §"g§:§5!$§ = null;
      
      private var §9!T§:String;
      
      private var §9!5§:Dictionary;
      
      private var §7+§:Array;
      
      private var §+R§:Boolean = false;
      
      private var §,!a§:Array;
      
      private var §?!]§:Boolean = false;
      
      private var §<x§:Boolean = false;
      
      private var §+7§:Number = 0;
      
      private var §4!Q§:Number = 0;
      
      private var §=-§:Number = 0;
      
      private var §,J§:Number = 0;
      
      private var §`o§:Number;
      
      private var §!_§:Number;
      
      private var §,!C§:Number;
      
      private var §]!+§:Number;
      
      public function §05§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[B§ = new §?3§(this);
         §[B§.init(§`!N§.§,!T§.Views.View_LevelSelection[0]);
         this.§,+§ = new MovieClip();
         §[B§.addChild(this.§,+§);
         this.§[!F§ = [];
         this.§2!4§ = [];
         this.§`o§ = (§[B§.getItemByName("Container_MenuLeftButtons") as §?i§).height;
         this.§!_§ = (§[B§.getItemByName("Container_MenuRightButtons") as §?i§).height;
         this.§,!C§ = §[B§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§]!+§ = §[B§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§,!%§.§]!C§)
         {
            §,!%§.§]!C§.stop();
         }
         if(!this.§+R§)
         {
            this.§+R§ = true;
            §3>§.§7!]§(§3>§.§80§);
         }
         §2!7§.§5G§.§@4§(false);
         this.§]! §();
         var _loc1_:Boolean = §+§.§%!@§();
         if(_loc1_)
         {
            §+§.§3"§();
         }
         §[B§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      override public function activateComplete() : void
      {
         super.activateComplete();
      }
      
      private function §,o§(param1:FocusEvent) : void
      {
         §[B§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>l§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §>l§.STATE_STATUS_COMPLETED;
         }
         this.§,!C§ = §[B§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§]!+§ = §[B§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§8!6§(param1);
         return §>l§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§?!]§ = false;
         this.§<x§ = false;
         this.§=-§ = 0;
         this.§,J§ = 0;
         this.§4!Q§ = 0;
         this.§+7§ = 0;
         (§[B§.getItemByName("Container_MenuLeftButtons") as §?i§).setVisibility(false);
         (§[B§.getItemByName("Container_MenuRightButtons") as §?i§).setVisibility(false);
         super.deActivate();
         this.§<t§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§>`§) : void
      {
         var insertCodeComponent:§ ^§ = null;
         var code:String = null;
         var soundsEnabled:Boolean = false;
         var checkBoxComponent:§%%§ = null;
         var eventNameSubstring:String = null;
         var buttonGotoFrame:String = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§>`§ = param3;
         if(eventName == "")
         {
            return;
         }
         switch(eventName)
         {
            case "OPEN_LEFT_MENU":
               if(this.§?!]§)
               {
                  this.§?!]§ = false;
               }
               else
               {
                  this.§?!]§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§<x§)
               {
                  this.§<x§ = false;
               }
               else
               {
                  this.§<x§ = true;
               }
               break;
            case "CANCEL":
               insertCodeComponent = §[B§.getItemByName("InsertCodePopup");
               insertCodeComponent.setVisibility(false);
               break;
            case "SEND_CODE":
               code = §[B§.getText("TextField_Code");
               break;
            case "SOUNDS_BUTTON":
               soundsEnabled = !§+§.§%!@§();
               §+§.§"!;§(soundsEnabled);
               if(soundsEnabled)
               {
                  §+§.§3"§();
               }
               §[B§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "CREDITS_BUTTON":
               mNextState = §+s§.§]U§;
               this.§?!]§ = false;
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
               if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.§3K§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = §05§.§]U§;
                  return;
               }
               break;
            case "BUTTON_YES":
               if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.§3K§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§]U§;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §%%§;
               §+§.§ each§.§3l§ = !§+§.§ each§.§3l§;
               if(§+§.§ each§.§3l§)
               {
                  checkBoxComponent.setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§%%§.§'$§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §0L§.§[!H§("addCredits");
                  sCheetosPopups.hidePopup();
                  break;
               }
               catch(e:Error)
               {
                  break;
               }
               break;
            case "CONTINUE":
               §]R§.sCheetosPopups.hidePopup();
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
                  (component as §2K§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(buttonGotoFrame);
                  break;
               }
               this.§5!B§(eventName);
               if(eventName == "1-1" || eventName == "1-2" || eventName == "1-3")
               {
                  §]R§.sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§]U§;
                  break;
               }
               if(eventName == "CREDIT_OK")
               {
                  §]R§.sCheetosPopups.hidePopup();
                  break;
               }
               if(§6G§.credits <= 0)
               {
                  §]R§.sCheetosPopups.showPopup(§+2§.NO_CREDIT,"NO_CREDIT");
                  return;
               }
               if(!§]R§.sCheetosPopups.showPopup(§+2§.§3K§))
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§]U§;
                  break;
               }
               break;
         }
      }
      
      private function §5!B§(param1:String) : void
      {
         var _loc2_:String = param1;
         if(!§6G§.§`!H§(param1))
         {
            StateCutSceneDynamic.§0[§ = true;
            §3!+§.§%2§ = param1;
            §3!+§.§'!D§(param1.toLowerCase());
         }
      }
      
      public function §]! §() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§7+§ = [];
         this.§-!7§ = §3!+§.§ r§(§3!+§.§3c§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §3!+§.§ r§(§3!+§.§3c§).pageIndexes.length)
         {
            _loc3_ = §3!+§.§ r§(§3!+§.§3c§).§@0§(§3!+§.§ r§(§3!+§.§3c§).pageIndexes[_loc2_]);
            this.§7+§.push(§3!+§.§ r§(§3!+§.§3c§).§#!"§(_loc2_));
            _loc1_ = this.§0M§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §0M§(param1:Array, param2:Number) : Number
      {
         var _loc4_:String = null;
         var _loc5_:§,!>§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         this.§,!a§ = [];
         var _loc3_:Number = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            _loc5_ = §[B§.getItemByName("LevelButton" + (_loc3_ + 1)) as §,!>§;
            this.§,!a§[_loc3_] = _loc5_;
            if(!(_loc6_ = §6G§.§`!H§(_loc4_)))
            {
               _loc5_.setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               _loc5_.setComponentState(§%%§.§@!]§);
            }
            _loc7_ = §+§.§3s§.§[i§(_loc4_);
            _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
            _loc3_++;
         }
         return Number(param2 + §+§.§'s§);
      }
      
      private function §<t§() : void
      {
         while(this.§,+§.numChildren > 0)
         {
            this.§,+§.removeChildAt(0);
         }
         this.§[!F§ = [];
      }
      
      private function §>C§(param1:MouseEvent) : void
      {
         mNextState = §05§.§]U§;
      }
      
      private function §8!6§(param1:Number) : void
      {
         (§[B§.getItemByName("Container_MenuLeftButtons") as §?i§).mClip.scrollRect = new Rectangle(0,0,(§[B§.getItemByName("Container_MenuLeftButtons") as §?i§).width,this.§`o§ + 20 - (this.§`o§ - this.§=-§));
         (§[B§.getItemByName("Container_MenuRightButtons") as §?i§).mClip.scrollRect = new Rectangle(0,0,(§[B§.getItemByName("Container_MenuRightButtons") as §?i§).width,this.§!_§ + 20 - (this.§!_§ - this.§,J§));
         if(this.§?!]§)
         {
            (§[B§.getItemByName("Container_MenuLeftButtons") as §?i§).setVisibility(true);
            if(this.§+7§ < 90)
            {
               this.§+7§ += 0.3 * param1;
            }
            if(this.§+7§ > 90)
            {
               this.§+7§ = 90;
            }
            if(this.§=-§ < this.§`o§)
            {
               this.§=-§ += 0.5 * param1;
            }
            if(this.§=-§ > this.§`o§)
            {
               this.§=-§ = this.§`o§;
            }
         }
         else
         {
            if(this.§+7§ > 0)
            {
               this.§+7§ -= 0.3 * param1;
            }
            if(this.§+7§ < 0)
            {
               this.§+7§ = 0;
            }
            if(this.§=-§ > 0)
            {
               this.§=-§ -= 0.5 * param1;
            }
            if(this.§=-§ < 0)
            {
               (§[B§.getItemByName("Container_MenuLeftButtons") as §?i§).setVisibility(false);
               this.§=-§ = 0;
            }
         }
         if(this.§<x§)
         {
            (§[B§.getItemByName("Container_MenuRightButtons") as §?i§).setVisibility(true);
            if(this.§4!Q§ < 180)
            {
               this.§4!Q§ += 0.5 * param1;
               (§[B§.getItemByName("Container_MenuRightButtons") as §?i§).y = (§[B§.getItemByName("Container_MenuRightButtons") as §?i§).y - 0.5 * param1;
            }
            if(this.§4!Q§ > 180)
            {
               this.§4!Q§ = 180;
            }
            if(this.§,J§ <= this.§!_§)
            {
               this.§,J§ += 0.5 * param1;
            }
            if(this.§,J§ > this.§!_§)
            {
               this.§,J§ = this.§!_§;
            }
         }
         else
         {
            if(this.§4!Q§ > 0)
            {
               this.§4!Q§ -= 0.5 * param1;
               (§[B§.getItemByName("Container_MenuRightButtons") as §?i§).y = (§[B§.getItemByName("Container_MenuRightButtons") as §?i§).y + 0.5 * param1;
            }
            if(this.§4!Q§ < 0)
            {
               this.§4!Q§ = 0;
            }
            if(this.§,J§ >= 0)
            {
               this.§,J§ -= 0.5 * param1;
            }
            if(this.§,J§ < 0)
            {
               (§[B§.getItemByName("Container_MenuRightButtons") as §?i§).setVisibility(false);
               this.§,J§ = 0;
            }
         }
         (§[B§.getItemByName("Button_LeftMenuOpen") as §,!>§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§[B§.getItemByName("Button_RightMenuOpen") as §,!>§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§[B§.getItemByName("Button_LeftMenuOpen") as §,!>§).mClip.MovieClip_LeftMenuImage.rotation = this.§+7§;
         (§[B§.getItemByName("Button_RightMenuOpen") as §,!>§).mClip.MovieClip_RightMenuImage.rotation = this.§4!Q§;
         (§[B§.getItemByName("Container_MenuLeftButtons") as §?i§).y = this.§,!C§ - this.§=-§;
         (§[B§.getItemByName("Container_MenuRightButtons") as §?i§).y = this.§]!+§ - this.§,J§;
      }
      
      public function refreshSession() : void
      {
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§0!2§.§4W§,
               "sessionID":§0!2§.§;!#§(),
               "userID":§6G§.§+J§.name
            };
            new §0!2§(callObject,§+§.§4W§,this,§0!2§.§^!O§);
         }
         catch(e:Error)
         {
         }
      }
   }
}
