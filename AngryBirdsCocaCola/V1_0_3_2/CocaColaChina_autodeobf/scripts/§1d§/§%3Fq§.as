package §1d§
{
   import §'b§.§6!-§;
   import §1!'§.HighscoreSidebar;
   import §6l§.§ l§;
   import §<o§.§#D§;
   import §>P§.§"N§;
   import §@!2§.§%!W§;
   import §@!P§.§3!%§;
   import §@!P§.§7!<§;
   import §@!P§.§;"§;
   import §^>§.§5b§;
   import §^>§.§9i§;
   import §^>§.§<t§;
   import §`!7§.§[5§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §?q§ implements §5b§
   {
       
      
      private var §-R§:§7!<§;
      
      private var §?!a§:Boolean = false;
      
      public function §?q§(param1:§7!<§)
      {
         super();
         this.§-R§ = param1;
      }
      
      public function §finally§() : void
      {
         var _loc1_:§ l§ = this.§-R§.§+!`§.getItemByName("Checkbox_RememberMe_Register") as § l§;
         var _loc2_:§ l§ = this.§-R§.§+!`§.getItemByName("Checkbox_CollectEmail_Register") as § l§;
         _loc2_.setComponentState(§ l§.§6!b§);
         if(this.§-R§.§>a§)
         {
            _loc1_.setComponentState(§ l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§ l§.§6!b§);
         }
         (this.§-R§.§+!`§.getItemByName("TextField_EmailField_Register") as §6!-§).§`!C§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9!_§);
         (this.§-R§.§+!`§.getItemByName("TextField_PasswordField_Register") as §6!-§).§`!C§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9!_§);
         (this.§-R§.§+!`§.getItemByName("TextField_PasswordFieldRepeat_Register") as §6!-§).§`!C§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9!_§);
         (this.§-R§.§+!`§.getItemByName("TextField_NickNameField_Register") as §6!-§).§`!C§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9!_§);
      }
      
      public function dispose() : void
      {
         (this.§-R§.§+!`§.getItemByName("TextField_EmailField_Register") as §6!-§).§`!C§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!_§);
         (this.§-R§.§+!`§.getItemByName("TextField_PasswordField_Register") as §6!-§).§`!C§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!_§);
         (this.§-R§.§+!`§.getItemByName("TextField_PasswordFieldRepeat_Register") as §6!-§).§`!C§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!_§);
         (this.§-R§.§+!`§.getItemByName("TextField_NickNameField_Register") as §6!-§).§`!C§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!_§);
         (this.§-R§.§+!`§.getItemByName("TextField_EmailField_Register") as §6!-§).§`!C§.removeEventListener(TextEvent.TEXT_INPUT,this.§@!J§);
         (this.§-R§.§+!`§.getItemByName("TextField_PasswordField_Register") as §6!-§).§`!C§.removeEventListener(TextEvent.TEXT_INPUT,this.§=V§);
         (this.§-R§.§+!`§.getItemByName("TextField_PasswordFieldRepeat_Register") as §6!-§).§`!C§.removeEventListener(TextEvent.TEXT_INPUT,this.§=V§);
         (this.§-R§.§+!`§.getItemByName("TextField_NickNameField_Register") as §6!-§).§`!C§.removeEventListener(TextEvent.TEXT_INPUT,this.§2[§);
      }
      
      private function §9!_§(param1:MouseEvent) : void
      {
         if(param1.target.parent == this.§-R§.§+!`§.getItemByName("TextField_EmailField_Register").mClip)
         {
            this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         }
         else if(param1.target.parent == this.§-R§.§+!`§.getItemByName("TextField_PasswordField_Register").mClip)
         {
            this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
            this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         }
         else if(param1.target.parent == this.§-R§.§+!`§.getItemByName("TextField_PasswordFieldRepeat_Register").mClip)
         {
            this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
            this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         }
         else if(param1.target.parent == this.§-R§.§+!`§.getItemByName("TextField_NickNameField_Register").mClip)
         {
            this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         }
         this.§-R§.§3h§.hide();
      }
      
      public function activate() : void
      {
         var _loc5_:int = 0;
         if(!this.§?!a§)
         {
            this.§?!a§ = true;
            _loc5_ = getTimer() / 1000;
            §"N§.§0o§(§"N§.§8!"§,_loc5_.toString(),_loc5_);
         }
         this.§-R§.§3h§.hide();
         this.§[q§();
         this.§-R§.§+!`§.container.setObjectToFront(this.§-R§.§+!`§.getItemByName("Container_Register_Tab"));
         this.§-R§.§+!`§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§-R§.§+!`§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§-R§.§+!`§.getItemByName("Button_Submit").setVisibility(false);
         this.§-R§.§+!`§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§-R§.§+!`§.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§-R§.§+!`§.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§-R§.§+!`§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§-R§.§+!`§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§-R§.§+!`§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§-R§.§+!`§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§-R§.§+!`§.getItemByName("Checkbox_CollectEmail_Register").setVisibility(true);
         this.§-R§.§+!`§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§6!-§ = this.§-R§.§+!`§.getItemByName("TextField_NickNameField_Register") as §6!-§;
         var _loc2_:§6!-§ = this.§-R§.§+!`§.getItemByName("TextField_EmailField_Register") as §6!-§;
         var _loc3_:§6!-§ = this.§-R§.§+!`§.getItemByName("TextField_PasswordField_Register") as §6!-§;
         var _loc4_:§6!-§ = this.§-R§.§+!`§.getItemByName("TextField_PasswordFieldRepeat_Register") as §6!-§;
         _loc1_.§`!C§.restrict = §7!<§.§!!K§;
         _loc4_.§`!C§.restrict = §7!<§.§;!%§;
         _loc3_.§`!C§.restrict = §7!<§.§;!%§;
         _loc2_.§`!C§.restrict = §7!<§.§^!`§;
         _loc1_.§`!C§.maxChars = 12;
         _loc2_.§`!C§.tabIndex = 1;
         _loc3_.§`!C§.tabIndex = 2;
         _loc4_.§`!C§.tabIndex = 3;
         _loc1_.§`!C§.tabIndex = 4;
         _loc1_.§`!C§.addEventListener(TextEvent.TEXT_INPUT,this.§2[§);
         _loc4_.§`!C§.addEventListener(TextEvent.TEXT_INPUT,this.§=V§);
         _loc3_.§`!C§.addEventListener(TextEvent.TEXT_INPUT,this.§=V§);
         _loc2_.§`!C§.addEventListener(TextEvent.TEXT_INPUT,this.§@!J§);
      }
      
      private function §2[§(param1:TextEvent) : void
      {
         this.§-R§.§3h§.hide();
         var _loc2_:RegExp = new RegExp("[" + §7!<§.§!!K§ + "]","g");
         var _loc3_:Boolean = _loc2_.test(param1.text);
         if(!_loc3_)
         {
            this.§"Y§(§9i§.INVALID_CHARACTER);
         }
         else
         {
            this.§-R§.§3h§.hide();
            this.§[q§();
         }
      }
      
      private function §=V§(param1:TextEvent) : void
      {
         this.§-R§.§3h§.hide();
         var _loc2_:RegExp = new RegExp("[" + §7!<§.§;!%§ + "]","g");
         var _loc3_:Boolean = _loc2_.test(param1.text);
         if(!_loc3_)
         {
            this.§"Y§(§9i§.INVALID_CHARACTER);
         }
         else
         {
            this.§-R§.§3h§.hide();
            this.§[q§();
         }
      }
      
      private function §@!J§(param1:TextEvent) : void
      {
         this.§-R§.§3h§.hide();
         var _loc2_:RegExp = new RegExp("[" + §7!<§.§^!`§ + "]","g");
         var _loc3_:Boolean = _loc2_.test(param1.text);
         if(!_loc3_)
         {
            this.§"Y§(§9i§.INVALID_CHARACTER);
         }
         else
         {
            this.§-R§.§3h§.hide();
            this.§[q§();
         }
      }
      
      public function §^n§() : void
      {
         var _loc2_:String = this.§-R§.§+!`§.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§-R§.§+!`§.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§-R§.§+!`§.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§-R§.§+!`§.getText("TextField_EmailField_Register");
         this.§[q§();
         this.§-R§.§<!$§ = _loc5_;
         this.§-R§.§>!2§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§"Y§(§9i§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§"Y§(§9i§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§"Y§(§9i§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§"Y§(§9i§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§"Y§(§9i§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§"Y§(§9i§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.id = _loc5_;
         _loc10_.marketing = this.§-R§.§4!H§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         var _loc12_:§#D§ = new §#D§(_loc11_,§=i§.§'<§ + "registerPlayer",this,§#D§.§ !a§);
         this.§-R§.§+!`§.getItemByName("WaitingPopup").setVisibility(true);
         this.§-R§.§+!`§.container.setObjectToFront(this.§-R§.§+!`§.getItemByName("WaitingPopup"));
         §3!%§.§@<§.enableCreditsButton(false);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         this.§-R§.§+!`§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §<t§.§1&§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = this.§-R§.§+!`§.getText("TextField_NickNameField_Register");
            this.§-R§.§7Z§();
            §[5§.§0c§ = new §%!W§();
            §[5§.§0c§.name = _loc2_.nickName;
            §[5§.§0c§.§#c§ = _loc2_.id;
            §[5§.§0c§.§!!6§ = _loc2_.security;
            §[5§.levelProfile = _loc2_.levelProfile;
            §[5§.§=!I§();
            if(_loc2_.competition != undefined)
            {
               §[5§.competition = _loc2_.competition;
            }
            if(_loc2_.beats != undefined)
            {
               §=i§.§2S§.§'u§ = _loc2_.beats;
            }
            §3!%§.§@<§.clearReloadTimers();
            §3!%§.§@<§.changeState(HighscoreSidebar.§-!G§);
            §=i§.§0§ = SharedObject.getLocal(§=i§.§@l§ + §[5§.§0c§.§!!6§);
            this.§-R§.mNextState = §;"§.§'2§;
            §"N§.§0o§(§"N§.§1j§);
         }
         else if(_loc2_.error)
         {
            §3!%§.§@<§.enableCreditsButton(true);
            _loc4_ = _loc2_.error;
            this.§"Y§(_loc4_);
            §"N§.§0o§(§"N§.§5"§);
         }
      }
      
      public function §5x§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'1§(param1:IOErrorEvent) : void
      {
         this.§-R§.§+![§();
         this.§-R§.§+!`§.getItemByName("WaitingPopup").setVisibility(false);
         §3!%§.§@<§.enableCreditsButton(true);
      }
      
      private function §"Y§(param1:String) : void
      {
         this.§-R§.§+!`§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case §9i§.FIELD_NOT_VALID:
               break;
            case §9i§.CONNECTION_ERROR_RETRY:
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §9i§.NICKNAME_LENGTH:
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §9i§.PASSWORD_LENGTH:
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §9i§.PASSWORDS_DONT_MATCH:
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §9i§.INVALID_EMAIL:
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §9i§.INVALID_CHARACTER:
               break;
            default:
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         this.§-R§.§3h§.show(param1);
      }
      
      private function §[q§() : void
      {
         this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§-R§.§+!`§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
