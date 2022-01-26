package §_-JB§
{
   import §_-1p§.§_-K9§;
   import §_-1p§.§_-uW§;
   import §_-58§.§_-8c§;
   import §_-58§.§_-sg§;
   import §_-J-§.§_-BT§;
   import §_-J-§.§_-ZG§;
   import §_-JR§.§_-yh§;
   import §_-S9§.§_-3W§;
   import §_-S9§.§_-o2§;
   import §_-XI§.§_-mk§;
   import §_-cu§.§_-UO§;
   import §_-ex§.Base64;
   import §_-ex§.§_-mR§;
   import §_-m7§.HighscoreSidebar;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-1z§ extends §_-bH§
   {
      
      public static const §_-1h§:String = "RegisterState";
      
      public static var §_-rT§:String;
      
      public static var §_-iy§:String;
      
      private static var §_-NL§:String;
      
      private static var §_-xW§:String;
       
      
      private var §_-pM§:String = "";
      
      private var §_-8C§:Boolean = false;
      
      private var §_-gJ§:§_-8c§;
      
      private var §_-1f§:§_-8c§;
      
      public function §_-1z§(param1:Boolean = false, param2:String = "RegisterState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-kl§ = new §_-K9§(this);
         §_-kl§.init(§_-uW§.§_-Cs§.Views.View_Register[0]);
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
      
      override public function activate() : void
      {
         super.activate();
         if(§_-yh§.§_-1o§)
         {
            §_-yh§.§_-1o§.stop();
         }
         this.§_-gJ§ = §_-kl§.getItemByName("Button_Male") as §_-8c§;
         this.§_-1f§ = §_-kl§.getItemByName("Button_Female") as §_-8c§;
         this.§_-gJ§.setComponentState(§_-BT§.§_-Oe§);
         this.§_-1f§.setComponentState(§_-BT§.§_-Oe§);
         var _loc1_:§_-BT§ = §_-kl§.getItemByName("Checkbox_Marketing") as §_-BT§;
         _loc1_.setComponentState(§_-BT§.§_-Oe§);
         this.§_-8C§ = false;
         var _loc4_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         var _loc5_:§_-sg§ = §_-kl§.getItemByName("TextField_UserNameField") as §_-sg§;
         var _loc6_:§_-sg§ = §_-kl§.getItemByName("TextField_PasswordField") as §_-sg§;
         var _loc7_:§_-sg§ = §_-kl§.getItemByName("TextField_PasswordFieldRepeat") as §_-sg§;
         _loc5_.§_-Ak§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         _loc7_.§_-Ak§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         _loc6_.§_-Ak§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         var _loc8_:§_-sg§;
         (_loc8_ = §_-kl§.getItemByName("TextField_EmailField") as §_-sg§).§_-Ak§.restrict = "a-z     0-9  \'\\-_@.";
         var _loc9_:§_-sg§;
         (_loc9_ = §_-kl§.getItemByName("TextField_AgeField") as §_-sg§).§_-Ak§.restrict = "0-9";
         var _loc10_:§_-sg§;
         (_loc10_ = §_-kl§.getItemByName("TextField_FullNameField") as §_-sg§).§_-Ak§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         var _loc11_:§_-sg§;
         (_loc11_ = §_-kl§.getItemByName("TextField_ZipCodeField") as §_-sg§).§_-Ak§.restrict = "0-9";
         §_-kl§.setText("","TextField_UserNameField");
         §_-kl§.setText("","TextField_PasswordField");
         §_-kl§.setText("","TextField_PasswordFieldRepeat");
         §_-kl§.setText("","TextField_EmailField");
         §_-kl§.setText("","TextField_AgeField");
         §_-kl§.setText("","TextField_FullNameField");
         §_-kl§.setText("","TextField_ZipCodeField");
         §_-dM§.changeState(HighscoreSidebar.§_-xo§);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-ZG§) : void
      {
         var _loc4_:§_-BT§ = null;
         switch(param2)
         {
            case "MALE":
               this.§_-gJ§.setComponentState(§_-BT§.§_-Gc§);
               this.§_-1f§.setComponentState(§_-BT§.§_-Oe§);
               this.§_-pM§ = "m";
               break;
            case "FEMALE":
               this.§_-gJ§.setComponentState(§_-BT§.§_-Oe§);
               this.§_-1f§.setComponentState(§_-BT§.§_-Gc§);
               this.§_-pM§ = "f";
               break;
            case "CANCEL":
               mNextState = §_-QV§.§_-1h§;
               break;
            case "SUBMIT":
               this.§_-7O§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §_-kl§.getItemByName("Checkbox_Marketing") as §_-BT§;
               this.§_-8C§ = !this.§_-8C§;
               if(this.§_-8C§)
               {
                  _loc4_.setComponentState(§_-BT§.§_-Gc§);
                  break;
               }
               _loc4_.setComponentState(§_-BT§.§_-Oe§);
               break;
         }
      }
      
      private function §_-7O§() : void
      {
         this.§_-44§("");
         var _loc2_:String = §_-kl§.getText("TextField_UserNameField");
         var _loc3_:String = §_-kl§.getText("TextField_PasswordField");
         var _loc4_:String = §_-kl§.getText("TextField_PasswordFieldRepeat");
         var _loc5_:String = §_-kl§.getText("TextField_EmailField");
         var _loc6_:String = §_-kl§.getText("TextField_AgeField");
         var _loc7_:String = §_-kl§.getText("TextField_FullNameField");
         var _loc8_:String = §_-kl§.getText("TextField_ZipCodeField");
         var _loc9_:String = this.§_-pM§;
         var _loc10_:Boolean = this.§_-8C§;
         §_-NL§ = _loc5_;
         §_-xW§ = _loc3_;
         if(_loc2_.length < 5)
         {
            this.§_-44§(§_-3W§.§_-f7§.NICKNAME_LENGTH);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§_-44§(§_-3W§.§_-f7§.PASSWORD_LENGTH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§_-44§(§_-3W§.§_-f7§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc13_:RegExp;
         if(!(_loc13_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§_-44§(§_-3W§.§_-f7§.EMAIL_LOWERCASE);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§_-44§(§_-3W§.§_-f7§.EMAIL_REQUIRED);
            return;
         }
         if(_loc6_.length < 1)
         {
            this.§_-44§(§_-3W§.§_-f7§.AGE_REQUIRED);
            return;
         }
         var _loc14_:int;
         if((_loc14_ = int(_loc6_)) < 13)
         {
            this.§_-44§(§_-3W§.§_-f7§.AGE_UNDER_13);
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
         _loc15_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-vi§);
         _loc15_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-mT§);
         _loc16_.url = §_-2U§.§_-i1§;
         _loc15_.load(_loc16_);
         §_-kl§.getItemByName("WaitingPopup").setVisibility(true);
      }
      
      private function §_-vi§(param1:HTTPStatusEvent) : void
      {
         §_-mR§.log(param1.toString());
      }
      
      private function §_-mT§(param1:IOErrorEvent) : void
      {
         §_-mR§.log("IO error: " + param1.errorID);
         §_-xW§ = null;
         §_-NL§ = null;
         §_-kl§.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-kl§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §_-o2§.§_-Yz§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = §_-kl§.getText("TextField_UserNameField");
            §_-rT§ = §_-NL§;
            §_-iy§ = §_-xW§;
            mNextState = §_-QV§.§_-1h§;
            §_-mk§.§_-6h§(§_-mk§.§_-mO§);
         }
         else if(_loc2_.error)
         {
            _loc4_ = "";
            if(_loc2_.field)
            {
               _loc4_ = §_-3W§.§_-Zu§(_loc2_.field);
            }
            _loc4_ += §_-3W§.§_-kZ§(_loc2_.error);
            this.§_-44§(_loc4_);
            §_-mk§.§_-6h§(§_-mk§.§_-Jd§);
         }
         §_-NL§ = null;
         §_-xW§ = null;
      }
      
      private function §_-44§(param1:String) : void
      {
         §_-dM§.showHelpText(param1);
      }
   }
}
