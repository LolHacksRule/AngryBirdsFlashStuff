package §else§
{
   import §_-6r§.§_-7P§;
   import §_-6r§.§_-h3§;
   import §_-F1§.§_-V1§;
   import §_-F1§.§_-qp§;
   import §_-IV§.§_-qW§;
   import §_-PD§.HighscoreSidebar;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-e3§.Base64;
   import §_-e3§.§_-54§;
   import §_-hU§.§_-MB§;
   import §_-hq§.§_-AD§;
   import §_-y7§.§_-VA§;
   import §_-zL§.§_-5B§;
   import §_-zL§.§_-Rv§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-z0§ extends §_-iL§
   {
      
      public static const §_-Az§:String = "RegisterState";
      
      public static var §_-RA§:String;
      
      public static var §_-UZ§:String;
      
      private static var §_-XV§:String;
      
      private static var §_-DD§:String;
       
      
      private var §_-rq§:String = "";
      
      private var §_-sQ§:Boolean = false;
      
      private var §_-IZ§:§_-qp§;
      
      private var §_-hI§:§_-qp§;
      
      public function §_-z0§(param1:Boolean = false, param2:String = "RegisterState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-NY§ = new §_-ru§(this);
         §_-NY§.init(§_-BN§.native.Views.View_Register[0]);
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
      
      override public function activate() : void
      {
         super.activate();
         §_-MB§.§_-A7§.§_-Gf§(false);
         this.§_-IZ§ = §_-NY§.getItemByName("Button_Male") as §_-qp§;
         this.§_-hI§ = §_-NY§.getItemByName("Button_Female") as §_-qp§;
         this.§_-IZ§.setComponentState(§_-h3§.§_-sp§);
         this.§_-hI§.setComponentState(§_-h3§.§_-sp§);
         var _loc1_:§_-h3§ = §_-NY§.getItemByName("Checkbox_Marketing") as §_-h3§;
         _loc1_.setComponentState(§_-h3§.§_-sp§);
         this.§_-sQ§ = false;
         var _loc4_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         var _loc5_:§_-V1§ = §_-NY§.getItemByName("TextField_UserNameField") as §_-V1§;
         var _loc6_:§_-V1§ = §_-NY§.getItemByName("TextField_PasswordField") as §_-V1§;
         var _loc7_:§_-V1§ = §_-NY§.getItemByName("TextField_PasswordFieldRepeat") as §_-V1§;
         _loc5_.§_-hJ§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         _loc7_.§_-hJ§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         _loc6_.§_-hJ§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         var _loc8_:§_-V1§;
         (_loc8_ = §_-NY§.getItemByName("TextField_EmailField") as §_-V1§).§_-hJ§.restrict = "a-z     0-9  \'\\-_@.";
         var _loc9_:§_-V1§;
         (_loc9_ = §_-NY§.getItemByName("TextField_AgeField") as §_-V1§).§_-hJ§.restrict = "0-9";
         var _loc10_:§_-V1§;
         (_loc10_ = §_-NY§.getItemByName("TextField_FullNameField") as §_-V1§).§_-hJ§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         var _loc11_:§_-V1§;
         (_loc11_ = §_-NY§.getItemByName("TextField_ZipCodeField") as §_-V1§).§_-hJ§.restrict = "0-9";
         §_-NY§.setText("","TextField_UserNameField");
         §_-NY§.setText("","TextField_PasswordField");
         §_-NY§.setText("","TextField_PasswordFieldRepeat");
         §_-NY§.setText("","TextField_EmailField");
         §_-NY§.setText("","TextField_AgeField");
         §_-NY§.setText("","TextField_FullNameField");
         §_-NY§.setText("","TextField_ZipCodeField");
         §_-1S§.changeState(HighscoreSidebar.§_-x1§);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc4_:§_-h3§ = null;
         switch(param2)
         {
            case "MALE":
               this.§_-IZ§.setComponentState(§_-h3§.§_-1M§);
               this.§_-hI§.setComponentState(§_-h3§.§_-sp§);
               this.§_-rq§ = "m";
               break;
            case "FEMALE":
               this.§_-IZ§.setComponentState(§_-h3§.§_-sp§);
               this.§_-hI§.setComponentState(§_-h3§.§_-1M§);
               this.§_-rq§ = "f";
               break;
            case "CANCEL":
               mNextState = §_-mk§.§_-Az§;
               break;
            case "SUBMIT":
               this.§_-kC§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §_-NY§.getItemByName("Checkbox_Marketing") as §_-h3§;
               this.§_-sQ§ = !this.§_-sQ§;
               if(this.§_-sQ§)
               {
                  _loc4_.setComponentState(§_-h3§.§_-1M§);
                  break;
               }
               _loc4_.setComponentState(§_-h3§.§_-sp§);
               break;
         }
      }
      
      private function §_-kC§() : void
      {
         this.§_-4j§("");
         var _loc2_:String = §_-NY§.getText("TextField_UserNameField");
         var _loc3_:String = §_-NY§.getText("TextField_PasswordField");
         var _loc4_:String = §_-NY§.getText("TextField_PasswordFieldRepeat");
         var _loc5_:String = §_-NY§.getText("TextField_EmailField");
         var _loc6_:String = §_-NY§.getText("TextField_AgeField");
         var _loc7_:String = §_-NY§.getText("TextField_FullNameField");
         var _loc8_:String = §_-NY§.getText("TextField_ZipCodeField");
         var _loc9_:String = this.§_-rq§;
         var _loc10_:Boolean = this.§_-sQ§;
         §_-XV§ = _loc5_;
         §_-DD§ = _loc3_;
         if(_loc2_.length < 5)
         {
            this.§_-4j§(§_-5B§.§_-X8§.NICKNAME_LENGTH);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§_-4j§(§_-5B§.§_-X8§.PASSWORD_LENGTH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§_-4j§(§_-5B§.§_-X8§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc13_:RegExp;
         if(!(_loc13_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§_-4j§(§_-5B§.§_-X8§.EMAIL_LOWERCASE);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§_-4j§(§_-5B§.§_-X8§.EMAIL_REQUIRED);
            return;
         }
         if(_loc6_.length < 1)
         {
            this.§_-4j§(§_-5B§.§_-X8§.AGE_REQUIRED);
            return;
         }
         var _loc14_:int;
         if((_loc14_ = int(_loc6_)) < 13)
         {
            this.§_-4j§(§_-5B§.§_-X8§.AGE_UNDER_13);
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
         _loc16_.data = "json=" + Base64.encode(§_-AD§.encode(_loc18_));
         _loc15_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc15_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-wL§);
         _loc15_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
         _loc16_.url = §_-Qu§.§_-BK§;
         _loc15_.load(_loc16_);
         §_-NY§.getItemByName("WaitingPopup").setVisibility(true);
      }
      
      private function §_-wL§(param1:HTTPStatusEvent) : void
      {
         §_-54§.log(param1.toString());
      }
      
      private function §_-qT§(param1:IOErrorEvent) : void
      {
         §_-54§.log("IO error: " + param1.errorID);
         §_-DD§ = null;
         §_-XV§ = null;
         §_-NY§.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-NY§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §_-Rv§.§_-3a§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = §_-NY§.getText("TextField_UserNameField");
            §_-RA§ = §_-XV§;
            §_-UZ§ = §_-DD§;
            mNextState = §_-mk§.§_-Az§;
            §_-qW§.§_-6h§(§_-qW§.§_-8g§);
         }
         else if(_loc2_.error)
         {
            _loc4_ = "";
            if(_loc2_.field)
            {
               _loc4_ = §_-5B§.§_-ns§(_loc2_.field);
            }
            _loc4_ += §_-5B§.§_-rm§(_loc2_.error);
            this.§_-4j§(_loc4_);
            §_-qW§.§_-6h§(§_-qW§.§_-Uy§);
         }
         §_-XV§ = null;
         §_-DD§ = null;
      }
      
      private function §_-4j§(param1:String) : void
      {
         §_-1S§.showHelpText(param1);
      }
   }
}
