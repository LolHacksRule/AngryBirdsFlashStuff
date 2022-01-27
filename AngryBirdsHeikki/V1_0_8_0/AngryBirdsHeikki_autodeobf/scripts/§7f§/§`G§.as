package §7f§
{
   import §-!V§.§+V§;
   import §0;§.§%"§;
   import §0;§.§]U§;
   import §1!J§.§6Y§;
   import §1!J§.§>!Q§;
   import §1!J§.§>!U§;
   import §3!^§.§<!O§;
   import §9!?§.§!2§;
   import §9!?§.§#!=§;
   import §;!0§.§"[§;
   import §[,§.§%m§;
   import §[,§.§3!<§;
   import §[,§.§<!Y§;
   import §]b§.§'!O§;
   import §`V§.HighscoreSidebar;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   
   public class §`G§ implements §>!Q§
   {
       
      
      private var §<s§:§3!<§;
      
      public function §`G§(param1:§3!<§)
      {
         super();
         this.§<s§ = param1;
      }
      
      public function §+!+§() : void
      {
         var _loc1_:§"[§ = this.§<s§.§[L§.getItemByName("Checkbox_RememberMe_Register") as §"[§;
         if(this.§<s§.§14§)
         {
            _loc1_.setComponentState(§"[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§"[§.§,E§);
         }
         _loc1_ = this.§<s§.§[L§.getItemByName("Checkbox_Marketing") as §"[§;
         if(this.§<s§.§#q§)
         {
            _loc1_.setComponentState(§"[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§"[§.§,E§);
         }
         (this.§<s§.§[L§.getItemByName("TextField_EmailField_Register") as §+V§).§3x§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!!§);
         (this.§<s§.§[L§.getItemByName("TextField_PasswordField_Register") as §+V§).§3x§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!!§);
         (this.§<s§.§[L§.getItemByName("TextField_PasswordFieldRepeat_Register") as §+V§).§3x§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!!§);
         (this.§<s§.§[L§.getItemByName("TextField_NickNameField_Register") as §+V§).§3x§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!!§);
         new §!2§((this.§<s§.§[L§.getItemByName("TextField_EmailField_Register") as §+V§).§3x§,§2!S§.§ c§,§2!S§.§=c§,§2!S§.§0]§);
         new §!2§((this.§<s§.§[L§.getItemByName("TextField_PasswordField_Register") as §+V§).§3x§,§2!S§.§ c§,§2!S§.§=c§,§2!S§.§0]§);
         new §!2§((this.§<s§.§[L§.getItemByName("TextField_PasswordFieldRepeat_Register") as §+V§).§3x§,§2!S§.§ c§,§2!S§.§=c§,§2!S§.§0]§);
         new §!2§((this.§<s§.§[L§.getItemByName("TextField_NickNameField_Register") as §+V§).§3x§,§2!S§.§ c§,§2!S§.§=c§,§2!S§.§0]§);
      }
      
      public function dispose() : void
      {
         (this.§<s§.§[L§.getItemByName("TextField_EmailField_Register") as §+V§).§3x§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!!§);
         (this.§<s§.§[L§.getItemByName("TextField_PasswordField_Register") as §+V§).§3x§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!!§);
         (this.§<s§.§[L§.getItemByName("TextField_PasswordFieldRepeat_Register") as §+V§).§3x§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!!§);
         (this.§<s§.§[L§.getItemByName("TextField_NickNameField_Register") as §+V§).§3x§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!!§);
      }
      
      private function §<!!§(param1:MouseEvent) : void
      {
         this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         this.§<s§.§[!5§.hide();
      }
      
      public function activate() : void
      {
         this.§<s§.§[L§.container.setObjectToFront(this.§<s§.§[L§.getItemByName("Container_Register_Tab"));
         this.§<s§.§[L§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§<s§.§[L§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§<s§.§[L§.getItemByName("Button_Submit").setVisibility(false);
         this.§<s§.§[L§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§<s§.§[L§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§<s§.§[L§.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§<s§.§[L§.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§<s§.§[L§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§<s§.§[L§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§<s§.§[L§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§<s§.§[L§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§<s§.§[L§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§<s§.§[L§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§+V§ = this.§<s§.§[L§.getItemByName("TextField_NickNameField_Register") as §+V§;
         var _loc2_:§+V§ = this.§<s§.§[L§.getItemByName("TextField_EmailField_Register") as §+V§;
         var _loc3_:§+V§ = this.§<s§.§[L§.getItemByName("TextField_PasswordField_Register") as §+V§;
         var _loc4_:§+V§ = this.§<s§.§[L§.getItemByName("TextField_PasswordFieldRepeat_Register") as §+V§;
         _loc1_.§3x§.restrict = §3!<§.§+!0§;
         _loc4_.§3x§.restrict = §3!<§.§"!0§;
         _loc3_.§3x§.restrict = §3!<§.§"!0§;
         _loc2_.§3x§.restrict = §3!<§.§!!N§;
         _loc1_.§3x§.maxChars = 12;
         _loc2_.§3x§.maxChars = §3!<§.§0!<§;
         _loc2_.§3x§.tabIndex = 1;
         _loc3_.§3x§.tabIndex = 2;
         _loc4_.§3x§.tabIndex = 3;
         _loc1_.§3x§.tabIndex = 4;
      }
      
      public function §-!9§() : void
      {
         var _loc2_:String = this.§<s§.§[L§.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§<s§.§[L§.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§<s§.§[L§.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§<s§.§[L§.getText("TextField_EmailField_Register");
         this.§>!G§();
         this.§<s§.§^!X§ = _loc5_;
         this.§<s§.§&+§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§3Q§(§>!U§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§3Q§(§>!U§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§3Q§(§>!U§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§3Q§(§>!U§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§3Q§(§>!U§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§3Q§(§>!U§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.id = _loc5_;
         _loc10_.marketing = this.§<s§.§#q§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         var _loc12_:§<!O§ = new §<!O§(_loc11_,§2!S§.§1,§ + "registerPlayer",this,§<!O§.§#e§);
         this.§<s§.§[L§.getItemByName("WaitingPopup").setVisibility(true);
         §2!S§.§<P§ = new §%"§("");
         this.§<s§.§[L§.container.setObjectToFront(this.§<s§.§[L§.getItemByName("WaitingPopup"));
         §<!Y§.sHighscoreSidebar.enableCreditsButton(false);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         this.§<s§.§[L§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §6Y§.static((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            _loc3_ = this.§<s§.§[L§.getText("TextField_NickNameField_Register");
            this.§<s§.§7!F§();
            §]U§.§-v§ = new §'!O§();
            §]U§.§-v§.name = _loc2_.nickName;
            §]U§.§-v§.§"!S§ = _loc2_.id;
            §]U§.§-v§.§]t§ = _loc2_.security;
            §]U§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §]U§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            if((_loc4_ = §<!O§.§#!5§(§]U§.levelProfile)) != §]U§.levelProfileSecurity)
            {
               §]U§.§-v§ = new §'!O§();
               §<!Y§.sHighscoreSidebar.enableCreditsButton(true);
               this.§3Q§("SECURITY_ERROR");
               return;
            }
            if(_loc2_.overallScore != undefined)
            {
               §2!S§.§<P§.overallScore = _loc2_.overallScore;
            }
            if(_loc2_.powerUp != undefined)
            {
               §2!S§.§<P§.§'Q§ = _loc2_.powerUp;
            }
            §]U§.§@M§();
            §<!Y§.sHighscoreSidebar.§!t§();
            §<!Y§.sHighscoreSidebar.changeState(HighscoreSidebar.§&!4§);
            this.§<s§.mNextState = §%m§.§+Z§;
            §#!=§.§^!4§(§#!=§.§^!Q§);
         }
         else if(_loc2_.error)
         {
            §<!Y§.sHighscoreSidebar.enableCreditsButton(true);
            _loc5_ = _loc2_.error;
            this.§3Q§(_loc5_);
            §#!=§.§^!4§(§#!=§.§,"§);
         }
      }
      
      public function §1`§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §"W§(param1:IOErrorEvent) : void
      {
         this.§<s§.§&B§();
         this.§<s§.§[L§.getItemByName("WaitingPopup").setVisibility(false);
         §<!Y§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §3Q§(param1:String) : void
      {
         this.§<s§.§[L§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case §>!U§.CONNECTION_ERROR_RETRY:
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §>!U§.NICKNAME_LENGTH:
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §>!U§.PASSWORD_LENGTH:
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §>!U§.PASSWORDS_DONT_MATCH:
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §>!U§.INVALID_EMAIL:
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §>!U§.FIELD_LENGTH:
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §>!U§.FIELD_NOT_VALID:
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         this.§<s§.§[!5§.show(param1);
      }
      
      private function §>!G§() : void
      {
         this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§<s§.§[L§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
