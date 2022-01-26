package §_-L5§
{
   import §_-8J§.§_-1T§;
   import §_-8J§.§_-8s§;
   import §_-IC§.§_-Uw§;
   import §_-NW§.§_-XZ§;
   import §_-RG§.Base64;
   import §_-RG§.§_-HT§;
   import §_-TQ§.HighscoreSidebar;
   import §_-Ys§.§_-TM§;
   import §_-Ys§.§_-o-§;
   import §_-rR§.§_-7q§;
   import §_-uG§.§_-JZ§;
   import §_-uG§.§_-bV§;
   import §_-uG§.§_-vK§;
   import §_-v3§.§_-G3§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-pb§ extends §_-1Y§
   {
      
      public static const §_-Mi§:String = "LoginState";
      
      public static const §_-ft§:String = "userLoggedIn";
      
      public static var §_-Pn§:Boolean = false;
       
      
      private var §_-v5§:Boolean;
      
      private var §_-cb§:SharedObject;
      
      public function §_-pb§(param1:Boolean = false, param2:String = "LoginState")
      {
         super(param1,param2);
         this.§_-cb§ = SharedObject.getLocal("loginData");
      }
      
      override public function init() : void
      {
         super.init();
         §_-Bv§ = new §_-8s§(this);
         §_-Bv§.init(§_-1T§.§_-3G§.Views.View_Login[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-G3§.§_-9S§)
         {
            §_-G3§.§_-9S§.stop();
         }
         this.§_-v5§ = false;
         var _loc1_:Boolean = this.§_-qN§();
         if(this.§_-cb§.data.rememberMe)
         {
            this.§_-v5§ = true;
         }
         var _loc2_:§_-TM§ = §_-Bv§.getItemByName("Checkbox_RememberMe") as §_-TM§;
         if(this.§_-v5§)
         {
            _loc2_.setComponentState(§_-TM§.§_-Y2§);
         }
         else
         {
            _loc2_.setComponentState(§_-TM§.§_-vF§);
         }
         if(§_-8U§.§_-VL§ && §_-8U§.§_-tv§)
         {
            §_-Bv§.setText(§_-8U§.§_-tv§,"TextField_UserNameField");
            §_-Bv§.setText(§_-8U§.§_-VL§,"TextField_PasswordField");
         }
         if(§_-Pn§)
         {
            this.§_-td§();
            this.§_-F1§();
         }
         §_-Pn§ = false;
         §_-1B§.changeState(HighscoreSidebar.§_-bZ§);
         §_-1B§.hideLogos();
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
         return §_-Uw§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-o-§) : void
      {
         var _loc4_:§_-TM§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§_-mx§();
               break;
            case "REGISTER":
               mNextState = §_-8U§.§_-Mi§;
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §_-Bv§.getItemByName("Checkbox_RememberMe") as §_-TM§;
               this.§_-v5§ = !this.§_-v5§;
               if(this.§_-v5§)
               {
                  _loc4_.setComponentState(§_-TM§.§_-Y2§);
                  break;
               }
               _loc4_.setComponentState(§_-TM§.§_-vF§);
               this.§_-td§();
               break;
            case "FORGOT_PASSWORD":
               mNextState = §_-0G§.§_-Mi§;
         }
      }
      
      private function §_-mx§() : void
      {
         var _loc2_:String = §_-Bv§.getText("TextField_UserNameField");
         var _loc3_:String = §_-Bv§.getText("TextField_PasswordField");
         if(_loc2_.length == 0)
         {
            this.§_-68§(§_-JZ§.§_-vE§.EMAIL_REQUIRED);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§_-68§(§_-JZ§.§_-vE§.PASSWORD_MISSING);
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
         _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§true§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-On§);
         _loc5_.url = §_-0Y§.§_-YA§;
         _loc4_.load(_loc5_);
         §_-Bv§.getItemByName("WaitingPopup").setVisibility(true);
         if(this.§_-v5§)
         {
            this.§_-iC§(_loc2_,_loc3_);
         }
      }
      
      private function §_-qN§() : Boolean
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this.§_-cb§.data.id && this.§_-cb§.data.password)
         {
            _loc1_ = §_-bV§.§_-on§(this.§_-cb§.data.id);
            _loc2_ = §_-bV§.§_-on§(this.§_-cb§.data.password);
            §_-Bv§.setText(_loc1_,"TextField_UserNameField");
            §_-Bv§.setText(_loc2_,"TextField_PasswordField");
            return true;
         }
         return false;
      }
      
      private function §_-iC§(param1:String, param2:String) : void
      {
         var _loc3_:String = §_-Bv§.getText("TextField_UserNameField");
         var _loc4_:String = §_-Bv§.getText("TextField_PasswordField");
         _loc3_ = §_-bV§.§_-Vv§(_loc3_);
         _loc4_ = §_-bV§.§_-Vv§(_loc4_);
         this.§_-cb§.data.id = _loc3_;
         this.§_-cb§.data.password = _loc4_;
         this.§_-cb§.data.rememberMe = this.§_-v5§;
         this.§_-cb§.flush();
      }
      
      private function §true§(param1:HTTPStatusEvent) : void
      {
         §_-HT§.log(param1.toString());
      }
      
      private function §_-On§(param1:IOErrorEvent) : void
      {
         §_-HT§.log("IO error: " + param1.errorID);
         this.§_-68§(§_-JZ§.§_-vE§.CONNECTION_ERROR_RETRY);
         §_-Bv§.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         §_-Bv§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §_-vK§.§_-Jv§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = §_-Bv§.getText("TextField_UserNameField");
            §_-7q§.§_-ek§ = new §_-XZ§();
            §_-7q§.§_-ek§.name = _loc2_.nickName;
            §_-7q§.§_-ek§.§_-iI§ = _loc2_.id;
            §_-7q§.§_-ek§.§_-70§ = _loc2_.security;
            §_-7q§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.competition)
            {
               §_-7q§.competition = _loc2_.competition;
            }
            §_-1B§.reloadAllScores();
            mNextState = §_-Tm§.§_-Mi§;
         }
         else if(_loc2_.error)
         {
            this.§_-68§(§_-JZ§.§_-pz§(_loc2_.error));
         }
      }
      
      private function §_-68§(param1:String) : void
      {
         §_-1B§.showHelpText("Error:\n" + param1);
      }
      
      public function §_-td§() : void
      {
         if(this.§_-cb§)
         {
            this.§_-cb§.clear();
         }
      }
      
      public function §_-F1§() : void
      {
         §_-Bv§.setText("","TextField_UserNameField");
         §_-Bv§.setText("","TextField_PasswordField");
      }
   }
}
