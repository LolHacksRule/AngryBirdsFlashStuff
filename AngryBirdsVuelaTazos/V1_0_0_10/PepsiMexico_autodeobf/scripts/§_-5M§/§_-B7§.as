package §_-5M§
{
   import §_-2t§.§_-S-§;
   import §_-2t§.§implements§;
   import §_-B2§.§_-H4§;
   import §_-E-§.§_-Fy§;
   import §_-E-§.§_-mm§;
   import §_-HJ§.§_-cL§;
   import §_-Je§.§_-RH§;
   import §_-LL§.HighscoreSidebar;
   import §_-PK§.§_-Jb§;
   import §_-PK§.§_-ds§;
   import §_-Ux§.§_-2E§;
   import §_-Ux§.§_-wl§;
   import §_-ot§.Base64;
   import §_-ot§.§_-o6§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-B7§ extends §_-7C§
   {
      
      public static const §_-7J§:String = "RegisterState";
      
      public static var §_-my§:String;
      
      public static var §_-cU§:String;
      
      private static var §_-aG§:String;
      
      private static var §_-LV§:String;
       
      
      private var §_-0J§:String = "";
      
      private var §_-bl§:Boolean = false;
      
      private var §_-oF§:§_-Fy§;
      
      private var §_-l§:§_-Fy§;
      
      public function §_-B7§(param1:Boolean = false, param2:String = "RegisterState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-wB§ = new §_-2E§(this);
         §_-wB§.init(§_-wl§.§_-rp§.Views.View_Register[0]);
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
      
      override public function activate() : void
      {
         super.activate();
         if(§_-H4§.§_-I9§)
         {
            §_-H4§.§_-I9§.stop();
         }
         this.§_-oF§ = §_-wB§.getItemByName("Button_Male") as §_-Fy§;
         this.§_-l§ = §_-wB§.getItemByName("Button_Female") as §_-Fy§;
         this.§_-oF§.setComponentState(§_-ds§.§_-Wl§);
         this.§_-l§.setComponentState(§_-ds§.§_-Wl§);
         var _loc1_:§_-ds§ = §_-wB§.getItemByName("Checkbox_Marketing") as §_-ds§;
         _loc1_.setComponentState(§_-ds§.§_-Wl§);
         this.§_-bl§ = false;
         var _loc4_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         var _loc5_:§_-mm§ = §_-wB§.getItemByName("TextField_UserNameField") as §_-mm§;
         var _loc6_:§_-mm§ = §_-wB§.getItemByName("TextField_PasswordField") as §_-mm§;
         var _loc7_:§_-mm§ = §_-wB§.getItemByName("TextField_PasswordFieldRepeat") as §_-mm§;
         _loc5_.§_-3U§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         _loc7_.§_-3U§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         _loc6_.§_-3U§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         var _loc8_:§_-mm§;
         (_loc8_ = §_-wB§.getItemByName("TextField_EmailField") as §_-mm§).§_-3U§.restrict = "a-z     0-9  \'\\-_@.";
         var _loc9_:§_-mm§;
         (_loc9_ = §_-wB§.getItemByName("TextField_AgeField") as §_-mm§).§_-3U§.restrict = "0-9";
         var _loc10_:§_-mm§;
         (_loc10_ = §_-wB§.getItemByName("TextField_FullNameField") as §_-mm§).§_-3U§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         var _loc11_:§_-mm§;
         (_loc11_ = §_-wB§.getItemByName("TextField_ZipCodeField") as §_-mm§).§_-3U§.restrict = "0-9";
         §_-wB§.setText("","TextField_UserNameField");
         §_-wB§.setText("","TextField_PasswordField");
         §_-wB§.setText("","TextField_PasswordFieldRepeat");
         §_-wB§.setText("","TextField_EmailField");
         §_-wB§.setText("","TextField_AgeField");
         §_-wB§.setText("","TextField_FullNameField");
         §_-wB§.setText("","TextField_ZipCodeField");
         §_-6B§.changeState(HighscoreSidebar.§_-vX§);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Jb§) : void
      {
         var _loc4_:§_-ds§ = null;
         switch(param2)
         {
            case "MALE":
               this.§_-oF§.setComponentState(§_-ds§.§_-IX§);
               this.§_-l§.setComponentState(§_-ds§.§_-Wl§);
               this.§_-0J§ = "m";
               break;
            case "FEMALE":
               this.§_-oF§.setComponentState(§_-ds§.§_-Wl§);
               this.§_-l§.setComponentState(§_-ds§.§_-IX§);
               this.§_-0J§ = "f";
               break;
            case "CANCEL":
               mNextState = §_-Hq§.§_-7J§;
               break;
            case "SUBMIT":
               this.§_-dW§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §_-wB§.getItemByName("Checkbox_Marketing") as §_-ds§;
               this.§_-bl§ = !this.§_-bl§;
               if(this.§_-bl§)
               {
                  _loc4_.setComponentState(§_-ds§.§_-IX§);
                  break;
               }
               _loc4_.setComponentState(§_-ds§.§_-Wl§);
               break;
         }
      }
      
      private function §_-dW§() : void
      {
         this.§_-qd§("");
         var _loc2_:String = §_-wB§.getText("TextField_UserNameField");
         var _loc3_:String = §_-wB§.getText("TextField_PasswordField");
         var _loc4_:String = §_-wB§.getText("TextField_PasswordFieldRepeat");
         var _loc5_:String = §_-wB§.getText("TextField_EmailField");
         var _loc6_:String = §_-wB§.getText("TextField_AgeField");
         var _loc7_:String = §_-wB§.getText("TextField_FullNameField");
         var _loc8_:String = §_-wB§.getText("TextField_ZipCodeField");
         var _loc9_:String = this.§_-0J§;
         var _loc10_:Boolean = this.§_-bl§;
         §_-aG§ = _loc5_;
         §_-LV§ = _loc3_;
         if(_loc2_.length < 5)
         {
            this.§_-qd§(§implements§.§_-r7§.NICKNAME_LENGTH);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§_-qd§(§implements§.§_-r7§.PASSWORD_LENGTH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§_-qd§(§implements§.§_-r7§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc13_:RegExp;
         if(!(_loc13_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§_-qd§(§implements§.§_-r7§.EMAIL_LOWERCASE);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§_-qd§(§implements§.§_-r7§.EMAIL_REQUIRED);
            return;
         }
         if(_loc6_.length < 1)
         {
            this.§_-qd§(§implements§.§_-r7§.AGE_REQUIRED);
            return;
         }
         var _loc14_:int;
         if((_loc14_ = int(_loc6_)) < 13)
         {
            this.§_-qd§(§implements§.§_-r7§.AGE_UNDER_13);
            return;
         }
         var _loc15_:URLLoader = new URLLoader();
         var _loc16_:URLRequest;
         (_loc16_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc15_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc17_:Object;
         (_loc17_ = {}).nickName = _loc2_;
         _loc17_.password = _loc3_;
         _loc17_.id = _loc5_;
         _loc17_.age = int(_loc6_);
         _loc17_.marketing = _loc10_;
         if(_loc7_.length > 0)
         {
            _loc17_.name = _loc7_;
         }
         if(_loc8_.length > 0)
         {
            _loc17_.zipcode = _loc8_;
         }
         if(_loc9_.length > 0)
         {
            _loc17_.gender = _loc9_;
         }
         var _loc18_:Object = {
            "type":"registerPlayer",
            "player":_loc17_
         };
         _loc16_.data = "json=" + Base64.encode(JSON.stringify(_loc18_));
         _loc15_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc15_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-qk§);
         _loc15_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-k§);
         _loc16_.url = §_-5e§.§_-QQ§;
         _loc15_.load(_loc16_);
         §_-wB§.getItemByName("WaitingPopup").setVisibility(true);
      }
      
      private function §_-qk§(param1:HTTPStatusEvent) : void
      {
         §_-o6§.log(param1.toString());
      }
      
      private function §_-k§(param1:IOErrorEvent) : void
      {
         §_-o6§.log("IO error: " + param1.errorID);
         §_-LV§ = null;
         §_-aG§ = null;
         §_-wB§.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-wB§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §_-S-§.§_-d1§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = §_-wB§.getText("TextField_UserNameField");
            §_-my§ = §_-aG§;
            §_-cU§ = §_-LV§;
            mNextState = §_-Hq§.§_-7J§;
            §_-cL§.§_-JT§(§_-cL§.§_-PA§);
         }
         else if(_loc2_.error)
         {
            _loc4_ = "";
            if(_loc2_.field)
            {
               _loc4_ = §implements§.§_-Qk§(_loc2_.field);
            }
            _loc4_ += §implements§.§_-Yu§(_loc2_.error);
            this.§_-qd§(_loc4_);
            §_-cL§.§_-JT§(§_-cL§.§_-rT§);
         }
         §_-aG§ = null;
         §_-LV§ = null;
      }
      
      private function §_-qd§(param1:String) : void
      {
         §_-6B§.showHelpText(param1);
      }
   }
}
