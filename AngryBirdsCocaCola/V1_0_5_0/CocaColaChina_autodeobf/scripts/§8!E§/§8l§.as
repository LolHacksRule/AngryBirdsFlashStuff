package §8!E§
{
   import §%!c§.§1T§;
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
   
   public class §8l§ implements §0l§
   {
       
      
      private var §7!3§:§4!L§;
      
      public function §8l§(param1:§4!L§)
      {
         super();
         this.§7!3§ = param1;
      }
      
      public function §#!N§() : void
      {
         var _loc1_:§`f§ = this.§7!3§.§=!I§.getItemByName("Checkbox_RememberMe") as §`f§;
         if(this.§7!3§.§1!]§)
         {
            _loc1_.setComponentState(§`f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§`f§.§'2§);
         }
         (this.§7!3§.§=!I§.getItemByName("TextField_UserNameField") as §#u§).§=J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4Q§);
         (this.§7!3§.§=!I§.getItemByName("TextField_PasswordField") as §#u§).§=J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4Q§);
         (this.§7!3§.§=!I§.getItemByName("TextField_UserNameField") as §#u§).§=J§.addEventListener(TextEvent.TEXT_INPUT,this.§,!2§);
         (this.§7!3§.§=!I§.getItemByName("TextField_PasswordField") as §#u§).§=J§.addEventListener(TextEvent.TEXT_INPUT,this.§&%§);
         (this.§7!3§.§=!I§.getItemByName("TextField_UserNameField") as §#u§).§=J§.restrict = §4!L§.§7!Q§;
         (this.§7!3§.§=!I§.getItemByName("TextField_PasswordField") as §#u§).§=J§.restrict = §4!L§.§=<§;
      }
      
      private function §,!2§(param1:TextEvent) : void
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
      
      public function dispose() : void
      {
         (this.§7!3§.§=!I§.getItemByName("TextField_UserNameField") as §#u§).§=J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4Q§);
         (this.§7!3§.§=!I§.getItemByName("TextField_PasswordField") as §#u§).§=J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4Q§);
         (this.§7!3§.§=!I§.getItemByName("TextField_UserNameField") as §#u§).§=J§.removeEventListener(TextEvent.TEXT_INPUT,this.§,!2§);
         (this.§7!3§.§=!I§.getItemByName("TextField_PasswordField") as §#u§).§=J§.removeEventListener(TextEvent.TEXT_INPUT,this.§&%§);
      }
      
      public function activate() : void
      {
         this.§7!3§.§ C§.hide();
         this.§0!M§();
         this.§7!3§.§=!I§.container.setObjectToFront(this.§7!3§.§=!I§.getItemByName("Container_Login_Tab"));
         this.§7!3§.§=!I§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§7!3§.§=!I§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§7!3§.§=!I§.getItemByName("Button_Submit").setVisibility(true);
         this.§7!3§.§=!I§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§7!3§.§=!I§.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§7!3§.§=!I§.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§7!3§.§=!I§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§7!3§.§=!I§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§7!3§.§=!I§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§7!3§.§=!I§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§7!3§.§=!I§.getItemByName("Checkbox_CollectEmail_Register").setVisibility(false);
         this.§7!3§.§=!I§.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function §4Q§(param1:MouseEvent) : void
      {
         if(param1.target.parent == this.§7!3§.§=!I§.getItemByName("TextField_UserNameField").mClip)
         {
            this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         }
         else if(param1.target.parent == this.§7!3§.§=!I§.getItemByName("TextField_PasswordField").mClip)
         {
            this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         }
         this.§7!3§.§ C§.hide();
      }
      
      public function §-O§() : void
      {
         this.§0!M§();
         var _loc2_:String = this.§7!3§.§=!I§.getText("TextField_UserNameField");
         var _loc3_:String = this.§7!3§.§=!I§.getText("TextField_PasswordField");
         var _loc4_:RegExp = /^\S+@\S+\.\S+$/;
         if(_loc2_.length == 0)
         {
            this.§,!9§(§;!+§.INVALID_EMAIL);
            return;
         }
         if(!_loc4_.test(_loc2_))
         {
            this.§,!9§(§;!+§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§,!9§(§;!+§.PASSWORD_MISSING);
            return;
         }
         var _loc5_:Object;
         (_loc5_ = {}).id = _loc2_;
         _loc5_.password = _loc3_;
         var _loc6_:Object = {
            "type":"login",
            "player":_loc5_
         };
         var _loc7_:§%P§ = new §%P§(_loc6_,§6T§.§&H§ + "login",this,§%P§.§]!J§);
         this.§7!3§.§=!I§.getItemByName("WaitingPopup").setVisibility(true);
         §6T§.§>c§ = new §1T§("");
         this.§7!3§.§=!I§.container.setObjectToFront(this.§7!3§.§=!I§.getItemByName("WaitingPopup"));
         §1!a§.§+D§.enableCreditsButton(false);
         if(this.§7!3§.§1!]§)
         {
            this.§7!3§.§@!R§(_loc2_,_loc3_);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §<`§.§48§((param1.currentTarget as URLLoader).data);
         this.§7!3§.§=!I§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc3_:Object = §<`§.§48§((param1.currentTarget as URLLoader).data);
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.security)
         {
            §@2§.§=!'§ = new §>!;§();
            §@2§.§=!'§.name = _loc3_.nickName;
            §@2§.§=!'§.§<!]§ = _loc3_.id;
            §@2§.§=!'§.§,Q§ = _loc3_.security;
            §@2§.levelProfile = _loc3_.levelProfile;
            §@2§.§<!#§();
            if(_loc3_.competition != undefined)
            {
               §@2§.competition = _loc3_.competition;
            }
            if(_loc3_.beats != undefined)
            {
               §6T§.§>c§.§4!5§ = _loc3_.beats;
            }
            §1!a§.§+D§.clearReloadTimers();
            §1!a§.§+D§.changeState(HighscoreSidebar.§#P§);
            §6T§.§0k§ = SharedObject.getLocal(§6T§.§&>§ + §@2§.§=!'§.§,Q§);
            this.§7!3§.mNextState = §`$§.§^!O§;
            §!!H§.§?!O§(§!!H§.§[_§);
         }
         else if(_loc3_.error)
         {
            §1!a§.§+D§.enableCreditsButton(true);
            this.§,!9§(_loc3_.error);
            §!!H§.§?!O§(§!!H§.§,W§);
         }
      }
      
      public function §9!%§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §=p§(param1:IOErrorEvent) : void
      {
         this.§,!9§(§;!+§.CONNECTION_ERROR_RETRY);
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
            case §;!+§.INVALID_EMAIL:
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §;!+§.PASSWORD_MISSING:
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §;!+§.CONNECTION_ERROR_RETRY:
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §;!+§.INVALID_CHARACTER:
               break;
            default:
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         this.§7!3§.§ C§.show(param1);
      }
      
      private function §0!M§() : void
      {
         this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§7!3§.§=!I§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
   }
}
