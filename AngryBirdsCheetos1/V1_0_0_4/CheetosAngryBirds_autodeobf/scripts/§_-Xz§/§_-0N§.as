package §_-Xz§
{
   import §_-16§.§_-8n§;
   import §_-16§.§_-MF§;
   import §_-16§.§_-VR§;
   import §_-5b§.§_-Mm§;
   import §_-9s§.§_-Vc§;
   import §_-EH§.§_-uz§;
   import §_-Eg§.§_-Up§;
   import §_-Eg§.§_-hf§;
   import §_-Eg§.§_-wO§;
   import §_-G§.§_-o5§;
   import §_-Is§.§_-3Q§;
   import §_-KM§.§_-0A§;
   import §_-Q2§.§_-Zr§;
   import §_-TX§.§_-0X§;
   import §_-Y7§.§_-fW§;
   import §_-aD§.§_-OS§;
   import §_-kI§.§_-Iv§;
   import §_-xL§.§_-1-§;
   import §_-xL§.§_-y9§;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §_-0N§ extends §_-SW§
   {
      
      public static const §_-3o§:String = "LevelSelectionState";
      
      private static const §_-Ip§:Number = 0.5;
       
      
      private var §_-Ku§:Boolean = false;
      
      private var §_-Dg§:MovieClip;
      
      private var §_-2M§:Array;
      
      private var §_-Ag§:Array;
      
      private var §_-0n§:int = 0;
      
      private var §_-BI§:Boolean = false;
      
      private var §_-kS§:§_-Vc§ = null;
      
      private var §_-bs§:String;
      
      private var §_-wH§:Dictionary;
      
      private var §_-pz§:Array;
      
      private var §_-i7§:Boolean = false;
      
      private var §_-Qp§:Array;
      
      private var §_-7f§:Boolean = false;
      
      private var §_-rQ§:Boolean = false;
      
      private var §_-WQ§:Number = 0;
      
      private var §_-lS§:Number = 0;
      
      private var §_-6j§:Number = 0;
      
      private var §_-gc§:Number = 0;
      
      private var §try §:Number;
      
      private var §_-F§:Number;
      
      private var §_-yj§:Number;
      
      private var §_-u2§:Number;
      
      public function §_-0N§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-nq§ = new §_-1-§(this);
         §_-nq§.init(§_-y9§.§_-HN§.Views.View_LevelSelection[0]);
         this.§_-Dg§ = new MovieClip();
         §_-nq§.addChild(this.§_-Dg§);
         this.§_-Ag§ = [];
         this.§_-2M§ = [];
         this.§try § = (§_-nq§.getItemByName("Container_MenuLeftButtons") as §_-Up§).height;
         this.§_-F§ = (§_-nq§.getItemByName("Container_MenuRightButtons") as §_-Up§).height;
         this.§_-yj§ = §_-nq§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-u2§ = §_-nq§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-0A§.§_-bz§)
         {
            §_-0A§.§_-bz§.stop();
         }
         if(!this.§_-i7§)
         {
            this.§_-i7§ = true;
            §_-OS§.§_-0-7§(§_-fW§.§_-B5§);
         }
         §_-0X§.§_-O2§.§_-JY§(false);
         this.§_-YM§();
         var _loc1_:Boolean = §_-WX§.§_-L6§();
         if(_loc1_)
         {
            §_-WX§.§_-Jn§();
         }
         §_-nq§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      override public function activateComplete() : void
      {
         super.activateComplete();
      }
      
      private function §_-gP§(param1:FocusEvent) : void
      {
         §_-nq§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-uz§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-uz§.STATE_STATUS_COMPLETED;
         }
         this.§_-yj§ = §_-nq§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-u2§ = §_-nq§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§_-8x§(param1);
         return §_-uz§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§_-7f§ = false;
         this.§_-rQ§ = false;
         this.§_-6j§ = 0;
         this.§_-gc§ = 0;
         this.§_-lS§ = 0;
         this.§_-WQ§ = 0;
         (§_-nq§.getItemByName("Container_MenuLeftButtons") as §_-Up§).setVisibility(false);
         (§_-nq§.getItemByName("Container_MenuRightButtons") as §_-Up§).setVisibility(false);
         super.deActivate();
         this.§_-Am§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-VR§) : void
      {
         var insertCodeComponent:§_-MF§ = null;
         var code:String = null;
         var soundsEnabled:Boolean = false;
         var checkBoxComponent:§_-8n§ = null;
         var eventNameSubstring:String = null;
         var buttonGotoFrame:String = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§_-VR§ = param3;
         if(eventName == "")
         {
            return;
         }
         switch(eventName)
         {
            case "OPEN_LEFT_MENU":
               if(this.§_-7f§)
               {
                  this.§_-7f§ = false;
                  break;
               }
               this.§_-7f§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§_-rQ§)
               {
                  this.§_-rQ§ = false;
                  break;
               }
               this.§_-rQ§ = true;
               break;
            case "PLAY_NEXT":
               §_-SA§.§_-7t§();
               mNextState = StateCutScene.§_-3o§;
               break;
            case "RESTART_LEVEL":
               §_-SA§.§_-FK§();
               mNextState = §_-SA§.§_-3o§;
               break;
            case "CANCEL":
               insertCodeComponent = §_-nq§.getItemByName("InsertCodePopup");
               insertCodeComponent.setVisibility(false);
               break;
            case "SEND_CODE":
               code = §_-nq§.getText("TextField_Code");
               break;
            case "SOUNDS_BUTTON":
               soundsEnabled = !§_-WX§.§_-L6§();
               §_-WX§.§_-tJ§(soundsEnabled);
               if(soundsEnabled)
               {
                  §_-WX§.§_-Jn§();
               }
               §_-nq§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "CREDITS_BUTTON":
               mNextState = §_-xD§.§_-3o§;
               this.§_-7f§ = false;
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
               §_-Mm§.§false§("1-1");
               mNextState = StateCutScene.§_-3o§;
               break;
            case "BUTTON_NO":
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.§_-f6§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = §_-0N§.§_-3o§;
                  return;
               }
               break;
            case "BUTTON_YES":
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.§_-f6§)
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutScene.§_-3o§;
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §_-8n§;
               §_-WX§.§_-nw§.§_-gf§ = !§_-WX§.§_-nw§.§_-gf§;
               if(§_-WX§.§_-nw§.§_-gf§)
               {
                  checkBoxComponent.setComponentState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§_-8n§.§_-qC§);
               break;
            case "CREDIT_REDEEM":
               try
               {
                  §_-3Q§.§_-st§("addCredits");
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
                  (component as §_-wO§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(buttonGotoFrame);
                  break;
               }
               this.§_-u5§(eventName);
               if(eventName == "1-1" || eventName == "1-2" || eventName == "1-3")
               {
                  §_-SW§.sCheetosPopups.hidePopup();
                  mNextState = StateCutScene.§_-3o§;
                  break;
               }
               if(eventName == "CREDIT_OK")
               {
                  §_-SW§.sCheetosPopups.hidePopup();
                  break;
               }
               if(§_-Iv§.credits <= 0 && !§_-Mm§.§_-xG§())
               {
                  §_-SW§.sCheetosPopups.showPopup(§_-Zr§.NO_CREDIT,"NO_CREDIT");
                  return;
               }
               if(!§_-SW§.sCheetosPopups.showPopup(§_-Zr§.§_-f6§))
               {
                  sCheetosPopups.hidePopup();
                  mNextState = StateCutScene.§_-3o§;
                  break;
               }
               break;
         }
      }
      
      private function §_-u5§(param1:String) : void
      {
         if(!§_-Iv§.§_-uG§(param1))
         {
            §_-Mm§.§false§(param1.toLowerCase());
         }
      }
      
      public function §_-YM§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§_-pz§ = [];
         this.§_-0n§ = §_-Mm§.§_-dC§(§_-Mm§.§_-007§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §_-Mm§.§_-dC§(§_-Mm§.§_-007§).pageIndexes.length)
         {
            _loc3_ = §_-Mm§.§_-dC§(§_-Mm§.§_-007§).§_-yK§(§_-Mm§.§_-dC§(§_-Mm§.§_-007§).pageIndexes[_loc2_]);
            this.§_-pz§.push(§_-Mm§.§_-dC§(§_-Mm§.§_-007§).§_-iy§(_loc2_));
            _loc1_ = this.§_-qz§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §_-qz§(param1:Array, param2:Number) : Number
      {
         var _loc4_:String = null;
         var _loc5_:§_-hf§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         this.§_-Qp§ = [];
         var _loc3_:Number = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            _loc5_ = §_-nq§.getItemByName("LevelButton" + (_loc3_ + 1)) as §_-hf§;
            this.§_-Qp§[_loc3_] = _loc5_;
            if(!(_loc6_ = §_-Iv§.§_-uG§(_loc4_)))
            {
               _loc5_.setComponentState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               _loc5_.setComponentState(§_-8n§.§_-uX§);
            }
            _loc7_ = §_-WX§.§_-ZR§.§_-U2§(_loc4_);
            _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
            _loc3_++;
         }
         return Number(param2 + §_-WX§.§_-I0§);
      }
      
      private function §_-Am§() : void
      {
         while(this.§_-Dg§.numChildren > 0)
         {
            this.§_-Dg§.removeChildAt(0);
         }
         this.§_-Ag§ = [];
      }
      
      private function §_-oz§(param1:MouseEvent) : void
      {
         mNextState = §_-0N§.§_-3o§;
      }
      
      private function §_-8x§(param1:Number) : void
      {
         (§_-nq§.getItemByName("Container_MenuLeftButtons") as §_-Up§).mClip.scrollRect = new Rectangle(0,0,(§_-nq§.getItemByName("Container_MenuLeftButtons") as §_-Up§).width,this.§try § + 20 - (this.§try § - this.§_-6j§));
         (§_-nq§.getItemByName("Container_MenuRightButtons") as §_-Up§).mClip.scrollRect = new Rectangle(0,0,(§_-nq§.getItemByName("Container_MenuRightButtons") as §_-Up§).width,this.§_-F§ + 20 - (this.§_-F§ - this.§_-gc§));
         if(this.§_-7f§)
         {
            (§_-nq§.getItemByName("Container_MenuLeftButtons") as §_-Up§).setVisibility(true);
            if(this.§_-WQ§ < 90)
            {
               this.§_-WQ§ += 0.3 * param1;
            }
            if(this.§_-WQ§ > 90)
            {
               this.§_-WQ§ = 90;
            }
            if(this.§_-6j§ < this.§try §)
            {
               this.§_-6j§ += 0.5 * param1;
            }
            if(this.§_-6j§ > this.§try §)
            {
               this.§_-6j§ = this.§try §;
            }
         }
         else
         {
            if(this.§_-WQ§ > 0)
            {
               this.§_-WQ§ -= 0.3 * param1;
            }
            if(this.§_-WQ§ < 0)
            {
               this.§_-WQ§ = 0;
            }
            if(this.§_-6j§ > 0)
            {
               this.§_-6j§ -= 0.5 * param1;
            }
            if(this.§_-6j§ < 0)
            {
               (§_-nq§.getItemByName("Container_MenuLeftButtons") as §_-Up§).setVisibility(false);
               this.§_-6j§ = 0;
            }
         }
         if(this.§_-rQ§)
         {
            (§_-nq§.getItemByName("Container_MenuRightButtons") as §_-Up§).setVisibility(true);
            if(this.§_-lS§ < 180)
            {
               this.§_-lS§ += 0.5 * param1;
               (§_-nq§.getItemByName("Container_MenuRightButtons") as §_-Up§).y = (§_-nq§.getItemByName("Container_MenuRightButtons") as §_-Up§).y - 0.5 * param1;
            }
            if(this.§_-lS§ > 180)
            {
               this.§_-lS§ = 180;
            }
            if(this.§_-gc§ < this.§_-F§)
            {
               this.§_-gc§ += 0.5 * param1;
            }
            if(this.§_-gc§ > this.§_-F§)
            {
               this.§_-gc§ = this.§_-F§;
            }
         }
         else
         {
            if(this.§_-lS§ > 0)
            {
               this.§_-lS§ -= 0.5 * param1;
               (§_-nq§.getItemByName("Container_MenuRightButtons") as §_-Up§).y = (§_-nq§.getItemByName("Container_MenuRightButtons") as §_-Up§).y + 0.5 * param1;
            }
            if(this.§_-lS§ < 0)
            {
               this.§_-lS§ = 0;
            }
            if(this.§_-gc§ > 0)
            {
               this.§_-gc§ -= 0.5 * param1;
            }
            if(this.§_-gc§ < 0)
            {
               (§_-nq§.getItemByName("Container_MenuRightButtons") as §_-Up§).setVisibility(false);
               this.§_-gc§ = 0;
            }
         }
         (§_-nq§.getItemByName("Button_LeftMenuOpen") as §_-hf§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§_-nq§.getItemByName("Button_RightMenuOpen") as §_-hf§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§_-nq§.getItemByName("Button_LeftMenuOpen") as §_-hf§).mClip.MovieClip_LeftMenuImage.rotation = this.§_-WQ§;
         (§_-nq§.getItemByName("Button_RightMenuOpen") as §_-hf§).mClip.MovieClip_RightMenuImage.rotation = this.§_-lS§;
         (§_-nq§.getItemByName("Container_MenuLeftButtons") as §_-Up§).y = this.§_-yj§ - this.§_-6j§;
         (§_-nq§.getItemByName("Container_MenuRightButtons") as §_-Up§).y = this.§_-u2§ - this.§_-gc§;
      }
      
      public function refreshSession() : void
      {
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§_-o5§.§_-B3§,
               "sessionID":§_-o5§.§_-YD§(),
               "userID":§_-Iv§.§_-r5§.name
            };
            new §_-o5§(callObject,§_-WX§.§_-B3§,this,§_-o5§.§_-oS§);
         }
         catch(e:Error)
         {
         }
      }
   }
}
