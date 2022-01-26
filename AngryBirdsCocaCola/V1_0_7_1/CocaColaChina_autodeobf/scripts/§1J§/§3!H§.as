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
   import §^!5§.§>9§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   
   public class §3!H§ implements § C§
   {
       
      
      private var § !"§:§^3§;
      
      public function §3!H§(param1:§^3§)
      {
         super();
         this.§ !"§ = param1;
      }
      
      public function §@!<§() : void
      {
         var _loc1_:§#!K§ = this.§ !"§.§5!R§.getItemByName("Checkbox_RememberMe") as §#!K§;
         if(this.§ !"§.§#p§)
         {
            _loc1_.setComponentState(§#!K§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§#!K§.§8!O§);
         }
         (this.§ !"§.§5!R§.getItemByName("TextField_UserNameField") as §,!B§).§&J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4P§);
         (this.§ !"§.§5!R§.getItemByName("TextField_PasswordField") as §,!B§).§&J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4P§);
         (this.§ !"§.§5!R§.getItemByName("TextField_UserNameField") as §,!B§).§&J§.addEventListener(TextEvent.TEXT_INPUT,this.§]!_§);
         (this.§ !"§.§5!R§.getItemByName("TextField_PasswordField") as §,!B§).§&J§.addEventListener(TextEvent.TEXT_INPUT,this.§3B§);
         (this.§ !"§.§5!R§.getItemByName("TextField_UserNameField") as §,!B§).§&J§.restrict = §^3§.§0z§;
         (this.§ !"§.§5!R§.getItemByName("TextField_PasswordField") as §,!B§).§&J§.restrict = §^3§.§&6§;
      }
      
      private function §]!_§(param1:TextEvent) : void
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
      
      public function dispose() : void
      {
         (this.§ !"§.§5!R§.getItemByName("TextField_UserNameField") as §,!B§).§&J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4P§);
         (this.§ !"§.§5!R§.getItemByName("TextField_PasswordField") as §,!B§).§&J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4P§);
         (this.§ !"§.§5!R§.getItemByName("TextField_UserNameField") as §,!B§).§&J§.removeEventListener(TextEvent.TEXT_INPUT,this.§]!_§);
         (this.§ !"§.§5!R§.getItemByName("TextField_PasswordField") as §,!B§).§&J§.removeEventListener(TextEvent.TEXT_INPUT,this.§3B§);
      }
      
      public function activate() : void
      {
         this.§ !"§.§ A§.hide();
         this.§^!!§();
         this.§ !"§.§5!R§.container.setObjectToFront(this.§ !"§.§5!R§.getItemByName("Container_Login_Tab"));
         this.§ !"§.§5!R§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§ !"§.§5!R§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§ !"§.§5!R§.getItemByName("Button_Submit").setVisibility(true);
         this.§ !"§.§5!R§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§ !"§.§5!R§.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§ !"§.§5!R§.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§ !"§.§5!R§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§ !"§.§5!R§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§ !"§.§5!R§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§ !"§.§5!R§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§ !"§.§5!R§.getItemByName("Checkbox_CollectEmail_Register").setVisibility(false);
         this.§ !"§.§5!R§.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function §4P§(param1:MouseEvent) : void
      {
         if(param1.target.parent == this.§ !"§.§5!R§.getItemByName("TextField_UserNameField").mClip)
         {
            this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         }
         else if(param1.target.parent == this.§ !"§.§5!R§.getItemByName("TextField_PasswordField").mClip)
         {
            this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         }
         this.§ !"§.§ A§.hide();
      }
      
      public function §]b§() : void
      {
         this.§^!!§();
         var _loc2_:String = this.§ !"§.§5!R§.getText("TextField_UserNameField");
         var _loc3_:String = this.§ !"§.§5!R§.getText("TextField_PasswordField");
         var _loc4_:RegExp = /^\S+@\S+\.\S+$/;
         if(_loc2_.length == 0)
         {
            this.§4=§(§31§.INVALID_EMAIL);
            return;
         }
         if(!_loc4_.test(_loc2_))
         {
            this.§4=§(§31§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§4=§(§31§.PASSWORD_MISSING);
            return;
         }
         var _loc5_:Object;
         (_loc5_ = {}).id = _loc2_;
         _loc5_.password = _loc3_;
         var _loc6_:Object = {
            "type":"login",
            "player":_loc5_
         };
         var _loc7_:§[n§ = new §[n§(_loc6_,§"!@§.§ !d§ + "login",this,§[n§.§,!b§);
         this.§ !"§.§5!R§.getItemByName("WaitingPopup").setVisibility(true);
         §"!@§.§6!-§ = new §>9§("");
         this.§ !"§.§5!R§.container.setObjectToFront(this.§ !"§.§5!R§.getItemByName("WaitingPopup"));
         §91§.§'! §.enableCreditsButton(false);
         if(this.§ !"§.§#p§)
         {
            this.§ !"§.§>!U§(_loc2_,_loc3_);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §?z§.§>7§((param1.currentTarget as URLLoader).data);
         this.§ !"§.§5!R§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc3_:Object = §?z§.§>7§((param1.currentTarget as URLLoader).data);
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.security)
         {
            §+^§.§@U§ = new §=,§();
            §+^§.§@U§.name = _loc3_.nickName;
            §+^§.§@U§.§"!I§ = _loc3_.id;
            §+^§.§@U§.§5!!§ = _loc3_.security;
            §+^§.levelProfile = _loc3_.levelProfile;
            §+^§.§=!7§();
            if(_loc3_.competition != undefined)
            {
               §+^§.competition = _loc3_.competition;
            }
            if(_loc3_.beats != undefined)
            {
               §"!@§.§6!-§.§@!L§ = _loc3_.beats;
            }
            §91§.§'! §.clearReloadTimers();
            §91§.§'! §.changeState(HighscoreSidebar.§^@§);
            §"!@§.§];§ = SharedObject.getLocal(§"!@§.§4s§ + §+^§.§@U§.§5!!§);
            this.§ !"§.mNextState = §3v§.§^6§;
            §"!G§.§,U§(§"!G§.§ case§);
         }
         else if(_loc3_.error)
         {
            §91§.§'! §.enableCreditsButton(true);
            this.§4=§(_loc3_.error);
            §"!G§.§,U§(§"!G§.§^,§);
         }
      }
      
      public function §<p§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §;n§(param1:IOErrorEvent) : void
      {
         this.§4=§(§31§.CONNECTION_ERROR_RETRY);
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
            case §31§.INVALID_EMAIL:
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §31§.PASSWORD_MISSING:
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §31§.CONNECTION_ERROR_RETRY:
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §31§.INVALID_CHARACTER:
               break;
            default:
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         this.§ !"§.§ A§.show(param1);
      }
      
      private function §^!!§() : void
      {
         this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§ !"§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
   }
}
