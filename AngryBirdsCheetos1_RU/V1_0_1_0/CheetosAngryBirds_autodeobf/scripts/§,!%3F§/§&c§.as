package §,!?§
{
   import §"!S§.§"_§;
   import §"4§.§<h§;
   import §-!O§.§7'§;
   import §4x§.§?R§;
   import §82§.§&A§;
   import §9!Z§.§<!W§;
   import §>8§.§?2§;
   import §?u§.§+V§;
   import §]!&§.§ '§;
   import §]!&§.§#?§;
   import §]!&§.§]!K§;
   import §]!5§.§-!3§;
   import §]!5§.§1k§;
   import §]!5§.§=j§;
   import §]!Y§.§4]§;
   import §]!Y§.§5W§;
   import §^!!§.§'!_§;
   import §`!@§.§^@§;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §&c§ extends §-! §
   {
      
      public static const §@B§:String = "LevelSelectionState";
      
      private static const §[!+§:Number = 0.5;
       
      
      private var §;!^§:Boolean = false;
      
      private var §^!S§:MovieClip;
      
      private var §+?§:Array;
      
      private var §%@§:Array;
      
      private var §<!?§:int = 0;
      
      private var §`+§:Boolean = false;
      
      private var §>!E§:§?R§ = null;
      
      private var §0D§:String;
      
      private var §]!7§:Dictionary;
      
      private var §[!2§:Array;
      
      private var §9!3§:Boolean = false;
      
      private var § G§:Array;
      
      private var §>w§:Boolean = false;
      
      private var §"#§:Boolean = false;
      
      private var §0]§:Number = 0;
      
      private var §6!§:Number = 0;
      
      private var §46§:Number = 0;
      
      private var §%!Z§:Number = 0;
      
      private var §,E§:Number;
      
      private var §=i§:Number;
      
      private var §!0§:Number;
      
      private var §>3§:Number;
      
      public function §&c§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §??§ = new §5W§(this);
         §??§.init(§4]§.§['§.Views.View_LevelSelection[0]);
         this.§^!S§ = new MovieClip();
         §??§.addChild(this.§^!S§);
         this.§%@§ = [];
         this.§+?§ = [];
         this.§,E§ = (§??§.getItemByName("Container_MenuLeftButtons") as §]!K§).height;
         this.§=i§ = (§??§.getItemByName("Container_MenuRightButtons") as §]!K§).height;
         this.§!0§ = §??§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§>3§ = §??§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§<h§.§%!]§)
         {
            §<h§.§%!]§.stop();
         }
         if(!this.§9!3§)
         {
            this.§9!3§ = true;
            §^@§.§ !9§(§^@§.§4'§);
         }
         §"_§.§+!^§.§[!U§(false);
         this.§05§();
         var _loc1_:Boolean = §2!-§.§4s§();
         if(_loc1_)
         {
            §2!-§.§?p§();
         }
         §??§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      override public function activateComplete() : void
      {
         super.activateComplete();
      }
      
      private function §5f§(param1:FocusEvent) : void
      {
         §??§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §7'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §7'§.STATE_STATUS_COMPLETED;
         }
         this.§!0§ = §??§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§>3§ = §??§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§99§(param1);
         return §7'§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§>w§ = false;
         this.§"#§ = false;
         this.§46§ = 0;
         this.§%!Z§ = 0;
         this.§6!§ = 0;
         this.§0]§ = 0;
         (§??§.getItemByName("Container_MenuLeftButtons") as §]!K§).setVisibility(false);
         (§??§.getItemByName("Container_MenuRightButtons") as §]!K§).setVisibility(false);
         super.deActivate();
         this.§?!A§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!3§) : void
      {
         var insertCodeComponent:§1k§ = null;
         var code:String = null;
         var soundsEnabled:Boolean = false;
         var checkBoxComponent:§=j§ = null;
         var eventNameSubstring:String = null;
         var buttonGotoFrame:String = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§-!3§ = param3;
         if(eventName == "")
         {
            return;
         }
         switch(eventName)
         {
            case "OPEN_LEFT_MENU":
               if(this.§>w§)
               {
                  this.§>w§ = false;
               }
               else
               {
                  this.§>w§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§"#§)
               {
                  this.§"#§ = false;
               }
               else
               {
                  this.§"#§ = true;
               }
               break;
            case "CANCEL":
               insertCodeComponent = §??§.getItemByName("InsertCodePopup");
               insertCodeComponent.setVisibility(false);
               break;
            case "SEND_CODE":
               code = §??§.getText("TextField_Code");
               break;
            case "SOUNDS_BUTTON":
               soundsEnabled = !§2!-§.§4s§();
               §2!-§.§3U§(soundsEnabled);
               if(soundsEnabled)
               {
                  §2!-§.§?p§();
               }
               §??§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "CREDITS_BUTTON":
               mNextState = §]R§.§@B§;
               this.§>w§ = false;
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
               if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.§'!T§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = §&c§.§@B§;
                  return;
               }
               break;
            case "BUTTON_YES":
               if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.§'!T§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§@B§;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §=j§;
               §2!-§.§"7§.§^I§ = !§2!-§.§"7§.§^I§;
               if(§2!-§.§"7§.§^I§)
               {
                  checkBoxComponent.setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§=j§.§@!9§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §+V§.§3!'§("addCredits");
                  sCheetosPopups.hidePopup();
                  break;
               }
               catch(e:Error)
               {
                  break;
               }
               break;
            case "CONTINUE":
               §-! §.sCheetosPopups.hidePopup();
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
                  (component as § '§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(buttonGotoFrame);
                  break;
               }
               this.§7!>§(eventName);
               if(eventName == "1-1" || eventName == "1-2" || eventName == "1-3")
               {
                  §-! §.sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§@B§;
                  break;
               }
               if(eventName == "CREDIT_OK")
               {
                  §-! §.sCheetosPopups.hidePopup();
                  break;
               }
               if(§'!_§.credits <= 0)
               {
                  §-! §.sCheetosPopups.showPopup(§<!W§.NO_CREDIT,"NO_CREDIT");
                  return;
               }
               if(!§-! §.sCheetosPopups.showPopup(§<!W§.§'!T§))
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutSceneDynamic.§@B§;
                  break;
               }
               break;
         }
      }
      
      private function §7!>§(param1:String) : void
      {
         var _loc2_:String = param1;
         if(!§'!_§.§ !G§(param1))
         {
            StateCutSceneDynamic.§21§ = true;
            §?2§.§=$§ = param1;
            §?2§.§7T§(param1.toLowerCase());
         }
      }
      
      public function §05§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§[!2§ = [];
         this.§<!?§ = §?2§.§<,§(§?2§.§]B§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §?2§.§<,§(§?2§.§]B§).pageIndexes.length)
         {
            _loc3_ = §?2§.§<,§(§?2§.§]B§).§,u§(§?2§.§<,§(§?2§.§]B§).pageIndexes[_loc2_]);
            this.§[!2§.push(§?2§.§<,§(§?2§.§]B§).§30§(_loc2_));
            _loc1_ = this.§@x§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §@x§(param1:Array, param2:Number) : Number
      {
         var _loc4_:String = null;
         var _loc5_:§#?§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         this.§ G§ = [];
         var _loc3_:Number = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            _loc5_ = §??§.getItemByName("LevelButton" + (_loc3_ + 1)) as §#?§;
            this.§ G§[_loc3_] = _loc5_;
            if(!(_loc6_ = §'!_§.§ !G§(_loc4_)))
            {
               _loc5_.setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               _loc5_.setComponentState(§=j§.§in §);
            }
            _loc7_ = §2!-§.§5R§.§8!3§(_loc4_);
            _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
            _loc3_++;
         }
         return Number(param2 + §2!-§.§]!`§);
      }
      
      private function §?!A§() : void
      {
         while(this.§^!S§.numChildren > 0)
         {
            this.§^!S§.removeChildAt(0);
         }
         this.§%@§ = [];
      }
      
      private function §14§(param1:MouseEvent) : void
      {
         mNextState = §&c§.§@B§;
      }
      
      private function §99§(param1:Number) : void
      {
         (§??§.getItemByName("Container_MenuLeftButtons") as §]!K§).mClip.scrollRect = new Rectangle(0,0,(§??§.getItemByName("Container_MenuLeftButtons") as §]!K§).width,this.§,E§ + 20 - (this.§,E§ - this.§46§));
         (§??§.getItemByName("Container_MenuRightButtons") as §]!K§).mClip.scrollRect = new Rectangle(0,0,(§??§.getItemByName("Container_MenuRightButtons") as §]!K§).width,this.§=i§ + 20 - (this.§=i§ - this.§%!Z§));
         if(this.§>w§)
         {
            (§??§.getItemByName("Container_MenuLeftButtons") as §]!K§).setVisibility(true);
            if(this.§0]§ < 90)
            {
               this.§0]§ += 0.3 * param1;
            }
            if(this.§0]§ > 90)
            {
               this.§0]§ = 90;
            }
            if(this.§46§ < this.§,E§)
            {
               this.§46§ += 0.5 * param1;
            }
            if(this.§46§ > this.§,E§)
            {
               this.§46§ = this.§,E§;
            }
         }
         else
         {
            if(this.§0]§ > 0)
            {
               this.§0]§ -= 0.3 * param1;
            }
            if(this.§0]§ < 0)
            {
               this.§0]§ = 0;
            }
            if(this.§46§ > 0)
            {
               this.§46§ -= 0.5 * param1;
            }
            if(this.§46§ < 0)
            {
               (§??§.getItemByName("Container_MenuLeftButtons") as §]!K§).setVisibility(false);
               this.§46§ = 0;
            }
         }
         if(this.§"#§)
         {
            (§??§.getItemByName("Container_MenuRightButtons") as §]!K§).setVisibility(true);
            if(this.§6!§ < 180)
            {
               this.§6!§ += 0.5 * param1;
               (§??§.getItemByName("Container_MenuRightButtons") as §]!K§).y = (§??§.getItemByName("Container_MenuRightButtons") as §]!K§).y - 0.5 * param1;
            }
            if(this.§6!§ > 180)
            {
               this.§6!§ = 180;
            }
            if(this.§%!Z§ <= this.§=i§)
            {
               this.§%!Z§ += 0.5 * param1;
            }
            if(this.§%!Z§ > this.§=i§)
            {
               this.§%!Z§ = this.§=i§;
            }
         }
         else
         {
            if(this.§6!§ > 0)
            {
               this.§6!§ -= 0.5 * param1;
               (§??§.getItemByName("Container_MenuRightButtons") as §]!K§).y = (§??§.getItemByName("Container_MenuRightButtons") as §]!K§).y + 0.5 * param1;
            }
            if(this.§6!§ < 0)
            {
               this.§6!§ = 0;
            }
            if(this.§%!Z§ >= 0)
            {
               this.§%!Z§ -= 0.5 * param1;
            }
            if(this.§%!Z§ < 0)
            {
               (§??§.getItemByName("Container_MenuRightButtons") as §]!K§).setVisibility(false);
               this.§%!Z§ = 0;
            }
         }
         (§??§.getItemByName("Button_LeftMenuOpen") as §#?§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§??§.getItemByName("Button_RightMenuOpen") as §#?§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§??§.getItemByName("Button_LeftMenuOpen") as §#?§).mClip.MovieClip_LeftMenuImage.rotation = this.§0]§;
         (§??§.getItemByName("Button_RightMenuOpen") as §#?§).mClip.MovieClip_RightMenuImage.rotation = this.§6!§;
         (§??§.getItemByName("Container_MenuLeftButtons") as §]!K§).y = this.§!0§ - this.§46§;
         (§??§.getItemByName("Container_MenuRightButtons") as §]!K§).y = this.§>3§ - this.§%!Z§;
      }
      
      public function refreshSession() : void
      {
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§&A§.§-A§,
               "sessionID":§&A§.§?![§(),
               "userID":§'!_§.§=!"§.name
            };
            new §&A§(callObject,§2!-§.§-A§,this,§&A§.§6!Q§);
         }
         catch(e:Error)
         {
         }
      }
   }
}
