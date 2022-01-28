package §_-RV§
{
   import §_-2F§.§_-B4§;
   import §_-3t§.§_-J0§;
   import §_-7V§.§_-C§;
   import §_-7V§.§_-Gs§;
   import §_-7x§.§_-4O§;
   import §_-9k§.§_-X7§;
   import §_-Ll§.§_-4G§;
   import §_-Ll§.§_-FU§;
   import §_-Ll§.§_-JL§;
   import §_-Ll§.§_-Nt§;
   import §_-Ll§.§_-fZ§;
   import §_-QG§.§_-t6§;
   import §_-Qn§.§_-O7§;
   import §_-Qn§.§_-bo§;
   import §_-aV§.§_-1s§;
   import §_-aV§.§_-DM§;
   import §_-aV§.§_-mI§;
   import §_-cJ§.§_-WM§;
   import §_-gM§.Base64;
   import §_-iZ§.HighscoreSidebar;
   import §_-jO§.§_-z5§;
   import §_-pm§.§_-gb§;
   import §_-s-§.§_-hQ§;
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
   
   public class §_-V9§ extends §_-oI§
   {
      
      public static const §_-8r§:String = "LevelSelectionState";
      
      private static const §_-bv§:Number = 0.5;
       
      
      private var §_-Cl§:Boolean = false;
      
      private var §_-uB§:MovieClip;
      
      private var §_-t7§:Array;
      
      private var §_-c2§:Array;
      
      private var §_-VU§:int = 0;
      
      private var §_-ak§:Boolean = false;
      
      private var §_-3a§:§_-WM§ = null;
      
      private var §_-nr§:String;
      
      private var §_-e-§:Dictionary;
      
      private var §_-yb§:Array;
      
      private var §_-TP§:§_-fZ§;
      
      private var §_-eD§:Boolean = false;
      
      private var §_-OC§:Boolean = false;
      
      private var §_-S8§:Boolean = false;
      
      private var §_-5w§:Number = 0;
      
      private var §_-gh§:Number = 0;
      
      private var §_-I2§:Number = 0;
      
      private var §_-n9§:Number = 0;
      
      private var §_-2J§:Number;
      
      private var §null§:Number;
      
      private var §_-kK§:Number;
      
      private var §_-Bn§:Number;
      
      public function §_-V9§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-MF§ = new §_-bo§(this);
         §_-MF§.init(§_-O7§.§_-jb§.Views.View_LevelSelection[0]);
         this.§_-uB§ = new MovieClip();
         §_-MF§.addChild(this.§_-uB§);
         this.§_-c2§ = [];
         this.§_-t7§ = [];
         this.§_-2J§ = (§_-MF§.getItemByName("Container_MenuLeftButtons") as §_-4G§).height;
         this.§null§ = (§_-MF§.getItemByName("Container_MenuRightButtons") as §_-4G§).height;
         this.§_-kK§ = §_-MF§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-Bn§ = §_-MF§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§_-eD§)
         {
            this.§_-eD§ = true;
            §_-B4§.§_-du§(§_-1s§.§_-3y§);
         }
         §_-gb§.§_-ls§.§_-2L§(false);
         §_-gb§.§_-ls§.clearLevel();
         this.§_-Y8§();
         §_-e0§.changeState(HighscoreSidebar.§_-N0§);
         §_-e0§.reloadAllScores();
         (§_-MF§.getItemByName("TextField_Code") as §_-JL§).§_-ML§.addEventListener(FocusEvent.FOCUS_IN,this.native);
         var _loc1_:Boolean = §_-q0§.§_-fT§();
         if(_loc1_)
         {
            §_-q0§.§_-Qb§();
         }
         §_-MF§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      private function native(param1:FocusEvent) : void
      {
         §_-MF§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-t6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-t6§.STATE_STATUS_COMPLETED;
         }
         this.§_-kK§ = §_-MF§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-Bn§ = §_-MF§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§_-D2§(param1);
         return §_-t6§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§_-OC§ = false;
         this.§_-S8§ = false;
         this.§_-I2§ = 0;
         this.§_-n9§ = 0;
         (§_-MF§.getItemByName("TextField_Code") as §_-JL§).§_-ML§.removeEventListener(FocusEvent.FOCUS_IN,this.native);
         this.§_-gh§ = 0;
         this.§_-5w§ = 0;
         (§_-MF§.getItemByName("Container_MenuLeftButtons") as §_-4G§).setVisibility(false);
         (§_-MF§.getItemByName("Container_MenuRightButtons") as §_-4G§).setVisibility(false);
         super.deActivate();
         this.§_-k8§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Gs§) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:§_-C§ = null;
         var _loc7_:§_-C§ = null;
         var _loc8_:String = null;
         var _loc9_:* = false;
         var _loc10_:§_-C§ = null;
         if(param2.length > 0 && param3 is §_-Nt§)
         {
            if((param3 as §_-Nt§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection6")
            {
               if((_loc4_ = param2.substr(0,4)) == "OUT1")
               {
                  _loc4_ = "OUT";
               }
               if(_loc4_ == "OVER" || _loc4_ == "OUT")
               {
                  _loc5_ = _loc4_.toLowerCase();
                  (param3 as §_-Nt§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(_loc5_);
               }
               else if(!§_-z5§.§_-FS§(param2) || true)
               {
                  this.§_-bf§(param2.toLowerCase());
               }
               else
               {
                  this.§_-nr§ = param2;
                  (_loc6_ = §_-MF§.getItemByName("InsertCodePopup")).setVisibility(true);
                  §_-MF§.container.setObjectToFront(_loc6_);
                  §_-MF§.setText("","TextField_Code");
               }
            }
         }
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§_-OC§)
               {
                  this.§_-OC§ = false;
                  break;
               }
               this.§_-OC§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§_-S8§)
               {
                  this.§_-S8§ = false;
                  break;
               }
               this.§_-S8§ = true;
               break;
            case "PLAY_NEXT":
               §_-Py§.§_-op§();
               mNextState = StateCutScene.§_-8r§;
               break;
            case "RESTART_LEVEL":
               §_-Py§.§_-vF§();
               mNextState = §_-Py§.§_-8r§;
               break;
            case "CANCEL":
               (_loc7_ = §_-MF§.getItemByName("InsertCodePopup")).setVisibility(false);
               break;
            case "SEND_CODE":
               _loc8_ = §_-MF§.getText("TextField_Code");
               this.§_-vR§(_loc8_);
               break;
            case "SOUNDS_BUTTON":
               _loc9_ = !§_-q0§.§_-fT§();
               §_-q0§.§if§(_loc9_);
               if(_loc9_)
               {
                  §_-q0§.§_-Qb§();
               }
               §_-MF§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc9_);
               break;
            case "CREDITS_BUTTON":
               mNextState = §_-Vq§.§_-8r§;
               this.§_-OC§ = false;
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
               (_loc10_ = §_-MF§.getItemByName("LogoutConfirmationPopup")).setVisibility(true);
               §_-MF§.container.setObjectToFront(_loc10_);
               break;
            case "LOGOUT_SI":
               §_-MF§.getItemByName("LogoutConfirmationPopup").setVisibility(false);
               §_-p§.§_-HZ§ = true;
               mNextState = §_-p§.§_-8r§;
               break;
            case "LOGOUT_NO":
               §_-MF§.getItemByName("LogoutConfirmationPopup").setVisibility(false);
               break;
            case "NAVIGATE_CHROME":
               §_-B4§.§_-du§(§_-1s§.§_-fj§);
               navigateToURL(new URLRequest("http://chrome.angrybirds.com"),"_self");
               break;
            case "NAVIGATE_FACEBOOK":
               §_-B4§.§_-du§(§_-1s§.§_-K2§);
               navigateToURL(new URLRequest("http://facebook.angrybirds.com"),"_self");
         }
      }
      
      private function §_-bf§(param1:String) : void
      {
         §_-4O§.§_-bf§(param1);
         mNextState = StateCutScene.§_-8r§;
      }
      
      private function §_-40§(param1:String) : void
      {
         var _loc2_:§_-J0§ = §_-J0§.§_-xS§(param1);
         if(_loc2_.§_-4h§)
         {
            this.§_-bf§(_loc2_.§_-4h§);
            §_-gb§.§_-ls§.§_-fm§(param1);
         }
      }
      
      private function §_-vR§(param1:String) : void
      {
         var _loc3_:String = this.§_-nr§;
         var _loc4_:URLLoader = new URLLoader();
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc6_:Object = {
            "type":"assignCode",
            "code":param1,
            "levelId":_loc3_,
            "player":§_-z5§.§_-gt§
         };
         _loc5_.data = "json=" + Base64.encode(§_-hQ§.encode(_loc6_));
         _loc4_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-ON§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.get);
         _loc5_.url = §_-q0§.§_-Fa§;
         _loc4_.load(_loc5_);
         §_-MF§.getItemByName("WaitingPopup").setVisibility(true);
      }
      
      private function §_-ON§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function get(param1:IOErrorEvent) : void
      {
         if(§_-MF§)
         {
            §_-MF§.getItemByName("WaitingPopup").setVisibility(false);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:§_-C§ = null;
         if(§_-MF§)
         {
            §_-MF§.getItemByName("WaitingPopup").setVisibility(false);
         }
         var _loc2_:Object = §_-DM§.§_-KR§((param1.currentTarget as URLLoader).data);
         if(_loc2_.security)
         {
            §_-z5§.levelProfile = _loc2_.levelProfile;
            if(§_-MF§)
            {
               _loc3_ = §_-MF§.getItemByName("InsertCodePopup");
               _loc3_.setVisibility(false);
            }
            while(this.§_-TP§.§_-dD§[0].mClip.numChildren > 0)
            {
               this.§_-TP§.§_-dD§[0].mClip.removeChildAt(0);
            }
            this.§_-TP§.setVisibility(false);
            mNextState = §_-V9§.§_-8r§;
         }
         else if(_loc2_.error)
         {
            if(§_-MF§)
            {
               §_-MF§.setText(§_-mI§.§_-xF§(_loc2_.error),"TextField_Code");
            }
         }
      }
      
      public function §_-Y8§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§_-yb§ = [];
         this.§_-VU§ = §_-4O§.§_-yd§(§_-4O§.§_-R3§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §_-4O§.§_-yd§(§_-4O§.§_-R3§).pageIndexes.length)
         {
            _loc3_ = §_-4O§.§_-yd§(§_-4O§.§_-R3§).§_-MK§(§_-4O§.§_-yd§(§_-4O§.§_-R3§).pageIndexes[_loc2_]);
            this.§_-yb§.push(§_-4O§.§_-yd§(§_-4O§.§_-R3§).§_-UV§(_loc2_));
            _loc1_ = this.§_-xH§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §_-xH§(param1:Array, param2:Number) : Number
      {
         var _loc6_:XML = null;
         var _loc9_:String = null;
         var _loc10_:MovieClip = null;
         var _loc11_:Boolean = false;
         var _loc12_:Number = NaN;
         var _loc13_:XML = null;
         var _loc3_:Array = new Array();
         _loc3_[0] = new Array();
         var _loc4_:Class = §_-X7§.§_-IA§("Component_LevelSelection");
         var _loc5_:Number = 0;
         while(_loc5_ < param1.length)
         {
            _loc9_ = param1[_loc5_];
            (_loc10_ = new _loc4_()).TextField_LevelNum.text.text = (_loc5_ + 1).toString();
            _loc10_.MovieClip_LevelSelectionLogos.gotoAndStop(_loc5_ + 1);
            _loc10_.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop("out");
            §_-z5§.§_-TX§(_loc9_,false);
            if(!(_loc11_ = §_-z5§.§_-FS§(_loc9_)))
            {
               _loc10_.gotoAndStop("Open");
               if(§_-q0§.§_-AI§.§_-Lt§(_loc9_) == 100)
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
            _loc12_ = §_-q0§.§_-AI§.§_-0u§(_loc9_);
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
         var _loc8_:MovieClip = new (_loc7_ = §_-X7§.§_-IA§(_loc6_.@name))();
         this.§_-TP§ = new §_-fZ§(_loc6_,§_-MF§.container,null,_loc8_);
         this.§_-TP§.§_-OE§(_loc3_);
         this.§_-TP§.setVisibility(true);
         §_-MF§.container.addComponent(this.§_-TP§);
         this.§_-TP§.x += param2;
         this.§_-c2§.push(this.§_-TP§);
         return Number(param2 + §_-q0§.§ null§);
      }
      
      private function §_-k8§() : void
      {
         if(this.§_-TP§.mClip.parent.contains(this.§_-TP§.mClip))
         {
            this.§_-TP§.mClip.parent.removeChild(this.§_-TP§.mClip);
         }
         while(this.§_-uB§.numChildren > 0)
         {
            this.§_-uB§.removeChildAt(0);
         }
         this.§_-c2§ = [];
      }
      
      private function §_-WD§(param1:MouseEvent) : void
      {
         mNextState = §_-V9§.§_-8r§;
      }
      
      private function §_-D2§(param1:Number) : void
      {
         (§_-MF§.getItemByName("Container_MenuLeftButtons") as §_-4G§).mClip.scrollRect = new Rectangle(0,0,(§_-MF§.getItemByName("Container_MenuLeftButtons") as §_-4G§).width,this.§_-2J§ + 20 - (this.§_-2J§ - this.§_-I2§));
         (§_-MF§.getItemByName("Container_MenuRightButtons") as §_-4G§).mClip.scrollRect = new Rectangle(0,0,(§_-MF§.getItemByName("Container_MenuRightButtons") as §_-4G§).width,this.§null§ + 20 - (this.§null§ - this.§_-n9§));
         if(this.§_-OC§)
         {
            (§_-MF§.getItemByName("Container_MenuLeftButtons") as §_-4G§).setVisibility(true);
            if(this.§_-5w§ < 90)
            {
               this.§_-5w§ += 0.3 * param1;
            }
            if(this.§_-5w§ > 90)
            {
               this.§_-5w§ = 90;
            }
            if(this.§_-I2§ < this.§_-2J§)
            {
               this.§_-I2§ += 0.5 * param1;
            }
            if(this.§_-I2§ > this.§_-2J§)
            {
               this.§_-I2§ = this.§_-2J§;
            }
         }
         else
         {
            if(this.§_-5w§ > 0)
            {
               this.§_-5w§ -= 0.3 * param1;
            }
            if(this.§_-5w§ < 0)
            {
               this.§_-5w§ = 0;
            }
            if(this.§_-I2§ > 0)
            {
               this.§_-I2§ -= 0.5 * param1;
            }
            if(this.§_-I2§ < 0)
            {
               (§_-MF§.getItemByName("Container_MenuLeftButtons") as §_-4G§).setVisibility(false);
               this.§_-I2§ = 0;
            }
         }
         if(this.§_-S8§)
         {
            (§_-MF§.getItemByName("Container_MenuRightButtons") as §_-4G§).setVisibility(true);
            if(this.§_-gh§ < 180)
            {
               this.§_-gh§ += 0.5 * param1;
               (§_-MF§.getItemByName("Container_MenuRightButtons") as §_-4G§).y = (§_-MF§.getItemByName("Container_MenuRightButtons") as §_-4G§).y - 0.5 * param1;
            }
            if(this.§_-gh§ > 180)
            {
               this.§_-gh§ = 180;
            }
            if(this.§_-n9§ < this.§null§)
            {
               this.§_-n9§ += 0.5 * param1;
            }
            if(this.§_-n9§ > this.§null§)
            {
               this.§_-n9§ = this.§null§;
            }
         }
         else
         {
            if(this.§_-gh§ > 0)
            {
               this.§_-gh§ -= 0.5 * param1;
               (§_-MF§.getItemByName("Container_MenuRightButtons") as §_-4G§).y = (§_-MF§.getItemByName("Container_MenuRightButtons") as §_-4G§).y + 0.5 * param1;
            }
            if(this.§_-gh§ < 0)
            {
               this.§_-gh§ = 0;
            }
            if(this.§_-n9§ > 0)
            {
               this.§_-n9§ -= 0.5 * param1;
            }
            if(this.§_-n9§ < 0)
            {
               (§_-MF§.getItemByName("Container_MenuRightButtons") as §_-4G§).setVisibility(false);
               this.§_-n9§ = 0;
            }
         }
         (§_-MF§.getItemByName("Button_LeftMenuOpen") as §_-FU§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§_-MF§.getItemByName("Button_RightMenuOpen") as §_-FU§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§_-MF§.getItemByName("Button_LeftMenuOpen") as §_-FU§).mClip.MovieClip_LeftMenuImage.rotation = this.§_-5w§;
         (§_-MF§.getItemByName("Button_RightMenuOpen") as §_-FU§).mClip.MovieClip_RightMenuImage.rotation = this.§_-gh§;
         (§_-MF§.getItemByName("Container_MenuLeftButtons") as §_-4G§).y = this.§_-kK§ - this.§_-I2§;
         (§_-MF§.getItemByName("Container_MenuRightButtons") as §_-4G§).y = this.§_-Bn§ - this.§_-n9§;
      }
   }
}
