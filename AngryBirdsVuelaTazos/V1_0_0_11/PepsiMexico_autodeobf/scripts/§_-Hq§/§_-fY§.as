package §_-Hq§
{
   import §_-IV§.§_-5e§;
   import §_-QM§.§_-GC§;
   import §_-QM§.§_-Ns§;
   import §_-TE§.§_-PN§;
   import §_-ZG§.Base64;
   import §_-ZG§.§_-Ne§;
   import §_-bA§.§_-U7§;
   import §_-bA§.§_-Xe§;
   import §_-bA§.§_-jq§;
   import §_-d5§.§_-6Y§;
   import §_-ic§.HighscoreSidebar;
   import §_-nE§.§_-Vr§;
   import §_-xN§.§_-WL§;
   import §_-xN§.§_-pB§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-fY§ extends §_-UR§
   {
      
      public static const §_-dh§:String = "LoginState";
      
      public static const §_-02§:String = "userLoggedIn";
      
      public static var §_-E7§:Boolean = false;
       
      
      private var §_-dd§:Boolean;
      
      private var §_-KS§:SharedObject;
      
      public function §_-fY§(param1:Boolean = false, param2:String = "LoginState")
      {
         super(param1,param2);
         this.§_-KS§ = SharedObject.getLocal("loginData");
      }
      
      override public function init() : void
      {
         super.init();
         §_-qE§ = new §_-Ns§(this);
         §_-qE§.init(§_-GC§.§_-jz§.Views.View_Login[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-6Y§.§true§)
         {
            §_-6Y§.§true§.stop();
         }
         this.§_-dd§ = false;
         var _loc1_:Boolean = this.§_-bZ§();
         if(this.§_-KS§.data.rememberMe)
         {
            this.§_-dd§ = true;
         }
         var _loc2_:§_-WL§ = §_-qE§.getItemByName("Checkbox_RememberMe") as §_-WL§;
         if(this.§_-dd§)
         {
            _loc2_.setComponentState(§_-WL§.§_-1M§);
         }
         else
         {
            _loc2_.setComponentState(§_-WL§.§_-t0§);
         }
         if(§_-jI§.§_-50§ && §_-jI§.§_-Cu§)
         {
            §_-qE§.setText(§_-jI§.§_-Cu§,"TextField_UserNameField");
            §_-qE§.setText(§_-jI§.§_-50§,"TextField_PasswordField");
         }
         if(§_-E7§)
         {
            this.§_-ps§();
            this.§_-38§();
         }
         §_-E7§ = false;
         §_-03§.changeState(HighscoreSidebar.set);
         §_-03§.hideLogos();
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
         return §_-PN§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-pB§) : void
      {
         var _loc4_:§_-WL§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§_-91§();
               break;
            case "REGISTER":
               mNextState = §_-jI§.§_-dh§;
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §_-qE§.getItemByName("Checkbox_RememberMe") as §_-WL§;
               this.§_-dd§ = !this.§_-dd§;
               if(this.§_-dd§)
               {
                  _loc4_.setComponentState(§_-WL§.§_-1M§);
                  break;
               }
               _loc4_.setComponentState(§_-WL§.§_-t0§);
               this.§_-ps§();
               break;
            case "FORGOT_PASSWORD":
               mNextState = §_-aN§.§_-dh§;
         }
      }
      
      private function §_-91§() : void
      {
         var _loc2_:String = §_-qE§.getText("TextField_UserNameField");
         var _loc3_:String = §_-qE§.getText("TextField_PasswordField");
         if(_loc2_.length == 0)
         {
            this.§_-Gk§(§_-Xe§.§_-d0§.EMAIL_REQUIRED);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§_-Gk§(§_-Xe§.§_-d0§.PASSWORD_MISSING);
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
         _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-3r§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-uV§);
         _loc5_.url = §_-I8§.§_-vQ§;
         _loc4_.load(_loc5_);
         §_-qE§.getItemByName("WaitingPopup").setVisibility(true);
         if(this.§_-dd§)
         {
            this.§_-9§(_loc2_,_loc3_);
         }
      }
      
      private function §_-bZ§() : Boolean
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this.§_-KS§.data.id && this.§_-KS§.data.password)
         {
            _loc1_ = §_-jq§.§_-hA§(this.§_-KS§.data.id);
            _loc2_ = §_-jq§.§_-hA§(this.§_-KS§.data.password);
            §_-qE§.setText(_loc1_,"TextField_UserNameField");
            §_-qE§.setText(_loc2_,"TextField_PasswordField");
            return true;
         }
         return false;
      }
      
      private function §_-9§(param1:String, param2:String) : void
      {
         var _loc3_:String = §_-qE§.getText("TextField_UserNameField");
         var _loc4_:String = §_-qE§.getText("TextField_PasswordField");
         _loc3_ = §_-jq§.§_-cR§(_loc3_);
         _loc4_ = §_-jq§.§_-cR§(_loc4_);
         this.§_-KS§.data.id = _loc3_;
         this.§_-KS§.data.password = _loc4_;
         this.§_-KS§.data.rememberMe = this.§_-dd§;
         this.§_-KS§.flush();
      }
      
      private function §_-3r§(param1:HTTPStatusEvent) : void
      {
         §_-Ne§.log(param1.toString());
      }
      
      private function §_-uV§(param1:IOErrorEvent) : void
      {
         §_-Ne§.log("IO error: " + param1.errorID);
         this.§_-Gk§(§_-Xe§.§_-d0§.CONNECTION_ERROR_RETRY);
         §_-qE§.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         §_-qE§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §_-U7§.§_-qY§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = §_-qE§.getText("TextField_UserNameField");
            §_-5e§.§_-bb§ = new §_-Vr§();
            §_-5e§.§_-bb§.name = _loc2_.nickName;
            §_-5e§.§_-bb§.§_-sc§ = _loc2_.id;
            §_-5e§.§_-bb§.§_-dw§ = _loc2_.security;
            §_-5e§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.competition)
            {
               §_-5e§.competition = _loc2_.competition;
            }
            §_-03§.reloadAllScores();
            mNextState = §_-fR§.§_-dh§;
         }
         else if(_loc2_.error)
         {
            this.§_-Gk§(§_-Xe§.§_-sv§(_loc2_.error));
         }
      }
      
      private function §_-Gk§(param1:String) : void
      {
         §_-03§.showHelpText("Error:\n" + param1);
      }
      
      public function §_-ps§() : void
      {
         if(this.§_-KS§)
         {
            this.§_-KS§.clear();
         }
      }
      
      public function §_-38§() : void
      {
         §_-qE§.setText("","TextField_UserNameField");
         §_-qE§.setText("","TextField_PasswordField");
      }
   }
}
