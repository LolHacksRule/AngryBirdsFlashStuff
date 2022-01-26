package §_-L5§
{
   import §_-8J§.§_-1T§;
   import §_-8J§.§_-8s§;
   import §_-IC§.§_-Uw§;
   import §_-RG§.Base64;
   import §_-RG§.§_-HT§;
   import §_-TQ§.HighscoreSidebar;
   import §_-Xr§.§_-cF§;
   import §_-Ys§.§_-TM§;
   import §_-Ys§.§_-o-§;
   import §_-of§.§_-Yk§;
   import §_-of§.§_-rt§;
   import §_-uG§.§_-JZ§;
   import §_-uG§.§_-vK§;
   import §_-v3§.§_-G3§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-8U§ extends §_-1Y§
   {
      
      public static const §_-Mi§:String = "RegisterState";
      
      public static var §_-tv§:String;
      
      public static var §_-VL§:String;
      
      private static var §_-eC§:String;
      
      private static var §_-to§:String;
       
      
      private var §_-R-§:String = "";
      
      private var §_-Uc§:Boolean = false;
      
      private var §_-lR§:§_-Yk§;
      
      private var §_-Lt§:§_-Yk§;
      
      public function §_-8U§(param1:Boolean = false, param2:String = "RegisterState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Bv§ = new §_-8s§(this);
         §_-Bv§.init(§_-1T§.§_-3G§.Views.View_Register[0]);
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
      
      override public function activate() : void
      {
         super.activate();
         if(§_-G3§.§_-9S§)
         {
            §_-G3§.§_-9S§.stop();
         }
         this.§_-lR§ = §_-Bv§.getItemByName("Button_Male") as §_-Yk§;
         this.§_-Lt§ = §_-Bv§.getItemByName("Button_Female") as §_-Yk§;
         this.§_-lR§.setComponentState(§_-TM§.§_-vF§);
         this.§_-Lt§.setComponentState(§_-TM§.§_-vF§);
         var _loc1_:§_-TM§ = §_-Bv§.getItemByName("Checkbox_Marketing") as §_-TM§;
         _loc1_.setComponentState(§_-TM§.§_-vF§);
         this.§_-Uc§ = false;
         var _loc4_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         var _loc5_:§_-rt§ = §_-Bv§.getItemByName("TextField_UserNameField") as §_-rt§;
         var _loc6_:§_-rt§ = §_-Bv§.getItemByName("TextField_PasswordField") as §_-rt§;
         var _loc7_:§_-rt§ = §_-Bv§.getItemByName("TextField_PasswordFieldRepeat") as §_-rt§;
         _loc5_.§_-u7§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         _loc7_.§_-u7§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         _loc6_.§_-u7§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         var _loc8_:§_-rt§;
         (_loc8_ = §_-Bv§.getItemByName("TextField_EmailField") as §_-rt§).§_-u7§.restrict = "a-z     0-9  \'\\-_@.";
         var _loc9_:§_-rt§;
         (_loc9_ = §_-Bv§.getItemByName("TextField_AgeField") as §_-rt§).§_-u7§.restrict = "0-9";
         var _loc10_:§_-rt§;
         (_loc10_ = §_-Bv§.getItemByName("TextField_FullNameField") as §_-rt§).§_-u7§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         var _loc11_:§_-rt§;
         (_loc11_ = §_-Bv§.getItemByName("TextField_ZipCodeField") as §_-rt§).§_-u7§.restrict = "0-9";
         §_-Bv§.setText("","TextField_UserNameField");
         §_-Bv§.setText("","TextField_PasswordField");
         §_-Bv§.setText("","TextField_PasswordFieldRepeat");
         §_-Bv§.setText("","TextField_EmailField");
         §_-Bv§.setText("","TextField_AgeField");
         §_-Bv§.setText("","TextField_FullNameField");
         §_-Bv§.setText("","TextField_ZipCodeField");
         §_-1B§.changeState(HighscoreSidebar.§_-bZ§);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-o-§) : void
      {
         var _loc4_:§_-TM§ = null;
         switch(param2)
         {
            case "MALE":
               this.§_-lR§.setComponentState(§_-TM§.§_-Y2§);
               this.§_-Lt§.setComponentState(§_-TM§.§_-vF§);
               this.§_-R-§ = "m";
               break;
            case "FEMALE":
               this.§_-lR§.setComponentState(§_-TM§.§_-vF§);
               this.§_-Lt§.setComponentState(§_-TM§.§_-Y2§);
               this.§_-R-§ = "f";
               break;
            case "CANCEL":
               mNextState = §_-pb§.§_-Mi§;
               break;
            case "SUBMIT":
               this.§_-b5§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §_-Bv§.getItemByName("Checkbox_Marketing") as §_-TM§;
               this.§_-Uc§ = !this.§_-Uc§;
               if(this.§_-Uc§)
               {
                  _loc4_.setComponentState(§_-TM§.§_-Y2§);
                  break;
               }
               _loc4_.setComponentState(§_-TM§.§_-vF§);
               break;
         }
      }
      
      private function §_-b5§() : void
      {
         this.§_-68§("");
         var _loc2_:String = §_-Bv§.getText("TextField_UserNameField");
         var _loc3_:String = §_-Bv§.getText("TextField_PasswordField");
         var _loc4_:String = §_-Bv§.getText("TextField_PasswordFieldRepeat");
         var _loc5_:String = §_-Bv§.getText("TextField_EmailField");
         var _loc6_:String = §_-Bv§.getText("TextField_AgeField");
         var _loc7_:String = §_-Bv§.getText("TextField_FullNameField");
         var _loc8_:String = §_-Bv§.getText("TextField_ZipCodeField");
         var _loc9_:String = this.§_-R-§;
         var _loc10_:Boolean = this.§_-Uc§;
         §_-eC§ = _loc5_;
         §_-to§ = _loc3_;
         if(_loc2_.length < 5)
         {
            this.§_-68§(§_-JZ§.§_-vE§.NICKNAME_LENGTH);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§_-68§(§_-JZ§.§_-vE§.PASSWORD_LENGTH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§_-68§(§_-JZ§.§_-vE§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc13_:RegExp;
         if(!(_loc13_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§_-68§(§_-JZ§.§_-vE§.EMAIL_LOWERCASE);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§_-68§(§_-JZ§.§_-vE§.EMAIL_REQUIRED);
            return;
         }
         if(_loc6_.length < 1)
         {
            this.§_-68§(§_-JZ§.§_-vE§.AGE_REQUIRED);
            return;
         }
         var _loc14_:int;
         if((_loc14_ = int(_loc6_)) < 13)
         {
            this.§_-68§(§_-JZ§.§_-vE§.AGE_UNDER_13);
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
         _loc15_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§true§);
         _loc15_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-On§);
         _loc16_.url = §_-0Y§.§_-YA§;
         _loc15_.load(_loc16_);
         §_-Bv§.getItemByName("WaitingPopup").setVisibility(true);
      }
      
      private function §true§(param1:HTTPStatusEvent) : void
      {
         §_-HT§.log(param1.toString());
      }
      
      private function §_-On§(param1:IOErrorEvent) : void
      {
         §_-HT§.log("IO error: " + param1.errorID);
         §_-to§ = null;
         §_-eC§ = null;
         §_-Bv§.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-Bv§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §_-vK§.§_-Jv§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = §_-Bv§.getText("TextField_UserNameField");
            §_-tv§ = §_-eC§;
            §_-VL§ = §_-to§;
            mNextState = §_-pb§.§_-Mi§;
            §_-cF§.§_-Wt§(§_-cF§.§_-El§);
         }
         else if(_loc2_.error)
         {
            _loc4_ = "";
            if(_loc2_.field)
            {
               _loc4_ = §_-JZ§.§_-at§(_loc2_.field);
            }
            _loc4_ += §_-JZ§.§_-pz§(_loc2_.error);
            this.§_-68§(_loc4_);
            §_-cF§.§_-Wt§(§_-cF§.§_-bP§);
         }
         §_-eC§ = null;
         §_-to§ = null;
      }
      
      private function §_-68§(param1:String) : void
      {
         §_-1B§.showHelpText(param1);
      }
   }
}
