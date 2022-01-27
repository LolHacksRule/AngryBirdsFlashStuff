package §+P§
{
   import §1Q§.§4p§;
   import §3r§.§+!G§;
   import §3r§.§@M§;
   import §4M§.HighscoreSidebar;
   import §4V§.§=!=§;
   import §4V§.§>u§;
   import §4V§.§@!Y§;
   import §5!O§.§%!O§;
   import §8A§.§`]§;
   import §@!]§.§%!S§;
   import §^E§.§1!A§;
   import §^E§.§9!Q§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import §function§.§'"§;
   import §function§.§1!@§;
   import §function§.§^,§;
   
   public class §>!O§ implements §@!Y§
   {
       
      
      private var §^!<§:§'"§;
      
      public function §>!O§(param1:§'"§)
      {
         super();
         this.§^!<§ = param1;
      }
      
      public function §'[§() : void
      {
         var _loc1_:§4p§ = this.§^!<§.§@K§.getItemByName("Checkbox_RememberMe_Register") as §4p§;
         if(this.§^!<§.§=@§)
         {
            _loc1_.setComponentState(§4p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§4p§.§#!%§);
         }
         _loc1_ = this.§^!<§.§@K§.getItemByName("Checkbox_Marketing") as §4p§;
         if(this.§^!<§.§"!F§)
         {
            _loc1_.setComponentState(§4p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§4p§.§#!%§);
         }
         (this.§^!<§.§@K§.getItemByName("TextField_EmailField_Register") as §%!S§).§9!"§.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
         (this.§^!<§.§@K§.getItemByName("TextField_PasswordField_Register") as §%!S§).§9!"§.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
         (this.§^!<§.§@K§.getItemByName("TextField_PasswordFieldRepeat_Register") as §%!S§).§9!"§.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
         (this.§^!<§.§@K§.getItemByName("TextField_NickNameField_Register") as §%!S§).§9!"§.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
         new §+!G§((this.§^!<§.§@K§.getItemByName("TextField_EmailField_Register") as §%!S§).§9!"§,§"H§.§?!N§,§"H§.§]W§,§"H§.§!!K§);
         new §+!G§((this.§^!<§.§@K§.getItemByName("TextField_PasswordField_Register") as §%!S§).§9!"§,§"H§.§?!N§,§"H§.§]W§,§"H§.§!!K§);
         new §+!G§((this.§^!<§.§@K§.getItemByName("TextField_PasswordFieldRepeat_Register") as §%!S§).§9!"§,§"H§.§?!N§,§"H§.§]W§,§"H§.§!!K§);
         new §+!G§((this.§^!<§.§@K§.getItemByName("TextField_NickNameField_Register") as §%!S§).§9!"§,§"H§.§?!N§,§"H§.§]W§,§"H§.§!!K§);
      }
      
      public function dispose() : void
      {
         (this.§^!<§.§@K§.getItemByName("TextField_EmailField_Register") as §%!S§).§9!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
         (this.§^!<§.§@K§.getItemByName("TextField_PasswordField_Register") as §%!S§).§9!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
         (this.§^!<§.§@K§.getItemByName("TextField_PasswordFieldRepeat_Register") as §%!S§).§9!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
         (this.§^!<§.§@K§.getItemByName("TextField_NickNameField_Register") as §%!S§).§9!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§^!<§.§`!V§.hide();
      }
      
      public function activate() : void
      {
         this.§^!<§.§@K§.container.setObjectToFront(this.§^!<§.§@K§.getItemByName("Container_Register_Tab"));
         this.§^!<§.§@K§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("Button_Submit").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§^!<§.§@K§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§^!<§.§@K§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§^!<§.§@K§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§^!<§.§@K§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§^!<§.§@K§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§^!<§.§@K§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§%!S§ = this.§^!<§.§@K§.getItemByName("TextField_NickNameField_Register") as §%!S§;
         var _loc2_:§%!S§ = this.§^!<§.§@K§.getItemByName("TextField_EmailField_Register") as §%!S§;
         var _loc3_:§%!S§ = this.§^!<§.§@K§.getItemByName("TextField_PasswordField_Register") as §%!S§;
         var _loc4_:§%!S§ = this.§^!<§.§@K§.getItemByName("TextField_PasswordFieldRepeat_Register") as §%!S§;
         _loc1_.§9!"§.restrict = §'"§.§,m§;
         _loc4_.§9!"§.restrict = §'"§.§ !0§;
         _loc3_.§9!"§.restrict = §'"§.§ !0§;
         _loc2_.§9!"§.restrict = §'"§.§-u§;
         _loc1_.§9!"§.maxChars = 12;
         _loc2_.§9!"§.maxChars = §'"§.§>c§;
         _loc2_.§9!"§.tabIndex = 1;
         _loc3_.§9!"§.tabIndex = 2;
         _loc4_.§9!"§.tabIndex = 3;
         _loc1_.§9!"§.tabIndex = 4;
      }
      
      public function §!?§() : void
      {
         var _loc2_:String = this.§^!<§.§@K§.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§^!<§.§@K§.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§^!<§.§@K§.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§^!<§.§@K§.getText("TextField_EmailField_Register");
         this.§2!c§();
         this.§^!<§.§8!%§ = _loc5_;
         this.§^!<§.§0W§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§9X§(§>u§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§9X§(§>u§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§9X§(§>u§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§9X§(§>u§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§9X§(§>u§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§9X§(§>u§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.id = _loc5_;
         _loc10_.marketing = this.§^!<§.§"!F§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         var _loc12_:§%!O§ = new §%!O§(_loc11_,§"H§.§4O§ + "registerPlayer",this,§%!O§.§4!-§);
         this.§^!<§.§@K§.getItemByName("WaitingPopup").setVisibility(true);
         §"H§.§""§ = new §1!A§("");
         this.§^!<§.§@K§.container.setObjectToFront(this.§^!<§.§@K§.getItemByName("WaitingPopup"));
         §1!@§.sHighscoreSidebar.enableCreditsButton(false);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         this.§^!<§.§@K§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §=!=§.§=!a§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = this.§^!<§.§@K§.getText("TextField_NickNameField_Register");
            this.§^!<§.§"v§();
            §9!Q§.§`!$§ = new §`]§();
            §9!Q§.§`!$§.name = _loc2_.nickName;
            §9!Q§.§`!$§.§%^§ = _loc2_.id;
            §9!Q§.§`!$§.§^9§ = _loc2_.security;
            §9!Q§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §9!Q§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            if((_loc4_ = §%!O§.§,t§(§9!Q§.levelProfile)) != §9!Q§.levelProfileSecurity)
            {
               §9!Q§.§`!$§ = new §`]§();
               §1!@§.sHighscoreSidebar.enableCreditsButton(true);
               this.§9X§("SECURITY_ERROR");
               return;
            }
            if(_loc2_.overallScore != undefined)
            {
               §"H§.§""§.overallScore = _loc2_.overallScore;
            }
            if(_loc2_.powerUp != undefined)
            {
               §"H§.§""§.§?@§ = _loc2_.powerUp;
            }
            §9!Q§.§4!+§();
            §1!@§.sHighscoreSidebar.§,!R§();
            §1!@§.sHighscoreSidebar.changeState(HighscoreSidebar.§"7§);
            this.§^!<§.mNextState = §^,§.§94§;
            §@M§.§"6§(§@M§.§]b§);
         }
         else if(_loc2_.error)
         {
            §1!@§.sHighscoreSidebar.enableCreditsButton(true);
            _loc5_ = _loc2_.error;
            this.§9X§(_loc5_);
            §@M§.§"6§(§@M§.§0q§);
         }
      }
      
      public function §^;§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §6R§(param1:IOErrorEvent) : void
      {
         this.§^!<§.§31§();
         this.§^!<§.§@K§.getItemByName("WaitingPopup").setVisibility(false);
         §1!@§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §9X§(param1:String) : void
      {
         this.§^!<§.§@K§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case §>u§.CONNECTION_ERROR_RETRY:
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §>u§.NICKNAME_LENGTH:
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §>u§.PASSWORD_LENGTH:
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §>u§.PASSWORDS_DONT_MATCH:
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §>u§.INVALID_EMAIL:
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §>u§.FIELD_LENGTH:
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §>u§.FIELD_NOT_VALID:
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         this.§^!<§.§`!V§.show(param1);
      }
      
      private function §2!c§() : void
      {
         this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
