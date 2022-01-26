package §&!`§
{
   import § =§.§ x§;
   import §!%§.§!w§;
   import §'Y§.§"!J§;
   import §'Y§.§;J§;
   import §'d§.§3>§;
   import §+k§.§=! §;
   import §0C§.§"!T§;
   import §2V§.§!!_§;
   import §9$§.§;!K§;
   import §;k§.§[§;
   import §<s§.§&4§;
   import §<s§.§'k§;
   import §<s§.§]@§;
   import §?!N§.§?!"§;
   import §[%§.§&a§;
   import §[%§.§6!§;
   import §[%§.§`!U§;
   import §]_§.§!F§;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §4q§ extends §&A§
   {
      
      public static const §="§:String = "LevelSelectionState";
      
      private static const §>!W§:Number = 0.5;
       
      
      private var §`v§:Boolean = false;
      
      private var §`A§:MovieClip;
      
      private var §`!Q§:Array;
      
      private var §6p§:Array;
      
      private var §<O§:int = 0;
      
      private var §+g§:Boolean = false;
      
      private var §#C§:§=! § = null;
      
      private var §'?§:String;
      
      private var §@3§:Dictionary;
      
      private var §6q§:Array;
      
      private var §3f§:Boolean = false;
      
      private var §[N§:Array;
      
      private var §4!H§:Boolean = false;
      
      private var §]!%§:Boolean = false;
      
      private var §2s§:Number = 0;
      
      private var §!§:Number = 0;
      
      private var §=§:Number = 0;
      
      private var §"M§:Number = 0;
      
      private var § else§:Number;
      
      private var §^K§:Number;
      
      private var § U§:Number;
      
      private var §8!!§:Number;
      
      public function §4q§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §^!]§ = new §;J§(this);
         §^!]§.init(§"!J§.§1!P§.Views.View_LevelSelection[0]);
         this.§`A§ = new MovieClip();
         §^!]§.addChild(this.§`A§);
         this.§6p§ = [];
         this.§`!Q§ = [];
         this.§ else§ = (§^!]§.getItemByName("Container_MenuLeftButtons") as §&a§).height;
         this.§^K§ = (§^!]§.getItemByName("Container_MenuRightButtons") as §&a§).height;
         this.§ U§ = §^!]§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§8!!§ = §^!]§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§!F§.§[M§)
         {
            §!F§.§[M§.stop();
         }
         if(!this.§3f§)
         {
            this.§3f§ = true;
            §!w§.§]!§(§!w§.§%6§);
         }
         §3>§.§8!$§.§8M§(false);
         this.§=9§();
         var _loc1_:Boolean = §3§.§%!=§();
         if(_loc1_)
         {
            §3§.§>!V§();
         }
         §^!]§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      override public function activateComplete() : void
      {
         super.activateComplete();
      }
      
      private function §9!D§(param1:FocusEvent) : void
      {
         §^!]§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return § x§.STATE_STATUS_COMPLETED;
         }
         this.§ U§ = §^!]§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§8!!§ = §^!]§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§%U§(param1);
         return § x§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§4!H§ = false;
         this.§]!%§ = false;
         this.§=§ = 0;
         this.§"M§ = 0;
         this.§!§ = 0;
         this.§2s§ = 0;
         (§^!]§.getItemByName("Container_MenuLeftButtons") as §&a§).setVisibility(false);
         (§^!]§.getItemByName("Container_MenuRightButtons") as §&a§).setVisibility(false);
         super.deActivate();
         this.§7!6§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]@§) : void
      {
         var insertCodeComponent:§'k§ = null;
         var code:String = null;
         var soundsEnabled:Boolean = false;
         var checkBoxComponent:§&4§ = null;
         var eventNameSubstring:String = null;
         var buttonGotoFrame:String = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§]@§ = param3;
         if(eventName == "")
         {
            return;
         }
         switch(eventName)
         {
            case "OPEN_LEFT_MENU":
               if(this.§4!H§)
               {
                  this.§4!H§ = false;
               }
               else
               {
                  this.§4!H§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§]!%§)
               {
                  this.§]!%§ = false;
               }
               else
               {
                  this.§]!%§ = true;
               }
               break;
            case "CANCEL":
               insertCodeComponent = §^!]§.getItemByName("InsertCodePopup");
               insertCodeComponent.setVisibility(false);
               break;
            case "SEND_CODE":
               code = §^!]§.getText("TextField_Code");
               break;
            case "SOUNDS_BUTTON":
               soundsEnabled = !§3§.§%!=§();
               §3§.§>k§(soundsEnabled);
               if(soundsEnabled)
               {
                  §3§.§>!V§();
               }
               §^!]§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "CREDITS_BUTTON":
               mNextState = §^!%§.§="§;
               this.§4!H§ = false;
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
               if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.§`!#§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = §4q§.§="§;
                  return;
               }
               break;
            case "BUTTON_YES":
               if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.§`!#§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§="§;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §&4§;
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
            default:
               eventNameSubstring = eventName.substr(0,4);
               if(eventNameSubstring == "OUT1")
               {
                  eventNameSubstring = "OUT";
               }
               if(eventNameSubstring == "OVER" || eventNameSubstring == "OUT")
               {
                  buttonGotoFrame = eventNameSubstring.toLowerCase();
                  (component as §`!U§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(buttonGotoFrame);
                  break;
               }
               this.§8t§(eventName);
               if(eventName == "1-1" || eventName == "1-2" || eventName == "1-3")
               {
                  §&A§.sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§="§;
                  break;
               }
               if(eventName == "CREDIT_OK")
               {
                  §&A§.sCheetosPopups.hidePopup();
                  break;
               }
               if(§;!K§.credits <= 0)
               {
                  §&A§.sCheetosPopups.showPopup(§!!_§.NO_CREDIT,"NO_CREDIT");
                  return;
               }
               if(!§&A§.sCheetosPopups.showPopup(§!!_§.§`!#§))
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§="§;
                  break;
               }
               break;
         }
      }
      
      private function §8t§(param1:String) : void
      {
         var _loc2_:String = param1;
         if(!§;!K§.§8q§(param1))
         {
            StateCutSceneDynamic.§5L§ = true;
            §"!T§.§-Q§ = param1;
            §"!T§.§"!3§(param1.toLowerCase());
         }
      }
      
      public function §=9§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§6q§ = [];
         this.§<O§ = §"!T§.§'!§(§"!T§.§56§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §"!T§.§'!§(§"!T§.§56§).pageIndexes.length)
         {
            _loc3_ = §"!T§.§'!§(§"!T§.§56§).§+!U§(§"!T§.§'!§(§"!T§.§56§).pageIndexes[_loc2_]);
            this.§6q§.push(§"!T§.§'!§(§"!T§.§56§).§'v§(_loc2_));
            _loc1_ = this.§`d§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §`d§(param1:Array, param2:Number) : Number
      {
         var _loc4_:String = null;
         var _loc5_:§6!§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         this.§[N§ = [];
         var _loc3_:Number = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            _loc5_ = §^!]§.getItemByName("LevelButton" + (_loc3_ + 1)) as §6!§;
            this.§[N§[_loc3_] = _loc5_;
            if(!(_loc6_ = §;!K§.§8q§(_loc4_)))
            {
               _loc5_.setComponentState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               _loc5_.setComponentState(§&4§.§'!U§);
            }
            _loc7_ = §3§.§6!Z§.§'T§(_loc4_);
            _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
            _loc3_++;
         }
         return Number(param2 + §3§.§'R§);
      }
      
      private function §7!6§() : void
      {
         while(this.§`A§.numChildren > 0)
         {
            this.§`A§.removeChildAt(0);
         }
         this.§6p§ = [];
      }
      
      private function §6#§(param1:MouseEvent) : void
      {
         mNextState = §4q§.§="§;
      }
      
      private function §%U§(param1:Number) : void
      {
         (§^!]§.getItemByName("Container_MenuLeftButtons") as §&a§).mClip.scrollRect = new Rectangle(0,0,(§^!]§.getItemByName("Container_MenuLeftButtons") as §&a§).width,this.§ else§ + 20 - (this.§ else§ - this.§=§));
         (§^!]§.getItemByName("Container_MenuRightButtons") as §&a§).mClip.scrollRect = new Rectangle(0,0,(§^!]§.getItemByName("Container_MenuRightButtons") as §&a§).width,this.§^K§ + 20 - (this.§^K§ - this.§"M§));
         if(this.§4!H§)
         {
            (§^!]§.getItemByName("Container_MenuLeftButtons") as §&a§).setVisibility(true);
            if(this.§2s§ < 90)
            {
               this.§2s§ += 0.3 * param1;
            }
            if(this.§2s§ > 90)
            {
               this.§2s§ = 90;
            }
            if(this.§=§ < this.§ else§)
            {
               this.§=§ += 0.5 * param1;
            }
            if(this.§=§ > this.§ else§)
            {
               this.§=§ = this.§ else§;
            }
         }
         else
         {
            if(this.§2s§ > 0)
            {
               this.§2s§ -= 0.3 * param1;
            }
            if(this.§2s§ < 0)
            {
               this.§2s§ = 0;
            }
            if(this.§=§ > 0)
            {
               this.§=§ -= 0.5 * param1;
            }
            if(this.§=§ < 0)
            {
               (§^!]§.getItemByName("Container_MenuLeftButtons") as §&a§).setVisibility(false);
               this.§=§ = 0;
            }
         }
         if(this.§]!%§)
         {
            (§^!]§.getItemByName("Container_MenuRightButtons") as §&a§).setVisibility(true);
            if(this.§!§ < 180)
            {
               this.§!§ += 0.5 * param1;
               (§^!]§.getItemByName("Container_MenuRightButtons") as §&a§).y = (§^!]§.getItemByName("Container_MenuRightButtons") as §&a§).y - 0.5 * param1;
            }
            if(this.§!§ > 180)
            {
               this.§!§ = 180;
            }
            if(this.§"M§ <= this.§^K§)
            {
               this.§"M§ += 0.5 * param1;
            }
            if(this.§"M§ > this.§^K§)
            {
               this.§"M§ = this.§^K§;
            }
         }
         else
         {
            if(this.§!§ > 0)
            {
               this.§!§ -= 0.5 * param1;
               (§^!]§.getItemByName("Container_MenuRightButtons") as §&a§).y = (§^!]§.getItemByName("Container_MenuRightButtons") as §&a§).y + 0.5 * param1;
            }
            if(this.§!§ < 0)
            {
               this.§!§ = 0;
            }
            if(this.§"M§ >= 0)
            {
               this.§"M§ -= 0.5 * param1;
            }
            if(this.§"M§ < 0)
            {
               (§^!]§.getItemByName("Container_MenuRightButtons") as §&a§).setVisibility(false);
               this.§"M§ = 0;
            }
         }
         (§^!]§.getItemByName("Button_LeftMenuOpen") as §6!§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§^!]§.getItemByName("Button_RightMenuOpen") as §6!§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§^!]§.getItemByName("Button_LeftMenuOpen") as §6!§).mClip.MovieClip_LeftMenuImage.rotation = this.§2s§;
         (§^!]§.getItemByName("Button_RightMenuOpen") as §6!§).mClip.MovieClip_RightMenuImage.rotation = this.§!§;
         (§^!]§.getItemByName("Container_MenuLeftButtons") as §&a§).y = this.§ U§ - this.§=§;
         (§^!]§.getItemByName("Container_MenuRightButtons") as §&a§).y = this.§8!!§ - this.§"M§;
      }
      
      public function refreshSession() : void
      {
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§[§.§<,§,
               "sessionID":§[§.§^a§(),
               "userID":§;!K§.§+!K§.name
            };
            new §[§(callObject,§3§.§<,§,this,§[§.§'! §);
         }
         catch(e:Error)
         {
         }
      }
   }
}
