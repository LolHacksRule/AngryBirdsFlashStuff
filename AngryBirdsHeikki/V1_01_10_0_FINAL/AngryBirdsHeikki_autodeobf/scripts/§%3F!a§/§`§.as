package §?!a§
{
   import §'!N§.§[!%§;
   import §'!O§.§#!_§;
   import §'!O§.§<n§;
   import §'!O§.§=j§;
   import §2`§.HighscoreSidebar;
   import §3Y§.§4!_§;
   import §3Y§.§7!>§;
   import §8P§.§4!Y§;
   import §9I§.§+J§;
   import §9I§.§1F§;
   import §9I§.§>!=§;
   import §;!3§.§;!P§;
   import §<!!§.§#!`§;
   import §=! §.§'!4§;
   import §=! §.§9>§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   
   public class §`§ implements §>!=§
   {
       
      
      private var §+@§:§#!_§;
      
      public function §`§(param1:§#!_§)
      {
         super();
         this.§+@§ = param1;
      }
      
      public function §+!O§() : void
      {
         var _loc1_:§4!Y§ = this.§+@§.§]!9§.getItemByName("Checkbox_RememberMe") as §4!Y§;
         if(this.§+@§.§"!a§)
         {
            _loc1_.setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§4!Y§.§=?§);
         }
         (this.§+@§.§]!9§.getItemByName("TextField_UserNameField") as §[!%§).§^!1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
         (this.§+@§.§]!9§.getItemByName("TextField_PasswordField") as §[!%§).§^!1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
         (this.§+@§.§]!9§.getItemByName("TextField_UserNameField") as §[!%§).§^!1§.restrict = §#!_§.§37§;
         (this.§+@§.§]!9§.getItemByName("TextField_PasswordField") as §[!%§).§^!1§.restrict = §#!_§.§64§;
         (this.§+@§.§]!9§.getItemByName("TextField_UserNameField") as §[!%§).§^!1§.maxChars = §#!_§.§!j§;
         new §'!4§((this.§+@§.§]!9§.getItemByName("TextField_UserNameField") as §[!%§).§^!1§,§,L§.§?!S§,§,L§.§^p§,§,L§.§%I§);
         new §'!4§((this.§+@§.§]!9§.getItemByName("TextField_PasswordField") as §[!%§).§^!1§,§,L§.§?!S§,§,L§.§^p§,§,L§.§%I§);
      }
      
      public function dispose() : void
      {
         (this.§+@§.§]!9§.getItemByName("TextField_UserNameField") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
         (this.§+@§.§]!9§.getItemByName("TextField_PasswordField") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!2§);
      }
      
      public function activate() : void
      {
         this.§+@§.§]!9§.container.setObjectToFront(this.§+@§.§]!9§.getItemByName("Container_Login_Tab"));
         this.§+@§.§]!9§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§+@§.§]!9§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§+@§.§]!9§.getItemByName("Button_Submit").setVisibility(true);
         this.§+@§.§]!9§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§+@§.§]!9§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§+@§.§]!9§.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§+@§.§]!9§.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function §5!2§(param1:MouseEvent) : void
      {
         this.§+@§.§]!9§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§+@§.§]!9§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         this.§+@§.§1!D§.hide();
      }
      
      public function §%!7§() : void
      {
         var _loc2_:String = this.§+@§.§]!9§.getText("TextField_UserNameField");
         var _loc3_:String = this.§+@§.§]!9§.getText("TextField_PasswordField");
         var _loc4_:RegExp = /^\S+@\S+\.\S+$/;
         var _loc5_:Boolean = false;
         if(_loc2_.length == 0)
         {
            this.§^<§(§1F§.INVALID_EMAIL);
            return;
         }
         if(!_loc4_.test(_loc2_))
         {
            this.§^<§(§1F§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§^<§(§1F§.PASSWORD_MISSING);
            _loc5_ = true;
         }
         if(_loc5_)
         {
            return;
         }
         var _loc6_:Object;
         (_loc6_ = {}).id = _loc2_;
         _loc6_.password = _loc3_;
         var _loc7_:Object = {
            "type":"login",
            "player":_loc6_
         };
         var _loc8_:§#!`§ = new §#!`§(_loc7_,§,L§.§2;§ + "login",this,§#!`§.§`!1§);
         this.§+@§.§]!9§.getItemByName("WaitingPopup").setVisibility(true);
         §,L§.§8!F§ = new §7!>§("");
         this.§+@§.§]!9§.container.setObjectToFront(this.§+@§.§]!9§.getItemByName("WaitingPopup"));
         §=j§.sHighscoreSidebar.enableCreditsButton(false);
         if(this.§+@§.§"!a§)
         {
            this.§+@§.§=!8§(_loc2_,_loc3_);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         this.§+@§.§]!9§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §+J§.§;!+§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.security)
         {
            §4!_§.§,t§ = new §;!P§();
            §4!_§.§,t§.name = _loc2_.nickName;
            §4!_§.§,t§.§5!D§ = _loc2_.id;
            §4!_§.§,t§.§]_§ = _loc2_.security;
            §4!_§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §4!_§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §#!`§.§,!1§(§4!_§.levelProfile);
            if(_loc3_ != §4!_§.levelProfileSecurity)
            {
               §4!_§.§,t§ = new §;!P§();
               §=j§.sHighscoreSidebar.enableCreditsButton(true);
               this.§^<§("SECURITY_ERROR");
               return;
            }
            if(_loc2_.overallScore != undefined)
            {
               §,L§.§8!F§.overallScore = _loc2_.overallScore;
            }
            if(_loc2_.powerUp != undefined)
            {
               §,L§.§8!F§.§"!1§ = _loc2_.powerUp;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc4_ in _loc2_.tutorials)
               {
                  §,L§.§8!F§.§&0§(_loc4_);
               }
            }
            §4!_§.§!!]§();
            §=j§.sHighscoreSidebar.§5K§();
            §=j§.sHighscoreSidebar.changeState(HighscoreSidebar.§4!@§);
            this.§+@§.mNextState = §<n§.§@o§;
            §9>§.§>%§(§9>§.§-!D§);
         }
         else if(_loc2_ && _loc2_.error)
         {
            §=j§.sHighscoreSidebar.enableCreditsButton(true);
            this.§^<§(_loc2_.error);
            §9>§.§>%§(§9>§.§ j§);
         }
      }
      
      public function §3!X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'z§(param1:IOErrorEvent) : void
      {
         this.§^<§(§1F§.CONNECTION_ERROR_RETRY);
         this.§+@§.§]!9§.getItemByName("WaitingPopup").setVisibility(false);
         §=j§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §^<§(param1:String) : void
      {
         this.§+@§.§]!9§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case §1F§.INVALID_EMAIL:
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §1F§.PASSWORD_MISSING:
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §1F§.CONNECTION_ERROR_RETRY:
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§+@§.§]!9§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         this.§+@§.§1!D§.show(param1);
      }
   }
}
