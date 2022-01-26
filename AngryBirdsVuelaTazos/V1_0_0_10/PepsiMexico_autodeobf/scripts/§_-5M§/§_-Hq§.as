package §_-5M§
{
   import §_-2t§.§_-S-§;
   import §_-2t§.§_-VX§;
   import §_-2t§.§implements§;
   import §_-B2§.§_-H4§;
   import §_-Hn§.§_-gJ§;
   import §_-Je§.§_-RH§;
   import §_-LL§.HighscoreSidebar;
   import §_-PK§.§_-Jb§;
   import §_-PK§.§_-ds§;
   import §_-Ux§.§_-2E§;
   import §_-Ux§.§_-wl§;
   import §_-ot§.Base64;
   import §_-ot§.§_-o6§;
   import §_-p9§.§_-4R§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-Hq§ extends §_-7C§
   {
      
      public static const §_-7J§:String = "LoginState";
      
      public static const §_-Q9§:String = "userLoggedIn";
      
      public static var §_-CS§:Boolean = false;
       
      
      private var §_-ER§:Boolean;
      
      private var §_-Xn§:SharedObject;
      
      public function §_-Hq§(param1:Boolean = false, param2:String = "LoginState")
      {
         super(param1,param2);
         this.§_-Xn§ = SharedObject.getLocal("loginData");
      }
      
      override public function init() : void
      {
         super.init();
         §_-wB§ = new §_-2E§(this);
         §_-wB§.init(§_-wl§.§_-rp§.Views.View_Login[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-H4§.§_-I9§)
         {
            §_-H4§.§_-I9§.stop();
         }
         this.§_-ER§ = false;
         var _loc1_:Boolean = this.§_-w6§();
         if(this.§_-Xn§.data.rememberMe)
         {
            this.§_-ER§ = true;
         }
         var _loc2_:§_-ds§ = §_-wB§.getItemByName("Checkbox_RememberMe") as §_-ds§;
         if(this.§_-ER§)
         {
            _loc2_.setComponentState(§_-ds§.§_-IX§);
         }
         else
         {
            _loc2_.setComponentState(§_-ds§.§_-Wl§);
         }
         if(§_-B7§.§_-cU§ && §_-B7§.§_-my§)
         {
            §_-wB§.setText(§_-B7§.§_-my§,"TextField_UserNameField");
            §_-wB§.setText(§_-B7§.§_-cU§,"TextField_PasswordField");
         }
         if(§_-CS§)
         {
            this.§_-Ik§();
            this.§_-3e§();
         }
         §_-CS§ = false;
         §_-6B§.changeState(HighscoreSidebar.§_-vX§);
         §_-6B§.hideLogos();
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
         return §_-RH§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Jb§) : void
      {
         var _loc4_:§_-ds§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§_-M6§();
               break;
            case "REGISTER":
               mNextState = §_-B7§.§_-7J§;
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §_-wB§.getItemByName("Checkbox_RememberMe") as §_-ds§;
               this.§_-ER§ = !this.§_-ER§;
               if(this.§_-ER§)
               {
                  _loc4_.setComponentState(§_-ds§.§_-IX§);
                  break;
               }
               _loc4_.setComponentState(§_-ds§.§_-Wl§);
               this.§_-Ik§();
               break;
            case "FORGOT_PASSWORD":
               mNextState = §_-v7§.§_-7J§;
         }
      }
      
      private function §_-M6§() : void
      {
         var _loc2_:String = §_-wB§.getText("TextField_UserNameField");
         var _loc3_:String = §_-wB§.getText("TextField_PasswordField");
         if(_loc2_.length == 0)
         {
            this.§_-qd§(§implements§.§_-r7§.EMAIL_REQUIRED);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§_-qd§(§implements§.§_-r7§.PASSWORD_MISSING);
            return;
         }
         var _loc4_:URLLoader = new URLLoader();
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc6_:Object;
         (_loc6_ = {}).id = _loc2_;
         _loc6_.password = _loc3_;
         var _loc7_:Object = {
            "type":"login",
            "player":_loc6_
         };
         _loc5_.data = "json=" + Base64.encode(JSON.stringify(_loc7_));
         _loc4_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-qk§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-k§);
         _loc5_.url = §_-5e§.§_-QQ§;
         _loc4_.load(_loc5_);
         §_-wB§.getItemByName("WaitingPopup").setVisibility(true);
         if(this.§_-ER§)
         {
            this.§_-D2§(_loc2_,_loc3_);
         }
      }
      
      private function §_-w6§() : Boolean
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this.§_-Xn§.data.id && this.§_-Xn§.data.password)
         {
            _loc1_ = §_-VX§.§_-r2§(this.§_-Xn§.data.id);
            _loc2_ = §_-VX§.§_-r2§(this.§_-Xn§.data.password);
            §_-wB§.setText(_loc1_,"TextField_UserNameField");
            §_-wB§.setText(_loc2_,"TextField_PasswordField");
            return true;
         }
         return false;
      }
      
      private function §_-D2§(param1:String, param2:String) : void
      {
         var _loc3_:String = §_-wB§.getText("TextField_UserNameField");
         var _loc4_:String = §_-wB§.getText("TextField_PasswordField");
         _loc3_ = §_-VX§.§_-VP§(_loc3_);
         _loc4_ = §_-VX§.§_-VP§(_loc4_);
         this.§_-Xn§.data.id = _loc3_;
         this.§_-Xn§.data.password = _loc4_;
         this.§_-Xn§.data.rememberMe = this.§_-ER§;
         this.§_-Xn§.flush();
      }
      
      private function §_-qk§(param1:HTTPStatusEvent) : void
      {
         §_-o6§.log(param1.toString());
      }
      
      private function §_-k§(param1:IOErrorEvent) : void
      {
         §_-o6§.log("IO error: " + param1.errorID);
         this.§_-qd§(§implements§.§_-r7§.CONNECTION_ERROR_RETRY);
         §_-wB§.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         §_-wB§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §_-S-§.§_-d1§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = §_-wB§.getText("TextField_UserNameField");
            §_-gJ§.§_-RR§ = new §_-4R§();
            §_-gJ§.§_-RR§.name = _loc2_.nickName;
            §_-gJ§.§_-RR§.§_-UJ§ = _loc2_.id;
            §_-gJ§.§_-RR§.§_-KO§ = _loc2_.security;
            §_-gJ§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.competition)
            {
               §_-gJ§.competition = _loc2_.competition;
            }
            §_-6B§.reloadAllScores();
            mNextState = §_-Vn§.§_-7J§;
         }
         else if(_loc2_.error)
         {
            this.§_-qd§(§implements§.§_-Yu§(_loc2_.error));
         }
      }
      
      private function §_-qd§(param1:String) : void
      {
         §_-6B§.showHelpText("Error:\n" + param1);
      }
      
      public function §_-Ik§() : void
      {
         if(this.§_-Xn§)
         {
            this.§_-Xn§.clear();
         }
      }
      
      public function §_-3e§() : void
      {
         §_-wB§.setText("","TextField_UserNameField");
         §_-wB§.setText("","TextField_PasswordField");
      }
   }
}
