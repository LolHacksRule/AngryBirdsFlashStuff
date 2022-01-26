package §_-JB§
{
   import §_-1p§.§_-K9§;
   import §_-1p§.§_-uW§;
   import §_-58§.§_-8c§;
   import §_-58§.§_-WC§;
   import §_-58§.§_-Xc§;
   import §_-58§.§_-iR§;
   import §_-58§.§_-sg§;
   import §_-7§.§_-ph§;
   import §_-Ay§.§_-nw§;
   import §_-J-§.§_-9C§;
   import §_-J-§.§_-ZG§;
   import §_-JR§.§_-yh§;
   import §_-LP§.§_-PH§;
   import §_-PS§.§_-Xz§;
   import §_-S9§.§_-3W§;
   import §_-S9§.§_-o2§;
   import §_-XI§.§_-mk§;
   import §_-a6§.§_-ds§;
   import §_-cu§.§_-UO§;
   import §_-ex§.Base64;
   import §_-m7§.HighscoreSidebar;
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
   
   public class §_-Sp§ extends §_-bH§
   {
      
      public static const §_-1h§:String = "LevelSelectionState";
      
      private static const §implements§:Number = 0.5;
       
      
      private var §_-xu§:Boolean = false;
      
      private var §_-Ah§:MovieClip;
      
      private var §_-N0§:Array;
      
      private var §_-g2§:Array;
      
      private var §_-1Q§:int = 0;
      
      private var §_-oM§:Boolean = false;
      
      private var §_-wc§:§_-PH§ = null;
      
      private var §_-eP§:String;
      
      private var §_-7M§:Dictionary;
      
      private var §_-QP§:Array;
      
      private var §_-Pq§:§_-iR§;
      
      private var §_-s1§:Boolean = false;
      
      private var §_-no§:Boolean = false;
      
      private var §_-E3§:Boolean = false;
      
      private var §_-S1§:Number = 0;
      
      private var §_-Rg§:Number = 0;
      
      private var §_-QE§:Number = 0;
      
      private var §_-z§:Number = 0;
      
      private var §_-r6§:Number;
      
      private var §_-p3§:Number;
      
      private var §_-gp§:Number;
      
      private var §_-WK§:Number;
      
      public function §_-Sp§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-kl§ = new §_-K9§(this);
         §_-kl§.init(§_-uW§.§_-Cs§.Views.View_LevelSelection[0]);
         this.§_-Ah§ = new MovieClip();
         §_-kl§.addChild(this.§_-Ah§);
         this.§_-g2§ = [];
         this.§_-N0§ = [];
         this.§_-r6§ = (§_-kl§.getItemByName("Container_MenuLeftButtons") as §_-WC§).height;
         this.§_-p3§ = (§_-kl§.getItemByName("Container_MenuRightButtons") as §_-WC§).height;
         this.§_-gp§ = §_-kl§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-WK§ = §_-kl§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-yh§.§_-1o§)
         {
            §_-yh§.§_-1o§.stop();
         }
         if(!this.§_-s1§)
         {
            this.§_-s1§ = true;
            §_-mk§.§_-6h§(§_-mk§.§_-EQ§);
         }
         §_-ph§.§_-Tw§.§_-G9§(false);
         this.§_-Gg§();
         §_-dM§.changeState(HighscoreSidebar.§else§);
         §_-dM§.reloadAllScores();
         (§_-kl§.getItemByName("TextField_Code") as §_-sg§).§_-Ak§.addEventListener(FocusEvent.FOCUS_IN,this.§_-SI§);
         var _loc1_:Boolean = §_-2U§.§_-AU§();
         if(_loc1_)
         {
            §_-2U§.§_-DK§();
         }
         §_-kl§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      private function §_-SI§(param1:FocusEvent) : void
      {
         §_-kl§.setText("","TextField_Code");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-UO§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-UO§.STATE_STATUS_COMPLETED;
         }
         this.§_-gp§ = §_-kl§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-WK§ = §_-kl§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§_-t3§(param1);
         return §_-UO§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§_-no§ = false;
         this.§_-E3§ = false;
         this.§_-QE§ = 0;
         this.§_-z§ = 0;
         (§_-kl§.getItemByName("TextField_Code") as §_-sg§).§_-Ak§.removeEventListener(FocusEvent.FOCUS_IN,this.§_-SI§);
         this.§_-Rg§ = 0;
         this.§_-S1§ = 0;
         (§_-kl§.getItemByName("Container_MenuLeftButtons") as §_-WC§).setVisibility(false);
         (§_-kl§.getItemByName("Container_MenuRightButtons") as §_-WC§).setVisibility(false);
         super.deActivate();
         this.§_-W4§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-ZG§) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:§_-9C§ = null;
         var _loc7_:§_-9C§ = null;
         var _loc8_:String = null;
         var _loc9_:* = false;
         var _loc10_:§_-9C§ = null;
         if(param2.length > 0 && param3 is §_-Xc§)
         {
            if((param3 as §_-Xc§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection6")
            {
               if((_loc4_ = param2.substr(0,4)) == "OUT1")
               {
                  _loc4_ = "OUT";
               }
               if(_loc4_ == "OVER" || _loc4_ == "OUT")
               {
                  _loc5_ = _loc4_.toLowerCase();
                  (param3 as §_-Xc§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(_loc5_);
               }
               else if(!§_-ds§.§_-Xj§(param2))
               {
                  §_-Xz§.§_-9v§(param2.toLowerCase());
                  mNextState = StateCutScene.§_-1h§;
               }
               else
               {
                  this.§_-eP§ = param2;
                  (_loc6_ = §_-kl§.getItemByName("InsertCodePopup")).setVisibility(true);
                  §_-kl§.container.setObjectToFront(_loc6_);
                  §_-kl§.setText("","TextField_Code");
               }
            }
         }
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§_-no§)
               {
                  this.§_-no§ = false;
                  break;
               }
               this.§_-no§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§_-E3§)
               {
                  this.§_-E3§ = false;
                  break;
               }
               this.§_-E3§ = true;
               break;
            case "PLAY_NEXT":
               §_-gc§.§_-e7§();
               mNextState = StateCutScene.§_-1h§;
               break;
            case "RESTART_LEVEL":
               §_-gc§.§_-hG§();
               mNextState = §_-gc§.§_-1h§;
               break;
            case "CANCEL":
               (_loc7_ = §_-kl§.getItemByName("InsertCodePopup")).setVisibility(false);
               break;
            case "SEND_CODE":
               _loc8_ = §_-kl§.getText("TextField_Code");
               this.§_-qS§(_loc8_);
               break;
            case "SOUNDS_BUTTON":
               _loc9_ = !§_-2U§.§_-AU§();
               §_-2U§.§_-wm§(_loc9_);
               if(_loc9_)
               {
                  §_-2U§.§_-DK§();
               }
               §_-kl§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc9_);
               break;
            case "CREDITS_BUTTON":
               mNextState = §_-qZ§.§_-1h§;
               this.§_-no§ = false;
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
               (_loc10_ = §_-kl§.getItemByName("LogoutConfirmationPopup")).setVisibility(true);
               §_-kl§.container.setObjectToFront(_loc10_);
               break;
            case "LOGOUT_SI":
               §_-kl§.getItemByName("LogoutConfirmationPopup").setVisibility(false);
               §_-QV§.§_-pd§ = true;
               mNextState = §_-QV§.§_-1h§;
               break;
            case "LOGOUT_NO":
               §_-kl§.getItemByName("LogoutConfirmationPopup").setVisibility(false);
         }
      }
      
      private function §_-qS§(param1:String) : void
      {
         var _loc3_:String = this.§_-eP§;
         var _loc4_:URLLoader = new URLLoader();
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc6_:Object = {
            "type":"assignCode",
            "code":param1,
            "levelId":_loc3_,
            "player":§_-ds§.§_-2B§
         };
         _loc5_.data = "json=" + Base64.encode(JSON.stringify(_loc6_));
         _loc4_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-vi§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-mT§);
         _loc5_.url = §_-2U§.§_-i1§;
         _loc4_.load(_loc5_);
         §_-kl§.getItemByName("WaitingPopup").setVisibility(true);
      }
      
      private function §_-vi§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-mT§(param1:IOErrorEvent) : void
      {
         if(§_-kl§)
         {
            §_-kl§.getItemByName("WaitingPopup").setVisibility(false);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:§_-9C§ = null;
         if(§_-kl§)
         {
            §_-kl§.getItemByName("WaitingPopup").setVisibility(false);
         }
         var _loc2_:Object = §_-o2§.§_-Yz§((param1.currentTarget as URLLoader).data);
         if(_loc2_.security)
         {
            §_-ds§.levelProfile = _loc2_.levelProfile;
            if(§_-kl§)
            {
               _loc3_ = §_-kl§.getItemByName("InsertCodePopup");
               _loc3_.setVisibility(false);
            }
            while(this.§_-Pq§.§_-7u§[0].mClip.numChildren > 0)
            {
               this.§_-Pq§.§_-7u§[0].mClip.removeChildAt(0);
            }
            this.§_-Pq§.setVisibility(false);
            mNextState = §_-Sp§.§_-1h§;
         }
         else if(_loc2_.error)
         {
            if(§_-kl§)
            {
               §_-kl§.setText(§_-3W§.§_-kZ§(_loc2_.error),"TextField_Code");
            }
         }
      }
      
      public function §_-Gg§() : void
      {
         var _loc3_:Array = null;
         var _loc1_:Number = 0;
         this.§_-QP§ = [];
         this.§_-1Q§ = §_-Xz§.§_-xM§(§_-Xz§.§_-y-§).currentPage;
         var _loc2_:Number = 0;
         while(_loc2_ < §_-Xz§.§_-xM§(§_-Xz§.§_-y-§).pageIndexes.length)
         {
            _loc3_ = §_-Xz§.§_-xM§(§_-Xz§.§_-y-§).§_-uk§(§_-Xz§.§_-xM§(§_-Xz§.§_-y-§).pageIndexes[_loc2_]);
            this.§_-QP§.push(§_-Xz§.§_-xM§(§_-Xz§.§_-y-§).§_-7m§(_loc2_));
            _loc1_ = this.§_-Os§(_loc3_,_loc1_);
            _loc2_++;
         }
      }
      
      private function §_-Os§(param1:Array, param2:Number) : Number
      {
         var _loc6_:XML = null;
         var _loc9_:String = null;
         var _loc10_:MovieClip = null;
         var _loc11_:Boolean = false;
         var _loc12_:Number = NaN;
         var _loc13_:XML = null;
         var _loc3_:Array = new Array();
         _loc3_[0] = new Array();
         var _loc4_:Class = §_-nw§.§_-Xm§("Component_LevelSelection");
         var _loc5_:Number = 0;
         while(_loc5_ < param1.length)
         {
            _loc9_ = param1[_loc5_];
            (_loc10_ = new _loc4_()).TextField_LevelNum.text.text = (_loc5_ + 1).toString();
            _loc10_.MovieClip_LevelSelectionLogos.gotoAndStop(_loc5_ + 1);
            _loc10_.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop("out");
            if(!(_loc11_ = §_-ds§.§_-Xj§(_loc9_)))
            {
               _loc10_.gotoAndStop("Open");
               if(§_-2U§.§_-T1§.§_-PQ§(_loc9_) == 100)
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
            _loc12_ = §_-2U§.§_-T1§.§_-Yj§(_loc9_);
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
         var _loc8_:MovieClip = new (_loc7_ = §_-nw§.§_-Xm§(_loc6_.@name))();
         this.§_-Pq§ = new §_-iR§(_loc6_,§_-kl§.container,null,_loc8_);
         this.§_-Pq§.§_-Xb§(_loc3_);
         this.§_-Pq§.setVisibility(true);
         §_-kl§.container.addComponent(this.§_-Pq§);
         this.§_-Pq§.x += param2;
         this.§_-g2§.push(this.§_-Pq§);
         return Number(param2 + §_-2U§.§_-EK§);
      }
      
      private function §_-W4§() : void
      {
         if(this.§_-Pq§.mClip.parent.contains(this.§_-Pq§.mClip))
         {
            this.§_-Pq§.mClip.parent.removeChild(this.§_-Pq§.mClip);
         }
         while(this.§_-Ah§.numChildren > 0)
         {
            this.§_-Ah§.removeChildAt(0);
         }
         this.§_-g2§ = [];
      }
      
      private function §_-Xl§(param1:MouseEvent) : void
      {
         mNextState = §_-Sp§.§_-1h§;
      }
      
      private function §_-t3§(param1:Number) : void
      {
         (§_-kl§.getItemByName("Container_MenuLeftButtons") as §_-WC§).mClip.scrollRect = new Rectangle(0,0,(§_-kl§.getItemByName("Container_MenuLeftButtons") as §_-WC§).width,this.§_-r6§ + 20 - (this.§_-r6§ - this.§_-QE§));
         (§_-kl§.getItemByName("Container_MenuRightButtons") as §_-WC§).mClip.scrollRect = new Rectangle(0,0,(§_-kl§.getItemByName("Container_MenuRightButtons") as §_-WC§).width,this.§_-p3§ + 20 - (this.§_-p3§ - this.§_-z§));
         if(this.§_-no§)
         {
            (§_-kl§.getItemByName("Container_MenuLeftButtons") as §_-WC§).setVisibility(true);
            if(this.§_-S1§ < 90)
            {
               this.§_-S1§ += 0.3 * param1;
            }
            if(this.§_-S1§ > 90)
            {
               this.§_-S1§ = 90;
            }
            if(this.§_-QE§ < this.§_-r6§)
            {
               this.§_-QE§ += 0.5 * param1;
            }
            if(this.§_-QE§ > this.§_-r6§)
            {
               this.§_-QE§ = this.§_-r6§;
            }
         }
         else
         {
            if(this.§_-S1§ > 0)
            {
               this.§_-S1§ -= 0.3 * param1;
            }
            if(this.§_-S1§ < 0)
            {
               this.§_-S1§ = 0;
            }
            if(this.§_-QE§ > 0)
            {
               this.§_-QE§ -= 0.5 * param1;
            }
            if(this.§_-QE§ < 0)
            {
               (§_-kl§.getItemByName("Container_MenuLeftButtons") as §_-WC§).setVisibility(false);
               this.§_-QE§ = 0;
            }
         }
         if(this.§_-E3§)
         {
            (§_-kl§.getItemByName("Container_MenuRightButtons") as §_-WC§).setVisibility(true);
            if(this.§_-Rg§ < 180)
            {
               this.§_-Rg§ += 0.5 * param1;
               (§_-kl§.getItemByName("Container_MenuRightButtons") as §_-WC§).y = (§_-kl§.getItemByName("Container_MenuRightButtons") as §_-WC§).y - 0.5 * param1;
            }
            if(this.§_-Rg§ > 180)
            {
               this.§_-Rg§ = 180;
            }
            if(this.§_-z§ < this.§_-p3§)
            {
               this.§_-z§ += 0.5 * param1;
            }
            if(this.§_-z§ > this.§_-p3§)
            {
               this.§_-z§ = this.§_-p3§;
            }
         }
         else
         {
            if(this.§_-Rg§ > 0)
            {
               this.§_-Rg§ -= 0.5 * param1;
               (§_-kl§.getItemByName("Container_MenuRightButtons") as §_-WC§).y = (§_-kl§.getItemByName("Container_MenuRightButtons") as §_-WC§).y + 0.5 * param1;
            }
            if(this.§_-Rg§ < 0)
            {
               this.§_-Rg§ = 0;
            }
            if(this.§_-z§ > 0)
            {
               this.§_-z§ -= 0.5 * param1;
            }
            if(this.§_-z§ < 0)
            {
               (§_-kl§.getItemByName("Container_MenuRightButtons") as §_-WC§).setVisibility(false);
               this.§_-z§ = 0;
            }
         }
         (§_-kl§.getItemByName("Button_LeftMenuOpen") as §_-8c§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§_-kl§.getItemByName("Button_RightMenuOpen") as §_-8c§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§_-kl§.getItemByName("Button_LeftMenuOpen") as §_-8c§).mClip.MovieClip_LeftMenuImage.rotation = this.§_-S1§;
         (§_-kl§.getItemByName("Button_RightMenuOpen") as §_-8c§).mClip.MovieClip_RightMenuImage.rotation = this.§_-Rg§;
         (§_-kl§.getItemByName("Container_MenuLeftButtons") as §_-WC§).y = this.§_-gp§ - this.§_-QE§;
         (§_-kl§.getItemByName("Container_MenuRightButtons") as §_-WC§).y = this.§_-WK§ - this.§_-z§;
      }
   }
}
