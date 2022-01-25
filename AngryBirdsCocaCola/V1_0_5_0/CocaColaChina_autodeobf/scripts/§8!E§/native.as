package §8!E§
{
   import §%!c§.§@2§;
   import §'!^§.§!!H§;
   import §+!6§.HighscoreSidebar;
   import §+n§.§0l§;
   import §+n§.§;!+§;
   import §+n§.§<`§;
   import §,H§.§1!a§;
   import §,H§.§4!L§;
   import §,H§.§`$§;
   import §7!H§.§`f§;
   import §8!<§.§#u§;
   import §=!<§.§%P§;
   import §each §.§>!;§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class native implements §0l§
   {
       
      
      private var §7!3§:§4!L§;
      
      private var §!2§:Boolean = false;
      
      public function native(param1:§4!L§)
      {
         super();
         this.§7!3§ = param1;
      }
      
      public function §%!N§() : void
      {
         var _loc1_:§`f§ = this.§7!3§.§=!I§.getItemByName("Checkbox_RememberMe_Register") as §`f§;
         var _loc2_:§`f§ = this.§7!3§.§=!I§.getItemByName("Checkbox_CollectEmail_Register") as §`f§;
         _loc2_.setComponentState(§`f§.§'2§);
         if(this.§7!3§.§1!]§)
         {
            _loc1_.setComponentState(§`f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§`f§.§'2§);
         }
         (this.§7!3§.§=!I§.getItemByName("TextField_EmailField_Register") as §#u§).§=J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4Q§);
         (this.§7!3§.§=!I§.getItemByName("TextField_PasswordField_Register") as §#u§).§=J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4Q§);
         (this.§7!3§.§=!I§.getItemByName("TextField_PasswordFieldRepeat_Register") as §#u§).§=J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4Q§);
         (this.§7!3§.§=!I§.getItemByName("TextField_NickNameField_Register") as §#u§).§=J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4Q§);
      }
      
      public function dispose() : void
      {
         (this.§7!3§.§=!I§.getItemByName("TextField_EmailField_Register") as §#u§).§=J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4Q§);
         (this.§7!3§.§=!I§.getItemByName("TextField_PasswordField_Register") as §#u§).§=J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4Q§);
         (this.§7!3§.§=!I§.getItemByName("TextField_PasswordFieldRepeat_Register") as §#u§).§=J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4Q§);
         (this.§7!3§.§=!I§.getItemByName("TextField_NickNameField_Register") as §#u§).§=J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4Q§);
         (this.§7!3§.§=!I§.getItemByName("TextField_EmailField_Register") as §#u§).§=J§.removeEventListener(TextEvent.TEXT_INPUT,this.§4K§);
         (this.§7!3§.§=!I§.getItemByName("TextField_PasswordField_Register") as §#u§).§=J§.removeEventListener(TextEvent.TEXT_INPUT,this.§&%§);
         (this.§7!3§.§=!I§.getItemByName("TextField_PasswordFieldRepeat_Register") as §#u§).§=J§.removeEventListener(TextEvent.TEXT_INPUT,this.§&%§);
         (this.§7!3§.§=!I§.getItemByName("TextField_NickNameField_Register") as §#u§).§=J§.removeEventListener(TextEvent.TEXT_INPUT,this.§,!2§);
      }
      
      private function §4Q§(param1:MouseEvent) : void
      {
         if(param1.target.parent == this.§7!3§.§=!I§.getItemByName("TextField_EmailField_Register").mClip)
         {
            this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         }
         else if(param1.target.parent == this.§7!3§.§=!I§.getItemByName("TextField_PasswordField_Register").mClip)
         {
            this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
            this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         }
         else if(param1.target.parent == this.§7!3§.§=!I§.getItemByName("TextField_PasswordFieldRepeat_Register").mClip)
         {
            this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
            this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         }
         else if(param1.target.parent == this.§7!3§.§=!I§.getItemByName("TextField_NickNameField_Register").mClip)
         {
            this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         }
         this.§7!3§.§ C§.hide();
      }
      
      public function activate() : void
      {
         var _loc5_:int = 0;
         if(!this.§!2§)
         {
            this.§!2§ = true;
            _loc5_ = getTimer() / 1000;
            §!!H§.§?!O§(§!!H§.§%!Y§,_loc5_.toString(),_loc5_);
         }
         this.§7!3§.§ C§.hide();
         this.§0!M§();
         this.§7!3§.§=!I§.container.setObjectToFront(this.§7!3§.§=!I§.getItemByName("Container_Register_Tab"));
         this.§7!3§.§=!I§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§7!3§.§=!I§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§7!3§.§=!I§.getItemByName("Button_Submit").setVisibility(false);
         this.§7!3§.§=!I§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§7!3§.§=!I§.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§7!3§.§=!I§.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§7!3§.§=!I§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§7!3§.§=!I§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§7!3§.§=!I§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§7!3§.§=!I§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§7!3§.§=!I§.getItemByName("Checkbox_CollectEmail_Register").setVisibility(true);
         this.§7!3§.§=!I§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§#u§ = this.§7!3§.§=!I§.getItemByName("TextField_NickNameField_Register") as §#u§;
         var _loc2_:§#u§ = this.§7!3§.§=!I§.getItemByName("TextField_EmailField_Register") as §#u§;
         var _loc3_:§#u§ = this.§7!3§.§=!I§.getItemByName("TextField_PasswordField_Register") as §#u§;
         var _loc4_:§#u§ = this.§7!3§.§=!I§.getItemByName("TextField_PasswordFieldRepeat_Register") as §#u§;
         _loc1_.§=J§.restrict = §4!L§.§%B§;
         _loc4_.§=J§.restrict = §4!L§.§=<§;
         _loc3_.§=J§.restrict = §4!L§.§=<§;
         _loc2_.§=J§.restrict = §4!L§.§7!Q§;
         _loc1_.§=J§.maxChars = 12;
         _loc2_.§=J§.tabIndex = 1;
         _loc3_.§=J§.tabIndex = 2;
         _loc4_.§=J§.tabIndex = 3;
         _loc1_.§=J§.tabIndex = 4;
         _loc1_.§=J§.addEventListener(TextEvent.TEXT_INPUT,this.§,!2§);
         _loc4_.§=J§.addEventListener(TextEvent.TEXT_INPUT,this.§&%§);
         _loc3_.§=J§.addEventListener(TextEvent.TEXT_INPUT,this.§&%§);
         _loc2_.§=J§.addEventListener(TextEvent.TEXT_INPUT,this.§4K§);
      }
      
      private function §,!2§(param1:TextEvent) : void
      {
         this.§7!3§.§ C§.hide();
         var _loc2_:RegExp = new RegExp("[" + §4!L§.§%B§ + "]","g");
         var _loc3_:Boolean = _loc2_.test(param1.text);
         if(!_loc3_)
         {
            this.§,!9§(§;!+§.INVALID_CHARACTER);
         }
         else
         {
            this.§7!3§.§ C§.hide();
            this.§0!M§();
         }
      }
      
      private function §&%§(param1:TextEvent) : void
      {
         this.§7!3§.§ C§.hide();
         var _loc2_:RegExp = new RegExp("[" + §4!L§.§=<§ + "]","g");
         var _loc3_:Boolean = _loc2_.test(param1.text);
         if(!_loc3_)
         {
            this.§,!9§(§;!+§.INVALID_CHARACTER);
         }
         else
         {
            this.§7!3§.§ C§.hide();
            this.§0!M§();
         }
      }
      
      private function §4K§(param1:TextEvent) : void
      {
         this.§7!3§.§ C§.hide();
         var _loc2_:RegExp = new RegExp("[" + §4!L§.§7!Q§ + "]","g");
         var _loc3_:Boolean = _loc2_.test(param1.text);
         if(!_loc3_)
         {
            this.§,!9§(§;!+§.INVALID_CHARACTER);
         }
         else
         {
            this.§7!3§.§ C§.hide();
            this.§0!M§();
         }
      }
      
      public function §-O§() : void
      {
         var _loc2_:String = this.§7!3§.§=!I§.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§7!3§.§=!I§.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§7!3§.§=!I§.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§7!3§.§=!I§.getText("TextField_EmailField_Register");
         this.§0!M§();
         this.§7!3§.§-!"§ = _loc5_;
         this.§7!3§.§5!"§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§,!9§(§;!+§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§,!9§(§;!+§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§,!9§(§;!+§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§,!9§(§;!+§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§,!9§(§;!+§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§,!9§(§;!+§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.id = _loc5_;
         _loc10_.marketing = this.§7!3§.§!!J§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         var _loc12_:§%P§ = new §%P§(_loc11_,§6T§.§&H§ + "registerPlayer",this,§%P§.§]!J§);
         this.§7!3§.§=!I§.getItemByName("WaitingPopup").setVisibility(true);
         this.§7!3§.§=!I§.container.setObjectToFront(this.§7!3§.§=!I§.getItemByName("WaitingPopup"));
         §1!a§.§+D§.enableCreditsButton(false);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         this.§7!3§.§=!I§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §<`§.§48§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = this.§7!3§.§=!I§.getText("TextField_NickNameField_Register");
            this.§7!3§.§-1§();
            §@2§.§=!'§ = new §>!;§();
            §@2§.§=!'§.name = _loc2_.nickName;
            §@2§.§=!'§.§<!]§ = _loc2_.id;
            §@2§.§=!'§.§,Q§ = _loc2_.security;
            §@2§.levelProfile = _loc2_.levelProfile;
            §@2§.§<!#§();
            if(_loc2_.competition != undefined)
            {
               §@2§.competition = _loc2_.competition;
            }
            if(_loc2_.beats != undefined)
            {
               §6T§.§>c§.§4!5§ = _loc2_.beats;
            }
            §1!a§.§+D§.clearReloadTimers();
            §1!a§.§+D§.changeState(HighscoreSidebar.§#P§);
            §6T§.§0k§ = SharedObject.getLocal(§6T§.§&>§ + §@2§.§=!'§.§,Q§);
            this.§7!3§.mNextState = §`$§.§^!O§;
            §!!H§.§?!O§(§!!H§.§3p§);
         }
         else if(_loc2_.error)
         {
            §1!a§.§+D§.enableCreditsButton(true);
            _loc4_ = _loc2_.error;
            this.§,!9§(_loc4_);
            §!!H§.§?!O§(§!!H§.§%!'§);
         }
      }
      
      public function §9!%§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §=p§(param1:IOErrorEvent) : void
      {
         this.§7!3§.§1w§();
         this.§7!3§.§=!I§.getItemByName("WaitingPopup").setVisibility(false);
         §1!a§.§+D§.enableCreditsButton(true);
      }
      
      private function §,!9§(param1:String) : void
      {
         this.§7!3§.§=!I§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case §;!+§.FIELD_NOT_VALID:
               break;
            case §;!+§.CONNECTION_ERROR_RETRY:
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §;!+§.NICKNAME_LENGTH:
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §;!+§.PASSWORD_LENGTH:
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §;!+§.PASSWORDS_DONT_MATCH:
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §;!+§.INVALID_EMAIL:
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §;!+§.INVALID_CHARACTER:
               break;
            default:
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         this.§7!3§.§ C§.show(param1);
      }
      
      private function §0!M§() : void
      {
         this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
