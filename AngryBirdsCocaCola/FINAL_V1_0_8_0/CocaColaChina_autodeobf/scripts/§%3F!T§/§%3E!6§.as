package §?!T§
{
   import § ]§.HighscoreSidebar;
   import §!!4§.§8>§;
   import §"! §.§=s§;
   import §&$§.§6g§;
   import §&V§.§4o§;
   import §-"§.§,_§;
   import §68§.§9v§;
   import §9L§.§%"§;
   import §9L§.§7!M§;
   import §9L§.§?%§;
   import §>I§.§1!Q§;
   import §>I§.§91§;
   import §>I§.§for §;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §>!6§ implements §?%§
   {
       
      
      private var §1@§:§1!Q§;
      
      private var §`6§:Boolean = false;
      
      public function §>!6§(param1:§1!Q§)
      {
         super();
         this.§1@§ = param1;
      }
      
      public function §@!T§() : void
      {
         var _loc1_:§4o§ = this.§1@§.§^!;§.getItemByName("Checkbox_RememberMe_Register") as §4o§;
         var _loc2_:§4o§ = this.§1@§.§^!;§.getItemByName("Checkbox_CollectEmail_Register") as §4o§;
         _loc2_.setComponentState(§4o§.§3m§);
         if(this.§1@§.§5A§)
         {
            _loc1_.setComponentState(§4o§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§4o§.§3m§);
         }
         (this.§1@§.§^!;§.getItemByName("TextField_EmailField_Register") as §9v§).§@!G§.addEventListener(MouseEvent.MOUSE_DOWN,this.§=N§);
         (this.§1@§.§^!;§.getItemByName("TextField_PasswordField_Register") as §9v§).§@!G§.addEventListener(MouseEvent.MOUSE_DOWN,this.§=N§);
         (this.§1@§.§^!;§.getItemByName("TextField_PasswordFieldRepeat_Register") as §9v§).§@!G§.addEventListener(MouseEvent.MOUSE_DOWN,this.§=N§);
         (this.§1@§.§^!;§.getItemByName("TextField_NickNameField_Register") as §9v§).§@!G§.addEventListener(MouseEvent.MOUSE_DOWN,this.§=N§);
      }
      
      public function dispose() : void
      {
         (this.§1@§.§^!;§.getItemByName("TextField_EmailField_Register") as §9v§).§@!G§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=N§);
         (this.§1@§.§^!;§.getItemByName("TextField_PasswordField_Register") as §9v§).§@!G§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=N§);
         (this.§1@§.§^!;§.getItemByName("TextField_PasswordFieldRepeat_Register") as §9v§).§@!G§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=N§);
         (this.§1@§.§^!;§.getItemByName("TextField_NickNameField_Register") as §9v§).§@!G§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=N§);
         (this.§1@§.§^!;§.getItemByName("TextField_EmailField_Register") as §9v§).§@!G§.removeEventListener(TextEvent.TEXT_INPUT,this.§]r§);
         (this.§1@§.§^!;§.getItemByName("TextField_PasswordField_Register") as §9v§).§@!G§.removeEventListener(TextEvent.TEXT_INPUT,this.§`§);
         (this.§1@§.§^!;§.getItemByName("TextField_PasswordFieldRepeat_Register") as §9v§).§@!G§.removeEventListener(TextEvent.TEXT_INPUT,this.§`§);
         (this.§1@§.§^!;§.getItemByName("TextField_NickNameField_Register") as §9v§).§@!G§.removeEventListener(TextEvent.TEXT_INPUT,this.§`B§);
      }
      
      private function §=N§(param1:MouseEvent) : void
      {
         if(param1.target.parent == this.§1@§.§^!;§.getItemByName("TextField_EmailField_Register").mClip)
         {
            this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         }
         else if(param1.target.parent == this.§1@§.§^!;§.getItemByName("TextField_PasswordField_Register").mClip)
         {
            this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
            this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         }
         else if(param1.target.parent == this.§1@§.§^!;§.getItemByName("TextField_PasswordFieldRepeat_Register").mClip)
         {
            this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
            this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         }
         else if(param1.target.parent == this.§1@§.§^!;§.getItemByName("TextField_NickNameField_Register").mClip)
         {
            this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         }
         this.§1@§.§;!8§.hide();
      }
      
      public function activate() : void
      {
         var _loc5_:int = 0;
         if(!this.§`6§)
         {
            this.§`6§ = true;
            _loc5_ = getTimer() / 1000;
            §6g§.§+!J§(§6g§.§4!T§,_loc5_.toString(),_loc5_);
         }
         this.§1@§.§;!8§.hide();
         this.§6!,§();
         this.§1@§.§^!;§.container.setObjectToFront(this.§1@§.§^!;§.getItemByName("Container_Register_Tab"));
         this.§1@§.§^!;§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§1@§.§^!;§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§1@§.§^!;§.getItemByName("Button_Submit").setVisibility(false);
         this.§1@§.§^!;§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§1@§.§^!;§.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§1@§.§^!;§.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§1@§.§^!;§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§1@§.§^!;§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§1@§.§^!;§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§1@§.§^!;§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§1@§.§^!;§.getItemByName("Checkbox_CollectEmail_Register").setVisibility(true);
         this.§1@§.§^!;§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§9v§ = this.§1@§.§^!;§.getItemByName("TextField_NickNameField_Register") as §9v§;
         var _loc2_:§9v§ = this.§1@§.§^!;§.getItemByName("TextField_EmailField_Register") as §9v§;
         var _loc3_:§9v§ = this.§1@§.§^!;§.getItemByName("TextField_PasswordField_Register") as §9v§;
         var _loc4_:§9v§ = this.§1@§.§^!;§.getItemByName("TextField_PasswordFieldRepeat_Register") as §9v§;
         _loc1_.§@!G§.restrict = §1!Q§.§6P§;
         _loc4_.§@!G§.restrict = §1!Q§.§>G§;
         _loc3_.§@!G§.restrict = §1!Q§.§>G§;
         _loc2_.§@!G§.restrict = §1!Q§.§]o§;
         _loc1_.§@!G§.maxChars = 12;
         _loc2_.§@!G§.tabIndex = 1;
         _loc3_.§@!G§.tabIndex = 2;
         _loc4_.§@!G§.tabIndex = 3;
         _loc1_.§@!G§.tabIndex = 4;
         _loc1_.§@!G§.addEventListener(TextEvent.TEXT_INPUT,this.§`B§);
         _loc4_.§@!G§.addEventListener(TextEvent.TEXT_INPUT,this.§`§);
         _loc3_.§@!G§.addEventListener(TextEvent.TEXT_INPUT,this.§`§);
         _loc2_.§@!G§.addEventListener(TextEvent.TEXT_INPUT,this.§]r§);
      }
      
      private function §`B§(param1:TextEvent) : void
      {
         this.§1@§.§;!8§.hide();
         var _loc2_:RegExp = new RegExp("[" + §1!Q§.§6P§ + "]","g");
         var _loc3_:Boolean = _loc2_.test(param1.text);
         if(!_loc3_)
         {
            this.§!&§(§7!M§.INVALID_CHARACTER);
         }
         else
         {
            this.§1@§.§;!8§.hide();
            this.§6!,§();
         }
      }
      
      private function §`§(param1:TextEvent) : void
      {
         this.§1@§.§;!8§.hide();
         var _loc2_:RegExp = new RegExp("[" + §1!Q§.§>G§ + "]","g");
         var _loc3_:Boolean = _loc2_.test(param1.text);
         if(!_loc3_)
         {
            this.§!&§(§7!M§.INVALID_CHARACTER);
         }
         else
         {
            this.§1@§.§;!8§.hide();
            this.§6!,§();
         }
      }
      
      private function §]r§(param1:TextEvent) : void
      {
         this.§1@§.§;!8§.hide();
         var _loc2_:RegExp = new RegExp("[" + §1!Q§.§]o§ + "]","g");
         var _loc3_:Boolean = _loc2_.test(param1.text);
         if(!_loc3_)
         {
            this.§!&§(§7!M§.INVALID_CHARACTER);
         }
         else
         {
            this.§1@§.§;!8§.hide();
            this.§6!,§();
         }
      }
      
      public function §9_§() : void
      {
         var _loc2_:String = this.§1@§.§^!;§.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§1@§.§^!;§.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§1@§.§^!;§.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§1@§.§^!;§.getText("TextField_EmailField_Register");
         this.§6!,§();
         this.§1@§.§@!5§ = _loc5_;
         this.§1@§.§;!?§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§!&§(§7!M§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§!&§(§7!M§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§!&§(§7!M§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§!&§(§7!M§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§!&§(§7!M§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§!&§(§7!M§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.id = _loc5_;
         _loc10_.marketing = this.§1@§.§8r§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         var _loc12_:§8>§ = new §8>§(_loc11_,§-!#§.§>+§ + "registerPlayer",this,§8>§.§+!O§);
         this.§1@§.§^!;§.getItemByName("WaitingPopup").setVisibility(true);
         this.§1@§.§^!;§.container.setObjectToFront(this.§1@§.§^!;§.getItemByName("WaitingPopup"));
         §for §.§^c§.enableCreditsButton(false);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         this.§1@§.§^!;§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §%"§.§1"§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = this.§1@§.§^!;§.getText("TextField_NickNameField_Register");
            this.§1@§.§`-§();
            §,_§.§9;§ = new §=s§();
            §,_§.§9;§.name = _loc2_.nickName;
            §,_§.§9;§.§2-§ = _loc2_.id;
            §,_§.§9;§.§"!4§ = _loc2_.security;
            §,_§.levelProfile = _loc2_.levelProfile;
            §,_§.§%t§();
            if(_loc2_.competition != undefined)
            {
               §,_§.competition = _loc2_.competition;
            }
            if(_loc2_.beats != undefined)
            {
               §-!#§.§4,§.§<M§ = _loc2_.beats;
            }
            §for §.§^c§.clearReloadTimers();
            §for §.§^c§.changeState(HighscoreSidebar.§7!3§);
            §-!#§.§3!V§ = SharedObject.getLocal(§-!#§.§[!I§ + §,_§.§9;§.§"!4§);
            this.§1@§.mNextState = §91§.§ !P§;
            §6g§.§+!J§(§6g§.§'!8§);
         }
         else if(_loc2_.error)
         {
            §for §.§^c§.enableCreditsButton(true);
            _loc4_ = _loc2_.error;
            this.§!&§(_loc4_);
            §6g§.§+!J§(§6g§.§<!K§);
         }
      }
      
      public function §#!5§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §0!B§(param1:IOErrorEvent) : void
      {
         this.§1@§.§>!Z§();
         this.§1@§.§^!;§.getItemByName("WaitingPopup").setVisibility(false);
         §for §.§^c§.enableCreditsButton(true);
      }
      
      private function §!&§(param1:String) : void
      {
         this.§1@§.§^!;§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case §7!M§.FIELD_NOT_VALID:
               break;
            case §7!M§.CONNECTION_ERROR_RETRY:
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §7!M§.NICKNAME_LENGTH:
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §7!M§.PASSWORD_LENGTH:
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §7!M§.PASSWORDS_DONT_MATCH:
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §7!M§.INVALID_EMAIL:
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §7!M§.INVALID_CHARACTER:
               break;
            default:
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         this.§1@§.§;!8§.show(param1);
      }
      
      private function §6!,§() : void
      {
         this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§1@§.§^!;§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
