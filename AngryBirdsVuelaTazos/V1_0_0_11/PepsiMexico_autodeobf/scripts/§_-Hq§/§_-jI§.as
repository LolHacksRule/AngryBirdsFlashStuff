package §_-Hq§
{
   import §_-4R§.§_-dZ§;
   import §_-QM§.§_-GC§;
   import §_-QM§.§_-Ns§;
   import §_-TE§.§_-PN§;
   import §_-TW§.§_-iD§;
   import §_-TW§.§_-r6§;
   import §_-ZG§.Base64;
   import §_-ZG§.§_-Ne§;
   import §_-bA§.§_-U7§;
   import §_-bA§.§_-Xe§;
   import §_-d5§.§_-6Y§;
   import §_-ic§.HighscoreSidebar;
   import §_-xN§.§_-WL§;
   import §_-xN§.§_-pB§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-jI§ extends §_-UR§
   {
      
      public static const §_-dh§:String = "RegisterState";
      
      public static var §_-Cu§:String;
      
      public static var §_-50§:String;
      
      private static var §_-2T§:String;
      
      private static var §_-AI§:String;
       
      
      private var §_-mr§:String = "";
      
      private var §_-2N§:Boolean = false;
      
      private var §_-Jt§:§_-r6§;
      
      private var §_-3N§:§_-r6§;
      
      public function §_-jI§(param1:Boolean = false, param2:String = "RegisterState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-qE§ = new §_-Ns§(this);
         §_-qE§.init(§_-GC§.§_-jz§.Views.View_Register[0]);
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
      
      override public function activate() : void
      {
         super.activate();
         if(§_-6Y§.§true§)
         {
            §_-6Y§.§true§.stop();
         }
         this.§_-Jt§ = §_-qE§.getItemByName("Button_Male") as §_-r6§;
         this.§_-3N§ = §_-qE§.getItemByName("Button_Female") as §_-r6§;
         this.§_-Jt§.setComponentState(§_-WL§.§_-t0§);
         this.§_-3N§.setComponentState(§_-WL§.§_-t0§);
         var _loc1_:§_-WL§ = §_-qE§.getItemByName("Checkbox_Marketing") as §_-WL§;
         _loc1_.setComponentState(§_-WL§.§_-t0§);
         this.§_-2N§ = false;
         var _loc4_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         var _loc5_:§_-iD§ = §_-qE§.getItemByName("TextField_UserNameField") as §_-iD§;
         var _loc6_:§_-iD§ = §_-qE§.getItemByName("TextField_PasswordField") as §_-iD§;
         var _loc7_:§_-iD§ = §_-qE§.getItemByName("TextField_PasswordFieldRepeat") as §_-iD§;
         _loc5_.§_-3n§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         _loc7_.§_-3n§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         _loc6_.§_-3n§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         var _loc8_:§_-iD§;
         (_loc8_ = §_-qE§.getItemByName("TextField_EmailField") as §_-iD§).§_-3n§.restrict = "a-z     0-9  \'\\-_@.";
         var _loc9_:§_-iD§;
         (_loc9_ = §_-qE§.getItemByName("TextField_AgeField") as §_-iD§).§_-3n§.restrict = "0-9";
         var _loc10_:§_-iD§;
         (_loc10_ = §_-qE§.getItemByName("TextField_FullNameField") as §_-iD§).§_-3n§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         var _loc11_:§_-iD§;
         (_loc11_ = §_-qE§.getItemByName("TextField_ZipCodeField") as §_-iD§).§_-3n§.restrict = "0-9";
         §_-qE§.setText("","TextField_UserNameField");
         §_-qE§.setText("","TextField_PasswordField");
         §_-qE§.setText("","TextField_PasswordFieldRepeat");
         §_-qE§.setText("","TextField_EmailField");
         §_-qE§.setText("","TextField_AgeField");
         §_-qE§.setText("","TextField_FullNameField");
         §_-qE§.setText("","TextField_ZipCodeField");
         §_-03§.changeState(HighscoreSidebar.set);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-pB§) : void
      {
         var _loc4_:§_-WL§ = null;
         switch(param2)
         {
            case "MALE":
               this.§_-Jt§.setComponentState(§_-WL§.§_-1M§);
               this.§_-3N§.setComponentState(§_-WL§.§_-t0§);
               this.§_-mr§ = "m";
               break;
            case "FEMALE":
               this.§_-Jt§.setComponentState(§_-WL§.§_-t0§);
               this.§_-3N§.setComponentState(§_-WL§.§_-1M§);
               this.§_-mr§ = "f";
               break;
            case "CANCEL":
               mNextState = §_-fY§.§_-dh§;
               break;
            case "SUBMIT":
               this.§_-jy§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §_-qE§.getItemByName("Checkbox_Marketing") as §_-WL§;
               this.§_-2N§ = !this.§_-2N§;
               if(this.§_-2N§)
               {
                  _loc4_.setComponentState(§_-WL§.§_-1M§);
                  break;
               }
               _loc4_.setComponentState(§_-WL§.§_-t0§);
               break;
         }
      }
      
      private function §_-jy§() : void
      {
         this.§_-Gk§("");
         var _loc2_:String = §_-qE§.getText("TextField_UserNameField");
         var _loc3_:String = §_-qE§.getText("TextField_PasswordField");
         var _loc4_:String = §_-qE§.getText("TextField_PasswordFieldRepeat");
         var _loc5_:String = §_-qE§.getText("TextField_EmailField");
         var _loc6_:String = §_-qE§.getText("TextField_AgeField");
         var _loc7_:String = §_-qE§.getText("TextField_FullNameField");
         var _loc8_:String = §_-qE§.getText("TextField_ZipCodeField");
         var _loc9_:String = this.§_-mr§;
         var _loc10_:Boolean = this.§_-2N§;
         §_-2T§ = _loc5_;
         §_-AI§ = _loc3_;
         if(_loc2_.length < 5)
         {
            this.§_-Gk§(§_-Xe§.§_-d0§.NICKNAME_LENGTH);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§_-Gk§(§_-Xe§.§_-d0§.PASSWORD_LENGTH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§_-Gk§(§_-Xe§.§_-d0§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc13_:RegExp;
         if(!(_loc13_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§_-Gk§(§_-Xe§.§_-d0§.EMAIL_LOWERCASE);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§_-Gk§(§_-Xe§.§_-d0§.EMAIL_REQUIRED);
            return;
         }
         if(_loc6_.length < 1)
         {
            this.§_-Gk§(§_-Xe§.§_-d0§.AGE_REQUIRED);
            return;
         }
         var _loc14_:int;
         if((_loc14_ = int(_loc6_)) < 13)
         {
            this.§_-Gk§(§_-Xe§.§_-d0§.AGE_UNDER_13);
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
         _loc15_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-3r§);
         _loc15_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-uV§);
         _loc16_.url = §_-I8§.§_-vQ§;
         _loc15_.load(_loc16_);
         §_-qE§.getItemByName("WaitingPopup").setVisibility(true);
      }
      
      private function §_-3r§(param1:HTTPStatusEvent) : void
      {
         §_-Ne§.log(param1.toString());
      }
      
      private function §_-uV§(param1:IOErrorEvent) : void
      {
         §_-Ne§.log("IO error: " + param1.errorID);
         §_-AI§ = null;
         §_-2T§ = null;
         §_-qE§.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-qE§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §_-U7§.§_-qY§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = §_-qE§.getText("TextField_UserNameField");
            §_-Cu§ = §_-2T§;
            §_-50§ = §_-AI§;
            mNextState = §_-fY§.§_-dh§;
            §_-dZ§.§_-H3§(§_-dZ§.§_-Ad§);
         }
         else if(_loc2_.error)
         {
            _loc4_ = "";
            if(_loc2_.field)
            {
               _loc4_ = §_-Xe§.§_-sL§(_loc2_.field);
            }
            _loc4_ += §_-Xe§.§_-sv§(_loc2_.error);
            this.§_-Gk§(_loc4_);
            §_-dZ§.§_-H3§(§_-dZ§.§_-4Z§);
         }
         §_-2T§ = null;
         §_-AI§ = null;
      }
      
      private function §_-Gk§(param1:String) : void
      {
         §_-03§.showHelpText(param1);
      }
   }
}
