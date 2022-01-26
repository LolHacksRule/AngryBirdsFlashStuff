package §_-8§
{
   import §_-2z§.§_-rz§;
   import §_-5a§.§_-Gn§;
   import §_-9C§.§_-6M§;
   import §_-9C§.§_-6O§;
   import §_-9C§.§_-e0§;
   import §_-Eo§.Base64;
   import §_-Eo§.§_-R4§;
   import §_-Jx§.§_-Ao§;
   import §_-Jx§.§_-Tc§;
   import §_-Kn§.HighscoreSidebar;
   import §_-M0§.§_-u4§;
   import §_-Xk§.§_-o5§;
   import §_-Yh§.§_-BS§;
   import §_-Yh§.§_-fA§;
   import §_-qT§.§_-O5§;
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
   
   public class §_-D§ extends §_-1f§
   {
      
      public static const §_-7m§:String = "LoginState";
      
      public static const §_-P6§:String = "userLoggedIn";
      
      public static var §_-x8§:Boolean = false;
       
      
      private var §_-fx§:Boolean;
      
      private var §_-Nn§:SharedObject;
      
      public function §_-D§(param1:Boolean = false, param2:String = "LoginState")
      {
         var initObject:Boolean = param1;
         var name:String = param2;
         super(initObject,name);
         try
         {
            this.§_-Nn§ = SharedObject.getLocal("loginData");
            this.§_-Nn§.addEventListener(NetStatusEvent.NET_STATUS,this.§_-BB§);
            this.§_-Nn§.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.§_-sb§);
            this.§_-Nn§.addEventListener(SyncEvent.SYNC,this.§_-tL§);
         }
         catch(e:*)
         {
         }
      }
      
      private function §_-tL§(param1:SyncEvent) : void
      {
      }
      
      private function §_-sb§(param1:AsyncErrorEvent) : void
      {
      }
      
      private function §_-BB§(param1:NetStatusEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §_-Ih§ = new §_-fA§(this);
         §_-Ih§.init(§_-BS§.§_-tc§.Views.View_Login[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-u4§.§_-40§.§_-AB§(false);
         this.§_-fx§ = false;
         var _loc1_:Boolean = this.§_-cH§();
         if(this.§_-Nn§.data.rememberMe)
         {
            this.§_-fx§ = true;
         }
         var _loc2_:§_-Tc§ = §_-Ih§.getItemByName("Checkbox_RememberMe") as §_-Tc§;
         if(this.§_-fx§)
         {
            _loc2_.setComponentState(§_-Tc§.§_-WJ§);
         }
         else
         {
            _loc2_.setComponentState(§_-Tc§.§_-SQ§);
         }
         if(§_-t1§.§_-S6§ && §_-t1§.§_-iM§)
         {
            §_-Ih§.setText(§_-t1§.§_-iM§,"TextField_UserNameField");
            §_-Ih§.setText(§_-t1§.§_-S6§,"TextField_PasswordField");
         }
         if(§_-x8§)
         {
            this.§_-Jv§();
            this.§_-eA§();
         }
         §_-x8§ = false;
         §_-5D§.changeState(HighscoreSidebar.§_-D4§);
         §_-5D§.hideLogos();
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
         return §_-O5§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Ao§) : void
      {
         var _loc4_:§_-Tc§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§ for§();
               break;
            case "REGISTER":
               mNextState = §_-t1§.§_-7m§;
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §_-Ih§.getItemByName("Checkbox_RememberMe") as §_-Tc§;
               this.§_-fx§ = !this.§_-fx§;
               if(this.§_-fx§)
               {
                  _loc4_.setComponentState(§_-Tc§.§_-WJ§);
                  break;
               }
               _loc4_.setComponentState(§_-Tc§.§_-SQ§);
               this.§_-Jv§();
               break;
            case "FORGOT_PASSWORD":
               mNextState = §_-3Z§.§_-7m§;
         }
      }
      
      private function § for§() : void
      {
         var _loc2_:String = §_-Ih§.getText("TextField_UserNameField");
         var _loc3_:String = §_-Ih§.getText("TextField_PasswordField");
         if(_loc2_.length == 0)
         {
            this.§_-UU§(§_-6M§.§_-bX§.EMAIL_REQUIRED);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§_-UU§(§_-6M§.§_-bX§.PASSWORD_MISSING);
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
         _loc5_.data = "json=" + Base64.encode(§_-rz§.encode(_loc7_));
         _loc4_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-t-§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-U7§);
         _loc5_.url = §_-Tj§.§_-4w§;
         _loc4_.load(_loc5_);
         §_-Ih§.getItemByName("WaitingPopup").setVisibility(true);
         if(this.§_-fx§)
         {
            this.§_-A4§(_loc2_,_loc3_);
         }
      }
      
      private function §_-cH§() : Boolean
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this.§_-Nn§.data.id && this.§_-Nn§.data.password)
         {
            _loc1_ = §_-e0§.§_-fd§(this.§_-Nn§.data.id);
            _loc2_ = §_-e0§.§_-fd§(this.§_-Nn§.data.password);
            §_-Ih§.setText(_loc1_,"TextField_UserNameField");
            §_-Ih§.setText(_loc2_,"TextField_PasswordField");
            return true;
         }
         return false;
      }
      
      private function §_-A4§(param1:String, param2:String) : void
      {
         var id:String = param1;
         var password:String = param2;
         var idLocal:String = §_-Ih§.getText("TextField_UserNameField");
         var passwordLocal:String = §_-Ih§.getText("TextField_PasswordField");
         idLocal = §_-e0§.§_-iZ§(idLocal);
         passwordLocal = §_-e0§.§_-iZ§(passwordLocal);
         this.§_-Nn§.data.id = idLocal;
         this.§_-Nn§.data.password = passwordLocal;
         this.§_-Nn§.data.rememberMe = this.§_-fx§;
         try
         {
            this.§_-Nn§.flush();
         }
         catch(e:*)
         {
         }
      }
      
      private function §_-t-§(param1:HTTPStatusEvent) : void
      {
         §_-R4§.log(param1.toString());
      }
      
      private function §_-U7§(param1:IOErrorEvent) : void
      {
         §_-R4§.log("IO error: " + param1.errorID);
         this.§_-UU§(§_-6M§.§_-bX§.CONNECTION_ERROR_RETRY);
         §_-Ih§.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         §_-Ih§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §_-6O§.§_-Mi§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = §_-Ih§.getText("TextField_UserNameField");
            §_-Gn§.§_-Yd§ = new §_-o5§();
            §_-Gn§.§_-Yd§.name = _loc2_.nickName;
            §_-Gn§.§_-Yd§.§_-P0§ = _loc2_.id;
            §_-Gn§.§_-Yd§.§_-za§ = _loc2_.security;
            §_-Gn§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.competition)
            {
               §_-Gn§.competition = _loc2_.competition;
            }
            §_-5D§.reloadAllScores();
            mNextState = §_-VD§.§_-7m§;
         }
         else if(_loc2_.error)
         {
            this.§_-UU§(§_-6M§.§_-lc§(_loc2_.error));
         }
      }
      
      private function §_-UU§(param1:String) : void
      {
         §_-5D§.showHelpText("Error:\n" + param1);
      }
      
      public function §_-Jv§() : void
      {
         if(this.§_-Nn§)
         {
            this.§_-Nn§.clear();
         }
      }
      
      public function §_-eA§() : void
      {
         §_-Ih§.setText("","TextField_UserNameField");
         §_-Ih§.setText("","TextField_PasswordField");
      }
   }
}
