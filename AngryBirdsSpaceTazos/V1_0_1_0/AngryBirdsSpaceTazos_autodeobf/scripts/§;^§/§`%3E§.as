package §;^§
{
   import § !Y§.§&$§;
   import §3C§.§9!%§;
   import §3C§.§^p§;
   import §5X§.§@!!§;
   import §6"4§.§&a§;
   import §7!B§.§@!^§;
   import §7!B§.LoginHandlerEvent;
   import §77§.§ ",§;
   import §77§.§&!>§;
   import §9y§.§8"3§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §`>§
   {
       
      
      private var §-!C§:§ ",§;
      
      private var §@!e§:§&a§;
      
      public function §`>§(param1:§ ",§, param2:§&a§)
      {
         super();
         this.§-!C§ = param1;
         this.§@!e§ = param2;
      }
      
      public function §`p§() : void
      {
         var _loc1_:§@!!§ = this.§-!C§.getItemByName("Checkbox_RememberMe_Register") as §@!!§;
         if(this.§@!e§.rememberMeToggled)
         {
            _loc1_.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§@!!§.§else §);
         }
         _loc1_ = this.§-!C§.getItemByName("Checkbox_Marketing") as §@!!§;
         if(this.§@!e§.§'!;§)
         {
            _loc1_.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§@!!§.§else §);
         }
         _loc1_ = this.§-!C§.getItemByName("Checkbox_ExtMarketing") as §@!!§;
         if(this.§@!e§.§!!@§)
         {
            _loc1_.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§@!!§.§else §);
         }
         (this.§-!C§.getItemByName("TextField_EmailField_Register") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_PasswordField_Register") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_PasswordFieldRepeat_Register") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_NickNameField_Register") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_FirstNameField_Register") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_LastNameField_Register") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_MonthField_Register") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_DayField_Register") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_YearField_Register") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_ZipcodeField_Register") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function deActivate() : void
      {
         (this.§-!C§.getItemByName("TextField_NickNameField_Register") as §&!>§).§ !'§.removeEventListener(KeyboardEvent.KEY_UP,this.§3"G§);
         (this.§-!C§.getItemByName("TextField_PasswordField_Register") as §&!>§).§ !'§.removeEventListener(KeyboardEvent.KEY_UP,this.§,"3§);
         (this.§-!C§.getItemByName("TextField_PasswordFieldRepeat_Register") as §&!>§).§ !'§.removeEventListener(KeyboardEvent.KEY_UP,this.§,"3§);
         (this.§-!C§.getItemByName("TextField_EmailField_Register") as §&!>§).§ !'§.removeEventListener(KeyboardEvent.KEY_UP,this.§'@§);
         (this.§-!C§.getItemByName("TextField_FirstNameField_Register") as §&!>§).§ !'§.removeEventListener(KeyboardEvent.KEY_UP,this.§>!8§);
         (this.§-!C§.getItemByName("TextField_LastNameField_Register") as §&!>§).§ !'§.removeEventListener(KeyboardEvent.KEY_UP,this.§>!8§);
         (this.§-!C§.getItemByName("TextField_DayField_Register") as §&!>§).§ !'§.removeEventListener(KeyboardEvent.KEY_UP,this.§]+§);
         (this.§-!C§.getItemByName("TextField_MonthField_Register") as §&!>§).§ !'§.removeEventListener(KeyboardEvent.KEY_UP,this.§]+§);
         (this.§-!C§.getItemByName("TextField_YearField_Register") as §&!>§).§ !'§.removeEventListener(KeyboardEvent.KEY_UP,this.§]+§);
         (this.§-!C§.getItemByName("TextField_ZipcodeField_Register") as §&!>§).§ !'§.removeEventListener(KeyboardEvent.KEY_UP,this.§]+§);
      }
      
      public function dispose() : void
      {
         this.§@!e§.§@!j§.removeEventListener(LoginHandlerEvent.ERROR,this.§-"'§);
         this.§@!e§.§@!j§.removeEventListener(LoginHandlerEvent.§4!Q§,this.§5"%§);
         (this.§-!C§.getItemByName("TextField_EmailField_Register") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_PasswordField_Register") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_PasswordFieldRepeat_Register") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_NickNameField_Register") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_FirstNameField_Register") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_LastNameField_Register") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_MonthField_Register") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_DayField_Register") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_YearField_Register") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_ZipcodeField_Register") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
      }
      
      private function §'h§(param1:MouseEvent) : void
      {
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(false);
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(false);
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(false);
      }
      
      public function activate() : void
      {
         this.§-!C§.setObjectToFront(this.§-!C§.getItemByName("Container_Register_Tab"));
         this.§-!C§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§-!C§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§-!C§.getItemByName("Button_Submit").setVisibility(false);
         this.§-!C§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§-!C§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§-!C§.getItemByName("Checkbox_ExtMarketing").setVisibility(false);
         this.§-!C§.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§-!C§.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§-!C§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§-!C§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§-!C§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§-!C§.getItemByName("TextField_FirstNameField_Register").setVisibility(true);
         this.§-!C§.getItemByName("TextField_LastNameField_Register").setVisibility(true);
         this.§-!C§.getItemByName("TextField_MonthField_Register").setVisibility(true);
         this.§-!C§.getItemByName("TextField_DayField_Register").setVisibility(true);
         this.§-!C§.getItemByName("TextField_YearField_Register").setVisibility(true);
         this.§-!C§.getItemByName("TextField_ZipcodeField_Register").setVisibility(true);
         this.§-!C§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§-!C§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§-!C§.getItemByName("Checkbox_ExtMarketing").setVisibility(true);
         this.§-!C§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§&!>§ = this.§-!C§.getItemByName("TextField_NickNameField_Register") as §&!>§;
         var _loc2_:§&!>§ = this.§-!C§.getItemByName("TextField_EmailField_Register") as §&!>§;
         var _loc3_:§&!>§ = this.§-!C§.getItemByName("TextField_PasswordField_Register") as §&!>§;
         var _loc4_:§&!>§ = this.§-!C§.getItemByName("TextField_PasswordFieldRepeat_Register") as §&!>§;
         var _loc5_:§&!>§ = this.§-!C§.getItemByName("TextField_FirstNameField_Register") as §&!>§;
         var _loc6_:§&!>§ = this.§-!C§.getItemByName("TextField_LastNameField_Register") as §&!>§;
         var _loc7_:§&!>§ = this.§-!C§.getItemByName("TextField_MonthField_Register") as §&!>§;
         var _loc8_:§&!>§ = this.§-!C§.getItemByName("TextField_DayField_Register") as §&!>§;
         var _loc9_:§&!>§ = this.§-!C§.getItemByName("TextField_YearField_Register") as §&!>§;
         var _loc10_:§&!>§ = this.§-!C§.getItemByName("TextField_ZipcodeField_Register") as §&!>§;
         _loc1_.§ !'§.restrict = §&a§.§+S§;
         _loc2_.§ !'§.restrict = §&a§.§'"<§;
         _loc5_.§ !'§.restrict = §&a§.§?!_§;
         _loc6_.§ !'§.restrict = §&a§.§?!_§;
         _loc7_.§ !'§.restrict = §&a§.§-D§;
         _loc8_.§ !'§.restrict = §&a§.§-D§;
         _loc9_.§ !'§.restrict = §&a§.§-D§;
         _loc10_.§ !'§.restrict = §&a§.§-D§;
         _loc1_.§ !'§.maxChars = 12;
         _loc2_.§ !'§.maxChars = §&a§.§%!!§;
         _loc5_.§ !'§.maxChars = 16;
         _loc6_.§ !'§.maxChars = 20;
         _loc7_.§ !'§.maxChars = 2;
         _loc8_.§ !'§.maxChars = 2;
         _loc9_.§ !'§.maxChars = 4;
         _loc10_.§ !'§.maxChars = 5;
         _loc1_.§ !'§.tabIndex = 1;
         _loc3_.§ !'§.tabIndex = 2;
         _loc4_.§ !'§.tabIndex = 3;
         _loc2_.§ !'§.tabIndex = 4;
         _loc5_.§ !'§.tabIndex = 5;
         _loc6_.§ !'§.tabIndex = 6;
         _loc8_.§ !'§.tabIndex = 7;
         _loc7_.§ !'§.tabIndex = 8;
         _loc9_.§ !'§.tabIndex = 9;
         _loc10_.§ !'§.tabIndex = 10;
         _loc1_.§ !'§.addEventListener(KeyboardEvent.KEY_UP,this.§3"G§);
         _loc3_.§ !'§.addEventListener(KeyboardEvent.KEY_UP,this.§,"3§);
         _loc4_.§ !'§.addEventListener(KeyboardEvent.KEY_UP,this.§,"3§);
         _loc2_.§ !'§.addEventListener(KeyboardEvent.KEY_UP,this.§'@§);
         _loc5_.§ !'§.addEventListener(KeyboardEvent.KEY_UP,this.§>!8§);
         _loc6_.§ !'§.addEventListener(KeyboardEvent.KEY_UP,this.§>!8§);
         _loc8_.§ !'§.addEventListener(KeyboardEvent.KEY_UP,this.§]+§);
         _loc7_.§ !'§.addEventListener(KeyboardEvent.KEY_UP,this.§]+§);
         _loc9_.§ !'§.addEventListener(KeyboardEvent.KEY_UP,this.§]+§);
         _loc10_.§ !'§.addEventListener(KeyboardEvent.KEY_UP,this.§]+§);
      }
      
      public function §8"@§() : void
      {
         var _loc2_:String = (this.§-!C§.getItemByName("TextField_NickNameField_Register") as §&!>§).§ !'§.text;
         var _loc3_:String = (this.§-!C§.getItemByName("TextField_PasswordField_Register") as §&!>§).§ !'§.text;
         var _loc4_:String = (this.§-!C§.getItemByName("TextField_PasswordFieldRepeat_Register") as §&!>§).§ !'§.text;
         var _loc5_:String = (_loc5_ = (this.§-!C§.getItemByName("TextField_EmailField_Register") as §&!>§).§ !'§.text).toLowerCase();
         var _loc6_:Boolean = this.§@!e§.§'!;§;
         var _loc7_:Boolean = this.§@!e§.§!!@§;
         var _loc8_:String = (this.§-!C§.getItemByName("TextField_FirstNameField_Register") as §&!>§).§ !'§.text;
         var _loc9_:String = (this.§-!C§.getItemByName("TextField_LastNameField_Register") as §&!>§).§ !'§.text;
         var _loc10_:int = new Date().fullYear;
         var _loc11_:String = (this.§-!C§.getItemByName("TextField_MonthField_Register") as §&!>§).§ !'§.text;
         var _loc12_:String = (this.§-!C§.getItemByName("TextField_DayField_Register") as §&!>§).§ !'§.text;
         var _loc13_:String;
         var _loc14_:String = (_loc13_ = (this.§-!C§.getItemByName("TextField_YearField_Register") as §&!>§).§ !'§.text) + "-" + _loc11_ + "-" + _loc12_;
         var _loc15_:String = §&$§.§[!1§.§^!2§();
         var _loc16_:String = (this.§-!C§.getItemByName("TextField_ZipcodeField_Register") as §&!>§).§ !'§.text;
         this.§@!M§();
         this.§@!e§.§>!x§ = _loc5_;
         this.§@!e§.§-!<§ = _loc3_;
         var _loc17_:int = 5;
         var _loc30_:int = _loc10_;
         var _loc31_:Date = new Date(int(_loc13_),int(_loc11_) - 1,int(_loc12_));
         var _loc32_:int = this.§9V§(_loc31_);
         if(_loc2_.length < _loc17_)
         {
            this.§1I§(§8"3§.NICKNAME_LENGTH);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§1I§(§8"3§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§1I§(§8"3§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§1I§(§8"3§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc34_:RegExp;
         if(!(_loc34_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§1I§(§8"3§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§1I§(§8"3§.INVALID_EMAIL);
            return;
         }
         if(_loc8_.length < 1)
         {
            this.§1I§(§8"3§.FIRSTNAME_LENGTH);
            return;
         }
         if(_loc9_.length < 1)
         {
            this.§1I§(§8"3§.LASTNAME_LENGTH);
            return;
         }
         if(_loc11_.length < 1 || _loc12_.length < 1 || _loc13_.length < 4)
         {
            this.§1I§(§8"3§.BIRTHDATE_LENGTH);
            return;
         }
         if(int(_loc12_) < 1 || int(_loc12_) > 31)
         {
            this.§1I§(§8"3§.DAY_INVALID);
            return;
         }
         if(int(_loc11_) < 1 || int(_loc11_) > 12)
         {
            this.§1I§(§8"3§.MONTH_INVALID);
            return;
         }
         if(int(_loc13_) < 1900 || int(_loc13_) > _loc30_)
         {
            this.§1I§(§8"3§.YEAR_INVALID);
            return;
         }
         if(!this.§&!g§(int(_loc13_),int(_loc11_),int(_loc12_)))
         {
            this.§1I§(§8"3§.BIRTHDATE_INVALID);
            return;
         }
         if(_loc32_ < 13)
         {
            this.§1I§(§8"3§.GENERAL_REGISTRATION_ERROR);
            return;
         }
         if(_loc16_.length < 3)
         {
            this.§1I§(§8"3§.ZIPCODE_LENGTH);
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
         this.§@!e§.§@!j§.addEventListener(LoginHandlerEvent.§4!Q§,this.§5"%§);
         this.§@!e§.§@!j§.addEventListener(LoginHandlerEvent.ERROR,this.§-"'§);
         this.§@!e§.§@!j§.§+1§(_loc35_);
         this.§-!C§.setObjectToFront(this.§-!C§.getItemByName("WaitingPopupLogin"));
         this.§-!C§.getItemByName("WaitingPopupLogin").setVisibility(true);
      }
      
      private function §&!g§(param1:int, param2:int, param3:int) : Boolean
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
      
      private function §9V§(param1:Date) : int
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
      
      private function §5"%§(param1:LoginHandlerEvent) : void
      {
         this.§@!e§.§@!j§.removeEventListener(LoginHandlerEvent.ERROR,this.§-"'§);
         this.§@!e§.§@!j§.removeEventListener(LoginHandlerEvent.§4!Q§,this.§5"%§);
         this.§-!C§.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§@!e§.§9P§();
         (§ !g§.§;!'§ as §`Y§).§]]§.§?m§ = true;
         this.§@!e§.close();
         (§ !g§.§;!'§ as §`Y§).§&,§.§1M§();
         if(!§@!^§.§2j§.verified)
         {
            § !g§.§;!'§.§>";§.openPopup(new §9!%§(false));
         }
      }
      
      private function §-"'§(param1:LoginHandlerEvent) : void
      {
         this.§@!e§.§@!j§.removeEventListener(LoginHandlerEvent.ERROR,this.§-"'§);
         this.§@!e§.§@!j§.removeEventListener(LoginHandlerEvent.§4!Q§,this.§5"%§);
         this.§-!C§.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§1I§(param1.§#5§);
      }
      
      private function §1I§(param1:String) : void
      {
         this.§-!C§.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §8"3§.CONNECTION_ERROR_RETRY:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkZipcode").setVisibility(true);
               break;
            case §8"3§.NICKNAME_LENGTH:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §8"3§.PASSWORD_LENGTH:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §8"3§.PASSWORDS_DONT_MATCH:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §8"3§.INVALID_EMAIL:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §8"3§.FIRSTNAME_LENGTH:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(true);
               break;
            case §8"3§.LASTNAME_LENGTH:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(true);
               break;
            case §8"3§.INVALID_AGE:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §8"3§.AGE_UNDER_13:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §8"3§.FIELD_LENGTH:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §8"3§.FIELD_NOT_VALID:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §8"3§.BIRTHDATE_LENGTH:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §8"3§.BIRTHDATE_INVALID:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §8"3§.MONTH_INVALID:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §8"3§.DAY_INVALID:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §8"3§.YEAR_INVALID:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §8"3§.ZIPCODE_LENGTH:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkZipcode").setVisibility(true);
               break;
            default:
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkZipcode").setVisibility(true);
         }
         § !g§.§;!'§.§>";§.openPopup(new §^p§(param1,§^p§.§>F§));
      }
      
      private function §@!M§() : void
      {
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(false);
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(false);
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(false);
         this.§-!C§.getItemByName("MovieClip_ErrorRegisterMarkZipcode").setVisibility(false);
      }
      
      private function §1r§(param1:uint, param2:uint, param3:RegExp, param4:String) : void
      {
         var _loc5_:String = String.fromCharCode(param1);
         if(param2 == Keyboard.ENTER)
         {
            this.§8"@§();
            return;
         }
         if(param2 == Keyboard.BACKSPACE || param2 == Keyboard.SHIFT || param2 == Keyboard.CAPS_LOCK || param2 == Keyboard.TAB || param2 == Keyboard.LEFT || param2 == Keyboard.RIGHT)
         {
            return;
         }
         if(!_loc5_.match(param3) && param4)
         {
            (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(new §^p§(param4,§^p§.§>F§));
         }
      }
      
      private function §]+§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[0-9]/;
         this.§1r§(_loc2_,_loc3_,_loc4_,§8"3§.ONLY_NUMBERS_ALLOWED);
      }
      
      private function §>!8§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[A-Za-z\.\-\' ]/;
         this.§1r§(_loc2_,_loc3_,_loc4_,§8"3§.ONLY_NAME_CHARS_ALLOWED);
      }
      
      private function §3"G§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[A-Z a-z 0-9 \-]/;
         this.§1r§(_loc2_,_loc3_,_loc4_,§8"3§.ONLY_NICKNAME_CHARS_ALLOWED);
      }
      
      private function §,"3§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[*]/;
         this.§1r§(_loc2_,_loc3_,_loc4_,null);
      }
      
      private function §'@§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[*]/;
         this.§1r§(_loc2_,_loc3_,_loc4_,null);
      }
   }
}
