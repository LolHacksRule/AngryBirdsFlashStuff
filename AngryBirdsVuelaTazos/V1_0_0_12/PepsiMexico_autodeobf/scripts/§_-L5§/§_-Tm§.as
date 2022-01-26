package §_-L5§
{
   import §_-8J§.§_-1T§;
   import §_-8J§.§_-8s§;
   import §_-Hw§.§_-3C§;
   import §_-IC§.§_-Uw§;
   import §_-RG§.Base64;
   import §_-Su§.§_-8v§;
   import §_-TQ§.HighscoreSidebar;
   import §_-Xr§.§_-cF§;
   import §_-Ys§.§_-7o§;
   import §_-Ys§.§_-o-§;
   import §_-ZI§.§_-Vu§;
   import §_-of§.§_-Ci§;
   import §_-of§.§_-Fo§;
   import §_-of§.§_-H4§;
   import §_-of§.§_-Yk§;
   import §_-of§.§_-rt§;
   import §_-rR§.§_-7q§;
   import §_-uG§.§_-JZ§;
   import §_-uG§.§_-vK§;
   import §_-v3§.§_-G3§;
   import §_-vA§.§_-XO§;
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
   
   public class §_-Tm§ extends §_-1Y§
   {
      
      public static const §_-Mi§:String = "LevelSelectionState";
      
      private static const §_-bA§:Number = 0.5;
       
      
      private var §_-UT§:Boolean = false;
      
      private var §_-is§:MovieClip;
      
      private var §_-cg§:Array;
      
      private var §_-ET§:Array;
      
      private var §_-LI§:int = 0;
      
      private var §_-Bs§:Boolean = false;
      
      private var §_-Jx§:§_-Vu§ = null;
      
      private var §_-wI§:String;
      
      private var §_-qr§:Dictionary;
      
      private var §_-dy§:Array;
      
      private var §_-VM§:§_-Ci§;
      
      private var §_-29§:Boolean = false;
      
      private var §_-bw§:Boolean = false;
      
      private var §_-uX§:Boolean = false;
      
      private var §_-rX§:Number = 0;
      
      private var §_-Gz§:Number = 0;
      
      private var §_-Ao§:Number = 0;
      
      private var §_-fM§:Number = 0;
      
      private var §_-Fb§:Number;
      
      private var §_-if§:Number;
      
      private var §_-KP§:Number;
      
      private var §_-11§:Number;
      
      public function §_-Tm§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Bv§ = new §_-8s§(this);
         §_-Bv§.init(§_-1T§.§_-3G§.Views.View_LevelSelection[0]);
         this.§_-is§ = new MovieClip();
         §_-Bv§.addChild(this.§_-is§);
         this.§_-ET§ = [];
         this.§_-cg§ = [];
         this.§_-Fb§ = (§_-Bv§.getItemByName("Container_MenuLeftButtons") as §_-H4§).height;
         this.§_-if§ = (§_-Bv§.getItemByName("Container_MenuRightButtons") as §_-H4§).height;
         this.§_-KP§ = §_-Bv§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-11§ = §_-Bv§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-G3§.§_-9S§)
         {
            §_-G3§.§_-9S§.stop();
         }
         if(!this.§_-29§)
         {
            this.§_-29§ = true;
            §_-cF§.§_-Wt§(§_-cF§.§_-Di§);
         }
         §_-3C§.§_-bz§.§_-cZ§(false);
         this.§_-JR§();
         §_-1B§.changeState(HighscoreSidebar.§_-qi§);
         §_-1B§.reloadAllScores();
         (§_-Bv§.getItemByName("TextField_Code") as §_-rt§).§_-u7§.addEventListener(FocusEvent.FOCUS_IN,this.§_-x1§);
         var _loc1_:Boolean = §_-0Y§.§_-kB§();
         if(_loc1_)
         {
            §_-0Y§.§_-ku§();
         }
         §_-Bv§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      private function §_-x1§(param1:FocusEvent) : void
      {
         §_-Bv§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-Uw§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-Uw§.STATE_STATUS_COMPLETED;
         }
         this.§_-KP§ = §_-Bv§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-11§ = §_-Bv§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§_-dm§(param1);
         return §_-Uw§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§_-bw§ = false;
         this.§_-uX§ = false;
         this.§_-Ao§ = 0;
         this.§_-fM§ = 0;
         (§_-Bv§.getItemByName("TextField_Code") as §_-rt§).§_-u7§.removeEventListener(FocusEvent.FOCUS_IN,this.§_-x1§);
         this.§_-Gz§ = 0;
         this.§_-rX§ = 0;
         (§_-Bv§.getItemByName("Container_MenuLeftButtons") as §_-H4§).setVisibility(false);
         (§_-Bv§.getItemByName("Container_MenuRightButtons") as §_-H4§).setVisibility(false);
         super.deActivate();
         this.§_-58§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-o-§) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:§_-7o§ = null;
         var _loc7_:§_-7o§ = null;
         var _loc8_:String = null;
         var _loc9_:* = false;
         var _loc10_:§_-7o§ = null;
         if(param2.length > 0 && param3 is §_-Fo§)
         {
            if((param3 as §_-Fo§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection6")
            {
               if((_loc4_ = param2.substr(0,4)) == "OUT1")
               {
                  _loc4_ = "OUT";
               }
               if(_loc4_ == "OVER" || _loc4_ == "OUT")
               {
                  _loc5_ = _loc4_.toLowerCase();
                  (param3 as §_-Fo§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(_loc5_);
               }
               else if(!§_-7q§.§_-q7§(param2))
               {
                  §_-8v§.static(param2.toLowerCase());
                  mNextState = StateCutScene.§_-Mi§;
               }
               else
               {
                  this.§_-wI§ = param2;
                  (_loc6_ = §_-Bv§.getItemByName("InsertCodePopup")).setVisibility(true);
                  §_-Bv§.container.setObjectToFront(_loc6_);
                  §_-Bv§.setText("","TextField_Code");
               }
            }
         }
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§_-bw§)
               {
                  this.§_-bw§ = false;
                  break;
               }
               this.§_-bw§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§_-uX§)
               {
                  this.§_-uX§ = false;
                  break;
               }
               this.§_-uX§ = true;
               break;
            case "PLAY_NEXT":
               §_-0v§.§_-ky§();
               mNextState = StateCutScene.§_-Mi§;
               break;
            case "RESTART_LEVEL":
               §_-0v§.§_-R3§();
               mNextState = §_-0v§.§_-Mi§;
               break;
            case "CANCEL":
               (_loc7_ = §_-Bv§.getItemByName("InsertCodePopup")).setVisibility(false);
               break;
            case "SEND_CODE":
               _loc8_ = §_-Bv§.getText("TextField_Code");
               this.§_-5i§(_loc8_);
               break;
            case "SOUNDS_BUTTON":
               _loc9_ = !§_-0Y§.§_-kB§();
               §_-0Y§.§_-01§(_loc9_);
               if(_loc9_)
               {
                  §_-0Y§.§_-ku§();
               }
               §_-Bv§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc9_);
               break;
            case "CREDITS_BUTTON":
               mNextState = §_-vk§.§_-Mi§;
               this.§_-bw§ = false;
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
               (_loc10_ = §_-Bv§.getItemByName("LogoutConfirmationPopup")).setVisibility(true);
               §_-Bv§.container.setObjectToFront(_loc10_);
               break;
            case "LOGOUT_SI":
               §_-Bv§.getItemByName("LogoutConfirmationPopup").setVisibility(false);
               §_-pb§.§_-Pn§ = true;
               mNextState = §_-pb§.§_-Mi§;
               break;
            case "LOGOUT_NO":
               §_-Bv§.getItemByName("LogoutConfirmationPopup").setVisibility(false);
         }
      }
      
      private function §_-5i§(param1:String) : void
      {
         var _loc3_:String = this.§_-wI§;
         var _loc4_:URLLoader = new URLLoader();
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc6_:Object = {
            "type":"assignCode",
            "code":param1,
            "levelId":_loc3_,
            "player":§_-7q§.§_-Eg§
         };
         _loc5_.data = "json=" + Base64.encode(JSON.stringify(_loc6_));
         _loc4_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§true§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-On§);
         _loc5_.url = §_-0Y§.§_-YA§;
         _loc4_.load(_loc5_);
         §_-Bv§.getItemByName("WaitingPopup").setVisibility(true);
      }
      
      private function §true§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-On§(param1:IOErrorEvent) : void
      {
         if(§_-Bv§)
         {
            §_-Bv§.getItemByName("WaitingPopup").setVisibility(false);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:§_-7o§ = null;
         if(§_-Bv§)
         {
            §_-Bv§.getItemByName("WaitingPopup").setVisibility(false);
         }
         var _loc2_:Object = §_-vK§.§_-Jv§((param1.currentTarget as URLLoader).data);
         if(_loc2_.security)
         {
            §_-7q§.levelProfile = _loc2_.levelProfile;
            if(§_-Bv§)
            {
               _loc3_ = §_-Bv§.getItemByName("InsertCodePopup");
               _loc3_.setVisibility(false);
            }
            while(this.§_-VM§.§_-X5§[0].mClip.numChildren > 0)
            {
               this.§_-VM§.§_-X5§[0].mClip.removeChildAt(0);
            }
            this.§_-VM§.setVisibility(false);
            mNextState = §_-Tm§.§_-Mi§;
         }
         else if(_loc2_.error)
         {
            if(§_-Bv§)
            {
               §_-Bv§.setText(§_-JZ§.§_-pz§(_loc2_.error),"TextField_Code");
            }
         }
      }
      
      public function §_-JR§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§_-dy§ = [];
         this.§_-LI§ = §_-8v§.§_-1h§(§_-8v§.§_-t-§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §_-8v§.§_-1h§(§_-8v§.§_-t-§).pageIndexes.length)
         {
            _loc3_ = §_-8v§.§_-1h§(§_-8v§.§_-t-§).§_-RH§(§_-8v§.§_-1h§(§_-8v§.§_-t-§).pageIndexes[_loc2_]);
            this.§_-dy§.push(§_-8v§.§_-1h§(§_-8v§.§_-t-§).§_-R8§(_loc2_));
            _loc1_ = this.§_-0g§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §_-0g§(param1:Array, param2:Number) : Number
      {
         var _loc6_:XML = null;
         var _loc9_:String = null;
         var _loc10_:MovieClip = null;
         var _loc11_:Boolean = false;
         var _loc12_:Number = NaN;
         var _loc13_:XML = null;
         var _loc3_:Array = new Array();
         _loc3_[0] = new Array();
         var _loc4_:Class = §_-XO§.§_-O3§("Component_LevelSelection");
         var _loc5_:Number = 0;
         while(_loc5_ < param1.length)
         {
            _loc9_ = param1[_loc5_];
            (_loc10_ = new _loc4_()).TextField_LevelNum.text.text = (_loc5_ + 1).toString();
            _loc10_.MovieClip_LevelSelectionLogos.gotoAndStop(_loc5_ + 1);
            _loc10_.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop("out");
            if(!(_loc11_ = §_-7q§.§_-q7§(_loc9_)))
            {
               _loc10_.gotoAndStop("Open");
               if(§_-0Y§.§_-rb§.§_-F9§(_loc9_) == 100)
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
            _loc12_ = §_-0Y§.§_-rb§.§_-Rg§(_loc9_);
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
         var _loc8_:MovieClip = new (_loc7_ = §_-XO§.§_-O3§(_loc6_.@name))();
         this.§_-VM§ = new §_-Ci§(_loc6_,§_-Bv§.container,null,_loc8_);
         this.§_-VM§.§_-lF§(_loc3_);
         this.§_-VM§.setVisibility(true);
         §_-Bv§.container.addComponent(this.§_-VM§);
         this.§_-VM§.x += param2;
         this.§_-ET§.push(this.§_-VM§);
         return Number(param2 + §_-0Y§.§_-dN§);
      }
      
      private function §_-58§() : void
      {
         if(this.§_-VM§.mClip.parent.contains(this.§_-VM§.mClip))
         {
            this.§_-VM§.mClip.parent.removeChild(this.§_-VM§.mClip);
         }
         while(this.§_-is§.numChildren > 0)
         {
            this.§_-is§.removeChildAt(0);
         }
         this.§_-ET§ = [];
      }
      
      private function §_-cG§(param1:MouseEvent) : void
      {
         mNextState = §_-Tm§.§_-Mi§;
      }
      
      private function §_-dm§(param1:Number) : void
      {
         (§_-Bv§.getItemByName("Container_MenuLeftButtons") as §_-H4§).mClip.scrollRect = new Rectangle(0,0,(§_-Bv§.getItemByName("Container_MenuLeftButtons") as §_-H4§).width,this.§_-Fb§ + 20 - (this.§_-Fb§ - this.§_-Ao§));
         (§_-Bv§.getItemByName("Container_MenuRightButtons") as §_-H4§).mClip.scrollRect = new Rectangle(0,0,(§_-Bv§.getItemByName("Container_MenuRightButtons") as §_-H4§).width,this.§_-if§ + 20 - (this.§_-if§ - this.§_-fM§));
         if(this.§_-bw§)
         {
            (§_-Bv§.getItemByName("Container_MenuLeftButtons") as §_-H4§).setVisibility(true);
            if(this.§_-rX§ < 90)
            {
               this.§_-rX§ += 0.3 * param1;
            }
            if(this.§_-rX§ > 90)
            {
               this.§_-rX§ = 90;
            }
            if(this.§_-Ao§ < this.§_-Fb§)
            {
               this.§_-Ao§ += 0.5 * param1;
            }
            if(this.§_-Ao§ > this.§_-Fb§)
            {
               this.§_-Ao§ = this.§_-Fb§;
            }
         }
         else
         {
            if(this.§_-rX§ > 0)
            {
               this.§_-rX§ -= 0.3 * param1;
            }
            if(this.§_-rX§ < 0)
            {
               this.§_-rX§ = 0;
            }
            if(this.§_-Ao§ > 0)
            {
               this.§_-Ao§ -= 0.5 * param1;
            }
            if(this.§_-Ao§ < 0)
            {
               (§_-Bv§.getItemByName("Container_MenuLeftButtons") as §_-H4§).setVisibility(false);
               this.§_-Ao§ = 0;
            }
         }
         if(this.§_-uX§)
         {
            (§_-Bv§.getItemByName("Container_MenuRightButtons") as §_-H4§).setVisibility(true);
            if(this.§_-Gz§ < 180)
            {
               this.§_-Gz§ += 0.5 * param1;
               (§_-Bv§.getItemByName("Container_MenuRightButtons") as §_-H4§).y = (§_-Bv§.getItemByName("Container_MenuRightButtons") as §_-H4§).y - 0.5 * param1;
            }
            if(this.§_-Gz§ > 180)
            {
               this.§_-Gz§ = 180;
            }
            if(this.§_-fM§ < this.§_-if§)
            {
               this.§_-fM§ += 0.5 * param1;
            }
            if(this.§_-fM§ > this.§_-if§)
            {
               this.§_-fM§ = this.§_-if§;
            }
         }
         else
         {
            if(this.§_-Gz§ > 0)
            {
               this.§_-Gz§ -= 0.5 * param1;
               (§_-Bv§.getItemByName("Container_MenuRightButtons") as §_-H4§).y = (§_-Bv§.getItemByName("Container_MenuRightButtons") as §_-H4§).y + 0.5 * param1;
            }
            if(this.§_-Gz§ < 0)
            {
               this.§_-Gz§ = 0;
            }
            if(this.§_-fM§ > 0)
            {
               this.§_-fM§ -= 0.5 * param1;
            }
            if(this.§_-fM§ < 0)
            {
               (§_-Bv§.getItemByName("Container_MenuRightButtons") as §_-H4§).setVisibility(false);
               this.§_-fM§ = 0;
            }
         }
         (§_-Bv§.getItemByName("Button_LeftMenuOpen") as §_-Yk§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§_-Bv§.getItemByName("Button_RightMenuOpen") as §_-Yk§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§_-Bv§.getItemByName("Button_LeftMenuOpen") as §_-Yk§).mClip.MovieClip_LeftMenuImage.rotation = this.§_-rX§;
         (§_-Bv§.getItemByName("Button_RightMenuOpen") as §_-Yk§).mClip.MovieClip_RightMenuImage.rotation = this.§_-Gz§;
         (§_-Bv§.getItemByName("Container_MenuLeftButtons") as §_-H4§).y = this.§_-KP§ - this.§_-Ao§;
         (§_-Bv§.getItemByName("Container_MenuRightButtons") as §_-H4§).y = this.§_-11§ - this.§_-fM§;
      }
   }
}
