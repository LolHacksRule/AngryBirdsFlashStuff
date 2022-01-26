package §_-ob§
{
   import §_-94§.§_-si§;
   import §_-A§.§_-Hw§;
   import §_-A§.§_-KQ§;
   import §_-A§.§_-YT§;
   import §_-M6§.§_-Qg§;
   import §_-MP§.§_-N5§;
   import §_-Me§.§_-3A§;
   import §_-Ul§.§_-Zu§;
   import §_-Ye§.§_-cP§;
   import §_-ab§.§_-IP§;
   import §_-ab§.§_-Wr§;
   import §_-ab§.§_-q4§;
   import §_-gE§.§_-Tb§;
   import §_-hJ§.§_-5j§;
   import §_-jV§.§_-GL§;
   import §_-l-§.§_-pI§;
   import §_-sj§.§_-qs§;
   import §_-w8§.§_-Jg§;
   import §_-w8§.§_-S6§;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §_-qP§ extends §_-xw§
   {
      
      public static const §_-jn§:String = "LevelSelectionState";
      
      private static const §_-qK§:Number = 0.5;
       
      
      private var §_-009§:Boolean = false;
      
      private var §_-Cc§:MovieClip;
      
      private var §_-ve§:Array;
      
      private var §_-8J§:Array;
      
      private var §_-Hf§:int = 0;
      
      private var §_-Pd§:Boolean = false;
      
      private var §_-Rf§:§_-GL§ = null;
      
      private var §_-4-§:String;
      
      private var §_-6x§:Dictionary;
      
      private var §_-Cy§:Array;
      
      private var §_-nN§:Boolean = false;
      
      private var §_-lL§:Array;
      
      private var §_-2i§:Boolean = false;
      
      private var §_-yS§:Boolean = false;
      
      private var §_-0I§:Number = 0;
      
      private var §_-oS§:Number = 0;
      
      private var §_-Bp§:Number = 0;
      
      private var §_-C8§:Number = 0;
      
      private var §_-Fz§:Number;
      
      private var §_-Sm§:Number;
      
      private var §_-Qn§:Number;
      
      private var §_-0D§:Number;
      
      public function §_-qP§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-x2§ = new §_-S6§(this);
         §_-x2§.init(§_-Jg§.§_-E§.Views.View_LevelSelection[0]);
         this.§_-Cc§ = new MovieClip();
         §_-x2§.addChild(this.§_-Cc§);
         this.§_-8J§ = [];
         this.§_-ve§ = [];
         this.§_-Fz§ = (§_-x2§.getItemByName("Container_MenuLeftButtons") as §_-IP§).height;
         this.§_-Sm§ = (§_-x2§.getItemByName("Container_MenuRightButtons") as §_-IP§).height;
         this.§_-Qn§ = §_-x2§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-0D§ = §_-x2§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-cP§.§_-004§)
         {
            §_-cP§.§_-004§.stop();
         }
         if(!this.§_-nN§)
         {
            this.§_-nN§ = true;
            §_-3A§.§_-me§(§_-Zu§.§_-fs§);
         }
         §_-si§.§_-HI§.§_-2c§(false);
         this.§_-Jz§();
         var _loc1_:Boolean = §_-rs§.§_-rQ§();
         if(_loc1_)
         {
            §_-rs§.§_-Q3§();
         }
         §_-x2§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      override public function activateComplete() : void
      {
         super.activateComplete();
      }
      
      private function §_-Ff§(param1:FocusEvent) : void
      {
         §_-x2§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-qs§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-qs§.STATE_STATUS_COMPLETED;
         }
         this.§_-Qn§ = §_-x2§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-0D§ = §_-x2§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§_-6s§(param1);
         return §_-qs§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§_-2i§ = false;
         this.§_-yS§ = false;
         this.§_-Bp§ = 0;
         this.§_-C8§ = 0;
         this.§_-oS§ = 0;
         this.§_-0I§ = 0;
         (§_-x2§.getItemByName("Container_MenuLeftButtons") as §_-IP§).setVisibility(false);
         (§_-x2§.getItemByName("Container_MenuRightButtons") as §_-IP§).setVisibility(false);
         super.deActivate();
         this.§_-mO§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-KQ§) : void
      {
         var insertCodeComponent:§_-Hw§ = null;
         var code:String = null;
         var soundsEnabled:Boolean = false;
         var checkBoxComponent:§_-YT§ = null;
         var eventNameSubstring:String = null;
         var buttonGotoFrame:String = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§_-KQ§ = param3;
         if(eventName == "")
         {
            return;
         }
         switch(eventName)
         {
            case "OPEN_LEFT_MENU":
               if(this.§_-2i§)
               {
                  this.§_-2i§ = false;
                  break;
               }
               this.§_-2i§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§_-yS§)
               {
                  this.§_-yS§ = false;
                  break;
               }
               this.§_-yS§ = true;
               break;
            case "PLAY_NEXT":
               §_-0-n§.§_-1k§();
               mNextState = StateCutScene.§_-jn§;
               break;
            case "RESTART_LEVEL":
               §_-0-n§.§_-5P§();
               mNextState = §_-0-n§.§_-jn§;
               break;
            case "CANCEL":
               insertCodeComponent = §_-x2§.getItemByName("InsertCodePopup");
               insertCodeComponent.setVisibility(false);
               break;
            case "SEND_CODE":
               code = §_-x2§.getText("TextField_Code");
               break;
            case "SOUNDS_BUTTON":
               soundsEnabled = !§_-rs§.§_-rQ§();
               §_-rs§.§_-xt§(soundsEnabled);
               if(soundsEnabled)
               {
                  §_-rs§.§_-Q3§();
               }
               §_-x2§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "CREDITS_BUTTON":
               mNextState = §_-p6§.§_-jn§;
               this.§_-2i§ = false;
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
               §_-N5§.§_-PC§("1-1");
               mNextState = StateCutScene.§_-jn§;
               break;
            case "BUTTON_NO":
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.§_-IE§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = §_-qP§.§_-jn§;
                  return;
               }
               break;
            case "BUTTON_YES":
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.§_-IE§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutScene.§_-jn§;
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §_-YT§;
               §_-rs§.§_-hd§.§_-2D§ = !§_-rs§.§_-hd§.§_-2D§;
               if(§_-rs§.§_-hd§.§_-2D§)
               {
                  checkBoxComponent.setComponentState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§_-YT§.§_-c7§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §_-Qg§.§_-No§("addCredits");
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
                  (component as §_-Wr§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(buttonGotoFrame);
                  break;
               }
               this.§_-Hc§(eventName);
               if(eventName == "1-1" || eventName == "1-2" || eventName == "1-3")
               {
                  §_-xw§.sCheetosPopups.hidePopup();
                  mNextState = StateCutScene.§_-jn§;
                  break;
               }
               if(eventName == "CREDIT_OK")
               {
                  §_-xw§.sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-Tb§.credits <= 0 && !§_-N5§.§_-HP§())
               {
                  §_-xw§.sCheetosPopups.showPopup(§_-5j§.NO_CREDIT,"NO_CREDIT");
                  return;
               }
               if(!§_-xw§.sCheetosPopups.showPopup(§_-5j§.§_-IE§))
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutScene.§_-jn§;
                  break;
               }
               break;
         }
      }
      
      private function §_-Hc§(param1:String) : void
      {
         if(!§_-Tb§.§_-QK§(param1))
         {
            §_-N5§.§_-PC§(param1.toLowerCase());
         }
      }
      
      public function §_-Jz§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§_-Cy§ = [];
         this.§_-Hf§ = §_-N5§.§_-UW§(§_-N5§.§_-g7§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §_-N5§.§_-UW§(§_-N5§.§_-g7§).pageIndexes.length)
         {
            _loc3_ = §_-N5§.§_-UW§(§_-N5§.§_-g7§).§_-TX§(§_-N5§.§_-UW§(§_-N5§.§_-g7§).pageIndexes[_loc2_]);
            this.§_-Cy§.push(§_-N5§.§_-UW§(§_-N5§.§_-g7§).§_-sw§(_loc2_));
            _loc1_ = this.§_-wS§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §_-wS§(param1:Array, param2:Number) : Number
      {
         var _loc4_:String = null;
         var _loc5_:§_-q4§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         this.§_-lL§ = [];
         var _loc3_:Number = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            _loc5_ = §_-x2§.getItemByName("LevelButton" + (_loc3_ + 1)) as §_-q4§;
            this.§_-lL§[_loc3_] = _loc5_;
            if(!(_loc6_ = §_-Tb§.§_-QK§(_loc4_)))
            {
               _loc5_.setComponentState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               _loc5_.setComponentState(§_-YT§.§_-39§);
            }
            _loc7_ = §_-rs§.§_-Nr§.§_-h6§(_loc4_);
            _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
            _loc3_++;
         }
         return Number(param2 + §_-rs§.§_-dI§);
      }
      
      private function §_-mO§() : void
      {
         while(this.§_-Cc§.numChildren > 0)
         {
            this.§_-Cc§.removeChildAt(0);
         }
         this.§_-8J§ = [];
      }
      
      private function §_-hw§(param1:MouseEvent) : void
      {
         mNextState = §_-qP§.§_-jn§;
      }
      
      private function §_-6s§(param1:Number) : void
      {
         (§_-x2§.getItemByName("Container_MenuLeftButtons") as §_-IP§).mClip.scrollRect = new Rectangle(0,0,(§_-x2§.getItemByName("Container_MenuLeftButtons") as §_-IP§).width,this.§_-Fz§ + 20 - (this.§_-Fz§ - this.§_-Bp§));
         (§_-x2§.getItemByName("Container_MenuRightButtons") as §_-IP§).mClip.scrollRect = new Rectangle(0,0,(§_-x2§.getItemByName("Container_MenuRightButtons") as §_-IP§).width,this.§_-Sm§ + 20 - (this.§_-Sm§ - this.§_-C8§));
         if(this.§_-2i§)
         {
            (§_-x2§.getItemByName("Container_MenuLeftButtons") as §_-IP§).setVisibility(true);
            if(this.§_-0I§ < 90)
            {
               this.§_-0I§ += 0.3 * param1;
            }
            if(this.§_-0I§ > 90)
            {
               this.§_-0I§ = 90;
            }
            if(this.§_-Bp§ < this.§_-Fz§)
            {
               this.§_-Bp§ += 0.5 * param1;
            }
            if(this.§_-Bp§ > this.§_-Fz§)
            {
               this.§_-Bp§ = this.§_-Fz§;
            }
         }
         else
         {
            if(this.§_-0I§ > 0)
            {
               this.§_-0I§ -= 0.3 * param1;
            }
            if(this.§_-0I§ < 0)
            {
               this.§_-0I§ = 0;
            }
            if(this.§_-Bp§ > 0)
            {
               this.§_-Bp§ -= 0.5 * param1;
            }
            if(this.§_-Bp§ < 0)
            {
               (§_-x2§.getItemByName("Container_MenuLeftButtons") as §_-IP§).setVisibility(false);
               this.§_-Bp§ = 0;
            }
         }
         if(this.§_-yS§)
         {
            (§_-x2§.getItemByName("Container_MenuRightButtons") as §_-IP§).setVisibility(true);
            if(this.§_-oS§ < 180)
            {
               this.§_-oS§ += 0.5 * param1;
               (§_-x2§.getItemByName("Container_MenuRightButtons") as §_-IP§).y = (§_-x2§.getItemByName("Container_MenuRightButtons") as §_-IP§).y - 0.5 * param1;
            }
            if(this.§_-oS§ > 180)
            {
               this.§_-oS§ = 180;
            }
            if(this.§_-C8§ < this.§_-Sm§)
            {
               this.§_-C8§ += 0.5 * param1;
            }
            if(this.§_-C8§ > this.§_-Sm§)
            {
               this.§_-C8§ = this.§_-Sm§;
            }
         }
         else
         {
            if(this.§_-oS§ > 0)
            {
               this.§_-oS§ -= 0.5 * param1;
               (§_-x2§.getItemByName("Container_MenuRightButtons") as §_-IP§).y = (§_-x2§.getItemByName("Container_MenuRightButtons") as §_-IP§).y + 0.5 * param1;
            }
            if(this.§_-oS§ < 0)
            {
               this.§_-oS§ = 0;
            }
            if(this.§_-C8§ > 0)
            {
               this.§_-C8§ -= 0.5 * param1;
            }
            if(this.§_-C8§ < 0)
            {
               (§_-x2§.getItemByName("Container_MenuRightButtons") as §_-IP§).setVisibility(false);
               this.§_-C8§ = 0;
            }
         }
         (§_-x2§.getItemByName("Button_LeftMenuOpen") as §_-q4§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§_-x2§.getItemByName("Button_RightMenuOpen") as §_-q4§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§_-x2§.getItemByName("Button_LeftMenuOpen") as §_-q4§).mClip.MovieClip_LeftMenuImage.rotation = this.§_-0I§;
         (§_-x2§.getItemByName("Button_RightMenuOpen") as §_-q4§).mClip.MovieClip_RightMenuImage.rotation = this.§_-oS§;
         (§_-x2§.getItemByName("Container_MenuLeftButtons") as §_-IP§).y = this.§_-Qn§ - this.§_-Bp§;
         (§_-x2§.getItemByName("Container_MenuRightButtons") as §_-IP§).y = this.§_-0D§ - this.§_-C8§;
      }
      
      public function refreshSession() : void
      {
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§_-pI§.§_-Yi§,
               "sessionID":§_-pI§.§_-o6§(),
               "userID":§_-Tb§.§_-Bw§.name
            };
            new §_-pI§(callObject,§_-rs§.§_-Yi§,this,§_-pI§.§package§);
         }
         catch(e:Error)
         {
         }
      }
   }
}
