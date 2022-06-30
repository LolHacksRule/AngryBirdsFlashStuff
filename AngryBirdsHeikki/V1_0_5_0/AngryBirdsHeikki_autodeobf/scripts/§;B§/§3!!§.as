package §;B§
{
   import §"W§.§7`§;
   import §1!a§.§3U§;
   import §1!a§.§7!I§;
   import §1!a§.§`r§;
   import §93§.§?t§;
   import §97§.§1j§;
   import §97§.§62§;
   import §97§.§88§;
   import §=!S§.§!!Z§;
   import §=!S§.§;7§;
   import §=!c§.§#=§;
   import §?!"§.§?!N§;
   import §?!"§.§^!`§;
   import §[!C§.HighscoreSidebar;
   import §^i§.§;§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   
   public class §3!!§ implements §7!I§
   {
       
      
      private var §5<§:§1j§;
      
      public function §3!!§(param1:§1j§)
      {
         super();
         this.§5<§ = param1;
      }
      
      public function §%l§() : void
      {
         var _loc1_:§?t§ = this.§5<§.§?P§.getItemByName("Checkbox_RememberMe_Register") as §?t§;
         if(this.§5<§.§+a§)
         {
            _loc1_.setComponentState(§?t§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§?t§.§5!0§);
         }
         _loc1_ = this.§5<§.§?P§.getItemByName("Checkbox_Marketing") as §?t§;
         if(this.§5<§.§6!7§)
         {
            _loc1_.setComponentState(§?t§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§?t§.§5!0§);
         }
         (this.§5<§.§?P§.getItemByName("TextField_EmailField_Register") as §#=§).§5!R§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]^§);
         (this.§5<§.§?P§.getItemByName("TextField_PasswordField_Register") as §#=§).§5!R§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]^§);
         (this.§5<§.§?P§.getItemByName("TextField_PasswordFieldRepeat_Register") as §#=§).§5!R§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]^§);
         (this.§5<§.§?P§.getItemByName("TextField_NickNameField_Register") as §#=§).§5!R§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]^§);
         new §;7§((this.§5<§.§?P§.getItemByName("TextField_EmailField_Register") as §#=§).§5!R§,§,-§.§[!@§,§,-§.§%Q§,§,-§.§[p§);
         new §;7§((this.§5<§.§?P§.getItemByName("TextField_PasswordField_Register") as §#=§).§5!R§,§,-§.§[!@§,§,-§.§%Q§,§,-§.§[p§);
         new §;7§((this.§5<§.§?P§.getItemByName("TextField_PasswordFieldRepeat_Register") as §#=§).§5!R§,§,-§.§[!@§,§,-§.§%Q§,§,-§.§[p§);
         new §;7§((this.§5<§.§?P§.getItemByName("TextField_NickNameField_Register") as §#=§).§5!R§,§,-§.§[!@§,§,-§.§%Q§,§,-§.§[p§);
      }
      
      public function dispose() : void
      {
         (this.§5<§.§?P§.getItemByName("TextField_EmailField_Register") as §#=§).§5!R§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]^§);
         (this.§5<§.§?P§.getItemByName("TextField_PasswordField_Register") as §#=§).§5!R§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]^§);
         (this.§5<§.§?P§.getItemByName("TextField_PasswordFieldRepeat_Register") as §#=§).§5!R§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]^§);
         (this.§5<§.§?P§.getItemByName("TextField_NickNameField_Register") as §#=§).§5!R§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]^§);
      }
      
      private function §]^§(param1:MouseEvent) : void
      {
         this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§5<§.§]w§.hide();
      }
      
      public function activate() : void
      {
         this.§5<§.§?P§.container.setObjectToFront(this.§5<§.§?P§.getItemByName("Container_Register_Tab"));
         this.§5<§.§?P§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§5<§.§?P§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§5<§.§?P§.getItemByName("Button_Submit").setVisibility(false);
         this.§5<§.§?P§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§5<§.§?P§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§5<§.§?P§.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§5<§.§?P§.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§5<§.§?P§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§5<§.§?P§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§5<§.§?P§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§5<§.§?P§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§5<§.§?P§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§5<§.§?P§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§#=§ = this.§5<§.§?P§.getItemByName("TextField_NickNameField_Register") as §#=§;
         var _loc2_:§#=§ = this.§5<§.§?P§.getItemByName("TextField_EmailField_Register") as §#=§;
         var _loc3_:§#=§ = this.§5<§.§?P§.getItemByName("TextField_PasswordField_Register") as §#=§;
         var _loc4_:§#=§ = this.§5<§.§?P§.getItemByName("TextField_PasswordFieldRepeat_Register") as §#=§;
         _loc1_.§5!R§.restrict = §1j§.§-s§;
         _loc4_.§5!R§.restrict = §1j§.§#m§;
         _loc3_.§5!R§.restrict = §1j§.§#m§;
         _loc2_.§5!R§.restrict = §1j§.§8!;§;
         _loc1_.§5!R§.maxChars = 12;
         _loc2_.§5!R§.maxChars = §1j§.§#!,§;
         _loc2_.§5!R§.tabIndex = 1;
         _loc3_.§5!R§.tabIndex = 2;
         _loc4_.§5!R§.tabIndex = 3;
         _loc1_.§5!R§.tabIndex = 4;
      }
      
      public function §8C§() : void
      {
         var _loc2_:String = this.§5<§.§?P§.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§5<§.§?P§.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§5<§.§?P§.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§5<§.§?P§.getText("TextField_EmailField_Register");
         this.§'!>§();
         this.§5<§.§6N§ = _loc5_;
         this.§5<§.§]!]§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§6!L§(§`r§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§6!L§(§`r§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§6!L§(§`r§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§6!L§(§`r§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§6!L§(§`r§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§6!L§(§`r§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.id = _loc5_;
         _loc10_.marketing = this.§5<§.§6!7§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         var _loc12_:§;§ = new §;§(_loc11_,§,-§.§ 6§ + "registerPlayer",this,§;§.§@<§);
         this.§5<§.§?P§.getItemByName("WaitingPopup").setVisibility(true);
         §,-§.§?+§ = new §?!N§("");
         this.§5<§.§?P§.container.setObjectToFront(this.§5<§.§?P§.getItemByName("WaitingPopup"));
         §62§.sHighscoreSidebar.enableCreditsButton(false);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         this.§5<§.§?P§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §3U§.§'o§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = this.§5<§.§?P§.getText("TextField_NickNameField_Register");
            this.§5<§.§!#§();
            §^!`§.§[K§ = new §7`§();
            §^!`§.§[K§.name = _loc2_.nickName;
            §^!`§.§[K§.§%X§ = _loc2_.id;
            §^!`§.§[K§.§=P§ = _loc2_.security;
            §^!`§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §^!`§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            if((_loc4_ = §;§.§>!G§(§^!`§.levelProfile)) != §^!`§.levelProfileSecurity)
            {
               §^!`§.§[K§ = new §7`§();
               §62§.sHighscoreSidebar.enableCreditsButton(true);
               this.§6!L§("SECURITY_ERROR");
               return;
            }
            if(_loc2_.overallScore != undefined)
            {
               §,-§.§?+§.overallScore = _loc2_.overallScore;
            }
            if(_loc2_.powerUp != undefined)
            {
               §,-§.§?+§.§"0§ = _loc2_.powerUp;
            }
            §^!`§.§1n§();
            §62§.sHighscoreSidebar.§each §();
            §62§.sHighscoreSidebar.changeState(HighscoreSidebar.§#W§);
            this.§5<§.mNextState = §88§.§4l§;
            §!!Z§.§1!?§(§!!Z§.§=U§);
         }
         else if(_loc2_.error)
         {
            §62§.sHighscoreSidebar.enableCreditsButton(true);
            _loc5_ = _loc2_.error;
            this.§6!L§(_loc5_);
            §!!Z§.§1!?§(§!!Z§.§7!2§);
         }
      }
      
      public function §4@§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!3§(param1:IOErrorEvent) : void
      {
         this.§5<§.§+e§();
         this.§5<§.§?P§.getItemByName("WaitingPopup").setVisibility(false);
         §62§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §6!L§(param1:String) : void
      {
         this.§5<§.§?P§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case §`r§.CONNECTION_ERROR_RETRY:
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §`r§.NICKNAME_LENGTH:
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §`r§.PASSWORD_LENGTH:
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §`r§.PASSWORDS_DONT_MATCH:
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §`r§.INVALID_EMAIL:
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §`r§.FIELD_LENGTH:
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §`r§.FIELD_NOT_VALID:
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         this.§5<§.§]w§.show(param1);
      }
      
      private function §'!>§() : void
      {
         this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§5<§.§?P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
