package §_-Hq§
{
   import §_-4R§.§_-dZ§;
   import §_-Ah§.§_-b§;
   import §_-IV§.§_-5e§;
   import §_-QM§.§_-GC§;
   import §_-QM§.§_-Ns§;
   import §_-TE§.§_-PN§;
   import §_-TW§.§_-CI§;
   import §_-TW§.§_-bl§;
   import §_-TW§.§_-iD§;
   import §_-TW§.§_-qq§;
   import §_-TW§.§_-r6§;
   import §_-Y-§.§_-A5§;
   import §_-ZG§.Base64;
   import §_-bA§.§_-U7§;
   import §_-bA§.§_-Xe§;
   import §_-d5§.§_-6Y§;
   import §_-ic§.HighscoreSidebar;
   import §_-p7§.§_-WY§;
   import §_-uz§.§_-wX§;
   import §_-xN§.§_-fA§;
   import §_-xN§.§_-pB§;
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
   
   public class §_-fR§ extends §_-UR§
   {
      
      public static const §_-dh§:String = "LevelSelectionState";
      
      private static const §_-HY§:Number = 0.5;
       
      
      private var §_-dF§:Boolean = false;
      
      private var §_-vZ§:MovieClip;
      
      private var §_-XM§:Array;
      
      private var §_-e-§:Array;
      
      private var §_-7J§:int = 0;
      
      private var §_-fn§:Boolean = false;
      
      private var §_-Kd§:§_-wX§ = null;
      
      private var §_-Jz§:String;
      
      private var §_-G9§:Dictionary;
      
      private var §_-7q§:Array;
      
      private var §_-1d§:§_-CI§;
      
      private var §_-4w§:Boolean = false;
      
      private var §_-1b§:Boolean = false;
      
      private var §_-Qs§:Boolean = false;
      
      private var §_-0K§:Number = 0;
      
      private var §_-cP§:Number = 0;
      
      private var §_-Z8§:Number = 0;
      
      private var §_-k2§:Number = 0;
      
      private var §_-Ls§:Number;
      
      private var §_-BH§:Number;
      
      private var §_-43§:Number;
      
      private var §_-mH§:Number;
      
      public function §_-fR§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-qE§ = new §_-Ns§(this);
         §_-qE§.init(§_-GC§.§_-jz§.Views.View_LevelSelection[0]);
         this.§_-vZ§ = new MovieClip();
         §_-qE§.addChild(this.§_-vZ§);
         this.§_-e-§ = [];
         this.§_-XM§ = [];
         this.§_-Ls§ = (§_-qE§.getItemByName("Container_MenuLeftButtons") as §_-qq§).height;
         this.§_-BH§ = (§_-qE§.getItemByName("Container_MenuRightButtons") as §_-qq§).height;
         this.§_-43§ = §_-qE§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-mH§ = §_-qE§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-6Y§.§true§)
         {
            §_-6Y§.§true§.stop();
         }
         if(!this.§_-4w§)
         {
            this.§_-4w§ = true;
            §_-dZ§.§_-H3§(§_-dZ§.§_-QL§);
         }
         §_-b§.§_-cK§.§_-uw§(false);
         this.§_-oe§();
         §_-03§.changeState(HighscoreSidebar.§_-PP§);
         §_-03§.reloadAllScores();
         (§_-qE§.getItemByName("TextField_Code") as §_-iD§).§_-3n§.addEventListener(FocusEvent.FOCUS_IN,this.§_-rz§);
         var _loc1_:Boolean = §_-I8§.§_-rH§();
         if(_loc1_)
         {
            §_-I8§.§_-NZ§();
         }
         §_-qE§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      private function §_-rz§(param1:FocusEvent) : void
      {
         §_-qE§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-PN§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-PN§.STATE_STATUS_COMPLETED;
         }
         this.§_-43§ = §_-qE§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-mH§ = §_-qE§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§_-kj§(param1);
         return §_-PN§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§_-1b§ = false;
         this.§_-Qs§ = false;
         this.§_-Z8§ = 0;
         this.§_-k2§ = 0;
         (§_-qE§.getItemByName("TextField_Code") as §_-iD§).§_-3n§.removeEventListener(FocusEvent.FOCUS_IN,this.§_-rz§);
         this.§_-cP§ = 0;
         this.§_-0K§ = 0;
         (§_-qE§.getItemByName("Container_MenuLeftButtons") as §_-qq§).setVisibility(false);
         (§_-qE§.getItemByName("Container_MenuRightButtons") as §_-qq§).setVisibility(false);
         super.deActivate();
         this.§_-wk§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-pB§) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:§_-fA§ = null;
         var _loc7_:§_-fA§ = null;
         var _loc8_:String = null;
         var _loc9_:* = false;
         var _loc10_:§_-fA§ = null;
         if(param2.length > 0 && param3 is §_-bl§)
         {
            if((param3 as §_-bl§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection6")
            {
               if((_loc4_ = param2.substr(0,4)) == "OUT1")
               {
                  _loc4_ = "OUT";
               }
               if(_loc4_ == "OVER" || _loc4_ == "OUT")
               {
                  _loc5_ = _loc4_.toLowerCase();
                  (param3 as §_-bl§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(_loc5_);
               }
               else if(!§_-5e§.§_-2j§(param2))
               {
                  §_-A5§.§_-51§(param2.toLowerCase());
                  mNextState = StateCutScene.§_-dh§;
               }
               else
               {
                  this.§_-Jz§ = param2;
                  (_loc6_ = §_-qE§.getItemByName("InsertCodePopup")).setVisibility(true);
                  §_-qE§.container.setObjectToFront(_loc6_);
                  §_-qE§.setText("","TextField_Code");
               }
            }
         }
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§_-1b§)
               {
                  this.§_-1b§ = false;
                  break;
               }
               this.§_-1b§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§_-Qs§)
               {
                  this.§_-Qs§ = false;
                  break;
               }
               this.§_-Qs§ = true;
               break;
            case "PLAY_NEXT":
               §_-mF§.§_-YZ§();
               mNextState = StateCutScene.§_-dh§;
               break;
            case "RESTART_LEVEL":
               §_-mF§.§_-4C§();
               mNextState = §_-mF§.§_-dh§;
               break;
            case "CANCEL":
               (_loc7_ = §_-qE§.getItemByName("InsertCodePopup")).setVisibility(false);
               break;
            case "SEND_CODE":
               _loc8_ = §_-qE§.getText("TextField_Code");
               this.§_-0x§(_loc8_);
               break;
            case "SOUNDS_BUTTON":
               _loc9_ = !§_-I8§.§_-rH§();
               §_-I8§.§_-vR§(_loc9_);
               if(_loc9_)
               {
                  §_-I8§.§_-NZ§();
               }
               §_-qE§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc9_);
               break;
            case "CREDITS_BUTTON":
               mNextState = §_-kZ§.§_-dh§;
               this.§_-1b§ = false;
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
               (_loc10_ = §_-qE§.getItemByName("LogoutConfirmationPopup")).setVisibility(true);
               §_-qE§.container.setObjectToFront(_loc10_);
               break;
            case "LOGOUT_SI":
               §_-qE§.getItemByName("LogoutConfirmationPopup").setVisibility(false);
               §_-fY§.§_-E7§ = true;
               mNextState = §_-fY§.§_-dh§;
               break;
            case "LOGOUT_NO":
               §_-qE§.getItemByName("LogoutConfirmationPopup").setVisibility(false);
         }
      }
      
      private function §_-0x§(param1:String) : void
      {
         var _loc3_:String = this.§_-Jz§;
         var _loc4_:URLLoader = new URLLoader();
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc6_:Object = {
            "type":"assignCode",
            "code":param1,
            "levelId":_loc3_,
            "player":§_-5e§.§_-JC§
         };
         _loc5_.data = "json=" + Base64.encode(JSON.stringify(_loc6_));
         _loc4_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-3r§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-uV§);
         _loc5_.url = §_-I8§.§_-vQ§;
         _loc4_.load(_loc5_);
         §_-qE§.getItemByName("WaitingPopup").setVisibility(true);
      }
      
      private function §_-3r§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-uV§(param1:IOErrorEvent) : void
      {
         if(§_-qE§)
         {
            §_-qE§.getItemByName("WaitingPopup").setVisibility(false);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:§_-fA§ = null;
         if(§_-qE§)
         {
            §_-qE§.getItemByName("WaitingPopup").setVisibility(false);
         }
         var _loc2_:Object = §_-U7§.§_-qY§((param1.currentTarget as URLLoader).data);
         if(_loc2_.security)
         {
            §_-5e§.levelProfile = _loc2_.levelProfile;
            if(§_-qE§)
            {
               _loc3_ = §_-qE§.getItemByName("InsertCodePopup");
               _loc3_.setVisibility(false);
            }
            while(this.§_-1d§.§_-rp§[0].mClip.numChildren > 0)
            {
               this.§_-1d§.§_-rp§[0].mClip.removeChildAt(0);
            }
            this.§_-1d§.setVisibility(false);
            mNextState = §_-fR§.§_-dh§;
         }
         else if(_loc2_.error)
         {
            if(§_-qE§)
            {
               §_-qE§.setText(§_-Xe§.§_-sv§(_loc2_.error),"TextField_Code");
            }
         }
      }
      
      public function §_-oe§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§_-7q§ = [];
         this.§_-7J§ = §_-A5§.§_-N6§(§_-A5§.§_-fd§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §_-A5§.§_-N6§(§_-A5§.§_-fd§).pageIndexes.length)
         {
            _loc3_ = §_-A5§.§_-N6§(§_-A5§.§_-fd§).§_-bc§(§_-A5§.§_-N6§(§_-A5§.§_-fd§).pageIndexes[_loc2_]);
            this.§_-7q§.push(§_-A5§.§_-N6§(§_-A5§.§_-fd§).§_-8J§(_loc2_));
            _loc1_ = this.§_-84§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §_-84§(param1:Array, param2:Number) : Number
      {
         var _loc6_:XML = null;
         var _loc9_:String = null;
         var _loc10_:MovieClip = null;
         var _loc11_:Boolean = false;
         var _loc12_:Number = NaN;
         var _loc13_:XML = null;
         var _loc3_:Array = new Array();
         _loc3_[0] = new Array();
         var _loc4_:Class = §_-WY§.§_-fs§("Component_LevelSelection");
         var _loc5_:Number = 0;
         while(_loc5_ < param1.length)
         {
            _loc9_ = param1[_loc5_];
            (_loc10_ = new _loc4_()).TextField_LevelNum.text.text = (_loc5_ + 1).toString();
            _loc10_.MovieClip_LevelSelectionLogos.gotoAndStop(_loc5_ + 1);
            _loc10_.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop("out");
            if(!(_loc11_ = §_-5e§.§_-2j§(_loc9_)))
            {
               _loc10_.gotoAndStop("Open");
               if(§_-I8§.§_-Gn§.§_-Zf§(_loc9_) == 100)
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
            _loc12_ = §_-I8§.§_-Gn§.§_-i7§(_loc9_);
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
         var _loc8_:MovieClip = new (_loc7_ = §_-WY§.§_-fs§(_loc6_.@name))();
         this.§_-1d§ = new §_-CI§(_loc6_,§_-qE§.container,null,_loc8_);
         this.§_-1d§.§_-tk§(_loc3_);
         this.§_-1d§.setVisibility(true);
         §_-qE§.container.addComponent(this.§_-1d§);
         this.§_-1d§.x += param2;
         this.§_-e-§.push(this.§_-1d§);
         return Number(param2 + §_-I8§.§_-iX§);
      }
      
      private function §_-wk§() : void
      {
         if(this.§_-1d§.mClip.parent.contains(this.§_-1d§.mClip))
         {
            this.§_-1d§.mClip.parent.removeChild(this.§_-1d§.mClip);
         }
         while(this.§_-vZ§.numChildren > 0)
         {
            this.§_-vZ§.removeChildAt(0);
         }
         this.§_-e-§ = [];
      }
      
      private function §_-l§(param1:MouseEvent) : void
      {
         mNextState = §_-fR§.§_-dh§;
      }
      
      private function §_-kj§(param1:Number) : void
      {
         (§_-qE§.getItemByName("Container_MenuLeftButtons") as §_-qq§).mClip.scrollRect = new Rectangle(0,0,(§_-qE§.getItemByName("Container_MenuLeftButtons") as §_-qq§).width,this.§_-Ls§ + 20 - (this.§_-Ls§ - this.§_-Z8§));
         (§_-qE§.getItemByName("Container_MenuRightButtons") as §_-qq§).mClip.scrollRect = new Rectangle(0,0,(§_-qE§.getItemByName("Container_MenuRightButtons") as §_-qq§).width,this.§_-BH§ + 20 - (this.§_-BH§ - this.§_-k2§));
         if(this.§_-1b§)
         {
            (§_-qE§.getItemByName("Container_MenuLeftButtons") as §_-qq§).setVisibility(true);
            if(this.§_-0K§ < 90)
            {
               this.§_-0K§ += 0.3 * param1;
            }
            if(this.§_-0K§ > 90)
            {
               this.§_-0K§ = 90;
            }
            if(this.§_-Z8§ < this.§_-Ls§)
            {
               this.§_-Z8§ += 0.5 * param1;
            }
            if(this.§_-Z8§ > this.§_-Ls§)
            {
               this.§_-Z8§ = this.§_-Ls§;
            }
         }
         else
         {
            if(this.§_-0K§ > 0)
            {
               this.§_-0K§ -= 0.3 * param1;
            }
            if(this.§_-0K§ < 0)
            {
               this.§_-0K§ = 0;
            }
            if(this.§_-Z8§ > 0)
            {
               this.§_-Z8§ -= 0.5 * param1;
            }
            if(this.§_-Z8§ < 0)
            {
               (§_-qE§.getItemByName("Container_MenuLeftButtons") as §_-qq§).setVisibility(false);
               this.§_-Z8§ = 0;
            }
         }
         if(this.§_-Qs§)
         {
            (§_-qE§.getItemByName("Container_MenuRightButtons") as §_-qq§).setVisibility(true);
            if(this.§_-cP§ < 180)
            {
               this.§_-cP§ += 0.5 * param1;
               (§_-qE§.getItemByName("Container_MenuRightButtons") as §_-qq§).y = (§_-qE§.getItemByName("Container_MenuRightButtons") as §_-qq§).y - 0.5 * param1;
            }
            if(this.§_-cP§ > 180)
            {
               this.§_-cP§ = 180;
            }
            if(this.§_-k2§ < this.§_-BH§)
            {
               this.§_-k2§ += 0.5 * param1;
            }
            if(this.§_-k2§ > this.§_-BH§)
            {
               this.§_-k2§ = this.§_-BH§;
            }
         }
         else
         {
            if(this.§_-cP§ > 0)
            {
               this.§_-cP§ -= 0.5 * param1;
               (§_-qE§.getItemByName("Container_MenuRightButtons") as §_-qq§).y = (§_-qE§.getItemByName("Container_MenuRightButtons") as §_-qq§).y + 0.5 * param1;
            }
            if(this.§_-cP§ < 0)
            {
               this.§_-cP§ = 0;
            }
            if(this.§_-k2§ > 0)
            {
               this.§_-k2§ -= 0.5 * param1;
            }
            if(this.§_-k2§ < 0)
            {
               (§_-qE§.getItemByName("Container_MenuRightButtons") as §_-qq§).setVisibility(false);
               this.§_-k2§ = 0;
            }
         }
         (§_-qE§.getItemByName("Button_LeftMenuOpen") as §_-r6§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§_-qE§.getItemByName("Button_RightMenuOpen") as §_-r6§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§_-qE§.getItemByName("Button_LeftMenuOpen") as §_-r6§).mClip.MovieClip_LeftMenuImage.rotation = this.§_-0K§;
         (§_-qE§.getItemByName("Button_RightMenuOpen") as §_-r6§).mClip.MovieClip_RightMenuImage.rotation = this.§_-cP§;
         (§_-qE§.getItemByName("Container_MenuLeftButtons") as §_-qq§).y = this.§_-43§ - this.§_-Z8§;
         (§_-qE§.getItemByName("Container_MenuRightButtons") as §_-qq§).y = this.§_-mH§ - this.§_-k2§;
      }
   }
}
