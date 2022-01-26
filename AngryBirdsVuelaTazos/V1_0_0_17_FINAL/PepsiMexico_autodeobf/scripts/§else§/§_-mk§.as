package §else§
{
   import §_-6r§.§_-7P§;
   import §_-6r§.§_-h3§;
   import §_-PD§.HighscoreSidebar;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-W0§.§_-MC§;
   import §_-ZI§.§_-9v§;
   import §_-e3§.Base64;
   import §_-e3§.§_-54§;
   import §_-hU§.§_-MB§;
   import §_-hq§.§_-AD§;
   import §_-y7§.§_-VA§;
   import §_-zL§.§_-5B§;
   import §_-zL§.§_-Rv§;
   import §_-zL§.§_-Zq§;
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
   
   public class §_-mk§ extends §_-iL§
   {
      
      public static const §_-Az§:String = "LoginState";
      
      public static const §_-0§:String = "userLoggedIn";
      
      public static var §_-zl§:Boolean = false;
       
      
      private var §_-GS§:Boolean;
      
      private var §_-Jp§:SharedObject;
      
      public function §_-mk§(param1:Boolean = false, param2:String = "LoginState")
      {
         var initObject:Boolean = param1;
         var name:String = param2;
         super(initObject,name);
         try
         {
            this.§_-Jp§ = SharedObject.getLocal("loginData");
            this.§_-Jp§.addEventListener(NetStatusEvent.NET_STATUS,this.§_-nz§);
            this.§_-Jp§.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.§_-wY§);
            this.§_-Jp§.addEventListener(SyncEvent.SYNC,this.§_-AY§);
         }
         catch(e:*)
         {
         }
      }
      
      private function §_-AY§(param1:SyncEvent) : void
      {
      }
      
      private function §_-wY§(param1:AsyncErrorEvent) : void
      {
      }
      
      private function §_-nz§(param1:NetStatusEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §_-NY§ = new §_-ru§(this);
         §_-NY§.init(§_-BN§.native.Views.View_Login[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-MB§.§_-A7§.§_-Gf§(false);
         this.§_-GS§ = false;
         var _loc1_:Boolean = this.§_-oW§();
         if(this.§_-Jp§.data.rememberMe)
         {
            this.§_-GS§ = true;
         }
         var _loc2_:§_-h3§ = §_-NY§.getItemByName("Checkbox_RememberMe") as §_-h3§;
         if(this.§_-GS§)
         {
            _loc2_.setComponentState(§_-h3§.§_-1M§);
         }
         else
         {
            _loc2_.setComponentState(§_-h3§.§_-sp§);
         }
         if(§_-z0§.§_-UZ§ && §_-z0§.§_-RA§)
         {
            §_-NY§.setText(§_-z0§.§_-RA§,"TextField_UserNameField");
            §_-NY§.setText(§_-z0§.§_-UZ§,"TextField_PasswordField");
         }
         if(§_-zl§)
         {
            this.§_-j7§();
            this.§_-W9§();
         }
         §_-zl§ = false;
         §_-1S§.changeState(HighscoreSidebar.§_-x1§);
         §_-1S§.hideLogos();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-VA§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-VA§.STATE_STATUS_COMPLETED;
         }
         return §_-VA§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc4_:§_-h3§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§_-kS§();
               break;
            case "REGISTER":
               mNextState = §_-z0§.§_-Az§;
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §_-NY§.getItemByName("Checkbox_RememberMe") as §_-h3§;
               this.§_-GS§ = !this.§_-GS§;
               if(this.§_-GS§)
               {
                  _loc4_.setComponentState(§_-h3§.§_-1M§);
                  break;
               }
               _loc4_.setComponentState(§_-h3§.§_-sp§);
               this.§_-j7§();
               break;
            case "FORGOT_PASSWORD":
               mNextState = §_-PC§.§_-Az§;
         }
      }
      
      private function §_-kS§() : void
      {
         var _loc2_:String = §_-NY§.getText("TextField_UserNameField");
         var _loc3_:String = §_-NY§.getText("TextField_PasswordField");
         if(_loc2_.length == 0)
         {
            this.§_-4j§(§_-5B§.§_-X8§.EMAIL_REQUIRED);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§_-4j§(§_-5B§.§_-X8§.PASSWORD_MISSING);
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
         _loc5_.data = "json=" + Base64.encode(§_-AD§.encode(_loc7_));
         _loc4_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-wL§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
         _loc5_.url = §_-Qu§.§_-BK§;
         _loc4_.load(_loc5_);
         §_-NY§.getItemByName("WaitingPopup").setVisibility(true);
         if(this.§_-GS§)
         {
            this.§_-Y4§(_loc2_,_loc3_);
         }
      }
      
      private function §_-oW§() : Boolean
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this.§_-Jp§.data.id && this.§_-Jp§.data.password)
         {
            _loc1_ = §_-Zq§.§_-Eu§(this.§_-Jp§.data.id);
            _loc2_ = §_-Zq§.§_-Eu§(this.§_-Jp§.data.password);
            §_-NY§.setText(_loc1_,"TextField_UserNameField");
            §_-NY§.setText(_loc2_,"TextField_PasswordField");
            return true;
         }
         return false;
      }
      
      private function §_-Y4§(param1:String, param2:String) : void
      {
         var id:String = param1;
         var password:String = param2;
         var idLocal:String = §_-NY§.getText("TextField_UserNameField");
         var passwordLocal:String = §_-NY§.getText("TextField_PasswordField");
         idLocal = §_-Zq§.§_-L6§(idLocal);
         passwordLocal = §_-Zq§.§_-L6§(passwordLocal);
         this.§_-Jp§.data.id = idLocal;
         this.§_-Jp§.data.password = passwordLocal;
         this.§_-Jp§.data.rememberMe = this.§_-GS§;
         try
         {
            this.§_-Jp§.flush();
         }
         catch(e:*)
         {
         }
      }
      
      private function §_-wL§(param1:HTTPStatusEvent) : void
      {
         §_-54§.log(param1.toString());
      }
      
      private function §_-qT§(param1:IOErrorEvent) : void
      {
         §_-54§.log("IO error: " + param1.errorID);
         this.§_-4j§(§_-5B§.§_-X8§.CONNECTION_ERROR_RETRY);
         §_-NY§.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         §_-NY§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §_-Rv§.§_-3a§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.error)
         {
            _loc3_ = §_-NY§.getText("TextField_UserNameField");
            §_-MC§.§_-9H§ = new §_-9v§();
            §_-MC§.§_-9H§.name = _loc2_.nickName;
            §_-MC§.§_-9H§.§_-Yv§ = _loc2_.id;
            §_-MC§.§_-9H§.§_-le§ = _loc2_.security;
            §_-MC§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.competition)
            {
               §_-MC§.competition = _loc2_.competition;
            }
            §_-1S§.reloadAllScores();
            mNextState = §_-pX§.§_-Az§;
         }
         else if(_loc2_.a)
         {
            this.§_-4j§(§_-5B§.§_-rm§(_loc2_.error));
         }
      }
      
      private function §_-4j§(param1:String) : void
      {
         §_-1S§.showHelpText("Error:\n" + param1);
      }
      
      public function §_-j7§() : void
      {
         if(this.§_-Jp§)
         {
            this.§_-Jp§.clear();
         }
      }
      
      public function §_-W9§() : void
      {
         §_-NY§.setText("","TextField_UserNameField");
         §_-NY§.setText("","TextField_PasswordField");
      }
   }
}
