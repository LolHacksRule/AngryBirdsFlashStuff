package §]b§
{
   import § C§.§ !X§;
   import § C§.§+Q§;
   import § C§.§;l§;
   import §%n§.§3v§;
   import §%n§.§91§;
   import §%n§.§^3§;
   import §'P§.§5!_§;
   import §32§.HighscoreSidebar;
   import §7]§.§8N§;
   import §;m§.§&`§;
   import §=J§.§^<§;
   import §>9§.§9!V§;
   import §?k§.§[n§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §>!L§ implements §+Q§
   {
       
      
      private var § if§:§^3§;
      
      private var §09§:Boolean = false;
      
      public function §>!L§(param1:§^3§)
      {
         super();
         this.§ if§ = param1;
      }
      
      public function §,k§() : void
      {
         var _loc1_:§8N§ = this.§ if§.§5!R§.getItemByName("Checkbox_RememberMe_Register") as §8N§;
         var _loc2_:§8N§ = this.§ if§.§5!R§.getItemByName("Checkbox_CollectEmail_Register") as §8N§;
         _loc2_.setComponentState(§8N§.§9L§);
         if(this.§ if§.§#p§)
         {
            _loc1_.setComponentState(§8N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§8N§.§9L§);
         }
         (this.§ if§.§5!R§.getItemByName("TextField_EmailField_Register") as §5!_§).§5r§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"!A§);
         (this.§ if§.§5!R§.getItemByName("TextField_PasswordField_Register") as §5!_§).§5r§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"!A§);
         (this.§ if§.§5!R§.getItemByName("TextField_PasswordFieldRepeat_Register") as §5!_§).§5r§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"!A§);
         (this.§ if§.§5!R§.getItemByName("TextField_NickNameField_Register") as §5!_§).§5r§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"!A§);
      }
      
      public function dispose() : void
      {
         (this.§ if§.§5!R§.getItemByName("TextField_EmailField_Register") as §5!_§).§5r§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"!A§);
         (this.§ if§.§5!R§.getItemByName("TextField_PasswordField_Register") as §5!_§).§5r§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"!A§);
         (this.§ if§.§5!R§.getItemByName("TextField_PasswordFieldRepeat_Register") as §5!_§).§5r§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"!A§);
         (this.§ if§.§5!R§.getItemByName("TextField_NickNameField_Register") as §5!_§).§5r§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"!A§);
         (this.§ if§.§5!R§.getItemByName("TextField_EmailField_Register") as §5!_§).§5r§.removeEventListener(TextEvent.TEXT_INPUT,this.§4j§);
         (this.§ if§.§5!R§.getItemByName("TextField_PasswordField_Register") as §5!_§).§5r§.removeEventListener(TextEvent.TEXT_INPUT,this.§`P§);
         (this.§ if§.§5!R§.getItemByName("TextField_PasswordFieldRepeat_Register") as §5!_§).§5r§.removeEventListener(TextEvent.TEXT_INPUT,this.§`P§);
         (this.§ if§.§5!R§.getItemByName("TextField_NickNameField_Register") as §5!_§).§5r§.removeEventListener(TextEvent.TEXT_INPUT,this.§9-§);
      }
      
      private function §"!A§(param1:MouseEvent) : void
      {
         if(param1.target.parent == this.§ if§.§5!R§.getItemByName("TextField_EmailField_Register").mClip)
         {
            this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         }
         else if(param1.target.parent == this.§ if§.§5!R§.getItemByName("TextField_PasswordField_Register").mClip)
         {
            this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
            this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         }
         else if(param1.target.parent == this.§ if§.§5!R§.getItemByName("TextField_PasswordFieldRepeat_Register").mClip)
         {
            this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
            this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         }
         else if(param1.target.parent == this.§ if§.§5!R§.getItemByName("TextField_NickNameField_Register").mClip)
         {
            this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         }
         this.§ if§.§ A§.hide();
      }
      
      public function activate() : void
      {
         var _loc5_:int = 0;
         if(!this.§09§)
         {
            this.§09§ = true;
            _loc5_ = getTimer() / 1000;
            §&`§.§"!G§(§&`§.§ case§,_loc5_.toString(),_loc5_);
         }
         this.§ if§.§ A§.hide();
         this.§=,§();
         this.§ if§.§5!R§.container.setObjectToFront(this.§ if§.§5!R§.getItemByName("Container_Register_Tab"));
         this.§ if§.§5!R§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§ if§.§5!R§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§ if§.§5!R§.getItemByName("Button_Submit").setVisibility(false);
         this.§ if§.§5!R§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§ if§.§5!R§.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§ if§.§5!R§.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§ if§.§5!R§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§ if§.§5!R§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§ if§.§5!R§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§ if§.§5!R§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§ if§.§5!R§.getItemByName("Checkbox_CollectEmail_Register").setVisibility(true);
         this.§ if§.§5!R§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§5!_§ = this.§ if§.§5!R§.getItemByName("TextField_NickNameField_Register") as §5!_§;
         var _loc2_:§5!_§ = this.§ if§.§5!R§.getItemByName("TextField_EmailField_Register") as §5!_§;
         var _loc3_:§5!_§ = this.§ if§.§5!R§.getItemByName("TextField_PasswordField_Register") as §5!_§;
         var _loc4_:§5!_§ = this.§ if§.§5!R§.getItemByName("TextField_PasswordFieldRepeat_Register") as §5!_§;
         _loc1_.§5r§.restrict = §^3§.§,E§;
         _loc4_.§5r§.restrict = §^3§.§&6§;
         _loc3_.§5r§.restrict = §^3§.§&6§;
         _loc2_.§5r§.restrict = §^3§.§0z§;
         _loc1_.§5r§.maxChars = 12;
         _loc2_.§5r§.tabIndex = 1;
         _loc3_.§5r§.tabIndex = 2;
         _loc4_.§5r§.tabIndex = 3;
         _loc1_.§5r§.tabIndex = 4;
         _loc1_.§5r§.addEventListener(TextEvent.TEXT_INPUT,this.§9-§);
         _loc4_.§5r§.addEventListener(TextEvent.TEXT_INPUT,this.§`P§);
         _loc3_.§5r§.addEventListener(TextEvent.TEXT_INPUT,this.§`P§);
         _loc2_.§5r§.addEventListener(TextEvent.TEXT_INPUT,this.§4j§);
      }
      
      private function §9-§(param1:TextEvent) : void
      {
         this.§ if§.§ A§.hide();
         var _loc2_:RegExp = new RegExp("[" + §^3§.§,E§ + "]","g");
         var _loc3_:Boolean = _loc2_.test(param1.text);
         if(!_loc3_)
         {
            this.§4=§(§ !X§.INVALID_CHARACTER);
         }
         else
         {
            this.§ if§.§ A§.hide();
            this.§=,§();
         }
      }
      
      private function §`P§(param1:TextEvent) : void
      {
         this.§ if§.§ A§.hide();
         var _loc2_:RegExp = new RegExp("[" + §^3§.§&6§ + "]","g");
         var _loc3_:Boolean = _loc2_.test(param1.text);
         if(!_loc3_)
         {
            this.§4=§(§ !X§.INVALID_CHARACTER);
         }
         else
         {
            this.§ if§.§ A§.hide();
            this.§=,§();
         }
      }
      
      private function §4j§(param1:TextEvent) : void
      {
         this.§ if§.§ A§.hide();
         var _loc2_:RegExp = new RegExp("[" + §^3§.§0z§ + "]","g");
         var _loc3_:Boolean = _loc2_.test(param1.text);
         if(!_loc3_)
         {
            this.§4=§(§ !X§.INVALID_CHARACTER);
         }
         else
         {
            this.§ if§.§ A§.hide();
            this.§=,§();
         }
      }
      
      public function §%!X§() : void
      {
         var _loc2_:String = this.§ if§.§5!R§.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§ if§.§5!R§.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§ if§.§5!R§.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§ if§.§5!R§.getText("TextField_EmailField_Register");
         this.§=,§();
         this.§ if§.§!y§ = _loc5_;
         this.§ if§.§]6§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§4=§(§ !X§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§4=§(§ !X§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§4=§(§ !X§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§4=§(§ !X§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§4=§(§ !X§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§4=§(§ !X§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.id = _loc5_;
         _loc10_.marketing = this.§ if§.§7u§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         var _loc12_:§[n§ = new §[n§(_loc11_,§"!@§.§4w§ + "registerPlayer",this,§[n§.§,!b§);
         this.§ if§.§5!R§.getItemByName("WaitingPopup").setVisibility(true);
         this.§ if§.§5!R§.container.setObjectToFront(this.§ if§.§5!R§.getItemByName("WaitingPopup"));
         §91§.§'! §.enableCreditsButton(false);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         this.§ if§.§5!R§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §;l§.§]g§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = this.§ if§.§5!R§.getText("TextField_NickNameField_Register");
            this.§ if§.§3;§();
            §9!V§.§%!§ = new §^<§();
            §9!V§.§%!§.name = _loc2_.nickName;
            §9!V§.§%!§.§7!;§ = _loc2_.id;
            §9!V§.§%!§.§<d§ = _loc2_.security;
            §9!V§.levelProfile = _loc2_.levelProfile;
            §9!V§.§]Y§();
            if(_loc2_.competition != undefined)
            {
               §9!V§.competition = _loc2_.competition;
            }
            if(_loc2_.beats != undefined)
            {
               §"!@§.§-5§.§3S§ = _loc2_.beats;
            }
            §91§.§'! §.clearReloadTimers();
            §91§.§'! §.changeState(HighscoreSidebar.§!!;§);
            §"!@§.§^b§ = SharedObject.getLocal(§"!@§.§ !d§ + §9!V§.§%!§.§<d§);
            this.§ if§.mNextState = §3v§.§^6§;
            §&`§.§"!G§(§&`§.§`u§);
         }
         else if(_loc2_.error)
         {
            §91§.§'! §.enableCreditsButton(true);
            _loc4_ = _loc2_.error;
            this.§4=§(_loc4_);
            §&`§.§"!G§(§&`§.§-'§);
         }
      }
      
      public function §<p§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §;n§(param1:IOErrorEvent) : void
      {
         this.§ if§.§;E§();
         this.§ if§.§5!R§.getItemByName("WaitingPopup").setVisibility(false);
         §91§.§'! §.enableCreditsButton(true);
      }
      
      private function §4=§(param1:String) : void
      {
         this.§ if§.§5!R§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case § !X§.FIELD_NOT_VALID:
               break;
            case § !X§.CONNECTION_ERROR_RETRY:
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case § !X§.NICKNAME_LENGTH:
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case § !X§.PASSWORD_LENGTH:
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case § !X§.PASSWORDS_DONT_MATCH:
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case § !X§.INVALID_EMAIL:
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case § !X§.INVALID_CHARACTER:
               break;
            default:
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         this.§ if§.§ A§.show(param1);
      }
      
      private function §=,§() : void
      {
         this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§ if§.§5!R§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
