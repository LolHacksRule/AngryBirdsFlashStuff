package §?!a§
{
   import §'!N§.§[!%§;
   import §'!O§.§#!_§;
   import §'!O§.§<n§;
   import §'!O§.§=j§;
   import §2`§.HighscoreSidebar;
   import §3Y§.§4!_§;
   import §3Y§.§7!>§;
   import §8P§.§4!Y§;
   import §9I§.§+J§;
   import §9I§.§1F§;
   import §9I§.§>!=§;
   import §;!3§.§;!P§;
   import §<!!§.§#!`§;
   import §=! §.§'!4§;
   import §=! §.§9>§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   
   public class §"5§ implements §>!=§
   {
       
      
      private var §+@§:§#!_§;
      
      public function §"5§(param1:§#!_§)
      {
         super();
         this.§+@§ = param1;
      }
      
      public function §-!W§() : void
      {
         var _loc1_:§4!Y§ = this.§+@§.§]!9§.getItemByName("Checkbox_RememberMe_Register") as §4!Y§;
         if(this.§+@§.§"!a§)
         {
            _loc1_.setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§4!Y§.§=?§);
         }
         _loc1_ = this.§+@§.§]!9§.getItemByName("Checkbox_Marketing") as §4!Y§;
         if(this.§+@§.§[-§)
         {
            _loc1_.setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§4!Y§.§=?§);
         }
         (this.§+@§.§]!9§.getItemByName("TextField_EmailField_Register") as §[!%§).§^!1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
         (this.§+@§.§]!9§.getItemByName("TextField_PasswordField_Register") as §[!%§).§^!1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
         (this.§+@§.§]!9§.getItemByName("TextField_PasswordFieldRepeat_Register") as §[!%§).§^!1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
         (this.§+@§.§]!9§.getItemByName("TextField_NickNameField_Register") as §[!%§).§^!1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
         new §'!4§((this.§+@§.§]!9§.getItemByName("TextField_EmailField_Register") as §[!%§).§^!1§,§,L§.§?!S§,§,L§.§^p§,§,L§.§%I§);
         new §'!4§((this.§+@§.§]!9§.getItemByName("TextField_PasswordField_Register") as §[!%§).§^!1§,§,L§.§?!S§,§,L§.§^p§,§,L§.§%I§);
         new §'!4§((this.§+@§.§]!9§.getItemByName("TextField_PasswordFieldRepeat_Register") as §[!%§).§^!1§,§,L§.§?!S§,§,L§.§^p§,§,L§.§%I§);
         new §'!4§((this.§+@§.§]!9§.getItemByName("TextField_NickNameField_Register") as §[!%§).§^!1§,§,L§.§?!S§,§,L§.§^p§,§,L§.§%I§);
      }
      
      public function dispose() : void
      {
         (this.§+@§.§]!9§.getItemByName("TextField_EmailField_Register") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
         (this.§+@§.§]!9§.getItemByName("TextField_PasswordField_Register") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
         (this.§+@§.§]!9§.getItemByName("TextField_PasswordFieldRepeat_Register") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
         (this.§+@§.§]!9§.getItemByName("TextField_NickNameField_Register") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
      }
      
      private function §5!2§(param1:MouseEvent) : void
      {
         this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§+@§.§1!D§.hide();
      }
      
      public function activate() : void
      {
         this.§+@§.§]!9§.container.setObjectToFront(this.§+@§.§]!9§.getItemByName("Container_Register_Tab"));
         this.§+@§.§]!9§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("Button_Submit").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§+@§.§]!9§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§+@§.§]!9§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§+@§.§]!9§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§+@§.§]!9§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§+@§.§]!9§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§+@§.§]!9§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§[!%§ = this.§+@§.§]!9§.getItemByName("TextField_NickNameField_Register") as §[!%§;
         var _loc2_:§[!%§ = this.§+@§.§]!9§.getItemByName("TextField_EmailField_Register") as §[!%§;
         var _loc3_:§[!%§ = this.§+@§.§]!9§.getItemByName("TextField_PasswordField_Register") as §[!%§;
         var _loc4_:§[!%§ = this.§+@§.§]!9§.getItemByName("TextField_PasswordFieldRepeat_Register") as §[!%§;
         _loc1_.§^!1§.restrict = §#!_§.§3t§;
         _loc4_.§^!1§.restrict = §#!_§.§64§;
         _loc3_.§^!1§.restrict = §#!_§.§64§;
         _loc2_.§^!1§.restrict = §#!_§.§37§;
         _loc1_.§^!1§.maxChars = 12;
         _loc2_.§^!1§.maxChars = §#!_§.§!j§;
         _loc2_.§^!1§.tabIndex = 1;
         _loc3_.§^!1§.tabIndex = 2;
         _loc4_.§^!1§.tabIndex = 3;
         _loc1_.§^!1§.tabIndex = 4;
      }
      
      public function §%!7§() : void
      {
         var _loc2_:String = this.§+@§.§]!9§.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§+@§.§]!9§.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§+@§.§]!9§.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§+@§.§]!9§.getText("TextField_EmailField_Register");
         this.§%-§();
         this.§+@§.§1"§ = _loc5_;
         this.§+@§.§4!e§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§^<§(§1F§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§^<§(§1F§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§^<§(§1F§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§^<§(§1F§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§^<§(§1F§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§^<§(§1F§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.id = _loc5_;
         _loc10_.marketing = this.§+@§.§[-§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         var _loc12_:§#!`§ = new §#!`§(_loc11_,§,L§.§2;§ + "registerPlayer",this,§#!`§.§`!1§);
         this.§+@§.§]!9§.getItemByName("WaitingPopup").setVisibility(true);
         §,L§.§8!F§ = new §7!>§("");
         this.§+@§.§]!9§.container.setObjectToFront(this.§+@§.§]!9§.getItemByName("WaitingPopup"));
         §=j§.sHighscoreSidebar.enableCreditsButton(false);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         this.§+@§.§]!9§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §+J§.§;!+§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = this.§+@§.§]!9§.getText("TextField_NickNameField_Register");
            this.§+@§.§,!N§();
            §4!_§.§,t§ = new §;!P§();
            §4!_§.§,t§.name = _loc2_.nickName;
            §4!_§.§,t§.§5!D§ = _loc2_.id;
            §4!_§.§,t§.§]_§ = _loc2_.security;
            §4!_§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §4!_§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            if((_loc4_ = §#!`§.§,!1§(§4!_§.levelProfile)) != §4!_§.levelProfileSecurity)
            {
               §4!_§.§,t§ = new §;!P§();
               §=j§.sHighscoreSidebar.enableCreditsButton(true);
               this.§^<§("SECURITY_ERROR");
               return;
            }
            if(_loc2_.overallScore != undefined)
            {
               §,L§.§8!F§.overallScore = _loc2_.overallScore;
            }
            if(_loc2_.powerUp != undefined)
            {
               §,L§.§8!F§.§"!1§ = _loc2_.powerUp;
            }
            §4!_§.§!!]§();
            §=j§.sHighscoreSidebar.§5K§();
            §=j§.sHighscoreSidebar.changeState(HighscoreSidebar.§4!@§);
            this.§+@§.mNextState = §<n§.§@o§;
            §9>§.§>%§(§9>§.§9B§);
         }
         else if(_loc2_.error)
         {
            §=j§.sHighscoreSidebar.enableCreditsButton(true);
            _loc5_ = _loc2_.error;
            this.§^<§(_loc5_);
            §9>§.§>%§(§9>§.§3!Q§);
         }
      }
      
      public function §3!X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'z§(param1:IOErrorEvent) : void
      {
         this.§+@§.§&!+§();
         this.§+@§.§]!9§.getItemByName("WaitingPopup").setVisibility(false);
         §=j§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §^<§(param1:String) : void
      {
         this.§+@§.§]!9§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case §1F§.CONNECTION_ERROR_RETRY:
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §1F§.NICKNAME_LENGTH:
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §1F§.PASSWORD_LENGTH:
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §1F§.PASSWORDS_DONT_MATCH:
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §1F§.INVALID_EMAIL:
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §1F§.FIELD_LENGTH:
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §1F§.FIELD_NOT_VALID:
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         this.§+@§.§1!D§.show(param1);
      }
      
      private function §%-§() : void
      {
         this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
