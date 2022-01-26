package §_-8§
{
   import §_-2z§.§_-rz§;
   import §_-9C§.§_-6M§;
   import §_-9C§.§_-6O§;
   import §_-Eo§.Base64;
   import §_-Eo§.§_-R4§;
   import §_-Jx§.§_-Ao§;
   import §_-Jx§.§_-Tc§;
   import §_-Kn§.HighscoreSidebar;
   import §_-M0§.§_-u4§;
   import §_-Yh§.§_-BS§;
   import §_-Yh§.§_-fA§;
   import §_-hf§.§_-0J§;
   import §_-hf§.§_-6o§;
   import §_-mc§.§_-9j§;
   import §_-qT§.§_-O5§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-t1§ extends §_-1f§
   {
      
      public static const §_-7m§:String = "RegisterState";
      
      public static var §_-iM§:String;
      
      public static var §_-S6§:String;
      
      private static var §_-Q§:String;
      
      private static var §_-AW§:String;
       
      
      private var §_-aR§:String = "";
      
      private var §_-kX§:Boolean = false;
      
      private var §_-Fl§:§_-6o§;
      
      private var §_-ND§:§_-6o§;
      
      public function §_-t1§(param1:Boolean = false, param2:String = "RegisterState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Ih§ = new §_-fA§(this);
         §_-Ih§.init(§_-BS§.§_-tc§.Views.View_Register[0]);
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
      
      override public function activate() : void
      {
         super.activate();
         §_-u4§.§_-40§.§_-AB§(false);
         this.§_-Fl§ = §_-Ih§.getItemByName("Button_Male") as §_-6o§;
         this.§_-ND§ = §_-Ih§.getItemByName("Button_Female") as §_-6o§;
         this.§_-Fl§.setComponentState(§_-Tc§.§_-SQ§);
         this.§_-ND§.setComponentState(§_-Tc§.§_-SQ§);
         var _loc1_:§_-Tc§ = §_-Ih§.getItemByName("Checkbox_Marketing") as §_-Tc§;
         _loc1_.setComponentState(§_-Tc§.§_-SQ§);
         this.§_-kX§ = false;
         var _loc4_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         var _loc5_:§_-0J§ = §_-Ih§.getItemByName("TextField_UserNameField") as §_-0J§;
         var _loc6_:§_-0J§ = §_-Ih§.getItemByName("TextField_PasswordField") as §_-0J§;
         var _loc7_:§_-0J§ = §_-Ih§.getItemByName("TextField_PasswordFieldRepeat") as §_-0J§;
         _loc5_.§_-Ho§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         _loc7_.§_-Ho§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         _loc6_.§_-Ho§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         var _loc8_:§_-0J§;
         (_loc8_ = §_-Ih§.getItemByName("TextField_EmailField") as §_-0J§).§_-Ho§.restrict = "a-z     0-9  \'\\-_@.";
         var _loc9_:§_-0J§;
         (_loc9_ = §_-Ih§.getItemByName("TextField_AgeField") as §_-0J§).§_-Ho§.restrict = "0-9";
         var _loc10_:§_-0J§;
         (_loc10_ = §_-Ih§.getItemByName("TextField_FullNameField") as §_-0J§).§_-Ho§.restrict = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
         var _loc11_:§_-0J§;
         (_loc11_ = §_-Ih§.getItemByName("TextField_ZipCodeField") as §_-0J§).§_-Ho§.restrict = "0-9";
         §_-Ih§.setText("","TextField_UserNameField");
         §_-Ih§.setText("","TextField_PasswordField");
         §_-Ih§.setText("","TextField_PasswordFieldRepeat");
         §_-Ih§.setText("","TextField_EmailField");
         §_-Ih§.setText("","TextField_AgeField");
         §_-Ih§.setText("","TextField_FullNameField");
         §_-Ih§.setText("","TextField_ZipCodeField");
         §_-5D§.changeState(HighscoreSidebar.§_-D4§);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Ao§) : void
      {
         var _loc4_:§_-Tc§ = null;
         switch(param2)
         {
            case "MALE":
               this.§_-Fl§.setComponentState(§_-Tc§.§_-WJ§);
               this.§_-ND§.setComponentState(§_-Tc§.§_-SQ§);
               this.§_-aR§ = "m";
               break;
            case "FEMALE":
               this.§_-Fl§.setComponentState(§_-Tc§.§_-SQ§);
               this.§_-ND§.setComponentState(§_-Tc§.§_-WJ§);
               this.§_-aR§ = "f";
               break;
            case "CANCEL":
               mNextState = §_-D§.§_-7m§;
               break;
            case "SUBMIT":
               this.§_-3p§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §_-Ih§.getItemByName("Checkbox_Marketing") as §_-Tc§;
               this.§_-kX§ = !this.§_-kX§;
               if(this.§_-kX§)
               {
                  _loc4_.setComponentState(§_-Tc§.§_-WJ§);
                  break;
               }
               _loc4_.setComponentState(§_-Tc§.§_-SQ§);
               break;
         }
      }
      
      private function §_-3p§() : void
      {
         this.§_-UU§("");
         var _loc2_:String = §_-Ih§.getText("TextField_UserNameField");
         var _loc3_:String = §_-Ih§.getText("TextField_PasswordField");
         var _loc4_:String = §_-Ih§.getText("TextField_PasswordFieldRepeat");
         var _loc5_:String = §_-Ih§.getText("TextField_EmailField");
         var _loc6_:String = §_-Ih§.getText("TextField_AgeField");
         var _loc7_:String = §_-Ih§.getText("TextField_FullNameField");
         var _loc8_:String = §_-Ih§.getText("TextField_ZipCodeField");
         var _loc9_:String = this.§_-aR§;
         var _loc10_:Boolean = this.§_-kX§;
         §_-Q§ = _loc5_;
         §_-AW§ = _loc3_;
         if(_loc2_.length < 5)
         {
            this.§_-UU§(§_-6M§.§_-bX§.NICKNAME_LENGTH);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§_-UU§(§_-6M§.§_-bX§.PASSWORD_LENGTH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§_-UU§(§_-6M§.§_-bX§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc13_:RegExp;
         if(!(_loc13_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§_-UU§(§_-6M§.§_-bX§.EMAIL_LOWERCASE);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§_-UU§(§_-6M§.§_-bX§.EMAIL_REQUIRED);
            return;
         }
         if(_loc6_.length < 1)
         {
            this.§_-UU§(§_-6M§.§_-bX§.AGE_REQUIRED);
            return;
         }
         var _loc14_:int;
         if((_loc14_ = int(_loc6_)) < 13)
         {
            this.§_-UU§(§_-6M§.§_-bX§.AGE_UNDER_13);
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
         _loc16_.data = "json=" + Base64.encode(§_-rz§.encode(_loc18_));
         _loc15_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc15_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-t-§);
         _loc15_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-U7§);
         _loc16_.url = §_-Tj§.§_-4w§;
         _loc15_.load(_loc16_);
         §_-Ih§.getItemByName("WaitingPopup").setVisibility(true);
      }
      
      private function §_-t-§(param1:HTTPStatusEvent) : void
      {
         §_-R4§.log(param1.toString());
      }
      
      private function §_-U7§(param1:IOErrorEvent) : void
      {
         §_-R4§.log("IO error: " + param1.errorID);
         §_-AW§ = null;
         §_-Q§ = null;
         §_-Ih§.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-Ih§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §_-6O§.§_-Mi§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = §_-Ih§.getText("TextField_UserNameField");
            §_-iM§ = §_-Q§;
            §_-S6§ = §_-AW§;
            mNextState = §_-D§.§_-7m§;
            §_-9j§.§_-Ej§(§_-9j§.§_-P3§);
         }
         else if(_loc2_.error)
         {
            _loc4_ = "";
            if(_loc2_.field)
            {
               _loc4_ = §_-6M§.§_-9w§(_loc2_.field);
            }
            _loc4_ += §_-6M§.§_-lc§(_loc2_.error);
            this.§_-UU§(_loc4_);
            §_-9j§.§_-Ej§(§_-9j§.§_-AU§);
         }
         §_-Q§ = null;
         §_-AW§ = null;
      }
      
      private function §_-UU§(param1:String) : void
      {
         §_-5D§.showHelpText(param1);
      }
   }
}
