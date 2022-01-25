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
   import §`!7§.§^!,§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   
   public class §#E§ implements §5b§
   {
       
      
      private var §-R§:§7!<§;
      
      public function §#E§(param1:§7!<§)
      {
         super();
         this.§-R§ = param1;
      }
      
      public function §"#§() : void
      {
         var _loc1_:§ l§ = this.§-R§.§+!`§.getItemByName("Checkbox_RememberMe") as § l§;
         if(this.§-R§.§>a§)
         {
            _loc1_.setComponentState(§ l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§ l§.§6!b§);
         }
         (this.§-R§.§+!`§.getItemByName("TextField_UserNameField") as §6!-§).§`!C§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9!_§);
         (this.§-R§.§+!`§.getItemByName("TextField_PasswordField") as §6!-§).§`!C§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9!_§);
         (this.§-R§.§+!`§.getItemByName("TextField_UserNameField") as §6!-§).§`!C§.addEventListener(TextEvent.TEXT_INPUT,this.§2[§);
         (this.§-R§.§+!`§.getItemByName("TextField_PasswordField") as §6!-§).§`!C§.addEventListener(TextEvent.TEXT_INPUT,this.§=V§);
         (this.§-R§.§+!`§.getItemByName("TextField_UserNameField") as §6!-§).§`!C§.restrict = §7!<§.§^!`§;
         (this.§-R§.§+!`§.getItemByName("TextField_PasswordField") as §6!-§).§`!C§.restrict = §7!<§.§;!%§;
      }
      
      private function §2[§(param1:TextEvent) : void
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
      
      public function dispose() : void
      {
         (this.§-R§.§+!`§.getItemByName("TextField_UserNameField") as §6!-§).§`!C§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!_§);
         (this.§-R§.§+!`§.getItemByName("TextField_PasswordField") as §6!-§).§`!C§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!_§);
         (this.§-R§.§+!`§.getItemByName("TextField_UserNameField") as §6!-§).§`!C§.removeEventListener(TextEvent.TEXT_INPUT,this.§2[§);
         (this.§-R§.§+!`§.getItemByName("TextField_PasswordField") as §6!-§).§`!C§.removeEventListener(TextEvent.TEXT_INPUT,this.§=V§);
      }
      
      public function activate() : void
      {
         this.§-R§.§3h§.hide();
         this.§[q§();
         this.§-R§.§+!`§.container.setObjectToFront(this.§-R§.§+!`§.getItemByName("Container_Login_Tab"));
         this.§-R§.§+!`§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§-R§.§+!`§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§-R§.§+!`§.getItemByName("Button_Submit").setVisibility(true);
         this.§-R§.§+!`§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§-R§.§+!`§.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§-R§.§+!`§.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§-R§.§+!`§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§-R§.§+!`§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§-R§.§+!`§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§-R§.§+!`§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§-R§.§+!`§.getItemByName("Checkbox_CollectEmail_Register").setVisibility(false);
         this.§-R§.§+!`§.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function §9!_§(param1:MouseEvent) : void
      {
         if(param1.target.parent == this.§-R§.§+!`§.getItemByName("TextField_UserNameField").mClip)
         {
            this.§-R§.§+!`§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         }
         else if(param1.target.parent == this.§-R§.§+!`§.getItemByName("TextField_PasswordField").mClip)
         {
            this.§-R§.§+!`§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         }
         this.§-R§.§3h§.hide();
      }
      
      public function §^n§() : void
      {
         this.§[q§();
         var _loc2_:String = this.§-R§.§+!`§.getText("TextField_UserNameField");
         var _loc3_:String = this.§-R§.§+!`§.getText("TextField_PasswordField");
         var _loc4_:RegExp = /^\S+@\S+\.\S+$/;
         if(_loc2_.length == 0)
         {
            this.§"Y§(§9i§.INVALID_EMAIL);
            return;
         }
         if(!_loc4_.test(_loc2_))
         {
            this.§"Y§(§9i§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§"Y§(§9i§.PASSWORD_MISSING);
            return;
         }
         var _loc5_:Object;
         (_loc5_ = {}).id = _loc2_;
         _loc5_.password = _loc3_;
         var _loc6_:Object = {
            "type":"login",
            "player":_loc5_
         };
         var _loc7_:§#D§ = new §#D§(_loc6_,§=i§.§'<§ + "login",this,§#D§.§ !a§);
         this.§-R§.§+!`§.getItemByName("WaitingPopup").setVisibility(true);
         §=i§.§2S§ = new §^!,§("");
         this.§-R§.§+!`§.container.setObjectToFront(this.§-R§.§+!`§.getItemByName("WaitingPopup"));
         §3!%§.§@<§.enableCreditsButton(false);
         if(this.§-R§.§>a§)
         {
            this.§-R§.§^!A§(_loc2_,_loc3_);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §<t§.§1&§((param1.currentTarget as URLLoader).data);
         this.§-R§.§+!`§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc3_:Object = §<t§.§1&§((param1.currentTarget as URLLoader).data);
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.security)
         {
            §[5§.§0c§ = new §%!W§();
            §[5§.§0c§.name = _loc3_.nickName;
            §[5§.§0c§.§#c§ = _loc3_.id;
            §[5§.§0c§.§!!6§ = _loc3_.security;
            §[5§.levelProfile = _loc3_.levelProfile;
            §[5§.§=!I§();
            if(_loc3_.competition != undefined)
            {
               §[5§.competition = _loc3_.competition;
            }
            if(_loc3_.beats != undefined)
            {
               §=i§.§2S§.§'u§ = _loc3_.beats;
            }
            §3!%§.§@<§.clearReloadTimers();
            §3!%§.§@<§.changeState(HighscoreSidebar.§-!G§);
            §=i§.§0§ = SharedObject.getLocal(§=i§.§@l§ + §[5§.§0c§.§!!6§);
            this.§-R§.mNextState = §;"§.§'2§;
            §"N§.§0o§(§"N§.§9m§);
         }
         else if(_loc3_.error)
         {
            §3!%§.§@<§.enableCreditsButton(true);
            this.§"Y§(_loc3_.error);
            §"N§.§0o§(§"N§.§7g§);
         }
      }
      
      public function §5x§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'1§(param1:IOErrorEvent) : void
      {
         this.§"Y§(§9i§.CONNECTION_ERROR_RETRY);
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
            case §9i§.INVALID_EMAIL:
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §9i§.PASSWORD_MISSING:
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §9i§.CONNECTION_ERROR_RETRY:
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §9i§.INVALID_CHARACTER:
               break;
            default:
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§-R§.§+!`§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         this.§-R§.§3h§.show(param1);
      }
      
      private function §[q§() : void
      {
         this.§-R§.§+!`§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§-R§.§+!`§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
   }
}
