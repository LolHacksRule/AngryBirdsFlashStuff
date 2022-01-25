package §?!T§
{
   import § ]§.HighscoreSidebar;
   import §!!4§.§8>§;
   import §"! §.§=s§;
   import §&$§.§6g§;
   import §&V§.§4o§;
   import §-"§.§,_§;
   import §-"§.§0!O§;
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
   
   public class §-!7§ implements §?%§
   {
       
      
      private var §1@§:§1!Q§;
      
      public function §-!7§(param1:§1!Q§)
      {
         super();
         this.§1@§ = param1;
      }
      
      public function §<1§() : void
      {
         var _loc1_:§4o§ = this.§1@§.§^!;§.getItemByName("Checkbox_RememberMe") as §4o§;
         if(this.§1@§.§5A§)
         {
            _loc1_.setComponentState(§4o§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§4o§.§3m§);
         }
         (this.§1@§.§^!;§.getItemByName("TextField_UserNameField") as §9v§).§@!G§.addEventListener(MouseEvent.MOUSE_DOWN,this.§=N§);
         (this.§1@§.§^!;§.getItemByName("TextField_PasswordField") as §9v§).§@!G§.addEventListener(MouseEvent.MOUSE_DOWN,this.§=N§);
         (this.§1@§.§^!;§.getItemByName("TextField_UserNameField") as §9v§).§@!G§.addEventListener(TextEvent.TEXT_INPUT,this.§`B§);
         (this.§1@§.§^!;§.getItemByName("TextField_PasswordField") as §9v§).§@!G§.addEventListener(TextEvent.TEXT_INPUT,this.§`§);
         (this.§1@§.§^!;§.getItemByName("TextField_UserNameField") as §9v§).§@!G§.restrict = §1!Q§.§]o§;
         (this.§1@§.§^!;§.getItemByName("TextField_PasswordField") as §9v§).§@!G§.restrict = §1!Q§.§>G§;
      }
      
      private function §`B§(param1:TextEvent) : void
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
      
      public function dispose() : void
      {
         (this.§1@§.§^!;§.getItemByName("TextField_UserNameField") as §9v§).§@!G§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=N§);
         (this.§1@§.§^!;§.getItemByName("TextField_PasswordField") as §9v§).§@!G§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=N§);
         (this.§1@§.§^!;§.getItemByName("TextField_UserNameField") as §9v§).§@!G§.removeEventListener(TextEvent.TEXT_INPUT,this.§`B§);
         (this.§1@§.§^!;§.getItemByName("TextField_PasswordField") as §9v§).§@!G§.removeEventListener(TextEvent.TEXT_INPUT,this.§`§);
      }
      
      public function activate() : void
      {
         this.§1@§.§;!8§.hide();
         this.§6!,§();
         this.§1@§.§^!;§.container.setObjectToFront(this.§1@§.§^!;§.getItemByName("Container_Login_Tab"));
         this.§1@§.§^!;§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§1@§.§^!;§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§1@§.§^!;§.getItemByName("Button_Submit").setVisibility(true);
         this.§1@§.§^!;§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§1@§.§^!;§.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§1@§.§^!;§.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§1@§.§^!;§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§1@§.§^!;§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§1@§.§^!;§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§1@§.§^!;§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§1@§.§^!;§.getItemByName("Checkbox_CollectEmail_Register").setVisibility(false);
         this.§1@§.§^!;§.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function §=N§(param1:MouseEvent) : void
      {
         if(param1.target.parent == this.§1@§.§^!;§.getItemByName("TextField_UserNameField").mClip)
         {
            this.§1@§.§^!;§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         }
         else if(param1.target.parent == this.§1@§.§^!;§.getItemByName("TextField_PasswordField").mClip)
         {
            this.§1@§.§^!;§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         }
         this.§1@§.§;!8§.hide();
      }
      
      public function §9_§() : void
      {
         this.§6!,§();
         var _loc2_:String = this.§1@§.§^!;§.getText("TextField_UserNameField");
         var _loc3_:String = this.§1@§.§^!;§.getText("TextField_PasswordField");
         var _loc4_:RegExp = /^\S+@\S+\.\S+$/;
         if(_loc2_.length == 0)
         {
            this.§!&§(§7!M§.INVALID_EMAIL);
            return;
         }
         if(!_loc4_.test(_loc2_))
         {
            this.§!&§(§7!M§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§!&§(§7!M§.PASSWORD_MISSING);
            return;
         }
         var _loc5_:Object;
         (_loc5_ = {}).id = _loc2_;
         _loc5_.password = _loc3_;
         var _loc6_:Object = {
            "type":"login",
            "player":_loc5_
         };
         var _loc7_:§8>§ = new §8>§(_loc6_,§-!#§.§>+§ + "login",this,§8>§.§+!O§);
         this.§1@§.§^!;§.getItemByName("WaitingPopup").setVisibility(true);
         §-!#§.§4,§ = new §0!O§("");
         this.§1@§.§^!;§.container.setObjectToFront(this.§1@§.§^!;§.getItemByName("WaitingPopup"));
         §for §.§^c§.enableCreditsButton(false);
         if(this.§1@§.§5A§)
         {
            this.§1@§.§`!&§(_loc2_,_loc3_);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §%"§.§1"§((param1.currentTarget as URLLoader).data);
         this.§1@§.§^!;§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc3_:Object = §%"§.§1"§((param1.currentTarget as URLLoader).data);
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.security)
         {
            §,_§.§9;§ = new §=s§();
            §,_§.§9;§.name = _loc3_.nickName;
            §,_§.§9;§.§2-§ = _loc3_.id;
            §,_§.§9;§.§"!4§ = _loc3_.security;
            §,_§.levelProfile = _loc3_.levelProfile;
            §,_§.§%t§();
            if(_loc3_.competition != undefined)
            {
               §,_§.competition = _loc3_.competition;
            }
            if(_loc3_.beats != undefined)
            {
               §-!#§.§4,§.§<M§ = _loc3_.beats;
            }
            §for §.§^c§.clearReloadTimers();
            §for §.§^c§.changeState(HighscoreSidebar.§7!3§);
            §-!#§.§3!V§ = SharedObject.getLocal(§-!#§.§[!I§ + §,_§.§9;§.§"!4§);
            this.§1@§.mNextState = §91§.§ !P§;
            §6g§.§+!J§(§6g§.§3!9§);
         }
         else if(_loc3_.error)
         {
            §for §.§^c§.enableCreditsButton(true);
            this.§!&§(_loc3_.error);
            §6g§.§+!J§(§6g§.§6!2§);
         }
      }
      
      public function §#!5§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §0!B§(param1:IOErrorEvent) : void
      {
         this.§!&§(§7!M§.CONNECTION_ERROR_RETRY);
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
            case §7!M§.INVALID_EMAIL:
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §7!M§.PASSWORD_MISSING:
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §7!M§.CONNECTION_ERROR_RETRY:
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §7!M§.INVALID_CHARACTER:
               break;
            default:
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§1@§.§^!;§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         this.§1@§.§;!8§.show(param1);
      }
      
      private function §6!,§() : void
      {
         this.§1@§.§^!;§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§1@§.§^!;§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
   }
}
