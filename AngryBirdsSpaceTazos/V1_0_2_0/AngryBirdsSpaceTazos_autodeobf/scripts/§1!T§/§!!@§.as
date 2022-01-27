package §1!T§
{
   import §!i§.§1s§;
   import §!i§.§?"%§;
   import §'#§.§^4§;
   import §1!]§.§,!_§;
   import §1!]§.§^!W§;
   import §4!t§.§>r§;
   import §5s§.§ !_§;
   import §6"6§.§40§;
   import §6"6§.LoginHandlerEvent;
   import §;+§.§3!n§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §!!@§
   {
       
      
      private var §%!M§:§1s§;
      
      private var §8!+§:§3!n§;
      
      public function §!!@§(param1:§1s§, param2:§3!n§)
      {
         super();
         this.§%!M§ = param1;
         this.§8!+§ = param2;
      }
      
      public function §;"2§() : void
      {
         var _loc1_:§>r§ = this.§%!M§.getItemByName("Checkbox_RememberMe_Register") as §>r§;
         if(this.§8!+§.rememberMeToggled)
         {
            _loc1_.setComponentState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§>r§.§""7§);
         }
         _loc1_ = this.§%!M§.getItemByName("Checkbox_Marketing") as §>r§;
         if(this.§8!+§.§2!1§)
         {
            _loc1_.setComponentState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§>r§.§""7§);
         }
         _loc1_ = this.§%!M§.getItemByName("Checkbox_ExtMarketing") as §>r§;
         if(this.§8!+§.§&S§)
         {
            _loc1_.setComponentState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§>r§.§""7§);
         }
         (this.§%!M§.getItemByName("TextField_EmailField_Register") as §?"%§).§8!o§.addEventListener(MouseEvent.MOUSE_DOWN,this.§`!w§);
         (this.§%!M§.getItemByName("TextField_PasswordField_Register") as §?"%§).§8!o§.addEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_PasswordFieldRepeat_Register") as §?"%§).§8!o§.addEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_NickNameField_Register") as §?"%§).§8!o§.addEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_FirstNameField_Register") as §?"%§).§8!o§.addEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_LastNameField_Register") as §?"%§).§8!o§.addEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_MonthField_Register") as §?"%§).§8!o§.addEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_DayField_Register") as §?"%§).§8!o§.addEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_YearField_Register") as §?"%§).§8!o§.addEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_ZipcodeField_Register") as §?"%§).§8!o§.addEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function deActivate() : void
      {
         (this.§%!M§.getItemByName("TextField_NickNameField_Register") as §?"%§).§8!o§.removeEventListener(KeyboardEvent.KEY_UP,this.§+!m§);
         (this.§%!M§.getItemByName("TextField_PasswordField_Register") as §?"%§).§8!o§.removeEventListener(KeyboardEvent.KEY_UP,this.§@c§);
         (this.§%!M§.getItemByName("TextField_PasswordFieldRepeat_Register") as §?"%§).§8!o§.removeEventListener(KeyboardEvent.KEY_UP,this.§@c§);
         (this.§%!M§.getItemByName("TextField_EmailField_Register") as §?"%§).§8!o§.removeEventListener(KeyboardEvent.KEY_UP,this.§%t§);
         (this.§%!M§.getItemByName("TextField_FirstNameField_Register") as §?"%§).§8!o§.removeEventListener(KeyboardEvent.KEY_UP,this.§#!R§);
         (this.§%!M§.getItemByName("TextField_LastNameField_Register") as §?"%§).§8!o§.removeEventListener(KeyboardEvent.KEY_UP,this.§#!R§);
         (this.§%!M§.getItemByName("TextField_DayField_Register") as §?"%§).§8!o§.removeEventListener(KeyboardEvent.KEY_UP,this.§true §);
         (this.§%!M§.getItemByName("TextField_MonthField_Register") as §?"%§).§8!o§.removeEventListener(KeyboardEvent.KEY_UP,this.§true §);
         (this.§%!M§.getItemByName("TextField_YearField_Register") as §?"%§).§8!o§.removeEventListener(KeyboardEvent.KEY_UP,this.§true §);
         (this.§%!M§.getItemByName("TextField_ZipcodeField_Register") as §?"%§).§8!o§.removeEventListener(KeyboardEvent.KEY_UP,this.§true §);
      }
      
      public function dispose() : void
      {
         this.§8!+§.§5!d§.removeEventListener(LoginHandlerEvent.ERROR,this.§-N§);
         this.§8!+§.§5!d§.removeEventListener(LoginHandlerEvent.§%&§,this.§8!X§);
         (this.§%!M§.getItemByName("TextField_EmailField_Register") as §?"%§).§8!o§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`!w§);
         (this.§%!M§.getItemByName("TextField_PasswordField_Register") as §?"%§).§8!o§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_PasswordFieldRepeat_Register") as §?"%§).§8!o§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_NickNameField_Register") as §?"%§).§8!o§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_FirstNameField_Register") as §?"%§).§8!o§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_LastNameField_Register") as §?"%§).§8!o§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_MonthField_Register") as §?"%§).§8!o§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_DayField_Register") as §?"%§).§8!o§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_YearField_Register") as §?"%§).§8!o§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_ZipcodeField_Register") as §?"%§).§8!o§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
      }
      
      private function §else §(param1:MouseEvent) : void
      {
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(false);
      }
      
      private function §`!w§(param1:MouseEvent) : void
      {
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(false);
         (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(new §,!_§(§ !_§.MAKE_SURE_EMAIL_IS_VALID,§,!_§.§;V§));
      }
      
      public function activate() : void
      {
         this.§%!M§.setObjectToFront(this.§%!M§.getItemByName("Container_Register_Tab"));
         this.§%!M§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§%!M§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§%!M§.getItemByName("Button_Submit").setVisibility(false);
         this.§%!M§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§%!M§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§%!M§.getItemByName("Checkbox_ExtMarketing").setVisibility(false);
         this.§%!M§.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§%!M§.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§%!M§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§%!M§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§%!M§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§%!M§.getItemByName("TextField_FirstNameField_Register").setVisibility(true);
         this.§%!M§.getItemByName("TextField_LastNameField_Register").setVisibility(true);
         this.§%!M§.getItemByName("TextField_MonthField_Register").setVisibility(true);
         this.§%!M§.getItemByName("TextField_DayField_Register").setVisibility(true);
         this.§%!M§.getItemByName("TextField_YearField_Register").setVisibility(true);
         this.§%!M§.getItemByName("TextField_ZipcodeField_Register").setVisibility(true);
         this.§%!M§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§%!M§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§%!M§.getItemByName("Checkbox_ExtMarketing").setVisibility(true);
         this.§%!M§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§?"%§ = this.§%!M§.getItemByName("TextField_NickNameField_Register") as §?"%§;
         var _loc2_:§?"%§ = this.§%!M§.getItemByName("TextField_EmailField_Register") as §?"%§;
         var _loc3_:§?"%§ = this.§%!M§.getItemByName("TextField_PasswordField_Register") as §?"%§;
         var _loc4_:§?"%§ = this.§%!M§.getItemByName("TextField_PasswordFieldRepeat_Register") as §?"%§;
         var _loc5_:§?"%§ = this.§%!M§.getItemByName("TextField_FirstNameField_Register") as §?"%§;
         var _loc6_:§?"%§ = this.§%!M§.getItemByName("TextField_LastNameField_Register") as §?"%§;
         var _loc7_:§?"%§ = this.§%!M§.getItemByName("TextField_MonthField_Register") as §?"%§;
         var _loc8_:§?"%§ = this.§%!M§.getItemByName("TextField_DayField_Register") as §?"%§;
         var _loc9_:§?"%§ = this.§%!M§.getItemByName("TextField_YearField_Register") as §?"%§;
         var _loc10_:§?"%§ = this.§%!M§.getItemByName("TextField_ZipcodeField_Register") as §?"%§;
         _loc1_.§8!o§.restrict = §3!n§.§,!g§;
         _loc2_.§8!o§.restrict = §3!n§.§7!G§;
         _loc5_.§8!o§.restrict = §3!n§.§64§;
         _loc6_.§8!o§.restrict = §3!n§.§64§;
         _loc7_.§8!o§.restrict = §3!n§.§`!x§;
         _loc8_.§8!o§.restrict = §3!n§.§`!x§;
         _loc9_.§8!o§.restrict = §3!n§.§`!x§;
         _loc10_.§8!o§.restrict = §3!n§.§`!x§;
         _loc1_.§8!o§.maxChars = 12;
         _loc2_.§8!o§.maxChars = §3!n§.§7!m§;
         _loc5_.§8!o§.maxChars = 16;
         _loc6_.§8!o§.maxChars = 20;
         _loc7_.§8!o§.maxChars = 2;
         _loc8_.§8!o§.maxChars = 2;
         _loc9_.§8!o§.maxChars = 4;
         _loc10_.§8!o§.maxChars = 5;
         _loc1_.§8!o§.tabIndex = 1;
         _loc3_.§8!o§.tabIndex = 2;
         _loc4_.§8!o§.tabIndex = 3;
         _loc2_.§8!o§.tabIndex = 4;
         _loc5_.§8!o§.tabIndex = 5;
         _loc6_.§8!o§.tabIndex = 6;
         _loc8_.§8!o§.tabIndex = 7;
         _loc7_.§8!o§.tabIndex = 8;
         _loc9_.§8!o§.tabIndex = 9;
         _loc10_.§8!o§.tabIndex = 10;
         _loc1_.§8!o§.addEventListener(KeyboardEvent.KEY_UP,this.§+!m§);
         _loc3_.§8!o§.addEventListener(KeyboardEvent.KEY_UP,this.§@c§);
         _loc4_.§8!o§.addEventListener(KeyboardEvent.KEY_UP,this.§@c§);
         _loc2_.§8!o§.addEventListener(KeyboardEvent.KEY_UP,this.§%t§);
         _loc5_.§8!o§.addEventListener(KeyboardEvent.KEY_UP,this.§#!R§);
         _loc6_.§8!o§.addEventListener(KeyboardEvent.KEY_UP,this.§#!R§);
         _loc8_.§8!o§.addEventListener(KeyboardEvent.KEY_UP,this.§true §);
         _loc7_.§8!o§.addEventListener(KeyboardEvent.KEY_UP,this.§true §);
         _loc9_.§8!o§.addEventListener(KeyboardEvent.KEY_UP,this.§true §);
         _loc10_.§8!o§.addEventListener(KeyboardEvent.KEY_UP,this.§true §);
      }
      
      public function §@!f§() : void
      {
         var _loc2_:String = (this.§%!M§.getItemByName("TextField_NickNameField_Register") as §?"%§).§8!o§.text;
         var _loc3_:String = (this.§%!M§.getItemByName("TextField_PasswordField_Register") as §?"%§).§8!o§.text;
         var _loc4_:String = (this.§%!M§.getItemByName("TextField_PasswordFieldRepeat_Register") as §?"%§).§8!o§.text;
         var _loc5_:String = (_loc5_ = (this.§%!M§.getItemByName("TextField_EmailField_Register") as §?"%§).§8!o§.text).toLowerCase();
         var _loc6_:Boolean = this.§8!+§.§2!1§;
         var _loc7_:Boolean = this.§8!+§.§&S§;
         var _loc8_:String = (this.§%!M§.getItemByName("TextField_FirstNameField_Register") as §?"%§).§8!o§.text;
         var _loc9_:String = (this.§%!M§.getItemByName("TextField_LastNameField_Register") as §?"%§).§8!o§.text;
         var _loc10_:int = new Date().fullYear;
         var _loc11_:String = (this.§%!M§.getItemByName("TextField_MonthField_Register") as §?"%§).§8!o§.text;
         var _loc12_:String = (this.§%!M§.getItemByName("TextField_DayField_Register") as §?"%§).§8!o§.text;
         var _loc13_:String;
         var _loc14_:String = (_loc13_ = (this.§%!M§.getItemByName("TextField_YearField_Register") as §?"%§).§8!o§.text) + "-" + _loc11_ + "-" + _loc12_;
         var _loc15_:String = §^4§.§<"B§.§+!P§();
         var _loc16_:String = (this.§%!M§.getItemByName("TextField_ZipcodeField_Register") as §?"%§).§8!o§.text;
         this.§3!h§();
         this.§8!+§.§^!p§ = _loc5_;
         this.§8!+§.§3,§ = _loc3_;
         var _loc17_:int = 5;
         var _loc30_:int = _loc10_;
         var _loc31_:Date = new Date(int(_loc13_),int(_loc11_) - 1,int(_loc12_));
         var _loc32_:int = this.§5!m§(_loc31_);
         if(_loc2_.length < _loc17_)
         {
            this.§]8§(§ !_§.NICKNAME_LENGTH);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§]8§(§ !_§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§]8§(§ !_§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§]8§(§ !_§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc34_:RegExp;
         if(!(_loc34_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§]8§(§ !_§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§]8§(§ !_§.INVALID_EMAIL);
            return;
         }
         if(_loc8_.length < 1)
         {
            this.§]8§(§ !_§.FIRSTNAME_LENGTH);
            return;
         }
         if(_loc9_.length < 1)
         {
            this.§]8§(§ !_§.LASTNAME_LENGTH);
            return;
         }
         if(_loc11_.length < 1 || _loc12_.length < 1 || _loc13_.length < 4)
         {
            this.§]8§(§ !_§.BIRTHDATE_LENGTH);
            return;
         }
         if(int(_loc12_) < 1 || int(_loc12_) > 31)
         {
            this.§]8§(§ !_§.DAY_INVALID);
            return;
         }
         if(int(_loc11_) < 1 || int(_loc11_) > 12)
         {
            this.§]8§(§ !_§.MONTH_INVALID);
            return;
         }
         if(int(_loc13_) < 1900 || int(_loc13_) > _loc30_)
         {
            this.§]8§(§ !_§.YEAR_INVALID);
            return;
         }
         if(!this.§=!m§(int(_loc13_),int(_loc11_),int(_loc12_)))
         {
            this.§]8§(§ !_§.BIRTHDATE_INVALID);
            return;
         }
         if(_loc32_ < 13)
         {
            this.§]8§(§ !_§.GENERAL_REGISTRATION_ERROR);
            return;
         }
         if(_loc16_.length < 3)
         {
            this.§]8§(§ !_§.ZIPCODE_LENGTH);
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
         this.§8!+§.§5!d§.addEventListener(LoginHandlerEvent.§%&§,this.§8!X§);
         this.§8!+§.§5!d§.addEventListener(LoginHandlerEvent.ERROR,this.§-N§);
         this.§8!+§.§5!d§.§ !T§(_loc35_);
         this.§%!M§.setObjectToFront(this.§%!M§.getItemByName("WaitingPopupLogin"));
         this.§%!M§.getItemByName("WaitingPopupLogin").setVisibility(true);
      }
      
      private function §=!m§(param1:int, param2:int, param3:int) : Boolean
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
      
      private function §5!m§(param1:Date) : int
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
      
      private function §8!X§(param1:LoginHandlerEvent) : void
      {
         this.§8!+§.§5!d§.removeEventListener(LoginHandlerEvent.ERROR,this.§-N§);
         this.§8!+§.§5!d§.removeEventListener(LoginHandlerEvent.§%&§,this.§8!X§);
         this.§%!M§.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§8!+§.§-!m§();
         (§&!h§.§ u§ as §^"=§).§^!7§.§,n§ = true;
         this.§8!+§.close();
         (§&!h§.§ u§ as §^"=§).§?P§.§'!L§();
         if(!§40§.§1"$§.verified)
         {
            §&!h§.§ u§.§-"F§.openPopup(new §^!W§(false));
         }
      }
      
      private function §-N§(param1:LoginHandlerEvent) : void
      {
         this.§8!+§.§5!d§.removeEventListener(LoginHandlerEvent.ERROR,this.§-N§);
         this.§8!+§.§5!d§.removeEventListener(LoginHandlerEvent.§%&§,this.§8!X§);
         this.§%!M§.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§]8§(param1.§5"F§);
      }
      
      private function §]8§(param1:String) : void
      {
         this.§%!M§.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case § !_§.CONNECTION_ERROR_RETRY:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkZipcode").setVisibility(true);
               break;
            case § !_§.NICKNAME_LENGTH:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case § !_§.PASSWORD_LENGTH:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case § !_§.PASSWORDS_DONT_MATCH:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case § !_§.INVALID_EMAIL:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case § !_§.FIRSTNAME_LENGTH:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(true);
               break;
            case § !_§.LASTNAME_LENGTH:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(true);
               break;
            case § !_§.INVALID_AGE:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case § !_§.AGE_UNDER_13:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case § !_§.FIELD_LENGTH:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case § !_§.FIELD_NOT_VALID:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case § !_§.BIRTHDATE_LENGTH:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case § !_§.BIRTHDATE_INVALID:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case § !_§.MONTH_INVALID:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case § !_§.DAY_INVALID:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case § !_§.YEAR_INVALID:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case § !_§.ZIPCODE_LENGTH:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkZipcode").setVisibility(true);
               break;
            default:
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkZipcode").setVisibility(true);
         }
         §&!h§.§ u§.§-"F§.openPopup(new §,!_§(param1,§,!_§.§;V§));
      }
      
      private function §3!h§() : void
      {
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorRegisterMarkZipcode").setVisibility(false);
      }
      
      private function § for§(param1:uint, param2:uint, param3:RegExp, param4:String) : void
      {
         var _loc5_:String = String.fromCharCode(param1);
         if(param2 == Keyboard.ENTER)
         {
            this.§@!f§();
            return;
         }
         if(param2 == Keyboard.BACKSPACE || param2 == Keyboard.SHIFT || param2 == Keyboard.CAPS_LOCK || param2 == Keyboard.TAB || param2 == Keyboard.LEFT || param2 == Keyboard.RIGHT)
         {
            return;
         }
         if(!_loc5_.match(param3) && param4)
         {
            (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(new §,!_§(param4,§,!_§.§;V§));
         }
      }
      
      private function §true §(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[0-9]/;
         this.§ for§(_loc2_,_loc3_,_loc4_,§ !_§.ONLY_NUMBERS_ALLOWED);
      }
      
      private function §#!R§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[A-Za-z\.\-\' ]/;
         this.§ for§(_loc2_,_loc3_,_loc4_,§ !_§.ONLY_NAME_CHARS_ALLOWED);
      }
      
      private function §+!m§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[A-Z a-z 0-9 \-]/;
         this.§ for§(_loc2_,_loc3_,_loc4_,§ !_§.ONLY_NICKNAME_CHARS_ALLOWED);
      }
      
      private function §@c§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[*]/;
         this.§ for§(_loc2_,_loc3_,_loc4_,null);
      }
      
      private function §%t§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[*]/;
         this.§ for§(_loc2_,_loc3_,_loc4_,null);
         (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(new §,!_§(§ !_§.MAKE_SURE_EMAIL_IS_VALID,§,!_§.§;V§));
      }
   }
}
