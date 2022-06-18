package §<!U§
{
   import § !+§.§0Z§;
   import § ;§.§3!$§;
   import §!J§.§[&§;
   import §"!+§.§;m§;
   import §&! §.§%!Q§;
   import §+?§.§,!N§;
   import §+?§.§@]§;
   import §+a§.§8!I§;
   import §2e§.§4!E§;
   import §3o§.§;!=§;
   import §4!6§.§,Y§;
   import §8!8§.§+!M§;
   import §8!8§.§4!C§;
   import §8!8§.§?6§;
   import §<!+§.§[!!§;
   import §@R§.§']§;
   import §@R§.§<d§;
   import §@R§.§]^§;
   import §]2§.§[4§;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §6l§ extends §]u§
   {
      
      public static const §`O§:String = "LevelSelectionState";
      
      private static const §8!6§:Number = 0.5;
       
      
      private var §4x§:Boolean = false;
      
      private var §6!M§:MovieClip;
      
      private var §55§:Array;
      
      private var §95§:Array;
      
      private var §3§:int = 0;
      
      private var §^X§:Boolean = false;
      
      private var §<<§:§3!$§ = null;
      
      private var §2!Y§:String;
      
      private var §<h§:Dictionary;
      
      private var §2!5§:Array;
      
      private var §5'§:Boolean = false;
      
      private var §;!Z§:Array;
      
      private var §1y§:Boolean = false;
      
      private var §;E§:Boolean = false;
      
      private var §2I§:Number = 0;
      
      private var §2q§:Number = 0;
      
      private var §7!K§:Number = 0;
      
      private var §9!6§:Number = 0;
      
      private var §?<§:Number;
      
      private var §30§:Number;
      
      private var §#&§:Number;
      
      private var §[!1§:Number;
      
      public function §6l§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §"c§ = new §,!N§(this);
         §"c§.init(§@]§.§3!6§.Views.View_LevelSelection[0]);
         this.§6!M§ = new MovieClip();
         §"c§.addChild(this.§6!M§);
         this.§95§ = [];
         this.§55§ = [];
         this.§?<§ = (§"c§.getItemByName("Container_MenuLeftButtons") as §4!C§).height;
         this.§30§ = (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).height;
         this.§#&§ = §"c§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§[!1§ = §"c§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§0Z§.§4J§)
         {
            §0Z§.§4J§.stop();
         }
         if(!this.§5'§)
         {
            this.§5'§ = true;
            §%!Q§.§4$§(§;m§.§!!V§);
         }
         §[&§.§&!'§.§>!D§(false);
         this.§2u§();
         var _loc1_:Boolean = §,l§.§3n§();
         if(_loc1_)
         {
            §,l§.§'!§();
         }
         §"c§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      override public function activateComplete() : void
      {
         super.activateComplete();
      }
      
      private function §,I§(param1:FocusEvent) : void
      {
         §"c§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §[4§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §[4§.STATE_STATUS_COMPLETED;
         }
         this.§#&§ = §"c§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§[!1§ = §"c§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§-!M§(param1);
         return §[4§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§1y§ = false;
         this.§;E§ = false;
         this.§7!K§ = 0;
         this.§9!6§ = 0;
         this.§2q§ = 0;
         this.§2I§ = 0;
         (§"c§.getItemByName("Container_MenuLeftButtons") as §4!C§).setVisibility(false);
         (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).setVisibility(false);
         super.deActivate();
         this.§1!3§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]^§) : void
      {
         var insertCodeComponent:§']§ = null;
         var code:String = null;
         var soundsEnabled:Boolean = false;
         var checkBoxComponent:§<d§ = null;
         var eventNameSubstring:String = null;
         var buttonGotoFrame:String = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§]^§ = param3;
         if(eventName == "")
         {
            return;
         }
         switch(eventName)
         {
            case "OPEN_LEFT_MENU":
               if(this.§1y§)
               {
                  this.§1y§ = false;
               }
               else
               {
                  this.§1y§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§;E§)
               {
                  this.§;E§ = false;
               }
               else
               {
                  this.§;E§ = true;
               }
               break;
            case "PLAY_NEXT":
               §0"§.§>!U§();
               mNextState = StateCutScene.§`O§;
               break;
            case "RESTART_LEVEL":
               §0"§.§!7§();
               mNextState = §0"§.§`O§;
               break;
            case "CANCEL":
               insertCodeComponent = §"c§.getItemByName("InsertCodePopup");
               insertCodeComponent.setVisibility(false);
               break;
            case "SEND_CODE":
               code = §"c§.getText("TextField_Code");
               break;
            case "SOUNDS_BUTTON":
               soundsEnabled = !§,l§.§3n§();
               §,l§.§6!2§(soundsEnabled);
               if(soundsEnabled)
               {
                  §,l§.§'!§();
               }
               §"c§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "CREDITS_BUTTON":
               mNextState = §5!5§.§`O§;
               this.§1y§ = false;
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
               §[!!§.§,s§("1-1");
               mNextState = StateCutScene.§`O§;
               break;
            case "BUTTON_NO":
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§%!M§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = §6l§.§`O§;
                  return;
               }
               break;
            case "BUTTON_YES":
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§%!M§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutScene.§`O§;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §<d§;
               §,l§.§,?§.§+d§ = !§,l§.§,?§.§+d§;
               if(§,l§.§,?§.§+d§)
               {
                  checkBoxComponent.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§<d§.§^#§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §,Y§.§[[§("addCredits");
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
                  (component as §?6§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(buttonGotoFrame);
                  break;
               }
               this.§!=§(eventName);
               if(eventName == "1-1" || eventName == "1-2" || eventName == "1-3")
               {
                  §]u§.sCheetosPopups.hidePopup();
                  mNextState = StateCutScene.§`O§;
                  break;
               }
               if(eventName == "CREDIT_OK")
               {
                  §]u§.sCheetosPopups.hidePopup();
                  break;
               }
               if(§;!=§.credits <= 0 && !§[!!§.§+i§())
               {
                  §]u§.sCheetosPopups.showPopup(§8!I§.NO_CREDIT,"NO_CREDIT");
                  return;
               }
               if(!§]u§.sCheetosPopups.showPopup(§8!I§.§%!M§))
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutScene.§`O§;
                  break;
               }
               break;
         }
      }
      
      private function §!=§(param1:String) : void
      {
         if(!§;!=§.§"v§(param1))
         {
            §[!!§.§,s§(param1.toLowerCase());
         }
      }
      
      public function §2u§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§2!5§ = [];
         this.§3§ = §[!!§.§,3§(§[!!§.§"U§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §[!!§.§,3§(§[!!§.§"U§).pageIndexes.length)
         {
            _loc3_ = §[!!§.§,3§(§[!!§.§"U§).§54§(§[!!§.§,3§(§[!!§.§"U§).pageIndexes[_loc2_]);
            this.§2!5§.push(§[!!§.§,3§(§[!!§.§"U§).§,a§(_loc2_));
            _loc1_ = this.§`+§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §`+§(param1:Array, param2:Number) : Number
      {
         var _loc4_:String = null;
         var _loc5_:§+!M§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         this.§;!Z§ = [];
         var _loc3_:Number = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            _loc5_ = §"c§.getItemByName("LevelButton" + (_loc3_ + 1)) as §+!M§;
            this.§;!Z§[_loc3_] = _loc5_;
            if(!(_loc6_ = §;!=§.§"v§(_loc4_)))
            {
               _loc5_.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               _loc5_.setComponentState(§<d§.§%^§);
            }
            _loc7_ = §,l§.§3!,§.§&!A§(_loc4_);
            _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
            _loc3_++;
         }
         return Number(param2 + §,l§.§"L§);
      }
      
      private function §1!3§() : void
      {
         while(this.§6!M§.numChildren > 0)
         {
            this.§6!M§.removeChildAt(0);
         }
         this.§95§ = [];
      }
      
      private function §^>§(param1:MouseEvent) : void
      {
         mNextState = §6l§.§`O§;
      }
      
      private function §-!M§(param1:Number) : void
      {
         (§"c§.getItemByName("Container_MenuLeftButtons") as §4!C§).mClip.scrollRect = new Rectangle(0,0,(§"c§.getItemByName("Container_MenuLeftButtons") as §4!C§).width,this.§?<§ + 20 - (this.§?<§ - this.§7!K§));
         (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).mClip.scrollRect = new Rectangle(0,0,(§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).width,this.§30§ + 20 - (this.§30§ - this.§9!6§));
         if(this.§1y§)
         {
            (§"c§.getItemByName("Container_MenuLeftButtons") as §4!C§).setVisibility(true);
            if(this.§2I§ < 90)
            {
               this.§2I§ += 0.3 * param1;
            }
            if(this.§2I§ > 90)
            {
               this.§2I§ = 90;
            }
            if(this.§7!K§ < this.§?<§)
            {
               this.§7!K§ += 0.5 * param1;
            }
            if(this.§7!K§ > this.§?<§)
            {
               this.§7!K§ = this.§?<§;
            }
         }
         else
         {
            if(this.§2I§ > 0)
            {
               this.§2I§ -= 0.3 * param1;
            }
            if(this.§2I§ < 0)
            {
               this.§2I§ = 0;
            }
            if(this.§7!K§ > 0)
            {
               this.§7!K§ -= 0.5 * param1;
            }
            if(this.§7!K§ < 0)
            {
               (§"c§.getItemByName("Container_MenuLeftButtons") as §4!C§).setVisibility(false);
               this.§7!K§ = 0;
            }
         }
         if(this.§;E§)
         {
            (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).setVisibility(true);
            if(this.§2q§ < 180)
            {
               this.§2q§ += 0.5 * param1;
               (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).y = (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).y - 0.5 * param1;
            }
            if(this.§2q§ > 180)
            {
               this.§2q§ = 180;
            }
            if(this.§9!6§ < this.§30§)
            {
               this.§9!6§ += 0.5 * param1;
            }
            if(this.§9!6§ > this.§30§)
            {
               this.§9!6§ = this.§30§;
            }
         }
         else
         {
            if(this.§2q§ > 0)
            {
               this.§2q§ -= 0.5 * param1;
               (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).y = (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).y + 0.5 * param1;
            }
            if(this.§2q§ < 0)
            {
               this.§2q§ = 0;
            }
            if(this.§9!6§ > 0)
            {
               this.§9!6§ -= 0.5 * param1;
            }
            if(this.§9!6§ < 0)
            {
               (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).setVisibility(false);
               this.§9!6§ = 0;
            }
         }
         (§"c§.getItemByName("Button_LeftMenuOpen") as §+!M§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§"c§.getItemByName("Button_RightMenuOpen") as §+!M§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§"c§.getItemByName("Button_LeftMenuOpen") as §+!M§).mClip.MovieClip_LeftMenuImage.rotation = this.§2I§;
         (§"c§.getItemByName("Button_RightMenuOpen") as §+!M§).mClip.MovieClip_RightMenuImage.rotation = this.§2q§;
         (§"c§.getItemByName("Container_MenuLeftButtons") as §4!C§).y = this.§#&§ - this.§7!K§;
         (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).y = this.§[!1§ - this.§9!6§;
      }
      
      public function refreshSession() : void
      {
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§4!E§.§""§,
               "sessionID":§4!E§.§0E§(),
               "userID":§;!=§.§`!;§.name
            };
            new §4!E§(callObject,§,l§.§""§,this,§4!E§.§;4§);
         }
         catch(e:Error)
         {
         }
      }
   }
}
