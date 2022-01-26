package §_-fg§
{
   import §_-05§.§ do§;
   import §_-3N§.§_-Dp§;
   import §_-9J§.§_-DA§;
   import §_-9J§.§_-mr§;
   import §_-9J§.§_-xD§;
   import §_-ES§.§_-L8§;
   import §_-ES§.§_-Ng§;
   import §_-ES§.§_-b6§;
   import §_-Py§.§_-eK§;
   import §_-T8§.§_-Sa§;
   import §_-bw§.§_-zb§;
   import §_-gC§.§_-XR§;
   import §_-hx§.§_-Z0§;
   import §_-q1§.§_-vG§;
   import §_-q6§.§_-Iy§;
   import §_-q6§.§_-ZW§;
   import §_-vB§.§_-Kk§;
   import §_-wO§.§_-e9§;
   import §_-zM§.§_-1v§;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §_-Pw§ extends §_-cN§
   {
      
      public static const §_-bg§:String = "LevelSelectionState";
      
      private static const §_-ix§:Number = 0.5;
       
      
      private var §_-lc§:Boolean = false;
      
      private var §_-nv§:MovieClip;
      
      private var §_-Nn§:Array;
      
      private var §_-VT§:Array;
      
      private var §_-ou§:int = 0;
      
      private var §_-oO§:Boolean = false;
      
      private var §_-1n§:§_-Z0§ = null;
      
      private var §_-UA§:String;
      
      private var §_-O§:Dictionary;
      
      private var §_-QF§:Array;
      
      private var §_-EU§:Boolean = false;
      
      private var §_-0-8§:Array;
      
      private var §_-k5§:Boolean = false;
      
      private var §_-q3§:Boolean = false;
      
      private var §_-BU§:Number = 0;
      
      private var §_-tE§:Number = 0;
      
      private var §_-c3§:Number = 0;
      
      private var §_-nz§:Number = 0;
      
      private var §_-kq§:Number;
      
      private var §_-Yc§:Number;
      
      private var §_-A7§:Number;
      
      private var §_-2-§:Number;
      
      public function §_-Pw§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Lb§ = new §_-ZW§(this);
         §_-Lb§.init(§_-Iy§.§_-y-§.Views.View_LevelSelection[0]);
         this.§_-nv§ = new MovieClip();
         §_-Lb§.addChild(this.§_-nv§);
         this.§_-VT§ = [];
         this.§_-Nn§ = [];
         this.§_-kq§ = (§_-Lb§.getItemByName("Container_MenuLeftButtons") as §_-L8§).height;
         this.§_-Yc§ = (§_-Lb§.getItemByName("Container_MenuRightButtons") as §_-L8§).height;
         this.§_-A7§ = §_-Lb§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-2-§ = §_-Lb§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-Kk§.§_-NR§)
         {
            §_-Kk§.§_-NR§.stop();
         }
         if(!this.§_-EU§)
         {
            this.§_-EU§ = true;
            §_-e9§.§_-k§(§_-vG§.§_-E6§);
         }
         §_-XR§.§_-Xv§.§_-1m§(false);
         this.§_-TS§();
         var _loc1_:Boolean = §_-Vc§.§_-0K§();
         if(_loc1_)
         {
            §_-Vc§.§_-Df§();
         }
         §_-Lb§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      override public function activateComplete() : void
      {
         super.activateComplete();
      }
      
      private function §_-Xy§(param1:FocusEvent) : void
      {
         §_-Lb§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-eK§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-eK§.STATE_STATUS_COMPLETED;
         }
         this.§_-A7§ = §_-Lb§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-2-§ = §_-Lb§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§_-kl§(param1);
         return §_-eK§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§_-k5§ = false;
         this.§_-q3§ = false;
         this.§_-c3§ = 0;
         this.§_-nz§ = 0;
         this.§_-tE§ = 0;
         this.§_-BU§ = 0;
         (§_-Lb§.getItemByName("Container_MenuLeftButtons") as §_-L8§).setVisibility(false);
         (§_-Lb§.getItemByName("Container_MenuRightButtons") as §_-L8§).setVisibility(false);
         super.deActivate();
         this.§_-N9§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-xD§) : void
      {
         var insertCodeComponent:§_-mr§ = null;
         var code:String = null;
         var soundsEnabled:Boolean = false;
         var checkBoxComponent:§_-DA§ = null;
         var eventNameSubstring:String = null;
         var buttonGotoFrame:String = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§_-xD§ = param3;
         if(eventName == "")
         {
            return;
         }
         switch(eventName)
         {
            case "OPEN_LEFT_MENU":
               if(this.§_-k5§)
               {
                  this.§_-k5§ = false;
                  break;
               }
               this.§_-k5§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§_-q3§)
               {
                  this.§_-q3§ = false;
                  break;
               }
               this.§_-q3§ = true;
               break;
            case "PLAY_NEXT":
               §_-V0§.§_-xE§();
               mNextState = StateCutScene.§_-bg§;
               break;
            case "RESTART_LEVEL":
               §_-V0§.§_-70§();
               mNextState = §_-V0§.§_-bg§;
               break;
            case "CANCEL":
               insertCodeComponent = §_-Lb§.getItemByName("InsertCodePopup");
               insertCodeComponent.setVisibility(false);
               break;
            case "SEND_CODE":
               code = §_-Lb§.getText("TextField_Code");
               break;
            case "SOUNDS_BUTTON":
               soundsEnabled = !§_-Vc§.§_-0K§();
               §_-Vc§.§_-sT§(soundsEnabled);
               if(soundsEnabled)
               {
                  §_-Vc§.§_-Df§();
               }
               §_-Lb§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "CREDITS_BUTTON":
               mNextState = §_-Tx§.§_-bg§;
               this.§_-k5§ = false;
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
               §_-Sa§.§_-wW§("1-1");
               mNextState = StateCutScene.§_-bg§;
               break;
            case "BUTTON_NO":
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.§_-V8§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = §_-Pw§.§_-bg§;
                  return;
               }
               break;
            case "BUTTON_YES":
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.§_-V8§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutScene.§_-bg§;
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §_-DA§;
               §_-Vc§.§_-qI§.§_-rL§ = !§_-Vc§.§_-qI§.§_-rL§;
               if(§_-Vc§.§_-qI§.§_-rL§)
               {
                  checkBoxComponent.setComponentState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§_-DA§.§_-MR§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §_-Dp§.§_-JB§("addCredits");
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
                  (component as §_-b6§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(buttonGotoFrame);
                  break;
               }
               this.§_-iL§(eventName);
               if(eventName == "1-1" || eventName == "1-2" || eventName == "1-3")
               {
                  §_-cN§.sCheetosPopups.hidePopup();
                  mNextState = StateCutScene.§_-bg§;
                  break;
               }
               if(eventName == "CREDIT_OK")
               {
                  §_-cN§.sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-zb§.credits <= 0 && !§_-Sa§.§_-0-D§())
               {
                  §_-cN§.sCheetosPopups.showPopup(§_-1v§.NO_CREDIT,"NO_CREDIT");
                  return;
               }
               if(!§_-cN§.sCheetosPopups.showPopup(§_-1v§.§_-V8§))
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutScene.§_-bg§;
                  break;
               }
               break;
         }
      }
      
      private function §_-iL§(param1:String) : void
      {
         if(!§_-zb§.§_-E8§(param1))
         {
            §_-Sa§.§_-wW§(param1.toLowerCase());
         }
      }
      
      public function §_-TS§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§_-QF§ = [];
         this.§_-ou§ = §_-Sa§.§_-Sf§(§_-Sa§.§_-12§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §_-Sa§.§_-Sf§(§_-Sa§.§_-12§).pageIndexes.length)
         {
            _loc3_ = §_-Sa§.§_-Sf§(§_-Sa§.§_-12§).§_-tW§(§_-Sa§.§_-Sf§(§_-Sa§.§_-12§).pageIndexes[_loc2_]);
            this.§_-QF§.push(§_-Sa§.§_-Sf§(§_-Sa§.§_-12§).§_-PX§(_loc2_));
            _loc1_ = this.§_-1C§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §_-1C§(param1:Array, param2:Number) : Number
      {
         var _loc4_:String = null;
         var _loc5_:§_-Ng§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         this.§_-0-8§ = [];
         var _loc3_:Number = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            _loc5_ = §_-Lb§.getItemByName("LevelButton" + (_loc3_ + 1)) as §_-Ng§;
            this.§_-0-8§[_loc3_] = _loc5_;
            if(!(_loc6_ = §_-zb§.§_-E8§(_loc4_)))
            {
               _loc5_.setComponentState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               _loc5_.setComponentState(§_-DA§.§_-La§);
            }
            _loc7_ = §_-Vc§.§_-3K§.§_-gc§(_loc4_);
            _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
            _loc3_++;
         }
         return Number(param2 + §_-Vc§.§_-jC§);
      }
      
      private function §_-N9§() : void
      {
         while(this.§_-nv§.numChildren > 0)
         {
            this.§_-nv§.removeChildAt(0);
         }
         this.§_-VT§ = [];
      }
      
      private function §_-Cs§(param1:MouseEvent) : void
      {
         mNextState = §_-Pw§.§_-bg§;
      }
      
      private function §_-kl§(param1:Number) : void
      {
         (§_-Lb§.getItemByName("Container_MenuLeftButtons") as §_-L8§).mClip.scrollRect = new Rectangle(0,0,(§_-Lb§.getItemByName("Container_MenuLeftButtons") as §_-L8§).width,this.§_-kq§ + 20 - (this.§_-kq§ - this.§_-c3§));
         (§_-Lb§.getItemByName("Container_MenuRightButtons") as §_-L8§).mClip.scrollRect = new Rectangle(0,0,(§_-Lb§.getItemByName("Container_MenuRightButtons") as §_-L8§).width,this.§_-Yc§ + 20 - (this.§_-Yc§ - this.§_-nz§));
         if(this.§_-k5§)
         {
            (§_-Lb§.getItemByName("Container_MenuLeftButtons") as §_-L8§).setVisibility(true);
            if(this.§_-BU§ < 90)
            {
               this.§_-BU§ += 0.3 * param1;
            }
            if(this.§_-BU§ > 90)
            {
               this.§_-BU§ = 90;
            }
            if(this.§_-c3§ < this.§_-kq§)
            {
               this.§_-c3§ += 0.5 * param1;
            }
            if(this.§_-c3§ > this.§_-kq§)
            {
               this.§_-c3§ = this.§_-kq§;
            }
         }
         else
         {
            if(this.§_-BU§ > 0)
            {
               this.§_-BU§ -= 0.3 * param1;
            }
            if(this.§_-BU§ < 0)
            {
               this.§_-BU§ = 0;
            }
            if(this.§_-c3§ > 0)
            {
               this.§_-c3§ -= 0.5 * param1;
            }
            if(this.§_-c3§ < 0)
            {
               (§_-Lb§.getItemByName("Container_MenuLeftButtons") as §_-L8§).setVisibility(false);
               this.§_-c3§ = 0;
            }
         }
         if(this.§_-q3§)
         {
            (§_-Lb§.getItemByName("Container_MenuRightButtons") as §_-L8§).setVisibility(true);
            if(this.§_-tE§ < 180)
            {
               this.§_-tE§ += 0.5 * param1;
               (§_-Lb§.getItemByName("Container_MenuRightButtons") as §_-L8§).y = (§_-Lb§.getItemByName("Container_MenuRightButtons") as §_-L8§).y - 0.5 * param1;
            }
            if(this.§_-tE§ > 180)
            {
               this.§_-tE§ = 180;
            }
            if(this.§_-nz§ < this.§_-Yc§)
            {
               this.§_-nz§ += 0.5 * param1;
            }
            if(this.§_-nz§ > this.§_-Yc§)
            {
               this.§_-nz§ = this.§_-Yc§;
            }
         }
         else
         {
            if(this.§_-tE§ > 0)
            {
               this.§_-tE§ -= 0.5 * param1;
               (§_-Lb§.getItemByName("Container_MenuRightButtons") as §_-L8§).y = (§_-Lb§.getItemByName("Container_MenuRightButtons") as §_-L8§).y + 0.5 * param1;
            }
            if(this.§_-tE§ < 0)
            {
               this.§_-tE§ = 0;
            }
            if(this.§_-nz§ > 0)
            {
               this.§_-nz§ -= 0.5 * param1;
            }
            if(this.§_-nz§ < 0)
            {
               (§_-Lb§.getItemByName("Container_MenuRightButtons") as §_-L8§).setVisibility(false);
               this.§_-nz§ = 0;
            }
         }
         (§_-Lb§.getItemByName("Button_LeftMenuOpen") as §_-Ng§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§_-Lb§.getItemByName("Button_RightMenuOpen") as §_-Ng§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§_-Lb§.getItemByName("Button_LeftMenuOpen") as §_-Ng§).mClip.MovieClip_LeftMenuImage.rotation = this.§_-BU§;
         (§_-Lb§.getItemByName("Button_RightMenuOpen") as §_-Ng§).mClip.MovieClip_RightMenuImage.rotation = this.§_-tE§;
         (§_-Lb§.getItemByName("Container_MenuLeftButtons") as §_-L8§).y = this.§_-A7§ - this.§_-c3§;
         (§_-Lb§.getItemByName("Container_MenuRightButtons") as §_-L8§).y = this.§_-2-§ - this.§_-nz§;
      }
      
      public function refreshSession() : void
      {
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§ do§.§_-HC§,
               "sessionID":§ do§.§_-Ne§(),
               "userID":§_-zb§.§_-0Y§.name
            };
            new § do§(callObject,§_-Vc§.§_-HC§,this,§ do§.§_-rq§);
         }
         catch(e:Error)
         {
         }
      }
   }
}
