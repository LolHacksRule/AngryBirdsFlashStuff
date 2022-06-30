package §[!=§
{
   import §#!&§.§1![§;
   import §+!9§.§%!+§;
   import §+!9§.§0!M§;
   import §+!9§.§3!!§;
   import §1!6§.§ !3§;
   import §1!6§.§-%§;
   import §4!9§.§;!9§;
   import §4!9§.§>6§;
   import §9i§.§+A§;
   import §;<§.§%!I§;
   import §;<§.§%K§;
   import §;<§.§7!K§;
   import §;D§.§]T§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import §var§.§8!_§;
   
   public class §>!]§ implements §%!I§
   {
       
      
      private var §8g§:§0!M§;
      
      public function §>!]§(param1:§0!M§)
      {
         super();
         this.§8g§ = param1;
      }
      
      public function §@!"§() : void
      {
         var _loc1_:§8!_§ = this.§8g§.§2!M§.getItemByName("Checkbox_RememberMe_Register") as §8!_§;
         if(this.§8g§.§ !M§)
         {
            _loc1_.setComponentState(§8!_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§8!_§.§^#§);
         }
         _loc1_ = this.§8g§.§2!M§.getItemByName("Checkbox_Marketing") as §8!_§;
         if(this.§8g§.§-!`§)
         {
            _loc1_.setComponentState(§8!_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§8!_§.§^#§);
         }
         (this.§8g§.§2!M§.getItemByName("TextField_EmailField_Register") as §1![§).§2q§.addEventListener(MouseEvent.MOUSE_DOWN,this.§try§);
         (this.§8g§.§2!M§.getItemByName("TextField_PasswordField_Register") as §1![§).§2q§.addEventListener(MouseEvent.MOUSE_DOWN,this.§try§);
         (this.§8g§.§2!M§.getItemByName("TextField_PasswordFieldRepeat_Register") as §1![§).§2q§.addEventListener(MouseEvent.MOUSE_DOWN,this.§try§);
         (this.§8g§.§2!M§.getItemByName("TextField_NickNameField_Register") as §1![§).§2q§.addEventListener(MouseEvent.MOUSE_DOWN,this.§try§);
         new §;!9§((this.§8g§.§2!M§.getItemByName("TextField_EmailField_Register") as §1![§).§2q§,§1F§.§9!J§,§1F§.§&!§,§1F§.§'I§);
         new §;!9§((this.§8g§.§2!M§.getItemByName("TextField_PasswordField_Register") as §1![§).§2q§,§1F§.§9!J§,§1F§.§&!§,§1F§.§'I§);
         new §;!9§((this.§8g§.§2!M§.getItemByName("TextField_PasswordFieldRepeat_Register") as §1![§).§2q§,§1F§.§9!J§,§1F§.§&!§,§1F§.§'I§);
         new §;!9§((this.§8g§.§2!M§.getItemByName("TextField_NickNameField_Register") as §1![§).§2q§,§1F§.§9!J§,§1F§.§&!§,§1F§.§'I§);
      }
      
      public function dispose() : void
      {
         (this.§8g§.§2!M§.getItemByName("TextField_EmailField_Register") as §1![§).§2q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§try§);
         (this.§8g§.§2!M§.getItemByName("TextField_PasswordField_Register") as §1![§).§2q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§try§);
         (this.§8g§.§2!M§.getItemByName("TextField_PasswordFieldRepeat_Register") as §1![§).§2q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§try§);
         (this.§8g§.§2!M§.getItemByName("TextField_NickNameField_Register") as §1![§).§2q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§try§);
      }
      
      private function §try§(param1:MouseEvent) : void
      {
         this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§8g§.§83§.hide();
      }
      
      public function activate() : void
      {
         this.§8g§.§2!M§.container.setObjectToFront(this.§8g§.§2!M§.getItemByName("Container_Register_Tab"));
         this.§8g§.§2!M§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("Button_Submit").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§8g§.§2!M§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§8g§.§2!M§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§8g§.§2!M§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§8g§.§2!M§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§8g§.§2!M§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§8g§.§2!M§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§1![§ = this.§8g§.§2!M§.getItemByName("TextField_NickNameField_Register") as §1![§;
         var _loc2_:§1![§ = this.§8g§.§2!M§.getItemByName("TextField_EmailField_Register") as §1![§;
         var _loc3_:§1![§ = this.§8g§.§2!M§.getItemByName("TextField_PasswordField_Register") as §1![§;
         var _loc4_:§1![§ = this.§8g§.§2!M§.getItemByName("TextField_PasswordFieldRepeat_Register") as §1![§;
         _loc1_.§2q§.restrict = §0!M§.§[@§;
         _loc4_.§2q§.restrict = §0!M§.§=!U§;
         _loc3_.§2q§.restrict = §0!M§.§=!U§;
         _loc2_.§2q§.restrict = §0!M§.§=d§;
         _loc1_.§2q§.maxChars = 12;
         _loc2_.§2q§.maxChars = §0!M§.§[!_§;
         _loc2_.§2q§.tabIndex = 1;
         _loc3_.§2q§.tabIndex = 2;
         _loc4_.§2q§.tabIndex = 3;
         _loc1_.§2q§.tabIndex = 4;
      }
      
      public function §%U§() : void
      {
         var _loc2_:String = this.§8g§.§2!M§.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§8g§.§2!M§.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§8g§.§2!M§.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§8g§.§2!M§.getText("TextField_EmailField_Register");
         this.§[s§();
         this.§8g§.§;l§ = _loc5_;
         this.§8g§.§94§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§]!B§(§%K§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§]!B§(§%K§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§]!B§(§%K§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§]!B§(§%K§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§]!B§(§%K§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§]!B§(§%K§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.id = _loc5_;
         _loc10_.marketing = this.§8g§.§-!`§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         var _loc12_:§+A§ = new §+A§(_loc11_,§1F§.§&1§ + "registerPlayer",this,§+A§.§<!&§);
         this.§8g§.§2!M§.getItemByName("WaitingPopup").setVisibility(true);
         §1F§.§=l§ = new §-%§("");
         this.§8g§.§2!M§.container.setObjectToFront(this.§8g§.§2!M§.getItemByName("WaitingPopup"));
         §3!!§.sHighscoreSidebar.enableCreditsButton(false);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         this.§8g§.§2!M§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §7!K§.§>e§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = this.§8g§.§2!M§.getText("TextField_NickNameField_Register");
            this.§8g§.§3!+§();
            § !3§.§@!`§ = new §]T§();
            § !3§.§@!`§.name = _loc2_.nickName;
            § !3§.§@!`§.§#!3§ = _loc2_.id;
            § !3§.§@!`§.§@]§ = _loc2_.security;
            § !3§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               § !3§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            if((_loc4_ = §+A§.§&n§(§ !3§.levelProfile)) != § !3§.levelProfileSecurity)
            {
               § !3§.§@!`§ = new §]T§();
               §3!!§.sHighscoreSidebar.enableCreditsButton(true);
               this.§]!B§("SECURITY_ERROR");
               return;
            }
            if(_loc2_.overallScore != undefined)
            {
               §1F§.§=l§.overallScore = _loc2_.overallScore;
            }
            if(_loc2_.powerUp != undefined)
            {
               §1F§.§=l§.§1n§ = _loc2_.powerUp;
            }
            § !3§.§44§();
            §3!!§.sHighscoreSidebar.§@!2§();
            §3!!§.sHighscoreSidebar.changeState(HighscoreSidebar.§20§);
            this.§8g§.mNextState = §%!+§.§6! §;
            §>6§.§%;§(§>6§.§9!a§);
         }
         else if(_loc2_.error)
         {
            §3!!§.sHighscoreSidebar.enableCreditsButton(true);
            _loc5_ = _loc2_.error;
            this.§]!B§(_loc5_);
            §>6§.§%;§(§>6§.§`^§);
         }
      }
      
      public function §1x§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!L§(param1:IOErrorEvent) : void
      {
         this.§8g§.§91§();
         this.§8g§.§2!M§.getItemByName("WaitingPopup").setVisibility(false);
         §3!!§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §]!B§(param1:String) : void
      {
         this.§8g§.§2!M§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case §%K§.CONNECTION_ERROR_RETRY:
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §%K§.NICKNAME_LENGTH:
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §%K§.PASSWORD_LENGTH:
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §%K§.PASSWORDS_DONT_MATCH:
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §%K§.INVALID_EMAIL:
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §%K§.FIELD_LENGTH:
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §%K§.FIELD_NOT_VALID:
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         this.§8g§.§83§.show(param1);
      }
      
      private function §[s§() : void
      {
         this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
