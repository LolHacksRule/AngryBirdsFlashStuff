package §4!@§
{
   import §1!K§.§2!h§;
   import §4u§.§!H§;
   import §5"@§.§1!N§;
   import §5"@§.LoginHandlerEvent;
   import §7!6§.§^l§;
   import §="<§.§#`§;
   import §="<§.§,"$§;
   import §]!x§.§&A§;
   import §]!x§.§]F§;
   import §`>§.§>7§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §[!$§
   {
       
      
      private var §%"D§:§,"$§;
      
      private var §?@§:§2!h§;
      
      public function §[!$§(param1:§,"$§, param2:§2!h§)
      {
         super();
         this.§%"D§ = param1;
         this.§?@§ = param2;
      }
      
      public function §8"4§() : void
      {
         var _loc1_:§^l§ = this.§%"D§.getItemByName("Checkbox_RememberMe_Register") as §^l§;
         if(this.§?@§.rememberMeToggled)
         {
            _loc1_.setComponentState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§^l§.§,Z§);
         }
         _loc1_ = this.§%"D§.getItemByName("Checkbox_Marketing") as §^l§;
         if(this.§?@§.§#!4§)
         {
            _loc1_.setComponentState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§^l§.§,Z§);
         }
         _loc1_ = this.§%"D§.getItemByName("Checkbox_ExtMarketing") as §^l§;
         if(this.§?@§.§2"0§)
         {
            _loc1_.setComponentState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§^l§.§,Z§);
         }
         (this.§%"D§.getItemByName("TextField_EmailField_Register") as §#`§).§';§.addEventListener(MouseEvent.MOUSE_DOWN,this.§0!a§);
         (this.§%"D§.getItemByName("TextField_PasswordField_Register") as §#`§).§';§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_PasswordFieldRepeat_Register") as §#`§).§';§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_NickNameField_Register") as §#`§).§';§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_FirstNameField_Register") as §#`§).§';§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_LastNameField_Register") as §#`§).§';§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_MonthField_Register") as §#`§).§';§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_DayField_Register") as §#`§).§';§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_YearField_Register") as §#`§).§';§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_ZipcodeField_Register") as §#`§).§';§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function deActivate() : void
      {
         (this.§%"D§.getItemByName("TextField_NickNameField_Register") as §#`§).§';§.removeEventListener(KeyboardEvent.KEY_UP,this.§1!]§);
         (this.§%"D§.getItemByName("TextField_PasswordField_Register") as §#`§).§';§.removeEventListener(KeyboardEvent.KEY_UP,this.§,!0§);
         (this.§%"D§.getItemByName("TextField_PasswordFieldRepeat_Register") as §#`§).§';§.removeEventListener(KeyboardEvent.KEY_UP,this.§,!0§);
         (this.§%"D§.getItemByName("TextField_EmailField_Register") as §#`§).§';§.removeEventListener(KeyboardEvent.KEY_UP,this.§%">§);
         (this.§%"D§.getItemByName("TextField_FirstNameField_Register") as §#`§).§';§.removeEventListener(KeyboardEvent.KEY_UP,this.§%!?§);
         (this.§%"D§.getItemByName("TextField_LastNameField_Register") as §#`§).§';§.removeEventListener(KeyboardEvent.KEY_UP,this.§%!?§);
         (this.§%"D§.getItemByName("TextField_DayField_Register") as §#`§).§';§.removeEventListener(KeyboardEvent.KEY_UP,this.§0!f§);
         (this.§%"D§.getItemByName("TextField_MonthField_Register") as §#`§).§';§.removeEventListener(KeyboardEvent.KEY_UP,this.§0!f§);
         (this.§%"D§.getItemByName("TextField_YearField_Register") as §#`§).§';§.removeEventListener(KeyboardEvent.KEY_UP,this.§0!f§);
         (this.§%"D§.getItemByName("TextField_ZipcodeField_Register") as §#`§).§';§.removeEventListener(KeyboardEvent.KEY_UP,this.§0!f§);
         this.§?@§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§`!d§);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§?@§.§]U§.removeEventListener(LoginHandlerEvent.ERROR,this.§-!1§);
         this.§?@§.§]U§.removeEventListener(LoginHandlerEvent.§,!!§,this.§-5§);
         (this.§%"D§.getItemByName("TextField_EmailField_Register") as §#`§).§';§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0!a§);
         (this.§%"D§.getItemByName("TextField_PasswordField_Register") as §#`§).§';§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_PasswordFieldRepeat_Register") as §#`§).§';§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_NickNameField_Register") as §#`§).§';§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_FirstNameField_Register") as §#`§).§';§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_LastNameField_Register") as §#`§).§';§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_MonthField_Register") as §#`§).§';§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_DayField_Register") as §#`§).§';§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_YearField_Register") as §#`§).§';§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_ZipcodeField_Register") as §#`§).§';§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         this.§?@§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§`!d§);
      }
      
      private function §<!$§(param1:MouseEvent) : void
      {
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(false);
      }
      
      private function §0!a§(param1:MouseEvent) : void
      {
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(false);
         (§2&§.§6o§ as §@T§).§^7§.openPopup(new §&A§(§>7§.MAKE_SURE_EMAIL_IS_VALID,§&A§.§?!d§));
      }
      
      public function activate() : void
      {
         this.§%"D§.setObjectToFront(this.§%"D§.getItemByName("Container_Register_Tab"));
         this.§?@§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§`!d§);
         this.§%"D§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§%"D§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§%"D§.getItemByName("Button_Submit").setVisibility(false);
         this.§%"D§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§%"D§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§%"D§.getItemByName("Checkbox_ExtMarketing").setVisibility(false);
         this.§%"D§.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§%"D§.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§%"D§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§%"D§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§%"D§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§%"D§.getItemByName("TextField_FirstNameField_Register").setVisibility(true);
         this.§%"D§.getItemByName("TextField_LastNameField_Register").setVisibility(true);
         this.§%"D§.getItemByName("TextField_MonthField_Register").setVisibility(true);
         this.§%"D§.getItemByName("TextField_DayField_Register").setVisibility(true);
         this.§%"D§.getItemByName("TextField_YearField_Register").setVisibility(true);
         this.§%"D§.getItemByName("TextField_ZipcodeField_Register").setVisibility(true);
         this.§%"D§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§%"D§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§%"D§.getItemByName("Checkbox_ExtMarketing").setVisibility(true);
         this.§%"D§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§#`§ = this.§%"D§.getItemByName("TextField_NickNameField_Register") as §#`§;
         var _loc2_:§#`§ = this.§%"D§.getItemByName("TextField_EmailField_Register") as §#`§;
         var _loc3_:§#`§ = this.§%"D§.getItemByName("TextField_PasswordField_Register") as §#`§;
         var _loc4_:§#`§ = this.§%"D§.getItemByName("TextField_PasswordFieldRepeat_Register") as §#`§;
         var _loc5_:§#`§ = this.§%"D§.getItemByName("TextField_FirstNameField_Register") as §#`§;
         var _loc6_:§#`§ = this.§%"D§.getItemByName("TextField_LastNameField_Register") as §#`§;
         var _loc7_:§#`§ = this.§%"D§.getItemByName("TextField_MonthField_Register") as §#`§;
         var _loc8_:§#`§ = this.§%"D§.getItemByName("TextField_DayField_Register") as §#`§;
         var _loc9_:§#`§ = this.§%"D§.getItemByName("TextField_YearField_Register") as §#`§;
         var _loc10_:§#`§ = this.§%"D§.getItemByName("TextField_ZipcodeField_Register") as §#`§;
         _loc1_.§';§.restrict = §2!h§.§%Q§;
         _loc2_.§';§.restrict = §2!h§.§'!-§;
         _loc5_.§';§.restrict = §2!h§.§=s§;
         _loc6_.§';§.restrict = §2!h§.§=s§;
         _loc7_.§';§.restrict = §2!h§.§7!?§;
         _loc8_.§';§.restrict = §2!h§.§7!?§;
         _loc9_.§';§.restrict = §2!h§.§7!?§;
         _loc10_.§';§.restrict = §2!h§.§7!?§;
         _loc1_.§';§.maxChars = 12;
         _loc2_.§';§.maxChars = §2!h§.§7!B§;
         _loc5_.§';§.maxChars = 16;
         _loc6_.§';§.maxChars = 20;
         _loc7_.§';§.maxChars = 2;
         _loc8_.§';§.maxChars = 2;
         _loc9_.§';§.maxChars = 4;
         _loc10_.§';§.maxChars = 5;
         _loc1_.§';§.tabIndex = 1;
         _loc3_.§';§.tabIndex = 2;
         _loc4_.§';§.tabIndex = 3;
         _loc2_.§';§.tabIndex = 4;
         _loc5_.§';§.tabIndex = 5;
         _loc6_.§';§.tabIndex = 6;
         _loc8_.§';§.tabIndex = 7;
         _loc7_.§';§.tabIndex = 8;
         _loc9_.§';§.tabIndex = 9;
         _loc10_.§';§.tabIndex = 10;
         _loc1_.§';§.addEventListener(KeyboardEvent.KEY_UP,this.§1!]§);
         _loc3_.§';§.addEventListener(KeyboardEvent.KEY_UP,this.§,!0§);
         _loc4_.§';§.addEventListener(KeyboardEvent.KEY_UP,this.§,!0§);
         _loc2_.§';§.addEventListener(KeyboardEvent.KEY_UP,this.§%">§);
         _loc5_.§';§.addEventListener(KeyboardEvent.KEY_UP,this.§%!?§);
         _loc6_.§';§.addEventListener(KeyboardEvent.KEY_UP,this.§%!?§);
         _loc8_.§';§.addEventListener(KeyboardEvent.KEY_UP,this.§0!f§);
         _loc7_.§';§.addEventListener(KeyboardEvent.KEY_UP,this.§0!f§);
         _loc9_.§';§.addEventListener(KeyboardEvent.KEY_UP,this.§0!f§);
         _loc10_.§';§.addEventListener(KeyboardEvent.KEY_UP,this.§0!f§);
      }
      
      public function §3!q§() : void
      {
         var _loc2_:String = (this.§%"D§.getItemByName("TextField_NickNameField_Register") as §#`§).§';§.text;
         var _loc3_:String = (this.§%"D§.getItemByName("TextField_PasswordField_Register") as §#`§).§';§.text;
         var _loc4_:String = (this.§%"D§.getItemByName("TextField_PasswordFieldRepeat_Register") as §#`§).§';§.text;
         var _loc5_:String = (_loc5_ = (this.§%"D§.getItemByName("TextField_EmailField_Register") as §#`§).§';§.text).toLowerCase();
         var _loc6_:Boolean = this.§?@§.§#!4§;
         var _loc7_:Boolean = this.§?@§.§2"0§;
         var _loc8_:String = (this.§%"D§.getItemByName("TextField_FirstNameField_Register") as §#`§).§';§.text;
         var _loc9_:String = (this.§%"D§.getItemByName("TextField_LastNameField_Register") as §#`§).§';§.text;
         var _loc10_:int = new Date().fullYear;
         var _loc11_:String = (this.§%"D§.getItemByName("TextField_MonthField_Register") as §#`§).§';§.text;
         var _loc12_:String = (this.§%"D§.getItemByName("TextField_DayField_Register") as §#`§).§';§.text;
         var _loc13_:String;
         var _loc14_:String = (_loc13_ = (this.§%"D§.getItemByName("TextField_YearField_Register") as §#`§).§';§.text) + "-" + _loc11_ + "-" + _loc12_;
         var _loc15_:String = §!H§.§3R§.§6"-§();
         var _loc16_:String = (this.§%"D§.getItemByName("TextField_ZipcodeField_Register") as §#`§).§';§.text;
         this.§<!J§();
         this.§?@§.§;a§ = _loc5_;
         this.§?@§.§#"?§ = _loc3_;
         var _loc17_:int = 5;
         var _loc30_:int = _loc10_;
         var _loc31_:Date = new Date(int(_loc13_),int(_loc11_) - 1,int(_loc12_));
         var _loc32_:int = this.§`!4§(_loc31_);
         if(_loc2_.length < _loc17_)
         {
            this.§4" §(§>7§.NICKNAME_LENGTH);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§4" §(§>7§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§4" §(§>7§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§4" §(§>7§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc34_:RegExp;
         if(!(_loc34_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§4" §(§>7§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§4" §(§>7§.INVALID_EMAIL);
            return;
         }
         if(_loc8_.length < 1)
         {
            this.§4" §(§>7§.FIRSTNAME_LENGTH);
            return;
         }
         if(_loc9_.length < 1)
         {
            this.§4" §(§>7§.LASTNAME_LENGTH);
            return;
         }
         if(_loc11_.length < 1 || _loc12_.length < 1 || _loc13_.length < 4)
         {
            this.§4" §(§>7§.BIRTHDATE_LENGTH);
            return;
         }
         if(int(_loc12_) < 1 || int(_loc12_) > 31)
         {
            this.§4" §(§>7§.DAY_INVALID);
            return;
         }
         if(int(_loc11_) < 1 || int(_loc11_) > 12)
         {
            this.§4" §(§>7§.MONTH_INVALID);
            return;
         }
         if(int(_loc13_) < 1900 || int(_loc13_) > _loc30_)
         {
            this.§4" §(§>7§.YEAR_INVALID);
            return;
         }
         if(!this.§;"7§(int(_loc13_),int(_loc11_),int(_loc12_)))
         {
            this.§4" §(§>7§.BIRTHDATE_INVALID);
            return;
         }
         if(_loc32_ < 13)
         {
            this.§4" §(§>7§.GENERAL_REGISTRATION_ERROR);
            return;
         }
         if(_loc16_.length < 3)
         {
            this.§4" §(§>7§.ZIPCODE_LENGTH);
            return;
         }
         var _loc35_:Object = {
            "type":"registerPlayer",
            "email":_loc5_,
            "password":_loc3_,
            "nickName":_loc2_,
            "marketing":_loc6_,
            "extmarketing":_loc7_,
            "firstname":_loc8_,
            "lastname":_loc9_,
            "language":_loc15_,
            "birthdate":_loc14_,
            "zipcode":_loc16_
         };
         this.§?@§.§]U§.addEventListener(LoginHandlerEvent.§,!!§,this.§-5§);
         this.§?@§.§]U§.addEventListener(LoginHandlerEvent.ERROR,this.§-!1§);
         this.§?@§.§]U§.§74§(_loc35_);
         this.§%"D§.setObjectToFront(this.§%"D§.getItemByName("WaitingPopupLogin"));
         this.§%"D§.getItemByName("WaitingPopupLogin").setVisibility(true);
      }
      
      private function §;"7§(param1:int, param2:int, param3:int) : Boolean
      {
         var _loc4_:Date;
         if((_loc4_ = new Date(param1,param2 - 1,param3)).month + 1 != param2)
         {
            return false;
         }
         if(_loc4_.date != param3)
         {
            return false;
         }
         if(_loc4_.fullYear != param1)
         {
            return false;
         }
         if(_loc4_.milliseconds > new Date().milliseconds)
         {
            return false;
         }
         if(_loc4_.fullYear < 1900)
         {
            return false;
         }
         return true;
      }
      
      private function §`!4§(param1:Date) : int
      {
         var _loc2_:int = 0;
         var _loc3_:Date = new Date();
         _loc2_ = _loc3_.fullYear - param1.fullYear;
         if(_loc3_.month < param1.month || _loc3_.month == param1.month && _loc3_.date < param1.date)
         {
            _loc2_--;
         }
         return _loc2_;
      }
      
      private function §-5§(param1:LoginHandlerEvent) : void
      {
         this.§?@§.§]U§.removeEventListener(LoginHandlerEvent.ERROR,this.§-!1§);
         this.§?@§.§]U§.removeEventListener(LoginHandlerEvent.§,!!§,this.§-5§);
         this.§?@§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§`!d§);
         this.§%"D§.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§?@§.§%L§();
         (§2&§.§6o§ as §@T§).§'"5§.§ ^§ = true;
         this.§?@§.close();
         (§2&§.§6o§ as §@T§).§56§.§&&§();
         if(!§1!N§.§,!<§.verified)
         {
            §2&§.§6o§.§^7§.openPopup(new §]F§(false));
         }
      }
      
      private function §-!1§(param1:LoginHandlerEvent) : void
      {
         this.§?@§.§]U§.removeEventListener(LoginHandlerEvent.ERROR,this.§-!1§);
         this.§?@§.§]U§.removeEventListener(LoginHandlerEvent.§,!!§,this.§-5§);
         this.§%"D§.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§4" §(param1.§+%§);
      }
      
      private function §4" §(param1:String) : void
      {
         this.§%"D§.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §>7§.CONNECTION_ERROR_RETRY:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkZipcode").setVisibility(true);
               break;
            case §>7§.NICKNAME_LENGTH:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §>7§.PASSWORD_LENGTH:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §>7§.PASSWORDS_DONT_MATCH:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §>7§.INVALID_EMAIL:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §>7§.FIRSTNAME_LENGTH:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(true);
               break;
            case §>7§.LASTNAME_LENGTH:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(true);
               break;
            case §>7§.INVALID_AGE:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §>7§.AGE_UNDER_13:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §>7§.FIELD_LENGTH:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §>7§.FIELD_NOT_VALID:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §>7§.BIRTHDATE_LENGTH:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §>7§.BIRTHDATE_INVALID:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §>7§.MONTH_INVALID:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §>7§.DAY_INVALID:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §>7§.YEAR_INVALID:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §>7§.ZIPCODE_LENGTH:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkZipcode").setVisibility(true);
               break;
            default:
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkZipcode").setVisibility(true);
         }
         §2&§.§6o§.§^7§.openPopup(new §&A§(param1,§&A§.§?!d§));
      }
      
      private function §<!J§() : void
      {
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorRegisterMarkZipcode").setVisibility(false);
      }
      
      private function §5;§(param1:uint, param2:uint, param3:RegExp, param4:String) : void
      {
         var _loc5_:String = String.fromCharCode(param1);
         if(param2 == Keyboard.BACKSPACE || param2 == Keyboard.SHIFT || param2 == Keyboard.CAPS_LOCK || param2 == Keyboard.TAB || param2 == Keyboard.LEFT || param2 == Keyboard.RIGHT || param2 == Keyboard.ENTER)
         {
            return;
         }
         if(!_loc5_.match(param3) && param4)
         {
            (§2&§.§6o§ as §@T§).§^7§.openPopup(new §&A§(param4,§&A§.§?!d§));
         }
      }
      
      private function §0!f§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[0-9]/;
         this.§5;§(_loc2_,_loc3_,_loc4_,§>7§.ONLY_NUMBERS_ALLOWED);
      }
      
      private function §%!?§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[A-Za-z\.\-\' ]/;
         this.§5;§(_loc2_,_loc3_,_loc4_,§>7§.ONLY_NAME_CHARS_ALLOWED);
      }
      
      private function §1!]§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[A-Z a-z 0-9 \-]/;
         this.§5;§(_loc2_,_loc3_,_loc4_,§>7§.ONLY_NICKNAME_CHARS_ALLOWED);
      }
      
      private function §,!0§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[*]/;
         this.§5;§(_loc2_,_loc3_,_loc4_,null);
      }
      
      private function §%">§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[*]/;
         this.§5;§(_loc2_,_loc3_,_loc4_,null);
         (§2&§.§6o§ as §@T§).§^7§.openPopup(new §&A§(§>7§.MAKE_SURE_EMAIL_IS_VALID,§&A§.§?!d§));
      }
      
      private function §`!d§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§3!q§();
            return;
         }
      }
   }
}
