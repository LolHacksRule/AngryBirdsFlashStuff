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
   
   public class §0!I§ implements §@!Y§
   {
       
      
      private var §^!<§:§'"§;
      
      public function §0!I§(param1:§'"§)
      {
         super();
         this.§^!<§ = param1;
      }
      
      public function §>!§() : void
      {
         var _loc1_:§4p§ = this.§^!<§.§@K§.getItemByName("Checkbox_RememberMe") as §4p§;
         if(this.§^!<§.§=@§)
         {
            _loc1_.setComponentState(§4p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§4p§.§#!%§);
         }
         (this.§^!<§.§@K§.getItemByName("TextField_UserNameField") as §%!S§).§9!"§.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
         (this.§^!<§.§@K§.getItemByName("TextField_PasswordField") as §%!S§).§9!"§.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
         (this.§^!<§.§@K§.getItemByName("TextField_UserNameField") as §%!S§).§9!"§.restrict = §'"§.§-u§;
         (this.§^!<§.§@K§.getItemByName("TextField_PasswordField") as §%!S§).§9!"§.restrict = §'"§.§ !0§;
         (this.§^!<§.§@K§.getItemByName("TextField_UserNameField") as §%!S§).§9!"§.maxChars = §'"§.§>c§;
         new §+!G§((this.§^!<§.§@K§.getItemByName("TextField_UserNameField") as §%!S§).§9!"§,§"H§.§?!N§,§"H§.§]W§,§"H§.§!!K§);
         new §+!G§((this.§^!<§.§@K§.getItemByName("TextField_PasswordField") as §%!S§).§9!"§,§"H§.§?!N§,§"H§.§]W§,§"H§.§!!K§);
      }
      
      public function dispose() : void
      {
         (this.§^!<§.§@K§.getItemByName("TextField_UserNameField") as §%!S§).§9!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
         (this.§^!<§.§@K§.getItemByName("TextField_PasswordField") as §%!S§).§9!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
      }
      
      public function activate() : void
      {
         this.§^!<§.§@K§.container.setObjectToFront(this.§^!<§.§@K§.getItemByName("Container_Login_Tab"));
         this.§^!<§.§@K§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§^!<§.§@K§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§^!<§.§@K§.getItemByName("Button_Submit").setVisibility(true);
         this.§^!<§.§@K§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§^!<§.§@K§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§^!<§.§@K§.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§^!<§.§@K§.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         this.§^!<§.§@K§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§^!<§.§@K§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         this.§^!<§.§`!V§.hide();
      }
      
      public function §!?§() : void
      {
         var _loc2_:String = this.§^!<§.§@K§.getText("TextField_UserNameField");
         var _loc3_:String = this.§^!<§.§@K§.getText("TextField_PasswordField");
         var _loc4_:RegExp = /^\S+@\S+\.\S+$/;
         var _loc5_:Boolean = false;
         if(_loc2_.length == 0)
         {
            this.§9X§(§>u§.INVALID_EMAIL);
            return;
         }
         if(!_loc4_.test(_loc2_))
         {
            this.§9X§(§>u§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§9X§(§>u§.PASSWORD_MISSING);
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
         var _loc8_:§%!O§ = new §%!O§(_loc7_,§"H§.§4O§ + "login",this,§%!O§.§4!-§);
         this.§^!<§.§@K§.getItemByName("WaitingPopup").setVisibility(true);
         §"H§.§""§ = new §1!A§("");
         this.§^!<§.§@K§.container.setObjectToFront(this.§^!<§.§@K§.getItemByName("WaitingPopup"));
         §1!@§.sHighscoreSidebar.enableCreditsButton(false);
         if(this.§^!<§.§=@§)
         {
            this.§^!<§.§?!Q§(_loc2_,_loc3_);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         this.§^!<§.§@K§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §=!=§.§=!a§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.security)
         {
            §9!Q§.§`!$§ = new §`]§();
            §9!Q§.§`!$§.name = _loc2_.nickName;
            §9!Q§.§`!$§.§%^§ = _loc2_.id;
            §9!Q§.§`!$§.§^9§ = _loc2_.security;
            §9!Q§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §9!Q§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §%!O§.§,t§(§9!Q§.levelProfile);
            if(_loc3_ != §9!Q§.levelProfileSecurity)
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
            if(_loc2_.tutorials is Array)
            {
               for each(_loc4_ in _loc2_.tutorials)
               {
                  §"H§.§""§.§]!W§(_loc4_);
               }
            }
            §9!Q§.§4!+§();
            §1!@§.sHighscoreSidebar.§,!R§();
            §1!@§.sHighscoreSidebar.changeState(HighscoreSidebar.§"7§);
            this.§^!<§.mNextState = §^,§.§94§;
            §@M§.§"6§(§@M§.§`!_§);
         }
         else if(_loc2_ && _loc2_.error)
         {
            §1!@§.sHighscoreSidebar.enableCreditsButton(true);
            this.§9X§(_loc2_.error);
            §@M§.§"6§(§@M§.§4!G§);
         }
      }
      
      public function §^;§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §6R§(param1:IOErrorEvent) : void
      {
         this.§9X§(§>u§.CONNECTION_ERROR_RETRY);
         this.§^!<§.§@K§.getItemByName("WaitingPopup").setVisibility(false);
         §1!@§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §9X§(param1:String) : void
      {
         this.§^!<§.§@K§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case §>u§.INVALID_EMAIL:
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §>u§.PASSWORD_MISSING:
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §>u§.CONNECTION_ERROR_RETRY:
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§^!<§.§@K§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         this.§^!<§.§`!V§.show(param1);
      }
   }
}
