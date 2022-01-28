package §_-RV§
{
   import §_-2F§.§_-B4§;
   import §_-7V§.§_-Gs§;
   import §_-7V§.§_-LB§;
   import §_-Ll§.§_-FU§;
   import §_-Ll§.§_-JL§;
   import §_-QG§.§_-t6§;
   import §_-Qn§.§_-O7§;
   import §_-Qn§.§_-bo§;
   import §_-aV§.§_-1s§;
   import §_-aV§.§_-DM§;
   import §_-aV§.§_-mI§;
   import §_-gM§.Base64;
   import §_-gM§.§_-yj§;
   import §_-iZ§.HighscoreSidebar;
   import §_-pm§.§_-gb§;
   import §_-s-§.§_-hQ§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-pU§ extends §_-oI§
   {
      
      public static const §_-8r§:String = "RegisterState";
      
      public static var §_-CI§:String;
      
      public static var §_-IN§:String;
      
      private static var §_-59§:String;
      
      private static var §_-ts§:String;
       
      
      private var §_-9T§:String = "";
      
      private var §_-PT§:Boolean = false;
      
      private var §_-Oc§:§_-FU§;
      
      private var §_-37§:§_-FU§;
      
      public function §_-pU§(param1:Boolean = false, param2:String = "RegisterState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-MF§ = new §_-bo§(this);
         §_-MF§.init(§_-O7§.§_-jb§.Views.View_Register[0]);
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
      
      override public function activate() : void
      {
         super.activate();
         §_-gb§.§_-ls§.§_-2L§(false);
         this.§_-Oc§ = §_-MF§.getItemByName("Button_Male") as §_-FU§;
         this.§_-37§ = §_-MF§.getItemByName("Button_Female") as §_-FU§;
         this.§_-Oc§.setComponentState(§_-LB§.§_-bI§);
         this.§_-37§.setComponentState(§_-LB§.§_-bI§);
         var _loc1_:§_-LB§ = §_-MF§.getItemByName("Checkbox_Marketing") as §_-LB§;
         _loc1_.setComponentState(§_-LB§.§_-bI§);
         this.§_-PT§ = false;
         var _loc4_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         var _loc5_:§_-JL§ = §_-MF§.getItemByName("TextField_UserNameField") as §_-JL§;
         var _loc6_:§_-JL§ = §_-MF§.getItemByName("TextField_PasswordField") as §_-JL§;
         var _loc7_:§_-JL§ = §_-MF§.getItemByName("TextField_PasswordFieldRepeat") as §_-JL§;
         _loc5_.§_-ML§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         _loc7_.§_-ML§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         _loc6_.§_-ML§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         var _loc8_:§_-JL§;
         (_loc8_ = §_-MF§.getItemByName("TextField_EmailField") as §_-JL§).§_-ML§.restrict = "a-z     0-9  \'\\-_@.";
         var _loc9_:§_-JL§;
         (_loc9_ = §_-MF§.getItemByName("TextField_AgeField") as §_-JL§).§_-ML§.restrict = "0-9";
         var _loc10_:§_-JL§;
         (_loc10_ = §_-MF§.getItemByName("TextField_FullNameField") as §_-JL§).§_-ML§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         var _loc11_:§_-JL§;
         (_loc11_ = §_-MF§.getItemByName("TextField_ZipCodeField") as §_-JL§).§_-ML§.restrict = "0-9";
         §_-MF§.setText("","TextField_UserNameField");
         §_-MF§.setText("","TextField_PasswordField");
         §_-MF§.setText("","TextField_PasswordFieldRepeat");
         §_-MF§.setText("","TextField_EmailField");
         §_-MF§.setText("","TextField_AgeField");
         §_-MF§.setText("","TextField_FullNameField");
         §_-MF§.setText("","TextField_ZipCodeField");
         §_-e0§.changeState(HighscoreSidebar.§_-qH§);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Gs§) : void
      {
         var _loc4_:§_-LB§ = null;
         switch(param2)
         {
            case "MALE":
               this.§_-Oc§.setComponentState(§_-LB§.§_-z6§);
               this.§_-37§.setComponentState(§_-LB§.§_-bI§);
               this.§_-9T§ = "m";
               break;
            case "FEMALE":
               this.§_-Oc§.setComponentState(§_-LB§.§_-bI§);
               this.§_-37§.setComponentState(§_-LB§.§_-z6§);
               this.§_-9T§ = "f";
               break;
            case "CANCEL":
               mNextState = §_-p§.§_-8r§;
               break;
            case "SUBMIT":
               this.§_-6-§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §_-MF§.getItemByName("Checkbox_Marketing") as §_-LB§;
               this.§_-PT§ = !this.§_-PT§;
               if(this.§_-PT§)
               {
                  _loc4_.setComponentState(§_-LB§.§_-z6§);
                  break;
               }
               _loc4_.setComponentState(§_-LB§.§_-bI§);
               break;
         }
      }
      
      private function §_-6-§() : void
      {
         this.§_-nB§("");
         var _loc2_:String = §_-MF§.getText("TextField_UserNameField");
         var _loc3_:String = §_-MF§.getText("TextField_PasswordField");
         var _loc4_:String = §_-MF§.getText("TextField_PasswordFieldRepeat");
         var _loc5_:String = §_-MF§.getText("TextField_EmailField");
         var _loc6_:String = §_-MF§.getText("TextField_AgeField");
         var _loc7_:String = §_-MF§.getText("TextField_FullNameField");
         var _loc8_:String = §_-MF§.getText("TextField_ZipCodeField");
         var _loc9_:String = this.§_-9T§;
         var _loc10_:Boolean = this.§_-PT§;
         §_-59§ = _loc5_;
         §_-ts§ = _loc3_;
         if(_loc2_.length < 5)
         {
            this.§_-nB§(§_-mI§.§_-ai§.NICKNAME_LENGTH);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§_-nB§(§_-mI§.§_-ai§.PASSWORD_LENGTH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§_-nB§(§_-mI§.§_-ai§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc13_:RegExp;
         if(!(_loc13_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§_-nB§(§_-mI§.§_-ai§.EMAIL_LOWERCASE);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§_-nB§(§_-mI§.§_-ai§.EMAIL_REQUIRED);
            return;
         }
         if(_loc6_.length < 1)
         {
            this.§_-nB§(§_-mI§.§_-ai§.AGE_REQUIRED);
            return;
         }
         var _loc14_:int;
         if((_loc14_ = int(_loc6_)) < 13)
         {
            this.§_-nB§(§_-mI§.§_-ai§.AGE_UNDER_13);
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
         _loc16_.data = "json=" + Base64.encode(§_-hQ§.encode(_loc18_));
         _loc15_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc15_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-ON§);
         _loc15_.addEventListener(IOErrorEvent.IO_ERROR,this.get);
         _loc16_.url = §_-q0§.§_-Fa§;
         _loc15_.load(_loc16_);
         §_-MF§.getItemByName("WaitingPopup").setVisibility(true);
      }
      
      private function §_-ON§(param1:HTTPStatusEvent) : void
      {
         §_-yj§.log(param1.toString());
      }
      
      private function get(param1:IOErrorEvent) : void
      {
         §_-yj§.log("IO error: " + param1.errorID);
         §_-ts§ = null;
         §_-59§ = null;
         §_-MF§.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-MF§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §_-DM§.§_-KR§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = §_-MF§.getText("TextField_UserNameField");
            §_-CI§ = §_-59§;
            §_-IN§ = §_-ts§;
            mNextState = §_-p§.§_-8r§;
            §_-B4§.§_-du§(§_-1s§.§_-zQ§);
         }
         else if(_loc2_.error)
         {
            _loc4_ = "";
            if(_loc2_.field)
            {
               _loc4_ = §_-mI§.§_-Hx§(_loc2_.field);
            }
            _loc4_ += §_-mI§.§_-xF§(_loc2_.error);
            this.§_-nB§(_loc4_);
            §_-B4§.§_-du§(§_-1s§.§_-JM§);
         }
         §_-59§ = null;
         §_-ts§ = null;
      }
      
      private function §_-nB§(param1:String) : void
      {
         §_-e0§.showHelpText(param1);
      }
   }
}
