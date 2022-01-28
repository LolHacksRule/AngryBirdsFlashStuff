package §_-RV§
{
   import §_-7V§.§_-Gs§;
   import §_-7V§.§_-LB§;
   import §_-QG§.§_-t6§;
   import §_-Qn§.§_-O7§;
   import §_-Qn§.§_-bo§;
   import §_-aV§.§_-DM§;
   import §_-aV§.§_-Zu§;
   import §_-aV§.§_-mI§;
   import §_-gM§.Base64;
   import §_-gM§.§_-yj§;
   import §_-iZ§.HighscoreSidebar;
   import §_-jO§.§_-z5§;
   import §_-pm§.§_-gb§;
   import §_-s-§.§_-hQ§;
   import §_-yQ§.§_-Dv§;
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
   
   public class §_-p§ extends §_-oI§
   {
      
      public static const §_-8r§:String = "LoginState";
      
      public static const §_-0V§:String = "userLoggedIn";
      
      public static var §_-HZ§:Boolean = false;
       
      
      private var §_-WL§:Boolean;
      
      private var §_-U9§:SharedObject;
      
      public function §_-p§(param1:Boolean = false, param2:String = "LoginState")
      {
         var initObject:Boolean = param1;
         var name:String = param2;
         super(initObject,name);
         try
         {
            this.§_-U9§ = SharedObject.getLocal("loginData");
            this.§_-U9§.addEventListener(NetStatusEvent.NET_STATUS,this.§_-FX§);
            this.§_-U9§.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.§_-F8§);
            this.§_-U9§.addEventListener(SyncEvent.SYNC,this.§_-xw§);
         }
         catch(e:*)
         {
         }
      }
      
      private function §_-xw§(param1:SyncEvent) : void
      {
      }
      
      private function §_-F8§(param1:AsyncErrorEvent) : void
      {
      }
      
      private function §_-FX§(param1:NetStatusEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §_-MF§ = new §_-bo§(this);
         §_-MF§.init(§_-O7§.§_-jb§.Views.View_Login[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-gb§.§_-ls§.§_-2L§(false);
         this.§_-WL§ = false;
         var _loc1_:Boolean = this.§_-l5§();
         if(this.§_-U9§.data.rememberMe)
         {
            this.§_-WL§ = true;
         }
         var _loc2_:§_-LB§ = §_-MF§.getItemByName("Checkbox_RememberMe") as §_-LB§;
         if(this.§_-WL§)
         {
            _loc2_.setComponentState(§_-LB§.§_-z6§);
         }
         else
         {
            _loc2_.setComponentState(§_-LB§.§_-bI§);
         }
         if(§_-pU§.§_-IN§ && §_-pU§.§_-CI§)
         {
            §_-MF§.setText(§_-pU§.§_-CI§,"TextField_UserNameField");
            §_-MF§.setText(§_-pU§.§_-IN§,"TextField_PasswordField");
         }
         if(§_-HZ§)
         {
            this.§_-VE§();
            this.§_-0P§();
         }
         §_-HZ§ = false;
         §_-e0§.changeState(HighscoreSidebar.§_-qH§);
         §_-e0§.hideLogos();
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
         return §_-t6§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Gs§) : void
      {
         var _loc4_:§_-LB§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§_-ry§();
               break;
            case "REGISTER":
               mNextState = §_-pU§.§_-8r§;
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §_-MF§.getItemByName("Checkbox_RememberMe") as §_-LB§;
               this.§_-WL§ = !this.§_-WL§;
               if(this.§_-WL§)
               {
                  _loc4_.setComponentState(§_-LB§.§_-z6§);
                  break;
               }
               _loc4_.setComponentState(§_-LB§.§_-bI§);
               this.§_-VE§();
               break;
            case "FORGOT_PASSWORD":
               mNextState = §_-Ue§.§_-8r§;
         }
      }
      
      private function §_-ry§() : void
      {
         var _loc2_:String = §_-MF§.getText("TextField_UserNameField");
         var _loc3_:String = §_-MF§.getText("TextField_PasswordField");
         if(_loc2_.length == 0)
         {
            this.§_-nB§(§_-mI§.§_-ai§.EMAIL_REQUIRED);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§_-nB§(§_-mI§.§_-ai§.PASSWORD_MISSING);
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
         _loc5_.data = "json=" + Base64.encode(§_-hQ§.encode(_loc7_));
         _loc4_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-ON§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.get);
         _loc5_.url = §_-q0§.§_-Fa§;
         _loc4_.load(_loc5_);
         §_-MF§.getItemByName("WaitingPopup").setVisibility(true);
         if(this.§_-WL§)
         {
            this.§_-fl§(_loc2_,_loc3_);
         }
      }
      
      private function §_-l5§() : Boolean
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this.§_-U9§.data.id && this.§_-U9§.data.password)
         {
            _loc1_ = §_-Zu§.§_-T7§(this.§_-U9§.data.id);
            _loc2_ = §_-Zu§.§_-T7§(this.§_-U9§.data.password);
            §_-MF§.setText(_loc1_,"TextField_UserNameField");
            §_-MF§.setText(_loc2_,"TextField_PasswordField");
            return true;
         }
         return false;
      }
      
      private function §_-fl§(param1:String, param2:String) : void
      {
         var id:String = param1;
         var password:String = param2;
         var idLocal:String = §_-MF§.getText("TextField_UserNameField");
         var passwordLocal:String = §_-MF§.getText("TextField_PasswordField");
         idLocal = §_-Zu§.§_-98§(idLocal);
         passwordLocal = §_-Zu§.§_-98§(passwordLocal);
         this.§_-U9§.data.id = idLocal;
         this.§_-U9§.data.password = passwordLocal;
         this.§_-U9§.data.rememberMe = this.§_-WL§;
         try
         {
            this.§_-U9§.flush();
         }
         catch(e:*)
         {
         }
      }
      
      private function §_-ON§(param1:HTTPStatusEvent) : void
      {
         §_-yj§.log(param1.toString());
      }
      
      private function get(param1:IOErrorEvent) : void
      {
         §_-yj§.log("IO error: " + param1.errorID);
         this.§_-nB§(§_-mI§.§_-ai§.CONNECTION_ERROR_RETRY);
         §_-MF§.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         §_-MF§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §_-DM§.§_-KR§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = §_-MF§.getText("TextField_UserNameField");
            §_-z5§.§_-z2§ = new §_-Dv§();
            §_-z5§.§_-z2§.name = _loc2_.nickName;
            §_-z5§.§_-z2§.§_-U§ = _loc2_.id;
            §_-z5§.§_-z2§.§_-VF§ = _loc2_.security;
            §_-z5§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.competition)
            {
               §_-z5§.competition = _loc2_.competition;
            }
            §_-e0§.reloadAllScores();
            mNextState = §_-V9§.§_-8r§;
         }
         else if(_loc2_.error)
         {
            this.§_-nB§(§_-mI§.§_-xF§(_loc2_.error));
         }
      }
      
      private function §_-nB§(param1:String) : void
      {
         §_-e0§.showHelpText("Error:\n" + param1);
      }
      
      public function §_-VE§() : void
      {
         if(this.§_-U9§)
         {
            this.§_-U9§.clear();
         }
      }
      
      public function §_-0P§() : void
      {
         §_-MF§.setText("","TextField_UserNameField");
         §_-MF§.setText("","TextField_PasswordField");
      }
   }
}
