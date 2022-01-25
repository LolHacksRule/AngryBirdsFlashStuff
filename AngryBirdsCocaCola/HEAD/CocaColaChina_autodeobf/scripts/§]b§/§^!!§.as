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
   import §>9§.§;!?§;
   import §?k§.§[n§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   
   public class §^!!§ implements §+Q§
   {
       
      
      private var § if§:§^3§;
      
      public function §^!!§(param1:§^3§)
      {
         super();
         this.§ if§ = param1;
      }
      
      public function §%P§() : void
      {
         var _loc1_:§8N§ = this.§ if§.§5!R§.getItemByName("Checkbox_RememberMe") as §8N§;
         if(this.§ if§.§#p§)
         {
            _loc1_.setComponentState(§8N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§8N§.§9L§);
         }
         (this.§ if§.§5!R§.getItemByName("TextField_UserNameField") as §5!_§).§5r§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"!A§);
         (this.§ if§.§5!R§.getItemByName("TextField_PasswordField") as §5!_§).§5r§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"!A§);
         (this.§ if§.§5!R§.getItemByName("TextField_UserNameField") as §5!_§).§5r§.addEventListener(TextEvent.TEXT_INPUT,this.§9-§);
         (this.§ if§.§5!R§.getItemByName("TextField_PasswordField") as §5!_§).§5r§.addEventListener(TextEvent.TEXT_INPUT,this.§`P§);
         (this.§ if§.§5!R§.getItemByName("TextField_UserNameField") as §5!_§).§5r§.restrict = §^3§.§0z§;
         (this.§ if§.§5!R§.getItemByName("TextField_PasswordField") as §5!_§).§5r§.restrict = §^3§.§&6§;
      }
      
      private function §9-§(param1:TextEvent) : void
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
      
      public function dispose() : void
      {
         (this.§ if§.§5!R§.getItemByName("TextField_UserNameField") as §5!_§).§5r§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"!A§);
         (this.§ if§.§5!R§.getItemByName("TextField_PasswordField") as §5!_§).§5r§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"!A§);
         (this.§ if§.§5!R§.getItemByName("TextField_UserNameField") as §5!_§).§5r§.removeEventListener(TextEvent.TEXT_INPUT,this.§9-§);
         (this.§ if§.§5!R§.getItemByName("TextField_PasswordField") as §5!_§).§5r§.removeEventListener(TextEvent.TEXT_INPUT,this.§`P§);
      }
      
      public function activate() : void
      {
         this.§ if§.§ A§.hide();
         this.§=,§();
         this.§ if§.§5!R§.container.setObjectToFront(this.§ if§.§5!R§.getItemByName("Container_Login_Tab"));
         this.§ if§.§5!R§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§ if§.§5!R§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§ if§.§5!R§.getItemByName("Button_Submit").setVisibility(true);
         this.§ if§.§5!R§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§ if§.§5!R§.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§ if§.§5!R§.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§ if§.§5!R§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§ if§.§5!R§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§ if§.§5!R§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§ if§.§5!R§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§ if§.§5!R§.getItemByName("Checkbox_CollectEmail_Register").setVisibility(false);
         this.§ if§.§5!R§.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function §"!A§(param1:MouseEvent) : void
      {
         if(param1.target.parent == this.§ if§.§5!R§.getItemByName("TextField_UserNameField").mClip)
         {
            this.§ if§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         }
         else if(param1.target.parent == this.§ if§.§5!R§.getItemByName("TextField_PasswordField").mClip)
         {
            this.§ if§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         }
         this.§ if§.§ A§.hide();
      }
      
      public function §%!X§() : void
      {
         this.§=,§();
         var _loc2_:String = this.§ if§.§5!R§.getText("TextField_UserNameField");
         var _loc3_:String = this.§ if§.§5!R§.getText("TextField_PasswordField");
         var _loc4_:RegExp = /^\S+@\S+\.\S+$/;
         if(_loc2_.length == 0)
         {
            this.§4=§(§ !X§.INVALID_EMAIL);
            return;
         }
         if(!_loc4_.test(_loc2_))
         {
            this.§4=§(§ !X§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§4=§(§ !X§.PASSWORD_MISSING);
            return;
         }
         var _loc5_:Object;
         (_loc5_ = {}).id = _loc2_;
         _loc5_.password = _loc3_;
         var _loc6_:Object = {
            "type":"login",
            "player":_loc5_
         };
         var _loc7_:§[n§ = new §[n§(_loc6_,§"!@§.§4w§ + "login",this,§[n§.§,!b§);
         this.§ if§.§5!R§.getItemByName("WaitingPopup").setVisibility(true);
         §"!@§.§-5§ = new §;!?§("");
         this.§ if§.§5!R§.container.setObjectToFront(this.§ if§.§5!R§.getItemByName("WaitingPopup"));
         §91§.§'! §.enableCreditsButton(false);
         if(this.§ if§.§#p§)
         {
            this.§ if§.§>!U§(_loc2_,_loc3_);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §;l§.§]g§((param1.currentTarget as URLLoader).data);
         this.§ if§.§5!R§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc3_:Object = §;l§.§]g§((param1.currentTarget as URLLoader).data);
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.security)
         {
            §9!V§.§%!§ = new §^<§();
            §9!V§.§%!§.name = _loc3_.nickName;
            §9!V§.§%!§.§7!;§ = _loc3_.id;
            §9!V§.§%!§.§<d§ = _loc3_.security;
            §9!V§.levelProfile = _loc3_.levelProfile;
            §9!V§.§]Y§();
            if(_loc3_.competition != undefined)
            {
               §9!V§.competition = _loc3_.competition;
            }
            if(_loc3_.beats != undefined)
            {
               §"!@§.§-5§.§3S§ = _loc3_.beats;
            }
            §91§.§'! §.clearReloadTimers();
            §91§.§'! §.changeState(HighscoreSidebar.§!!;§);
            §"!@§.§^b§ = SharedObject.getLocal(§"!@§.§ !d§ + §9!V§.§%!§.§<d§);
            this.§ if§.mNextState = §3v§.§^6§;
            §&`§.§"!G§(§&`§.§^,§);
         }
         else if(_loc3_.error)
         {
            §91§.§'! §.enableCreditsButton(true);
            this.§4=§(_loc3_.error);
            §&`§.§"!G§(§&`§.§2x§);
         }
      }
      
      public function §<p§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §;n§(param1:IOErrorEvent) : void
      {
         this.§4=§(§ !X§.CONNECTION_ERROR_RETRY);
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
            case § !X§.INVALID_EMAIL:
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case § !X§.PASSWORD_MISSING:
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case § !X§.CONNECTION_ERROR_RETRY:
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case § !X§.INVALID_CHARACTER:
               break;
            default:
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§ if§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         this.§ if§.§ A§.show(param1);
      }
      
      private function §=,§() : void
      {
         this.§ if§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§ if§.§5!R§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
   }
}
