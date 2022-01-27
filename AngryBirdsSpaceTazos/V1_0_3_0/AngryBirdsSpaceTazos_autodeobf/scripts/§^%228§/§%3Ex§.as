package §^"8§
{
   import §!"0§.§`"F§;
   import §!"4§.§;";§;
   import §!"4§.LoginHandlerEvent;
   import §&e§.§<x§;
   import §'!n§.§[!I§;
   import §+"C§.§3'§;
   import §+"C§.§["G§;
   import §,!7§.§2a§;
   import §,!7§.§5!k§;
   import §6B§.§5![§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §>x§
   {
       
      
      private var §3X§:§5!k§;
      
      private var §"" §:§`"F§;
      
      public function §>x§(param1:§5!k§, param2:§`"F§)
      {
         super();
         this.§3X§ = param1;
         this.§"" § = param2;
      }
      
      public function §=;§() : void
      {
         var _loc1_:§5![§ = this.§3X§.getItemByName("Checkbox_RememberMe_Register") as §5![§;
         if(this.§"" §.rememberMeToggled)
         {
            _loc1_.setComponentState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§5![§.§`=§);
         }
         _loc1_ = this.§3X§.getItemByName("Checkbox_Marketing") as §5![§;
         if(this.§"" §.§'!_§)
         {
            _loc1_.setComponentState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§5![§.§`=§);
         }
         _loc1_ = this.§3X§.getItemByName("Checkbox_ExtMarketing") as §5![§;
         if(this.§"" §.§90§)
         {
            _loc1_.setComponentState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§5![§.§`=§);
         }
         (this.§3X§.getItemByName("TextField_EmailField_Register") as §2a§).§%!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<K§);
         (this.§3X§.getItemByName("TextField_PasswordField_Register") as §2a§).§%!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_PasswordFieldRepeat_Register") as §2a§).§%!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_NickNameField_Register") as §2a§).§%!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_FirstNameField_Register") as §2a§).§%!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_LastNameField_Register") as §2a§).§%!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_MonthField_Register") as §2a§).§%!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_DayField_Register") as §2a§).§%!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_YearField_Register") as §2a§).§%!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_ZipcodeField_Register") as §2a§).§%!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function deActivate() : void
      {
         (this.§3X§.getItemByName("TextField_NickNameField_Register") as §2a§).§%!%§.removeEventListener(KeyboardEvent.KEY_UP,this.§<T§);
         (this.§3X§.getItemByName("TextField_PasswordField_Register") as §2a§).§%!%§.removeEventListener(KeyboardEvent.KEY_UP,this.§^k§);
         (this.§3X§.getItemByName("TextField_PasswordFieldRepeat_Register") as §2a§).§%!%§.removeEventListener(KeyboardEvent.KEY_UP,this.§^k§);
         (this.§3X§.getItemByName("TextField_EmailField_Register") as §2a§).§%!%§.removeEventListener(KeyboardEvent.KEY_UP,this.§<3§);
         (this.§3X§.getItemByName("TextField_FirstNameField_Register") as §2a§).§%!%§.removeEventListener(KeyboardEvent.KEY_UP,this.§=b§);
         (this.§3X§.getItemByName("TextField_LastNameField_Register") as §2a§).§%!%§.removeEventListener(KeyboardEvent.KEY_UP,this.§=b§);
         (this.§3X§.getItemByName("TextField_DayField_Register") as §2a§).§%!%§.removeEventListener(KeyboardEvent.KEY_UP,this.§"!z§);
         (this.§3X§.getItemByName("TextField_MonthField_Register") as §2a§).§%!%§.removeEventListener(KeyboardEvent.KEY_UP,this.§"!z§);
         (this.§3X§.getItemByName("TextField_YearField_Register") as §2a§).§%!%§.removeEventListener(KeyboardEvent.KEY_UP,this.§"!z§);
         (this.§3X§.getItemByName("TextField_ZipcodeField_Register") as §2a§).§%!%§.removeEventListener(KeyboardEvent.KEY_UP,this.§"!z§);
         this.§"" §.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8!b§);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§"" §.§&!I§.removeEventListener(LoginHandlerEvent.ERROR,this.§";§);
         this.§"" §.§&!I§.removeEventListener(LoginHandlerEvent.§7t§,this.§]",§);
         (this.§3X§.getItemByName("TextField_EmailField_Register") as §2a§).§%!%§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<K§);
         (this.§3X§.getItemByName("TextField_PasswordField_Register") as §2a§).§%!%§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_PasswordFieldRepeat_Register") as §2a§).§%!%§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_NickNameField_Register") as §2a§).§%!%§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_FirstNameField_Register") as §2a§).§%!%§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_LastNameField_Register") as §2a§).§%!%§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_MonthField_Register") as §2a§).§%!%§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_DayField_Register") as §2a§).§%!%§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_YearField_Register") as §2a§).§%!%§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_ZipcodeField_Register") as §2a§).§%!%§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         this.§"" §.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8!b§);
      }
      
      private function §#<§(param1:MouseEvent) : void
      {
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(false);
      }
      
      private function §<K§(param1:MouseEvent) : void
      {
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(false);
         (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(new §["G§(§<x§.MAKE_SURE_EMAIL_IS_VALID,§["G§.§[!r§));
      }
      
      public function activate() : void
      {
         this.§3X§.setObjectToFront(this.§3X§.getItemByName("Container_Register_Tab"));
         this.§"" §.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§8!b§);
         this.§3X§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§3X§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§3X§.getItemByName("Button_Submit").setVisibility(false);
         this.§3X§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§3X§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§3X§.getItemByName("Checkbox_ExtMarketing").setVisibility(false);
         this.§3X§.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§3X§.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§3X§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§3X§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§3X§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§3X§.getItemByName("TextField_FirstNameField_Register").setVisibility(true);
         this.§3X§.getItemByName("TextField_LastNameField_Register").setVisibility(true);
         this.§3X§.getItemByName("TextField_MonthField_Register").setVisibility(true);
         this.§3X§.getItemByName("TextField_DayField_Register").setVisibility(true);
         this.§3X§.getItemByName("TextField_YearField_Register").setVisibility(true);
         this.§3X§.getItemByName("TextField_ZipcodeField_Register").setVisibility(true);
         this.§3X§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§3X§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§3X§.getItemByName("Checkbox_ExtMarketing").setVisibility(true);
         this.§3X§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§2a§ = this.§3X§.getItemByName("TextField_NickNameField_Register") as §2a§;
         var _loc2_:§2a§ = this.§3X§.getItemByName("TextField_EmailField_Register") as §2a§;
         var _loc3_:§2a§ = this.§3X§.getItemByName("TextField_PasswordField_Register") as §2a§;
         var _loc4_:§2a§ = this.§3X§.getItemByName("TextField_PasswordFieldRepeat_Register") as §2a§;
         var _loc5_:§2a§ = this.§3X§.getItemByName("TextField_FirstNameField_Register") as §2a§;
         var _loc6_:§2a§ = this.§3X§.getItemByName("TextField_LastNameField_Register") as §2a§;
         var _loc7_:§2a§ = this.§3X§.getItemByName("TextField_MonthField_Register") as §2a§;
         var _loc8_:§2a§ = this.§3X§.getItemByName("TextField_DayField_Register") as §2a§;
         var _loc9_:§2a§ = this.§3X§.getItemByName("TextField_YearField_Register") as §2a§;
         var _loc10_:§2a§ = this.§3X§.getItemByName("TextField_ZipcodeField_Register") as §2a§;
         _loc1_.§%!%§.restrict = §`"F§.§+Q§;
         _loc2_.§%!%§.restrict = §`"F§.§ !t§;
         _loc5_.§%!%§.restrict = §`"F§.§ !e§;
         _loc6_.§%!%§.restrict = §`"F§.§ !e§;
         _loc7_.§%!%§.restrict = §`"F§.§&p§;
         _loc8_.§%!%§.restrict = §`"F§.§&p§;
         _loc9_.§%!%§.restrict = §`"F§.§&p§;
         _loc10_.§%!%§.restrict = §`"F§.§&p§;
         _loc1_.§%!%§.maxChars = 12;
         _loc2_.§%!%§.maxChars = §`"F§.§3"C§;
         _loc5_.§%!%§.maxChars = 16;
         _loc6_.§%!%§.maxChars = 20;
         _loc7_.§%!%§.maxChars = 2;
         _loc8_.§%!%§.maxChars = 2;
         _loc9_.§%!%§.maxChars = 4;
         _loc10_.§%!%§.maxChars = 5;
         _loc1_.§%!%§.tabIndex = 1;
         _loc3_.§%!%§.tabIndex = 2;
         _loc4_.§%!%§.tabIndex = 3;
         _loc2_.§%!%§.tabIndex = 4;
         _loc5_.§%!%§.tabIndex = 5;
         _loc6_.§%!%§.tabIndex = 6;
         _loc8_.§%!%§.tabIndex = 7;
         _loc7_.§%!%§.tabIndex = 8;
         _loc9_.§%!%§.tabIndex = 9;
         _loc10_.§%!%§.tabIndex = 10;
         _loc1_.§%!%§.addEventListener(KeyboardEvent.KEY_UP,this.§<T§);
         _loc3_.§%!%§.addEventListener(KeyboardEvent.KEY_UP,this.§^k§);
         _loc4_.§%!%§.addEventListener(KeyboardEvent.KEY_UP,this.§^k§);
         _loc2_.§%!%§.addEventListener(KeyboardEvent.KEY_UP,this.§<3§);
         _loc5_.§%!%§.addEventListener(KeyboardEvent.KEY_UP,this.§=b§);
         _loc6_.§%!%§.addEventListener(KeyboardEvent.KEY_UP,this.§=b§);
         _loc8_.§%!%§.addEventListener(KeyboardEvent.KEY_UP,this.§"!z§);
         _loc7_.§%!%§.addEventListener(KeyboardEvent.KEY_UP,this.§"!z§);
         _loc9_.§%!%§.addEventListener(KeyboardEvent.KEY_UP,this.§"!z§);
         _loc10_.§%!%§.addEventListener(KeyboardEvent.KEY_UP,this.§"!z§);
      }
      
      public function §;!X§() : void
      {
         var _loc2_:String = (this.§3X§.getItemByName("TextField_NickNameField_Register") as §2a§).§%!%§.text;
         var _loc3_:String = (this.§3X§.getItemByName("TextField_PasswordField_Register") as §2a§).§%!%§.text;
         var _loc4_:String = (this.§3X§.getItemByName("TextField_PasswordFieldRepeat_Register") as §2a§).§%!%§.text;
         var _loc5_:String = (_loc5_ = (this.§3X§.getItemByName("TextField_EmailField_Register") as §2a§).§%!%§.text).toLowerCase();
         var _loc6_:Boolean = this.§"" §.§'!_§;
         var _loc7_:Boolean = this.§"" §.§90§;
         var _loc8_:String = (this.§3X§.getItemByName("TextField_FirstNameField_Register") as §2a§).§%!%§.text;
         var _loc9_:String = (this.§3X§.getItemByName("TextField_LastNameField_Register") as §2a§).§%!%§.text;
         var _loc10_:int = new Date().fullYear;
         var _loc11_:String = (this.§3X§.getItemByName("TextField_MonthField_Register") as §2a§).§%!%§.text;
         var _loc12_:String = (this.§3X§.getItemByName("TextField_DayField_Register") as §2a§).§%!%§.text;
         var _loc13_:String;
         var _loc14_:String = (_loc13_ = (this.§3X§.getItemByName("TextField_YearField_Register") as §2a§).§%!%§.text) + "-" + _loc11_ + "-" + _loc12_;
         var _loc15_:String = §[!I§.§8!J§.§,"+§();
         var _loc16_:String = (this.§3X§.getItemByName("TextField_ZipcodeField_Register") as §2a§).§%!%§.text;
         this.§'!L§();
         this.§"" §.§+!R§ = _loc5_;
         this.§"" §.§0"F§ = _loc3_;
         var _loc17_:int = 5;
         var _loc30_:int = _loc10_;
         var _loc31_:Date = new Date(int(_loc13_),int(_loc11_) - 1,int(_loc12_));
         var _loc32_:int = this.§?_§(_loc31_);
         if(_loc2_.length < _loc17_)
         {
            this.§6N§(§<x§.NICKNAME_LENGTH);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§6N§(§<x§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§6N§(§<x§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§6N§(§<x§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc34_:RegExp;
         if(!(_loc34_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§6N§(§<x§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§6N§(§<x§.INVALID_EMAIL);
            return;
         }
         if(_loc8_.length < 1)
         {
            this.§6N§(§<x§.FIRSTNAME_LENGTH);
            return;
         }
         if(_loc9_.length < 1)
         {
            this.§6N§(§<x§.LASTNAME_LENGTH);
            return;
         }
         if(_loc11_.length < 1 || _loc12_.length < 1 || _loc13_.length < 4)
         {
            this.§6N§(§<x§.BIRTHDATE_LENGTH);
            return;
         }
         if(int(_loc12_) < 1 || int(_loc12_) > 31)
         {
            this.§6N§(§<x§.DAY_INVALID);
            return;
         }
         if(int(_loc11_) < 1 || int(_loc11_) > 12)
         {
            this.§6N§(§<x§.MONTH_INVALID);
            return;
         }
         if(int(_loc13_) < 1900 || int(_loc13_) > _loc30_)
         {
            this.§6N§(§<x§.YEAR_INVALID);
            return;
         }
         if(!this.§@"0§(int(_loc13_),int(_loc11_),int(_loc12_)))
         {
            this.§6N§(§<x§.BIRTHDATE_INVALID);
            return;
         }
         if(_loc32_ < 13)
         {
            this.§6N§(§<x§.GENERAL_REGISTRATION_ERROR);
            return;
         }
         if(_loc16_.length < 3)
         {
            this.§6N§(§<x§.ZIPCODE_LENGTH);
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
         this.§"" §.§&!I§.addEventListener(LoginHandlerEvent.§7t§,this.§]",§);
         this.§"" §.§&!I§.addEventListener(LoginHandlerEvent.ERROR,this.§";§);
         this.§"" §.§&!I§.§-"D§(_loc35_);
         this.§3X§.setObjectToFront(this.§3X§.getItemByName("WaitingPopupLogin"));
         this.§3X§.getItemByName("WaitingPopupLogin").setVisibility(true);
      }
      
      private function §@"0§(param1:int, param2:int, param3:int) : Boolean
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
      
      private function §?_§(param1:Date) : int
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
      
      private function §]",§(param1:LoginHandlerEvent) : void
      {
         this.§"" §.§&!I§.removeEventListener(LoginHandlerEvent.ERROR,this.§";§);
         this.§"" §.§&!I§.removeEventListener(LoginHandlerEvent.§7t§,this.§]",§);
         this.§"" §.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8!b§);
         this.§3X§.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§"" §.§?'§();
         (§&"<§.§<!7§ as §["!§).§<!%§.§-"9§ = true;
         this.§"" §.close();
         (§&"<§.§<!7§ as §["!§).§^"<§.§&!'§();
         if(!§;";§.§3U§.verified)
         {
            §&"<§.§<!7§.§1"0§.openPopup(new §3'§(false));
         }
      }
      
      private function §";§(param1:LoginHandlerEvent) : void
      {
         this.§"" §.§&!I§.removeEventListener(LoginHandlerEvent.ERROR,this.§";§);
         this.§"" §.§&!I§.removeEventListener(LoginHandlerEvent.§7t§,this.§]",§);
         this.§3X§.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§6N§(param1.§7!8§);
      }
      
      private function §6N§(param1:String) : void
      {
         this.§3X§.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §<x§.CONNECTION_ERROR_RETRY:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkZipcode").setVisibility(true);
               break;
            case §<x§.NICKNAME_LENGTH:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §<x§.PASSWORD_LENGTH:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §<x§.PASSWORDS_DONT_MATCH:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §<x§.INVALID_EMAIL:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §<x§.FIRSTNAME_LENGTH:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(true);
               break;
            case §<x§.LASTNAME_LENGTH:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(true);
               break;
            case §<x§.INVALID_AGE:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §<x§.AGE_UNDER_13:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §<x§.FIELD_LENGTH:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §<x§.FIELD_NOT_VALID:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §<x§.BIRTHDATE_LENGTH:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §<x§.BIRTHDATE_INVALID:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §<x§.MONTH_INVALID:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §<x§.DAY_INVALID:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §<x§.YEAR_INVALID:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               break;
            case §<x§.ZIPCODE_LENGTH:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkZipcode").setVisibility(true);
               break;
            default:
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkZipcode").setVisibility(true);
         }
         §&"<§.§<!7§.§1"0§.openPopup(new §["G§(param1,§["G§.§[!r§));
      }
      
      private function §'!L§() : void
      {
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkFirstName").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkLastName").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkAge").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorRegisterMarkZipcode").setVisibility(false);
      }
      
      private function §-!4§(param1:uint, param2:uint, param3:RegExp, param4:String) : void
      {
         var _loc5_:String = String.fromCharCode(param1);
         if(param2 == Keyboard.BACKSPACE || param2 == Keyboard.SHIFT || param2 == Keyboard.CAPS_LOCK || param2 == Keyboard.TAB || param2 == Keyboard.LEFT || param2 == Keyboard.RIGHT || param2 == Keyboard.ENTER)
         {
            return;
         }
         if(!_loc5_.match(param3) && param4)
         {
            (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(new §["G§(param4,§["G§.§[!r§));
         }
      }
      
      private function §"!z§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[0-9]/;
         this.§-!4§(_loc2_,_loc3_,_loc4_,§<x§.ONLY_NUMBERS_ALLOWED);
      }
      
      private function §=b§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[A-Za-z\.\-\' ]/;
         this.§-!4§(_loc2_,_loc3_,_loc4_,§<x§.ONLY_NAME_CHARS_ALLOWED);
      }
      
      private function §<T§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[A-Z a-z 0-9 \-]/;
         this.§-!4§(_loc2_,_loc3_,_loc4_,§<x§.ONLY_NICKNAME_CHARS_ALLOWED);
      }
      
      private function §^k§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[*]/;
         this.§-!4§(_loc2_,_loc3_,_loc4_,null);
      }
      
      private function §<3§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[*]/;
         this.§-!4§(_loc2_,_loc3_,_loc4_,null);
         (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(new §["G§(§<x§.MAKE_SURE_EMAIL_IS_VALID,§["G§.§[!r§));
      }
      
      private function §8!b§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§;!X§();
            return;
         }
      }
   }
}
