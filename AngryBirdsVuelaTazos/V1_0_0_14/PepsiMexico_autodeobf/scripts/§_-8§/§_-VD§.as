package §_-8§
{
   import §_-12§.§_-7l§;
   import §_-2z§.§_-rz§;
   import §_-5a§.§_-Gn§;
   import §_-9C§.§_-6M§;
   import §_-9C§.§_-6O§;
   import §_-Eo§.Base64;
   import §_-Jx§.§_-Ao§;
   import §_-Jx§.§_-dI§;
   import §_-Kn§.HighscoreSidebar;
   import §_-M0§.§_-u4§;
   import §_-Ml§.§_-l0§;
   import §_-W7§.§_-jT§;
   import §_-Yh§.§_-BS§;
   import §_-Yh§.§_-fA§;
   import §_-hf§.§_-0J§;
   import §_-hf§.§_-6o§;
   import §_-hf§.§_-WL§;
   import §_-hf§.§_-b-§;
   import §_-hf§.§_-dJ§;
   import §_-mc§.§_-9j§;
   import §_-qT§.§_-O5§;
   import §_-uh§.§_-HB§;
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
   
   public class §_-VD§ extends §_-1f§
   {
      
      public static const §_-7m§:String = "LevelSelectionState";
      
      private static const §_-0q§:Number = 0.5;
       
      
      private var §_-KZ§:Boolean = false;
      
      private var §_-tx§:MovieClip;
      
      private var §_-CB§:Array;
      
      private var §_-xP§:Array;
      
      private var §_-ga§:int = 0;
      
      private var §_-wZ§:Boolean = false;
      
      private var §_-Ci§:§_-7l§ = null;
      
      private var §_-Pp§:String;
      
      private var §implements§:Dictionary;
      
      private var §_-Za§:Array;
      
      private var §_-qw§:§_-b-§;
      
      private var §_-j5§:Boolean = false;
      
      private var §_-ea§:Boolean = false;
      
      private var §_-pL§:Boolean = false;
      
      private var §_-I6§:Number = 0;
      
      private var §_-6A§:Number = 0;
      
      private var §_-1§:Number = 0;
      
      private var §_-wk§:Number = 0;
      
      private var §_-Kf§:Number;
      
      private var §_-QM§:Number;
      
      private var §_-j1§:Number;
      
      private var §_-zr§:Number;
      
      public function §_-VD§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Ih§ = new §_-fA§(this);
         §_-Ih§.init(§_-BS§.§_-tc§.Views.View_LevelSelection[0]);
         this.§_-tx§ = new MovieClip();
         §_-Ih§.addChild(this.§_-tx§);
         this.§_-xP§ = [];
         this.§_-CB§ = [];
         this.§_-Kf§ = (§_-Ih§.getItemByName("Container_MenuLeftButtons") as §_-WL§).height;
         this.§_-QM§ = (§_-Ih§.getItemByName("Container_MenuRightButtons") as §_-WL§).height;
         this.§_-j1§ = §_-Ih§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-zr§ = §_-Ih§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§_-j5§)
         {
            this.§_-j5§ = true;
            §_-9j§.§_-Ej§(§_-9j§.§_-8a§);
         }
         §_-u4§.§_-40§.§_-AB§(false);
         this.§_-TT§();
         §_-5D§.changeState(HighscoreSidebar.§_-DF§);
         §_-5D§.reloadAllScores();
         (§_-Ih§.getItemByName("TextField_Code") as §_-0J§).§_-Ho§.addEventListener(FocusEvent.FOCUS_IN,this.§_-M-§);
         var _loc1_:Boolean = §_-Tj§.§_-E9§();
         if(_loc1_)
         {
            §_-Tj§.§_-j4§();
         }
         §_-Ih§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      private function §_-M-§(param1:FocusEvent) : void
      {
         §_-Ih§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-O5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-O5§.STATE_STATUS_COMPLETED;
         }
         this.§_-j1§ = §_-Ih§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-zr§ = §_-Ih§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§_-HH§(param1);
         return §_-O5§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§_-ea§ = false;
         this.§_-pL§ = false;
         this.§_-1§ = 0;
         this.§_-wk§ = 0;
         (§_-Ih§.getItemByName("TextField_Code") as §_-0J§).§_-Ho§.removeEventListener(FocusEvent.FOCUS_IN,this.§_-M-§);
         this.§_-6A§ = 0;
         this.§_-I6§ = 0;
         (§_-Ih§.getItemByName("Container_MenuLeftButtons") as §_-WL§).setVisibility(false);
         (§_-Ih§.getItemByName("Container_MenuRightButtons") as §_-WL§).setVisibility(false);
         super.deActivate();
         this.§_-pU§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Ao§) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:§_-dI§ = null;
         var _loc7_:§_-dI§ = null;
         var _loc8_:String = null;
         var _loc9_:* = false;
         var _loc10_:§_-dI§ = null;
         if(param2.length > 0 && param3 is §_-dJ§)
         {
            if((param3 as §_-dJ§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection6")
            {
               if((_loc4_ = param2.substr(0,4)) == "OUT1")
               {
                  _loc4_ = "OUT";
               }
               if(_loc4_ == "OVER" || _loc4_ == "OUT")
               {
                  _loc5_ = _loc4_.toLowerCase();
                  (param3 as §_-dJ§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(_loc5_);
               }
               else if(!§_-Gn§.§_-gY§(param2))
               {
                  this.§_-8e§(param2.toLowerCase());
               }
               else
               {
                  this.§_-Pp§ = param2;
                  (_loc6_ = §_-Ih§.getItemByName("InsertCodePopup")).setVisibility(true);
                  §_-Ih§.container.setObjectToFront(_loc6_);
                  §_-Ih§.setText("","TextField_Code");
               }
            }
         }
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§_-ea§)
               {
                  this.§_-ea§ = false;
                  break;
               }
               this.§_-ea§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§_-pL§)
               {
                  this.§_-pL§ = false;
                  break;
               }
               this.§_-pL§ = true;
               break;
            case "PLAY_NEXT":
               §_-OU§.§_-U1§();
               mNextState = StateCutScene.§_-7m§;
               break;
            case "RESTART_LEVEL":
               §_-OU§.§for §();
               mNextState = §_-OU§.§_-7m§;
               break;
            case "CANCEL":
               (_loc7_ = §_-Ih§.getItemByName("InsertCodePopup")).setVisibility(false);
               break;
            case "SEND_CODE":
               _loc8_ = §_-Ih§.getText("TextField_Code");
               this.§_-JG§(_loc8_);
               break;
            case "SOUNDS_BUTTON":
               _loc9_ = !§_-Tj§.§_-E9§();
               §_-Tj§.§_-ZO§(_loc9_);
               if(_loc9_)
               {
                  §_-Tj§.§_-j4§();
               }
               §_-Ih§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc9_);
               break;
            case "CREDITS_BUTTON":
               mNextState = §_-IL§.§_-7m§;
               this.§_-ea§ = false;
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
               (_loc10_ = §_-Ih§.getItemByName("LogoutConfirmationPopup")).setVisibility(true);
               §_-Ih§.container.setObjectToFront(_loc10_);
               break;
            case "LOGOUT_SI":
               §_-Ih§.getItemByName("LogoutConfirmationPopup").setVisibility(false);
               §_-D§.§_-x8§ = true;
               mNextState = §_-D§.§_-7m§;
               break;
            case "LOGOUT_NO":
               §_-Ih§.getItemByName("LogoutConfirmationPopup").setVisibility(false);
         }
      }
      
      private function §_-8e§(param1:String) : void
      {
         §_-HB§.§_-8e§(param1);
         mNextState = StateCutScene.§_-7m§;
      }
      
      private function §_-5d§(param1:String) : void
      {
         var _loc2_:§_-l0§ = §_-l0§.§_-gD§(param1);
         if(_loc2_.§_-od§)
         {
            this.§_-8e§(_loc2_.§_-od§);
            §_-u4§.§_-40§.§_-W9§(param1);
         }
      }
      
      private function §_-JG§(param1:String) : void
      {
         var _loc3_:String = this.§_-Pp§;
         var _loc4_:URLLoader = new URLLoader();
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc6_:Object = {
            "type":"assignCode",
            "code":param1,
            "levelId":_loc3_,
            "player":§_-Gn§.§_-B1§
         };
         _loc5_.data = "json=" + Base64.encode(§_-rz§.encode(_loc6_));
         _loc4_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-t-§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-U7§);
         _loc5_.url = §_-Tj§.§_-4w§;
         _loc4_.load(_loc5_);
         §_-Ih§.getItemByName("WaitingPopup").setVisibility(true);
      }
      
      private function §_-t-§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-U7§(param1:IOErrorEvent) : void
      {
         if(§_-Ih§)
         {
            §_-Ih§.getItemByName("WaitingPopup").setVisibility(false);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:§_-dI§ = null;
         if(§_-Ih§)
         {
            §_-Ih§.getItemByName("WaitingPopup").setVisibility(false);
         }
         var _loc2_:Object = §_-6O§.§_-Mi§((param1.currentTarget as URLLoader).data);
         if(_loc2_.security)
         {
            §_-Gn§.levelProfile = _loc2_.levelProfile;
            if(§_-Ih§)
            {
               _loc3_ = §_-Ih§.getItemByName("InsertCodePopup");
               _loc3_.setVisibility(false);
            }
            while(this.§_-qw§.§_-pf§[0].mClip.numChildren > 0)
            {
               this.§_-qw§.§_-pf§[0].mClip.removeChildAt(0);
            }
            this.§_-qw§.setVisibility(false);
            mNextState = §_-VD§.§_-7m§;
         }
         else if(_loc2_.error)
         {
            if(§_-Ih§)
            {
               §_-Ih§.setText(§_-6M§.§_-lc§(_loc2_.error),"TextField_Code");
            }
         }
      }
      
      public function §_-TT§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§_-Za§ = [];
         this.§_-ga§ = §_-HB§.§_-nA§(§_-HB§.§_-4z§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §_-HB§.§_-nA§(§_-HB§.§_-4z§).pageIndexes.length)
         {
            _loc3_ = §_-HB§.§_-nA§(§_-HB§.§_-4z§).§_-rr§(§_-HB§.§_-nA§(§_-HB§.§_-4z§).pageIndexes[_loc2_]);
            this.§_-Za§.push(§_-HB§.§_-nA§(§_-HB§.§_-4z§).§_-KC§(_loc2_));
            _loc1_ = this.§_-d4§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §_-d4§(param1:Array, param2:Number) : Number
      {
         var _loc6_:XML = null;
         var _loc9_:String = null;
         var _loc10_:MovieClip = null;
         var _loc11_:Boolean = false;
         var _loc12_:Number = NaN;
         var _loc13_:XML = null;
         var _loc3_:Array = new Array();
         _loc3_[0] = new Array();
         var _loc4_:Class = §_-jT§.§_-kv§("Component_LevelSelection");
         var _loc5_:Number = 0;
         while(_loc5_ < param1.length)
         {
            _loc9_ = param1[_loc5_];
            (_loc10_ = new _loc4_()).TextField_LevelNum.text.text = (_loc5_ + 1).toString();
            _loc10_.MovieClip_LevelSelectionLogos.gotoAndStop(_loc5_ + 1);
            _loc10_.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop("out");
            if(!(_loc11_ = §_-Gn§.§_-gY§(_loc9_)))
            {
               _loc10_.gotoAndStop("Open");
               if(§_-Tj§.§_-7q§.§_-fO§(_loc9_) == 100)
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
            _loc12_ = §_-Tj§.§_-7q§.§_-Yx§(_loc9_);
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
         var _loc8_:MovieClip = new (_loc7_ = §_-jT§.§_-kv§(_loc6_.@name))();
         this.§_-qw§ = new §_-b-§(_loc6_,§_-Ih§.container,null,_loc8_);
         this.§_-qw§.§_-9§(_loc3_);
         this.§_-qw§.setVisibility(true);
         §_-Ih§.container.addComponent(this.§_-qw§);
         this.§_-qw§.x += param2;
         this.§_-xP§.push(this.§_-qw§);
         return Number(param2 + §_-Tj§.§_-4r§);
      }
      
      private function §_-pU§() : void
      {
         if(this.§_-qw§.mClip.parent.contains(this.§_-qw§.mClip))
         {
            this.§_-qw§.mClip.parent.removeChild(this.§_-qw§.mClip);
         }
         while(this.§_-tx§.numChildren > 0)
         {
            this.§_-tx§.removeChildAt(0);
         }
         this.§_-xP§ = [];
      }
      
      private function §_-u§(param1:MouseEvent) : void
      {
         mNextState = §_-VD§.§_-7m§;
      }
      
      private function §_-HH§(param1:Number) : void
      {
         (§_-Ih§.getItemByName("Container_MenuLeftButtons") as §_-WL§).mClip.scrollRect = new Rectangle(0,0,(§_-Ih§.getItemByName("Container_MenuLeftButtons") as §_-WL§).width,this.§_-Kf§ + 20 - (this.§_-Kf§ - this.§_-1§));
         (§_-Ih§.getItemByName("Container_MenuRightButtons") as §_-WL§).mClip.scrollRect = new Rectangle(0,0,(§_-Ih§.getItemByName("Container_MenuRightButtons") as §_-WL§).width,this.§_-QM§ + 20 - (this.§_-QM§ - this.§_-wk§));
         if(this.§_-ea§)
         {
            (§_-Ih§.getItemByName("Container_MenuLeftButtons") as §_-WL§).setVisibility(true);
            if(this.§_-I6§ < 90)
            {
               this.§_-I6§ += 0.3 * param1;
            }
            if(this.§_-I6§ > 90)
            {
               this.§_-I6§ = 90;
            }
            if(this.§_-1§ < this.§_-Kf§)
            {
               this.§_-1§ += 0.5 * param1;
            }
            if(this.§_-1§ > this.§_-Kf§)
            {
               this.§_-1§ = this.§_-Kf§;
            }
         }
         else
         {
            if(this.§_-I6§ > 0)
            {
               this.§_-I6§ -= 0.3 * param1;
            }
            if(this.§_-I6§ < 0)
            {
               this.§_-I6§ = 0;
            }
            if(this.§_-1§ > 0)
            {
               this.§_-1§ -= 0.5 * param1;
            }
            if(this.§_-1§ < 0)
            {
               (§_-Ih§.getItemByName("Container_MenuLeftButtons") as §_-WL§).setVisibility(false);
               this.§_-1§ = 0;
            }
         }
         if(this.§_-pL§)
         {
            (§_-Ih§.getItemByName("Container_MenuRightButtons") as §_-WL§).setVisibility(true);
            if(this.§_-6A§ < 180)
            {
               this.§_-6A§ += 0.5 * param1;
               (§_-Ih§.getItemByName("Container_MenuRightButtons") as §_-WL§).y = (§_-Ih§.getItemByName("Container_MenuRightButtons") as §_-WL§).y - 0.5 * param1;
            }
            if(this.§_-6A§ > 180)
            {
               this.§_-6A§ = 180;
            }
            if(this.§_-wk§ < this.§_-QM§)
            {
               this.§_-wk§ += 0.5 * param1;
            }
            if(this.§_-wk§ > this.§_-QM§)
            {
               this.§_-wk§ = this.§_-QM§;
            }
         }
         else
         {
            if(this.§_-6A§ > 0)
            {
               this.§_-6A§ -= 0.5 * param1;
               (§_-Ih§.getItemByName("Container_MenuRightButtons") as §_-WL§).y = (§_-Ih§.getItemByName("Container_MenuRightButtons") as §_-WL§).y + 0.5 * param1;
            }
            if(this.§_-6A§ < 0)
            {
               this.§_-6A§ = 0;
            }
            if(this.§_-wk§ > 0)
            {
               this.§_-wk§ -= 0.5 * param1;
            }
            if(this.§_-wk§ < 0)
            {
               (§_-Ih§.getItemByName("Container_MenuRightButtons") as §_-WL§).setVisibility(false);
               this.§_-wk§ = 0;
            }
         }
         (§_-Ih§.getItemByName("Button_LeftMenuOpen") as §_-6o§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§_-Ih§.getItemByName("Button_RightMenuOpen") as §_-6o§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§_-Ih§.getItemByName("Button_LeftMenuOpen") as §_-6o§).mClip.MovieClip_LeftMenuImage.rotation = this.§_-I6§;
         (§_-Ih§.getItemByName("Button_RightMenuOpen") as §_-6o§).mClip.MovieClip_RightMenuImage.rotation = this.§_-6A§;
         (§_-Ih§.getItemByName("Container_MenuLeftButtons") as §_-WL§).y = this.§_-j1§ - this.§_-1§;
         (§_-Ih§.getItemByName("Container_MenuRightButtons") as §_-WL§).y = this.§_-zr§ - this.§_-wk§;
      }
   }
}
