package §@!;§
{
   import §#%§.§,!E§;
   import §#%§.§70§;
   import §+!M§.§^<§;
   import §+B§.§#!b§;
   import §+B§.§-2§;
   import §+B§.§2!c§;
   import §-!9§.§9!!§;
   import §0!X§.§!!Z§;
   import §0!X§.§&!4§;
   import §0!X§.§8!F§;
   import §9!Q§.§&o§;
   import §9!Q§.§1T§;
   import §=!§.HighscoreSidebar;
   import §>!M§.§2?§;
   import §]!&§.§1E§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   
   public class §4,§ implements §!!Z§
   {
       
      
      private var §3k§:§#!b§;
      
      public function §4,§(param1:§#!b§)
      {
         super();
         this.§3k§ = param1;
      }
      
      public function § !U§() : void
      {
         var _loc1_:§^<§ = this.§3k§.§ ,§.getItemByName("Checkbox_RememberMe_Register") as §^<§;
         if(this.§3k§.§8m§)
         {
            _loc1_.setComponentState(§^<§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§^<§.§0!b§);
         }
         _loc1_ = this.§3k§.§ ,§.getItemByName("Checkbox_Marketing") as §^<§;
         if(this.§3k§.§7h§)
         {
            _loc1_.setComponentState(§^<§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§^<§.§0!b§);
         }
         (this.§3k§.§ ,§.getItemByName("TextField_EmailField_Register") as §1E§).§;+§.addEventListener(MouseEvent.MOUSE_DOWN,this.§ X§);
         (this.§3k§.§ ,§.getItemByName("TextField_PasswordField_Register") as §1E§).§;+§.addEventListener(MouseEvent.MOUSE_DOWN,this.§ X§);
         (this.§3k§.§ ,§.getItemByName("TextField_PasswordFieldRepeat_Register") as §1E§).§;+§.addEventListener(MouseEvent.MOUSE_DOWN,this.§ X§);
         (this.§3k§.§ ,§.getItemByName("TextField_NickNameField_Register") as §1E§).§;+§.addEventListener(MouseEvent.MOUSE_DOWN,this.§ X§);
         new §&o§((this.§3k§.§ ,§.getItemByName("TextField_EmailField_Register") as §1E§).§;+§,§"!R§.§4F§,§"!R§.§7![§,§"!R§.§ <§);
         new §&o§((this.§3k§.§ ,§.getItemByName("TextField_PasswordField_Register") as §1E§).§;+§,§"!R§.§4F§,§"!R§.§7![§,§"!R§.§ <§);
         new §&o§((this.§3k§.§ ,§.getItemByName("TextField_PasswordFieldRepeat_Register") as §1E§).§;+§,§"!R§.§4F§,§"!R§.§7![§,§"!R§.§ <§);
         new §&o§((this.§3k§.§ ,§.getItemByName("TextField_NickNameField_Register") as §1E§).§;+§,§"!R§.§4F§,§"!R§.§7![§,§"!R§.§ <§);
      }
      
      public function dispose() : void
      {
         (this.§3k§.§ ,§.getItemByName("TextField_EmailField_Register") as §1E§).§;+§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ X§);
         (this.§3k§.§ ,§.getItemByName("TextField_PasswordField_Register") as §1E§).§;+§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ X§);
         (this.§3k§.§ ,§.getItemByName("TextField_PasswordFieldRepeat_Register") as §1E§).§;+§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ X§);
         (this.§3k§.§ ,§.getItemByName("TextField_NickNameField_Register") as §1E§).§;+§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ X§);
      }
      
      private function § X§(param1:MouseEvent) : void
      {
         this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§3k§.§1!!§.hide();
      }
      
      public function activate() : void
      {
         this.§3k§.§ ,§.container.setObjectToFront(this.§3k§.§ ,§.getItemByName("Container_Register_Tab"));
         this.§3k§.§ ,§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("Button_Submit").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§3k§.§ ,§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§3k§.§ ,§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§3k§.§ ,§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§3k§.§ ,§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§3k§.§ ,§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§3k§.§ ,§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§1E§ = this.§3k§.§ ,§.getItemByName("TextField_NickNameField_Register") as §1E§;
         var _loc2_:§1E§ = this.§3k§.§ ,§.getItemByName("TextField_EmailField_Register") as §1E§;
         var _loc3_:§1E§ = this.§3k§.§ ,§.getItemByName("TextField_PasswordField_Register") as §1E§;
         var _loc4_:§1E§ = this.§3k§.§ ,§.getItemByName("TextField_PasswordFieldRepeat_Register") as §1E§;
         _loc1_.§;+§.restrict = §#!b§.§8W§;
         _loc4_.§;+§.restrict = §#!b§.§2!^§;
         _loc3_.§;+§.restrict = §#!b§.§2!^§;
         _loc2_.§;+§.restrict = §#!b§.§;!0§;
         _loc1_.§;+§.maxChars = 12;
         _loc2_.§;+§.maxChars = §#!b§.§&"§;
         _loc2_.§;+§.tabIndex = 1;
         _loc3_.§;+§.tabIndex = 2;
         _loc4_.§;+§.tabIndex = 3;
         _loc1_.§;+§.tabIndex = 4;
      }
      
      public function §;u§() : void
      {
         var _loc2_:String = this.§3k§.§ ,§.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§3k§.§ ,§.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§3k§.§ ,§.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§3k§.§ ,§.getText("TextField_EmailField_Register");
         this.§ u§();
         this.§3k§.§7!7§ = _loc5_;
         this.§3k§.§8!L§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§2!0§(§&!4§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§2!0§(§&!4§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§2!0§(§&!4§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§2!0§(§&!4§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§2!0§(§&!4§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§2!0§(§&!4§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.id = _loc5_;
         _loc10_.marketing = this.§3k§.§7h§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         var _loc12_:§2?§ = new §2?§(_loc11_,§"!R§.§['§ + "registerPlayer",this,§2?§.§&!g§);
         this.§3k§.§ ,§.getItemByName("WaitingPopup").setVisibility(true);
         §"!R§.§0!P§ = new §,!E§("");
         this.§3k§.§ ,§.container.setObjectToFront(this.§3k§.§ ,§.getItemByName("WaitingPopup"));
         §-2§.sHighscoreSidebar.enableCreditsButton(false);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         this.§3k§.§ ,§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §8!F§.§[<§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = this.§3k§.§ ,§.getText("TextField_NickNameField_Register");
            this.§3k§.§+a§();
            §70§.§6d§ = new §9!!§();
            §70§.§6d§.name = _loc2_.nickName;
            §70§.§6d§.§6!X§ = _loc2_.id;
            §70§.§6d§.§[!J§ = _loc2_.security;
            §70§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §70§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            if((_loc4_ = §2?§.§`O§(§70§.levelProfile)) != §70§.levelProfileSecurity)
            {
               §70§.§6d§ = new §9!!§();
               §-2§.sHighscoreSidebar.enableCreditsButton(true);
               this.§2!0§("SECURITY_ERROR");
               return;
            }
            if(_loc2_.overallScore != undefined)
            {
               §"!R§.§0!P§.overallScore = _loc2_.overallScore;
            }
            if(_loc2_.powerUp != undefined)
            {
               §"!R§.§0!P§.§4g§ = _loc2_.powerUp;
            }
            §70§.§2!I§();
            §-2§.sHighscoreSidebar.§#v§();
            §-2§.sHighscoreSidebar.changeState(HighscoreSidebar.§^]§);
            this.§3k§.mNextState = §2!c§.§[!%§;
            §1T§.§-f§(§1T§.§ !Q§);
         }
         else if(_loc2_.error)
         {
            §-2§.sHighscoreSidebar.enableCreditsButton(true);
            _loc5_ = _loc2_.error;
            this.§2!0§(_loc5_);
            §1T§.§-f§(§1T§.§!n§);
         }
      }
      
      public function §;!Q§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §>!6§(param1:IOErrorEvent) : void
      {
         this.§3k§.§%%§();
         this.§3k§.§ ,§.getItemByName("WaitingPopup").setVisibility(false);
         §-2§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §2!0§(param1:String) : void
      {
         this.§3k§.§ ,§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case §&!4§.CONNECTION_ERROR_RETRY:
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §&!4§.NICKNAME_LENGTH:
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §&!4§.PASSWORD_LENGTH:
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §&!4§.PASSWORDS_DONT_MATCH:
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §&!4§.INVALID_EMAIL:
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §&!4§.FIELD_LENGTH:
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §&!4§.FIELD_NOT_VALID:
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         this.§3k§.§1!!§.show(param1);
      }
      
      private function § u§() : void
      {
         this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
