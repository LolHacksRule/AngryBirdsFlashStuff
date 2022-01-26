package §else§
{
   import §_-0S§.§_-z1§;
   import §_-20§.§_-j5§;
   import §_-6r§.§_-7P§;
   import §_-6r§.§_-Tk§;
   import §_-F1§.§_-V1§;
   import §_-F1§.§_-k4§;
   import §_-F1§.§_-mr§;
   import §_-F1§.§_-nq§;
   import §_-F1§.§_-qp§;
   import §_-IV§.§_-qW§;
   import §_-PD§.HighscoreSidebar;
   import §_-Qx§.§_-Sf§;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-W0§.§_-MC§;
   import §_-e3§.Base64;
   import §_-hU§.§_-MB§;
   import §_-hq§.§_-AD§;
   import §_-sK§.§_-Bs§;
   import §_-y7§.§_-VA§;
   import §_-zL§.§_-5B§;
   import §_-zL§.§_-Rv§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §_-pX§ extends §_-iL§
   {
      
      public static const §_-Az§:String = "LevelSelectionState";
      
      private static const §_-0t§:Number = 0.5;
       
      
      private var §_-Lm§:Boolean = false;
      
      private var §_-dN§:MovieClip;
      
      private var §_-I6§:Array;
      
      private var §_-yA§:Array;
      
      private var §_-ue§:int = 0;
      
      private var §_-Sp§:Boolean = false;
      
      private var §_-aX§:§_-j5§ = null;
      
      private var §_-m§:String;
      
      private var §_-Ct§:Dictionary;
      
      private var §_-CY§:Array;
      
      private var §_-6U§:§_-mr§;
      
      private var §_-8D§:Boolean = false;
      
      private var §_-Ed§:Boolean = false;
      
      private var §_-81§:Boolean = false;
      
      private var §_-tT§:Number = 0;
      
      private var §_-YP§:Number = 0;
      
      private var §_-c7§:Number = 0;
      
      private var §_-8t§:Number = 0;
      
      private var §_-vC§:Number;
      
      private var §_-U8§:Number;
      
      private var §_-HL§:Number;
      
      private var §_-x8§:Number;
      
      public function §_-pX§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-NY§ = new §_-ru§(this);
         §_-NY§.init(§_-BN§.native.Views.View_LevelSelection[0]);
         this.§_-dN§ = new MovieClip();
         §_-NY§.addChild(this.§_-dN§);
         this.§_-yA§ = [];
         this.§_-I6§ = [];
         this.§_-vC§ = (§_-NY§.getItemByName("Container_MenuLeftButtons") as §_-k4§).height;
         this.§_-U8§ = (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).height;
         this.§_-HL§ = §_-NY§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-x8§ = §_-NY§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§_-8D§)
         {
            this.§_-8D§ = true;
            §_-qW§.§_-6h§(§_-qW§.§_-Wp§);
         }
         §_-MB§.§_-A7§.§_-Gf§(false);
         this.§_-hW§();
         §_-1S§.changeState(HighscoreSidebar.§_-IT§);
         §_-1S§.reloadAllScores();
         (§_-NY§.getItemByName("TextField_Code") as §_-V1§).§_-hJ§.addEventListener(FocusEvent.FOCUS_IN,this.§_-L7§);
         var _loc1_:Boolean = §_-Qu§.§_-E§();
         if(_loc1_)
         {
            §_-Qu§.§_-os§();
         }
         §_-NY§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      private function §_-L7§(param1:FocusEvent) : void
      {
         §_-NY§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-VA§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-VA§.STATE_STATUS_COMPLETED;
         }
         this.§_-HL§ = §_-NY§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-x8§ = §_-NY§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§_-ct§(param1);
         return §_-VA§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§_-Ed§ = false;
         this.§_-81§ = false;
         this.§_-c7§ = 0;
         this.§_-8t§ = 0;
         (§_-NY§.getItemByName("TextField_Code") as §_-V1§).§_-hJ§.removeEventListener(FocusEvent.FOCUS_IN,this.§_-L7§);
         this.§_-YP§ = 0;
         this.§_-tT§ = 0;
         (§_-NY§.getItemByName("Container_MenuLeftButtons") as §_-k4§).setVisibility(false);
         (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).setVisibility(false);
         super.deActivate();
         this.§_-Fu§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc7_:§_-Tk§ = null;
         var _loc8_:String = null;
         var _loc9_:* = false;
         var _loc10_:§_-Tk§ = null;
         if(param2.length > 0 && param3 is §_-nq§)
         {
            if((param3 as §_-nq§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection6")
            {
               if((_loc4_ = param2.substr(0,4)) == "OUT1")
               {
                  _loc4_ = "OUT";
               }
               if(_loc4_ == "OVER" || _loc4_ == "OUT")
               {
                  _loc5_ = _loc4_.toLowerCase();
                  (param3 as §_-nq§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(_loc5_);
               }
               else if(!§_-MC§.§_-wR§(param2))
               {
                  this.§_-JA§(param2.toLowerCase());
               }
               else
               {
                  this.§_-JA§(param2.toLowerCase());
               }
            }
         }
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§_-Ed§)
               {
                  this.§_-Ed§ = false;
                  break;
               }
               this.§_-Ed§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§_-81§)
               {
                  this.§_-81§ = false;
                  break;
               }
               this.§_-81§ = true;
               break;
            case "PLAY_NEXT":
               §_-Jw§.§_-GL§();
               mNextState = StateCutScene.§_-Az§;
               break;
            case "RESTART_LEVEL":
               §_-Jw§.§_-h5§();
               mNextState = §_-Jw§.§_-Az§;
               break;
            case "CANCEL":
               (_loc7_ = §_-NY§.getItemByName("InsertCodePopup")).setVisibility(false);
               break;
            case "SEND_CODE":
               _loc8_ = §_-NY§.getText("TextField_Code");
               this.§_-96§(_loc8_);
               break;
            case "SOUNDS_BUTTON":
               _loc9_ = !§_-Qu§.§_-E§();
               §_-Qu§.§_-vM§(_loc9_);
               if(_loc9_)
               {
                  §_-Qu§.§_-os§();
               }
               §_-NY§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc9_);
               break;
            case "CREDITS_BUTTON":
               mNextState = §_-1j§.§_-Az§;
               this.§_-Ed§ = false;
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
            case "LOGOUT":
               (_loc10_ = §_-NY§.getItemByName("LogoutConfirmationPopup")).setVisibility(true);
               §_-NY§.container.setObjectToFront(_loc10_);
               break;
            case "LOGOUT_SI":
               §_-NY§.getItemByName("LogoutConfirmationPopup").setVisibility(false);
               §_-mk§.§_-zl§ = true;
               mNextState = §_-mk§.§_-Az§;
               break;
            case "LOGOUT_NO":
               §_-NY§.getItemByName("LogoutConfirmationPopup").setVisibility(false);
         }
      }
      
      private function §_-JA§(param1:String) : void
      {
         §_-Sf§.§_-JA§(param1);
         mNextState = StateCutScene.§_-Az§;
      }
      
      private function §_-Mg§(param1:String) : void
      {
         var _loc2_:§_-Bs§ = §_-Bs§.§_-oA§(param1);
         if(_loc2_.§_-za§)
         {
            this.§_-JA§(_loc2_.§_-za§);
            §_-MB§.§_-A7§.§_-xs§(param1);
         }
      }
      
      private function §_-96§(param1:String) : void
      {
         var _loc3_:String = this.§_-m§;
         var _loc4_:URLLoader = new URLLoader();
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc6_:Object = {
            "type":"assignCode",
            "code":param1,
            "levelId":_loc3_,
            "player":§_-MC§.§_-7w§
         };
         _loc5_.data = "json=" + Base64.encode(§_-AD§.encode(_loc6_));
         _loc4_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-wL§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
         _loc5_.url = §_-Qu§.§_-BK§;
         _loc4_.load(_loc5_);
         §_-NY§.getItemByName("WaitingPopup").setVisibility(true);
      }
      
      private function §_-wL§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-qT§(param1:IOErrorEvent) : void
      {
         if(§_-NY§)
         {
            §_-NY§.getItemByName("WaitingPopup").setVisibility(false);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:§_-Tk§ = null;
         if(§_-NY§)
         {
            §_-NY§.getItemByName("WaitingPopup").setVisibility(false);
         }
         var _loc2_:Object = §_-Rv§.§_-3a§((param1.currentTarget as URLLoader).data);
         if(_loc2_.security)
         {
            §_-MC§.levelProfile = _loc2_.levelProfile;
            if(§_-NY§)
            {
               _loc3_ = §_-NY§.getItemByName("InsertCodePopup");
               _loc3_.setVisibility(false);
            }
            while(this.§_-6U§.§_-yZ§[0].mClip.numChildren > 0)
            {
               this.§_-6U§.§_-yZ§[0].mClip.removeChildAt(0);
            }
            this.§_-6U§.setVisibility(false);
            mNextState = §_-pX§.§_-Az§;
         }
         else if(_loc2_.error)
         {
            if(§_-NY§)
            {
               §_-NY§.setText(§_-5B§.§_-rm§(_loc2_.error),"TextField_Code");
            }
         }
      }
      
      public function §_-hW§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§_-CY§ = [];
         this.§_-ue§ = §_-Sf§.§_-Gd§(§_-Sf§.§_-wf§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §_-Sf§.§_-Gd§(§_-Sf§.§_-wf§).pageIndexes.length)
         {
            _loc3_ = §_-Sf§.§_-Gd§(§_-Sf§.§_-wf§).§_-84§(§_-Sf§.§_-Gd§(§_-Sf§.§_-wf§).pageIndexes[_loc2_]);
            this.§_-CY§.push(§_-Sf§.§_-Gd§(§_-Sf§.§_-wf§).§_-4Q§(_loc2_));
            _loc1_ = this.§_-88§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §_-88§(param1:Array, param2:Number) : Number
      {
         var _loc6_:XML = null;
         var _loc9_:String = null;
         var _loc10_:MovieClip = null;
         var _loc11_:Boolean = false;
         var _loc12_:Number = NaN;
         var _loc13_:XML = null;
         var _loc3_:Array = new Array();
         _loc3_[0] = new Array();
         var _loc4_:Class = §_-z1§.§_-tn§("Component_LevelSelection");
         var _loc5_:Number = 0;
         while(_loc5_ < param1.length)
         {
            _loc9_ = param1[_loc5_];
            (_loc10_ = new _loc4_()).TextField_LevelNum.text.text = (_loc5_ + 1).toString();
            _loc10_.MovieClip_LevelSelectionLogos.gotoAndStop(_loc5_ + 1);
            _loc10_.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop("out");
            if(!(_loc11_ = §_-MC§.§_-wR§(_loc9_)))
            {
               _loc10_.gotoAndStop("Open");
               if(§_-Qu§.§_-di§.§_-Qi§(_loc9_) == 100)
               {
                  _loc10_.MovieClip_Feather.gotoAndStop("Visible");
               }
               else
               {
                  _loc10_.MovieClip_Feather.gotoAndStop("Hidden");
               }
            }
            else
            {
               _loc10_.gotoAndStop("Locked");
            }
            _loc12_ = §_-Qu§.§_-di§.§_-Al§(_loc9_);
            _loc10_.MovieClip_Stars.gotoAndStop(_loc12_.toString() + "_stars");
            (_loc13_ = <Button/>).@name = _loc9_;
            _loc13_.@MouseUp = _loc9_;
            _loc13_.@MouseOver = "Over" + _loc9_;
            _loc13_.@MouseOut = "Out" + _loc9_;
            _loc3_[0].push(new Array(_loc13_,null,_loc10_));
            _loc5_++;
         }
         (_loc6_ = <Repeater/>).@name = "Repeater_LevelSelection6";
         _loc6_.@button = "Component_LevelSelection";
         _loc6_.@enabled = "True";
         _loc6_.@buttonSelectionType = "NO_SELECTION";
         var _loc7_:Class;
         var _loc8_:MovieClip = new (_loc7_ = §_-z1§.§_-tn§(_loc6_.@name))();
         this.§_-6U§ = new §_-mr§(_loc6_,§_-NY§.container,null,_loc8_);
         this.§_-6U§.§_-7§(_loc3_);
         this.§_-6U§.setVisibility(true);
         §_-NY§.container.addComponent(this.§_-6U§);
         this.§_-6U§.x += param2;
         this.§_-yA§.push(this.§_-6U§);
         return Number(param2 + §_-Qu§.§_-1q§);
      }
      
      private function §_-Fu§() : void
      {
         if(this.§_-6U§.mClip.parent.contains(this.§_-6U§.mClip))
         {
            this.§_-6U§.mClip.parent.removeChild(this.§_-6U§.mClip);
         }
         while(this.§_-dN§.numChildren > 0)
         {
            this.§_-dN§.removeChildAt(0);
         }
         this.§_-yA§ = [];
      }
      
      private function §_-Bo§(param1:MouseEvent) : void
      {
         mNextState = §_-pX§.§_-Az§;
      }
      
      private function §_-ct§(param1:Number) : void
      {
         (§_-NY§.getItemByName("Container_MenuLeftButtons") as §_-k4§).mClip.scrollRect = new Rectangle(0,0,(§_-NY§.getItemByName("Container_MenuLeftButtons") as §_-k4§).width,this.§_-vC§ + 20 - (this.§_-vC§ - this.§_-c7§));
         (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).mClip.scrollRect = new Rectangle(0,0,(§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).width,this.§_-U8§ + 20 - (this.§_-U8§ - this.§_-8t§));
         if(this.§_-Ed§)
         {
            (§_-NY§.getItemByName("Container_MenuLeftButtons") as §_-k4§).setVisibility(true);
            if(this.§_-tT§ < 90)
            {
               this.§_-tT§ += 0.3 * param1;
            }
            if(this.§_-tT§ > 90)
            {
               this.§_-tT§ = 90;
            }
            if(this.§_-c7§ < this.§_-vC§)
            {
               this.§_-c7§ += 0.5 * param1;
            }
            if(this.§_-c7§ > this.§_-vC§)
            {
               this.§_-c7§ = this.§_-vC§;
            }
         }
         else
         {
            if(this.§_-tT§ > 0)
            {
               this.§_-tT§ -= 0.3 * param1;
            }
            if(this.§_-tT§ < 0)
            {
               this.§_-tT§ = 0;
            }
            if(this.§_-c7§ > 0)
            {
               this.§_-c7§ -= 0.5 * param1;
            }
            if(this.§_-c7§ < 0)
            {
               (§_-NY§.getItemByName("Container_MenuLeftButtons") as §_-k4§).setVisibility(false);
               this.§_-c7§ = 0;
            }
         }
         if(this.§_-81§)
         {
            (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).setVisibility(true);
            if(this.§_-YP§ < 180)
            {
               this.§_-YP§ += 0.5 * param1;
               (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).y = (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).y - 0.5 * param1;
            }
            if(this.§_-YP§ > 180)
            {
               this.§_-YP§ = 180;
            }
            if(this.§_-8t§ < this.§_-U8§)
            {
               this.§_-8t§ += 0.5 * param1;
            }
            if(this.§_-8t§ > this.§_-U8§)
            {
               this.§_-8t§ = this.§_-U8§;
            }
         }
         else
         {
            if(this.§_-YP§ > 0)
            {
               this.§_-YP§ -= 0.5 * param1;
               (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).y = (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).y + 0.5 * param1;
            }
            if(this.§_-YP§ < 0)
            {
               this.§_-YP§ = 0;
            }
            if(this.§_-8t§ > 0)
            {
               this.§_-8t§ -= 0.5 * param1;
            }
            if(this.§_-8t§ < 0)
            {
               (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).setVisibility(false);
               this.§_-8t§ = 0;
            }
         }
         (§_-NY§.getItemByName("Button_LeftMenuOpen") as §_-qp§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§_-NY§.getItemByName("Button_RightMenuOpen") as §_-qp§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§_-NY§.getItemByName("Button_LeftMenuOpen") as §_-qp§).mClip.MovieClip_LeftMenuImage.rotation = this.§_-tT§;
         (§_-NY§.getItemByName("Button_RightMenuOpen") as §_-qp§).mClip.MovieClip_RightMenuImage.rotation = this.§_-YP§;
         (§_-NY§.getItemByName("Container_MenuLeftButtons") as §_-k4§).y = this.§_-HL§ - this.§_-c7§;
         (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).y = this.§_-x8§ - this.§_-8t§;
      }
   }
}
