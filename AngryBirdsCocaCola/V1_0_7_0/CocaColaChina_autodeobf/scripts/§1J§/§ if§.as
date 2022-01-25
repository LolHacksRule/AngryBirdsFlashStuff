package §1J§
{
   import §!E§.§,!B§;
   import §%!X§.§=,§;
   import §%n§.§3v§;
   import §%n§.§91§;
   import §%n§.§^3§;
   import §1"§.HighscoreSidebar;
   import §2!$§.§#!K§;
   import §87§.§ C§;
   import §87§.§31§;
   import §87§.§?z§;
   import §9I§.§"!G§;
   import §?k§.§[n§;
   import §^!5§.§+^§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class § if§ implements § C§
   {
       
      
      private var § !"§:§^3§;
      
      private var §%P§:Boolean = false;
      
      public function § if§(param1:§^3§)
      {
         super();
         this.§ !"§ = param1;
      }
      
      public function §9-§() : void
      {
         var _loc1_:§#!K§ = this.§ !"§.§5!R§.getItemByName("Checkbox_RememberMe_Register") as §#!K§;
         var _loc2_:§#!K§ = this.§ !"§.§5!R§.getItemByName("Checkbox_CollectEmail_Register") as §#!K§;
         _loc2_.setComponentState(§#!K§.§8!O§);
         if(this.§ !"§.§#p§)
         {
            _loc1_.setComponentState(§#!K§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§#!K§.§8!O§);
         }
         (this.§ !"§.§5!R§.getItemByName("TextField_EmailField_Register") as §,!B§).§&J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4P§);
         (this.§ !"§.§5!R§.getItemByName("TextField_PasswordField_Register") as §,!B§).§&J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4P§);
         (this.§ !"§.§5!R§.getItemByName("TextField_PasswordFieldRepeat_Register") as §,!B§).§&J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4P§);
         (this.§ !"§.§5!R§.getItemByName("TextField_NickNameField_Register") as §,!B§).§&J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4P§);
      }
      
      public function dispose() : void
      {
         (this.§ !"§.§5!R§.getItemByName("TextField_EmailField_Register") as §,!B§).§&J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4P§);
         (this.§ !"§.§5!R§.getItemByName("TextField_PasswordField_Register") as §,!B§).§&J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4P§);
         (this.§ !"§.§5!R§.getItemByName("TextField_PasswordFieldRepeat_Register") as §,!B§).§&J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4P§);
         (this.§ !"§.§5!R§.getItemByName("TextField_NickNameField_Register") as §,!B§).§&J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4P§);
         (this.§ !"§.§5!R§.getItemByName("TextField_EmailField_Register") as §,!B§).§&J§.removeEventListener(TextEvent.TEXT_INPUT,this.§`P§);
         (this.§ !"§.§5!R§.getItemByName("TextField_PasswordField_Register") as §,!B§).§&J§.removeEventListener(TextEvent.TEXT_INPUT,this.§3B§);
         (this.§ !"§.§5!R§.getItemByName("TextField_PasswordFieldRepeat_Register") as §,!B§).§&J§.removeEventListener(TextEvent.TEXT_INPUT,this.§3B§);
         (this.§ !"§.§5!R§.getItemByName("TextField_NickNameField_Register") as §,!B§).§&J§.removeEventListener(TextEvent.TEXT_INPUT,this.§]!_§);
      }
      
      private function §4P§(param1:MouseEvent) : void
      {
         if(param1.target.parent == this.§ !"§.§5!R§.getItemByName("TextField_EmailField_Register").mClip)
         {
            this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         }
         else if(param1.target.parent == this.§ !"§.§5!R§.getItemByName("TextField_PasswordField_Register").mClip)
         {
            this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
            this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         }
         else if(param1.target.parent == this.§ !"§.§5!R§.getItemByName("TextField_PasswordFieldRepeat_Register").mClip)
         {
            this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
            this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         }
         else if(param1.target.parent == this.§ !"§.§5!R§.getItemByName("TextField_NickNameField_Register").mClip)
         {
            this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         }
         this.§ !"§.§ A§.hide();
      }
      
      public function activate() : void
      {
         var _loc5_:int = 0;
         if(!this.§%P§)
         {
            this.§%P§ = true;
            _loc5_ = getTimer() / 1000;
            §"!G§.§,U§(§"!G§.§-'§,_loc5_.toString(),_loc5_);
         }
         this.§ !"§.§ A§.hide();
         this.§^!!§();
         this.§ !"§.§5!R§.container.setObjectToFront(this.§ !"§.§5!R§.getItemByName("Container_Register_Tab"));
         this.§ !"§.§5!R§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§ !"§.§5!R§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§ !"§.§5!R§.getItemByName("Button_Submit").setVisibility(false);
         this.§ !"§.§5!R§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§ !"§.§5!R§.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§ !"§.§5!R§.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§ !"§.§5!R§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§ !"§.§5!R§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§ !"§.§5!R§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§ !"§.§5!R§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§ !"§.§5!R§.getItemByName("Checkbox_CollectEmail_Register").setVisibility(true);
         this.§ !"§.§5!R§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§,!B§ = this.§ !"§.§5!R§.getItemByName("TextField_NickNameField_Register") as §,!B§;
         var _loc2_:§,!B§ = this.§ !"§.§5!R§.getItemByName("TextField_EmailField_Register") as §,!B§;
         var _loc3_:§,!B§ = this.§ !"§.§5!R§.getItemByName("TextField_PasswordField_Register") as §,!B§;
         var _loc4_:§,!B§ = this.§ !"§.§5!R§.getItemByName("TextField_PasswordFieldRepeat_Register") as §,!B§;
         _loc1_.§&J§.restrict = §^3§.§,E§;
         _loc4_.§&J§.restrict = §^3§.§&6§;
         _loc3_.§&J§.restrict = §^3§.§&6§;
         _loc2_.§&J§.restrict = §^3§.§0z§;
         _loc1_.§&J§.maxChars = 12;
         _loc2_.§&J§.tabIndex = 1;
         _loc3_.§&J§.tabIndex = 2;
         _loc4_.§&J§.tabIndex = 3;
         _loc1_.§&J§.tabIndex = 4;
         _loc1_.§&J§.addEventListener(TextEvent.TEXT_INPUT,this.§]!_§);
         _loc4_.§&J§.addEventListener(TextEvent.TEXT_INPUT,this.§3B§);
         _loc3_.§&J§.addEventListener(TextEvent.TEXT_INPUT,this.§3B§);
         _loc2_.§&J§.addEventListener(TextEvent.TEXT_INPUT,this.§`P§);
      }
      
      private function §]!_§(param1:TextEvent) : void
      {
         this.§ !"§.§ A§.hide();
         var _loc2_:RegExp = new RegExp("[" + §^3§.§,E§ + "]","g");
         var _loc3_:Boolean = _loc2_.test(param1.text);
         if(!_loc3_)
         {
            this.§4=§(§31§.INVALID_CHARACTER);
         }
         else
         {
            this.§ !"§.§ A§.hide();
            this.§^!!§();
         }
      }
      
      private function §3B§(param1:TextEvent) : void
      {
         this.§ !"§.§ A§.hide();
         var _loc2_:RegExp = new RegExp("[" + §^3§.§&6§ + "]","g");
         var _loc3_:Boolean = _loc2_.test(param1.text);
         if(!_loc3_)
         {
            this.§4=§(§31§.INVALID_CHARACTER);
         }
         else
         {
            this.§ !"§.§ A§.hide();
            this.§^!!§();
         }
      }
      
      private function §`P§(param1:TextEvent) : void
      {
         this.§ !"§.§ A§.hide();
         var _loc2_:RegExp = new RegExp("[" + §^3§.§0z§ + "]","g");
         var _loc3_:Boolean = _loc2_.test(param1.text);
         if(!_loc3_)
         {
            this.§4=§(§31§.INVALID_CHARACTER);
         }
         else
         {
            this.§ !"§.§ A§.hide();
            this.§^!!§();
         }
      }
      
      public function §]b§() : void
      {
         var _loc2_:String = this.§ !"§.§5!R§.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§ !"§.§5!R§.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§ !"§.§5!R§.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§ !"§.§5!R§.getText("TextField_EmailField_Register");
         this.§^!!§();
         this.§ !"§.§!y§ = _loc5_;
         this.§ !"§.§]6§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§4=§(§31§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§4=§(§31§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§4=§(§31§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§4=§(§31§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§4=§(§31§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§4=§(§31§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.id = _loc5_;
         _loc10_.marketing = this.§ !"§.§7u§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         var _loc12_:§[n§ = new §[n§(_loc11_,§"!@§.§ !d§ + "registerPlayer",this,§[n§.§,!b§);
         this.§ !"§.§5!R§.getItemByName("WaitingPopup").setVisibility(true);
         this.§ !"§.§5!R§.container.setObjectToFront(this.§ !"§.§5!R§.getItemByName("WaitingPopup"));
         §91§.§'! §.enableCreditsButton(false);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         this.§ !"§.§5!R§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §?z§.§>7§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = this.§ !"§.§5!R§.getText("TextField_NickNameField_Register");
            this.§ !"§.§3;§();
            §+^§.§@U§ = new §=,§();
            §+^§.§@U§.name = _loc2_.nickName;
            §+^§.§@U§.§"!I§ = _loc2_.id;
            §+^§.§@U§.§5!!§ = _loc2_.security;
            §+^§.levelProfile = _loc2_.levelProfile;
            §+^§.§=!7§();
            if(_loc2_.competition != undefined)
            {
               §+^§.competition = _loc2_.competition;
            }
            if(_loc2_.beats != undefined)
            {
               §"!@§.§6!-§.§@!L§ = _loc2_.beats;
            }
            §91§.§'! §.clearReloadTimers();
            §91§.§'! §.changeState(HighscoreSidebar.§^@§);
            §"!@§.§];§ = SharedObject.getLocal(§"!@§.§4s§ + §+^§.§@U§.§5!!§);
            this.§ !"§.mNextState = §3v§.§^6§;
            §"!G§.§,U§(§"!G§.§"O§);
         }
         else if(_loc2_.error)
         {
            §91§.§'! §.enableCreditsButton(true);
            _loc4_ = _loc2_.error;
            this.§4=§(_loc4_);
            §"!G§.§,U§(§"!G§.§`u§);
         }
      }
      
      public function §<p§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §;n§(param1:IOErrorEvent) : void
      {
         this.§ !"§.§;E§();
         this.§ !"§.§5!R§.getItemByName("WaitingPopup").setVisibility(false);
         §91§.§'! §.enableCreditsButton(true);
      }
      
      private function §4=§(param1:String) : void
      {
         this.§ !"§.§5!R§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case §31§.FIELD_NOT_VALID:
               break;
            case §31§.CONNECTION_ERROR_RETRY:
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §31§.NICKNAME_LENGTH:
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §31§.PASSWORD_LENGTH:
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §31§.PASSWORDS_DONT_MATCH:
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §31§.INVALID_EMAIL:
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §31§.INVALID_CHARACTER:
               break;
            default:
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         this.§ !"§.§ A§.show(param1);
      }
      
      private function §^!!§() : void
      {
         this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
