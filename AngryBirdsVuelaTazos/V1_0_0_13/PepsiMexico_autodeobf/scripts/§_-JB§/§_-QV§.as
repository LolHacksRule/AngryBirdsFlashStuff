package §_-JB§
{
   import §_-1p§.§_-K9§;
   import §_-1p§.§_-uW§;
   import §_-J-§.§_-BT§;
   import §_-J-§.§_-ZG§;
   import §_-JR§.§_-yh§;
   import §_-S9§.§_-3W§;
   import §_-S9§.§_-iP§;
   import §_-S9§.§_-o2§;
   import §_-a6§.§_-ds§;
   import §_-cu§.§_-UO§;
   import §_-ex§.Base64;
   import §_-ex§.§_-mR§;
   import §_-m7§.HighscoreSidebar;
   import §_-vF§.§_-fi§;
   import flash.events.AsyncErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SyncEvent;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-QV§ extends §_-bH§
   {
      
      public static const §_-1h§:String = "LoginState";
      
      public static const §_-mM§:String = "userLoggedIn";
      
      public static var §_-pd§:Boolean = false;
       
      
      private var §_-wE§:Boolean;
      
      private var §_-XT§:SharedObject;
      
      public function §_-QV§(param1:Boolean = false, param2:String = "LoginState")
      {
         var initObject:Boolean = param1;
         var name:String = param2;
         super(initObject,name);
         try
         {
            this.§_-XT§ = SharedObject.getLocal("loginData");
            this.§_-XT§.addEventListener(NetStatusEvent.NET_STATUS,this.§_-A7§);
            this.§_-XT§.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.§_-cb§);
            this.§_-XT§.addEventListener(SyncEvent.SYNC,this.§_-V6§);
         }
         catch(e:*)
         {
         }
      }
      
      private function §_-V6§(param1:SyncEvent) : void
      {
      }
      
      private function §_-cb§(param1:AsyncErrorEvent) : void
      {
      }
      
      private function §_-A7§(param1:NetStatusEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §_-kl§ = new §_-K9§(this);
         §_-kl§.init(§_-uW§.§_-Cs§.Views.View_Login[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-yh§.§_-1o§)
         {
            §_-yh§.§_-1o§.stop();
         }
         this.§_-wE§ = false;
         var _loc1_:Boolean = this.§_-Ci§();
         if(this.§_-XT§.data.rememberMe)
         {
            this.§_-wE§ = true;
         }
         var _loc2_:§_-BT§ = §_-kl§.getItemByName("Checkbox_RememberMe") as §_-BT§;
         if(this.§_-wE§)
         {
            _loc2_.setComponentState(§_-BT§.§_-Gc§);
         }
         else
         {
            _loc2_.setComponentState(§_-BT§.§_-Oe§);
         }
         if(§_-1z§.§_-iy§ && §_-1z§.§_-rT§)
         {
            §_-kl§.setText(§_-1z§.§_-rT§,"TextField_UserNameField");
            §_-kl§.setText(§_-1z§.§_-iy§,"TextField_PasswordField");
         }
         if(§_-pd§)
         {
            this.§_-Ou§();
            this.§_-9Q§();
         }
         §_-pd§ = false;
         §_-dM§.changeState(HighscoreSidebar.§_-xo§);
         §_-dM§.hideLogos();
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
         return §_-UO§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-ZG§) : void
      {
         var _loc4_:§_-BT§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§_-jq§();
               break;
            case "REGISTER":
               mNextState = §_-1z§.§_-1h§;
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §_-kl§.getItemByName("Checkbox_RememberMe") as §_-BT§;
               this.§_-wE§ = !this.§_-wE§;
               if(this.§_-wE§)
               {
                  _loc4_.setComponentState(§_-BT§.§_-Gc§);
                  break;
               }
               _loc4_.setComponentState(§_-BT§.§_-Oe§);
               this.§_-Ou§();
               break;
            case "FORGOT_PASSWORD":
               mNextState = §_-pl§.§_-1h§;
         }
      }
      
      private function §_-jq§() : void
      {
         var _loc2_:String = §_-kl§.getText("TextField_UserNameField");
         var _loc3_:String = §_-kl§.getText("TextField_PasswordField");
         if(_loc2_.length == 0)
         {
            this.§_-44§(§_-3W§.§_-f7§.EMAIL_REQUIRED);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§_-44§(§_-3W§.§_-f7§.PASSWORD_MISSING);
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
         _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-vi§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-mT§);
         _loc5_.url = §_-2U§.§_-i1§;
         _loc4_.load(_loc5_);
         §_-kl§.getItemByName("WaitingPopup").setVisibility(true);
         if(this.§_-wE§)
         {
            this.§_-6U§(_loc2_,_loc3_);
         }
      }
      
      private function §_-Ci§() : Boolean
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this.§_-XT§.data.id && this.§_-XT§.data.password)
         {
            _loc1_ = §_-iP§.§_-BG§(this.§_-XT§.data.id);
            _loc2_ = §_-iP§.§_-BG§(this.§_-XT§.data.password);
            §_-kl§.setText(_loc1_,"TextField_UserNameField");
            §_-kl§.setText(_loc2_,"TextField_PasswordField");
            return true;
         }
         return false;
      }
      
      private function §_-6U§(param1:String, param2:String) : void
      {
         var id:String = param1;
         var password:String = param2;
         var idLocal:String = §_-kl§.getText("TextField_UserNameField");
         var passwordLocal:String = §_-kl§.getText("TextField_PasswordField");
         idLocal = §_-iP§.§_-Az§(idLocal);
         passwordLocal = §_-iP§.§_-Az§(passwordLocal);
         this.§_-XT§.data.id = idLocal;
         this.§_-XT§.data.password = passwordLocal;
         this.§_-XT§.data.rememberMe = this.§_-wE§;
         try
         {
            this.§_-XT§.flush();
         }
         catch(e:*)
         {
         }
      }
      
      private function §_-vi§(param1:HTTPStatusEvent) : void
      {
         §_-mR§.log(param1.toString());
      }
      
      private function §_-mT§(param1:IOErrorEvent) : void
      {
         §_-mR§.log("IO error: " + param1.errorID);
         this.§_-44§(§_-3W§.§_-f7§.CONNECTION_ERROR_RETRY);
         §_-kl§.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         §_-kl§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §_-o2§.§_-Yz§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = §_-kl§.getText("TextField_UserNameField");
            §_-ds§.§_-qG§ = new §_-fi§();
            §_-ds§.§_-qG§.name = _loc2_.nickName;
            §_-ds§.§_-qG§.§_-Xe§ = _loc2_.id;
            §_-ds§.§_-qG§.§_-Z6§ = _loc2_.security;
            §_-ds§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.competition)
            {
               §_-ds§.competition = _loc2_.competition;
            }
            §_-dM§.reloadAllScores();
            mNextState = §_-Sp§.§_-1h§;
         }
         else if(_loc2_.error)
         {
            this.§_-44§(§_-3W§.§_-kZ§(_loc2_.error));
         }
      }
      
      private function §_-44§(param1:String) : void
      {
         §_-dM§.showHelpText("Error:\n" + param1);
      }
      
      public function §_-Ou§() : void
      {
         if(this.§_-XT§)
         {
            this.§_-XT§.clear();
         }
      }
      
      public function §_-9Q§() : void
      {
         §_-kl§.setText("","TextField_UserNameField");
         §_-kl§.setText("","TextField_PasswordField");
      }
   }
}
