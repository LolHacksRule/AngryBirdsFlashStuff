package §_-5M§
{
   import §_-2t§.§_-S-§;
   import §_-2t§.§implements§;
   import §_-3P§.§_-dN§;
   import §_-B2§.§_-H4§;
   import §_-E-§.§_-Fy§;
   import §_-E-§.§_-IM§;
   import §_-E-§.§_-hw§;
   import §_-E-§.§_-it§;
   import §_-E-§.§_-mm§;
   import §_-HJ§.§_-cL§;
   import §_-Hn§.§_-gJ§;
   import §_-I1§.§_-2N§;
   import §_-Je§.§_-RH§;
   import §_-Kj§.§_-8u§;
   import §_-LL§.HighscoreSidebar;
   import §_-PK§.§_-Jb§;
   import §_-PK§.§_-ZR§;
   import §_-Ux§.§_-2E§;
   import §_-Ux§.§_-wl§;
   import §_-ec§.§_-GK§;
   import §_-ot§.Base64;
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
   
   public class §_-Vn§ extends §_-7C§
   {
      
      public static const §_-7J§:String = "LevelSelectionState";
      
      private static const §_-4N§:Number = 0.5;
       
      
      private var §_-bA§:Boolean = false;
      
      private var §_-nu§:MovieClip;
      
      private var §_-TO§:Array;
      
      private var §_-qU§:Array;
      
      private var §_-Xp§:int = 0;
      
      private var §_-vr§:Boolean = false;
      
      private var §_-mp§:§_-8u§ = null;
      
      private var §_-J6§:String;
      
      private var §_-3J§:Dictionary;
      
      private var §_-Wg§:Array;
      
      private var §_-5S§:§_-IM§;
      
      private var §_-KD§:Boolean = false;
      
      private var §_-OF§:Boolean = false;
      
      private var §_-hO§:Boolean = false;
      
      private var §_-2B§:Number = 0;
      
      private var §_-g-§:Number = 0;
      
      private var §_-CP§:Number = 0;
      
      private var §_-fF§:Number = 0;
      
      private var §_-U9§:Number;
      
      private var §_-4X§:Number;
      
      private var §_-oa§:Number;
      
      private var §_-Th§:Number;
      
      public function §_-Vn§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-wB§ = new §_-2E§(this);
         §_-wB§.init(§_-wl§.§_-rp§.Views.View_LevelSelection[0]);
         this.§_-nu§ = new MovieClip();
         §_-wB§.addChild(this.§_-nu§);
         this.§_-qU§ = [];
         this.§_-TO§ = [];
         this.§_-U9§ = (§_-wB§.getItemByName("Container_MenuLeftButtons") as §_-hw§).height;
         this.§_-4X§ = (§_-wB§.getItemByName("Container_MenuRightButtons") as §_-hw§).height;
         this.§_-oa§ = §_-wB§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-Th§ = §_-wB§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-H4§.§_-I9§)
         {
            §_-H4§.§_-I9§.stop();
         }
         if(!this.§_-KD§)
         {
            this.§_-KD§ = true;
            §_-cL§.§_-JT§(§_-cL§.§_-Dx§);
         }
         §_-2N§.§_-iP§.§_-jx§(false);
         this.§_-C7§();
         §_-6B§.changeState(HighscoreSidebar.§_-UC§);
         §_-6B§.reloadAllScores();
         (§_-wB§.getItemByName("TextField_Code") as §_-mm§).§_-3U§.addEventListener(FocusEvent.FOCUS_IN,this.§_-9L§);
         var _loc1_:Boolean = §_-5e§.§_-eC§();
         if(_loc1_)
         {
            §_-5e§.§_-YO§();
         }
         §_-wB§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      private function §_-9L§(param1:FocusEvent) : void
      {
         §_-wB§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-RH§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-RH§.STATE_STATUS_COMPLETED;
         }
         this.§_-oa§ = §_-wB§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-Th§ = §_-wB§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§_-ox§(param1);
         return §_-RH§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§_-OF§ = false;
         this.§_-hO§ = false;
         this.§_-CP§ = 0;
         this.§_-fF§ = 0;
         (§_-wB§.getItemByName("TextField_Code") as §_-mm§).§_-3U§.removeEventListener(FocusEvent.FOCUS_IN,this.§_-9L§);
         this.§_-g-§ = 0;
         this.§_-2B§ = 0;
         (§_-wB§.getItemByName("Container_MenuLeftButtons") as §_-hw§).setVisibility(false);
         (§_-wB§.getItemByName("Container_MenuRightButtons") as §_-hw§).setVisibility(false);
         super.deActivate();
         this.§_-8z§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Jb§) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:§_-ZR§ = null;
         var _loc7_:§_-ZR§ = null;
         var _loc8_:String = null;
         var _loc9_:* = false;
         var _loc10_:§_-ZR§ = null;
         if(param2.length > 0 && param3 is §_-it§)
         {
            if((param3 as §_-it§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection6")
            {
               if((_loc4_ = param2.substr(0,4)) == "OUT1")
               {
                  _loc4_ = "OUT";
               }
               if(_loc4_ == "OVER" || _loc4_ == "OUT")
               {
                  _loc5_ = _loc4_.toLowerCase();
                  (param3 as §_-it§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(_loc5_);
               }
               else if(!§_-gJ§.§_-rR§(param2))
               {
                  §_-dN§.§_-Zx§(param2.toLowerCase());
                  mNextState = StateCutScene.§_-7J§;
               }
               else
               {
                  this.§_-J6§ = param2;
                  (_loc6_ = §_-wB§.getItemByName("InsertCodePopup")).setVisibility(true);
                  §_-wB§.container.setObjectToFront(_loc6_);
                  §_-wB§.setText("","TextField_Code");
               }
            }
         }
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§_-OF§)
               {
                  this.§_-OF§ = false;
                  break;
               }
               this.§_-OF§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§_-hO§)
               {
                  this.§_-hO§ = false;
                  break;
               }
               this.§_-hO§ = true;
               break;
            case "PLAY_NEXT":
               §_-G§.§_-oz§();
               mNextState = StateCutScene.§_-7J§;
               break;
            case "RESTART_LEVEL":
               §_-G§.§_-pN§();
               mNextState = §_-G§.§_-7J§;
               break;
            case "CANCEL":
               (_loc7_ = §_-wB§.getItemByName("InsertCodePopup")).setVisibility(false);
               break;
            case "SEND_CODE":
               _loc8_ = §_-wB§.getText("TextField_Code");
               this.§_-GT§(_loc8_);
               break;
            case "SOUNDS_BUTTON":
               _loc9_ = !§_-5e§.§_-eC§();
               §_-5e§.§_-4d§(_loc9_);
               if(_loc9_)
               {
                  §_-5e§.§_-YO§();
               }
               §_-wB§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc9_);
               break;
            case "CREDITS_BUTTON":
               mNextState = §_-QB§.§_-7J§;
               this.§_-OF§ = false;
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
               (_loc10_ = §_-wB§.getItemByName("LogoutConfirmationPopup")).setVisibility(true);
               §_-wB§.container.setObjectToFront(_loc10_);
               break;
            case "LOGOUT_SI":
               §_-wB§.getItemByName("LogoutConfirmationPopup").setVisibility(false);
               §_-Hq§.§_-CS§ = true;
               mNextState = §_-Hq§.§_-7J§;
               break;
            case "LOGOUT_NO":
               §_-wB§.getItemByName("LogoutConfirmationPopup").setVisibility(false);
         }
      }
      
      private function §_-GT§(param1:String) : void
      {
         var _loc3_:String = this.§_-J6§;
         var _loc4_:URLLoader = new URLLoader();
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc6_:Object = {
            "type":"assignCode",
            "code":param1,
            "levelId":_loc3_,
            "player":§_-gJ§.§_-Fb§
         };
         _loc5_.data = "json=" + Base64.encode(JSON.stringify(_loc6_));
         _loc4_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-qk§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-k§);
         _loc5_.url = §_-5e§.§_-QQ§;
         _loc4_.load(_loc5_);
         §_-wB§.getItemByName("WaitingPopup").setVisibility(true);
      }
      
      private function §_-qk§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-k§(param1:IOErrorEvent) : void
      {
         if(§_-wB§)
         {
            §_-wB§.getItemByName("WaitingPopup").setVisibility(false);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:§_-ZR§ = null;
         if(§_-wB§)
         {
            §_-wB§.getItemByName("WaitingPopup").setVisibility(false);
         }
         var _loc2_:Object = §_-S-§.§_-d1§((param1.currentTarget as URLLoader).data);
         if(_loc2_.security)
         {
            §_-gJ§.levelProfile = _loc2_.levelProfile;
            if(§_-wB§)
            {
               _loc3_ = §_-wB§.getItemByName("InsertCodePopup");
               _loc3_.setVisibility(false);
            }
            while(this.§_-5S§.§_-Oe§[0].mClip.numChildren > 0)
            {
               this.§_-5S§.§_-Oe§[0].mClip.removeChildAt(0);
            }
            this.§_-5S§.setVisibility(false);
            mNextState = §_-Vn§.§_-7J§;
         }
         else if(_loc2_.error)
         {
            if(§_-wB§)
            {
               §_-wB§.setText(§implements§.§_-Yu§(_loc2_.error),"TextField_Code");
            }
         }
      }
      
      public function §_-C7§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§_-Wg§ = [];
         this.§_-Xp§ = §_-dN§.§_-Aa§(§_-dN§.§_-Ni§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §_-dN§.§_-Aa§(§_-dN§.§_-Ni§).pageIndexes.length)
         {
            _loc3_ = §_-dN§.§_-Aa§(§_-dN§.§_-Ni§).§_-dr§(§_-dN§.§_-Aa§(§_-dN§.§_-Ni§).pageIndexes[_loc2_]);
            this.§_-Wg§.push(§_-dN§.§_-Aa§(§_-dN§.§_-Ni§).override(_loc2_));
            _loc1_ = this.§_-mO§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §_-mO§(param1:Array, param2:Number) : Number
      {
         var _loc6_:XML = null;
         var _loc9_:String = null;
         var _loc10_:MovieClip = null;
         var _loc11_:Boolean = false;
         var _loc12_:Number = NaN;
         var _loc13_:XML = null;
         var _loc3_:Array = new Array();
         _loc3_[0] = new Array();
         var _loc4_:Class = §_-GK§.§_-dR§("Component_LevelSelection");
         var _loc5_:Number = 0;
         while(_loc5_ < param1.length)
         {
            _loc9_ = param1[_loc5_];
            (_loc10_ = new _loc4_()).TextField_LevelNum.text.text = (_loc5_ + 1).toString();
            _loc10_.MovieClip_LevelSelectionLogos.gotoAndStop(_loc5_ + 1);
            _loc10_.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop("out");
            if(!(_loc11_ = §_-gJ§.§_-rR§(_loc9_)))
            {
               _loc10_.gotoAndStop("Open");
               if(§_-5e§.§_-Yn§.§_-§(_loc9_) == 100)
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
            _loc12_ = §_-5e§.§_-Yn§.§_-Wz§(_loc9_);
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
         var _loc8_:MovieClip = new (_loc7_ = §_-GK§.§_-dR§(_loc6_.@name))();
         this.§_-5S§ = new §_-IM§(_loc6_,§_-wB§.container,null,_loc8_);
         this.§_-5S§.§_-fW§(_loc3_);
         this.§_-5S§.setVisibility(true);
         §_-wB§.container.addComponent(this.§_-5S§);
         this.§_-5S§.x += param2;
         this.§_-qU§.push(this.§_-5S§);
         return Number(param2 + §_-5e§.§_-ZL§);
      }
      
      private function §_-8z§() : void
      {
         if(this.§_-5S§.mClip.parent.contains(this.§_-5S§.mClip))
         {
            this.§_-5S§.mClip.parent.removeChild(this.§_-5S§.mClip);
         }
         while(this.§_-nu§.numChildren > 0)
         {
            this.§_-nu§.removeChildAt(0);
         }
         this.§_-qU§ = [];
      }
      
      private function §_-H8§(param1:MouseEvent) : void
      {
         mNextState = §_-Vn§.§_-7J§;
      }
      
      private function §_-ox§(param1:Number) : void
      {
         (§_-wB§.getItemByName("Container_MenuLeftButtons") as §_-hw§).mClip.scrollRect = new Rectangle(0,0,(§_-wB§.getItemByName("Container_MenuLeftButtons") as §_-hw§).width,this.§_-U9§ + 20 - (this.§_-U9§ - this.§_-CP§));
         (§_-wB§.getItemByName("Container_MenuRightButtons") as §_-hw§).mClip.scrollRect = new Rectangle(0,0,(§_-wB§.getItemByName("Container_MenuRightButtons") as §_-hw§).width,this.§_-4X§ + 20 - (this.§_-4X§ - this.§_-fF§));
         if(this.§_-OF§)
         {
            (§_-wB§.getItemByName("Container_MenuLeftButtons") as §_-hw§).setVisibility(true);
            if(this.§_-2B§ < 90)
            {
               this.§_-2B§ += 0.3 * param1;
            }
            if(this.§_-2B§ > 90)
            {
               this.§_-2B§ = 90;
            }
            if(this.§_-CP§ < this.§_-U9§)
            {
               this.§_-CP§ += 0.5 * param1;
            }
            if(this.§_-CP§ > this.§_-U9§)
            {
               this.§_-CP§ = this.§_-U9§;
            }
         }
         else
         {
            if(this.§_-2B§ > 0)
            {
               this.§_-2B§ -= 0.3 * param1;
            }
            if(this.§_-2B§ < 0)
            {
               this.§_-2B§ = 0;
            }
            if(this.§_-CP§ > 0)
            {
               this.§_-CP§ -= 0.5 * param1;
            }
            if(this.§_-CP§ < 0)
            {
               (§_-wB§.getItemByName("Container_MenuLeftButtons") as §_-hw§).setVisibility(false);
               this.§_-CP§ = 0;
            }
         }
         if(this.§_-hO§)
         {
            (§_-wB§.getItemByName("Container_MenuRightButtons") as §_-hw§).setVisibility(true);
            if(this.§_-g-§ < 180)
            {
               this.§_-g-§ += 0.5 * param1;
               (§_-wB§.getItemByName("Container_MenuRightButtons") as §_-hw§).y = (§_-wB§.getItemByName("Container_MenuRightButtons") as §_-hw§).y - 0.5 * param1;
            }
            if(this.§_-g-§ > 180)
            {
               this.§_-g-§ = 180;
            }
            if(this.§_-fF§ < this.§_-4X§)
            {
               this.§_-fF§ += 0.5 * param1;
            }
            if(this.§_-fF§ > this.§_-4X§)
            {
               this.§_-fF§ = this.§_-4X§;
            }
         }
         else
         {
            if(this.§_-g-§ > 0)
            {
               this.§_-g-§ -= 0.5 * param1;
               (§_-wB§.getItemByName("Container_MenuRightButtons") as §_-hw§).y = (§_-wB§.getItemByName("Container_MenuRightButtons") as §_-hw§).y + 0.5 * param1;
            }
            if(this.§_-g-§ < 0)
            {
               this.§_-g-§ = 0;
            }
            if(this.§_-fF§ > 0)
            {
               this.§_-fF§ -= 0.5 * param1;
            }
            if(this.§_-fF§ < 0)
            {
               (§_-wB§.getItemByName("Container_MenuRightButtons") as §_-hw§).setVisibility(false);
               this.§_-fF§ = 0;
            }
         }
         (§_-wB§.getItemByName("Button_LeftMenuOpen") as §_-Fy§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§_-wB§.getItemByName("Button_RightMenuOpen") as §_-Fy§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§_-wB§.getItemByName("Button_LeftMenuOpen") as §_-Fy§).mClip.MovieClip_LeftMenuImage.rotation = this.§_-2B§;
         (§_-wB§.getItemByName("Button_RightMenuOpen") as §_-Fy§).mClip.MovieClip_RightMenuImage.rotation = this.§_-g-§;
         (§_-wB§.getItemByName("Container_MenuLeftButtons") as §_-hw§).y = this.§_-oa§ - this.§_-CP§;
         (§_-wB§.getItemByName("Container_MenuRightButtons") as §_-hw§).y = this.§_-Th§ - this.§_-fF§;
      }
   }
}
