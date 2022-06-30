package §;B§
{
   import §"W§.§7`§;
   import §1!a§.§3U§;
   import §1!a§.§7!I§;
   import §1!a§.§`r§;
   import §93§.§?t§;
   import §97§.§1j§;
   import §97§.§62§;
   import §97§.§88§;
   import §=!S§.§!!Z§;
   import §=!S§.§;7§;
   import §=!c§.§#=§;
   import §?!"§.§?!N§;
   import §?!"§.§^!`§;
   import §[!C§.HighscoreSidebar;
   import §^i§.§;§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   
   public class §>X§ implements §7!I§
   {
       
      
      private var §5<§:§1j§;
      
      public function §>X§(param1:§1j§)
      {
         super();
         this.§5<§ = param1;
      }
      
      public function §71§() : void
      {
         var _loc1_:§?t§ = this.§5<§.§?P§.getItemByName("Checkbox_RememberMe") as §?t§;
         if(this.§5<§.§+a§)
         {
            _loc1_.setComponentState(§?t§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§?t§.§5!0§);
         }
         (this.§5<§.§?P§.getItemByName("TextField_UserNameField") as §#=§).§5!R§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]^§);
         (this.§5<§.§?P§.getItemByName("TextField_PasswordField") as §#=§).§5!R§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]^§);
         (this.§5<§.§?P§.getItemByName("TextField_UserNameField") as §#=§).§5!R§.restrict = §1j§.§8!;§;
         (this.§5<§.§?P§.getItemByName("TextField_PasswordField") as §#=§).§5!R§.restrict = §1j§.§#m§;
         (this.§5<§.§?P§.getItemByName("TextField_UserNameField") as §#=§).§5!R§.maxChars = §1j§.§#!,§;
         new §;7§((this.§5<§.§?P§.getItemByName("TextField_UserNameField") as §#=§).§5!R§,§,-§.§[!@§,§,-§.§%Q§,§,-§.§[p§);
         new §;7§((this.§5<§.§?P§.getItemByName("TextField_PasswordField") as §#=§).§5!R§,§,-§.§[!@§,§,-§.§%Q§,§,-§.§[p§);
      }
      
      public function dispose() : void
      {
         (this.§5<§.§?P§.getItemByName("TextField_UserNameField") as §#=§).§5!R§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]^§);
         (this.§5<§.§?P§.getItemByName("TextField_PasswordField") as §#=§).§5!R§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]^§);
      }
      
      public function activate() : void
      {
         this.§5<§.§?P§.container.setObjectToFront(this.§5<§.§?P§.getItemByName("Container_Login_Tab"));
         this.§5<§.§?P§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§5<§.§?P§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§5<§.§?P§.getItemByName("Button_Submit").setVisibility(true);
         this.§5<§.§?P§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§5<§.§?P§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§5<§.§?P§.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§5<§.§?P§.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§5<§.§?P§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§5<§.§?P§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§5<§.§?P§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§5<§.§?P§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§5<§.§?P§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§5<§.§?P§.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function §]^§(param1:MouseEvent) : void
      {
         this.§5<§.§?P§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§5<§.§?P§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         this.§5<§.§]w§.hide();
      }
      
      public function §8C§() : void
      {
         var _loc2_:String = this.§5<§.§?P§.getText("TextField_UserNameField");
         var _loc3_:String = this.§5<§.§?P§.getText("TextField_PasswordField");
         var _loc4_:RegExp = /^\S+@\S+\.\S+$/;
         var _loc5_:Boolean = false;
         if(_loc2_.length == 0)
         {
            this.§6!L§(§`r§.INVALID_EMAIL);
            return;
         }
         if(!_loc4_.test(_loc2_))
         {
            this.§6!L§(§`r§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§6!L§(§`r§.PASSWORD_MISSING);
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
         var _loc8_:§;§ = new §;§(_loc7_,§,-§.§ 6§ + "login",this,§;§.§@<§);
         this.§5<§.§?P§.getItemByName("WaitingPopup").setVisibility(true);
         §,-§.§?+§ = new §?!N§("");
         this.§5<§.§?P§.container.setObjectToFront(this.§5<§.§?P§.getItemByName("WaitingPopup"));
         §62§.sHighscoreSidebar.enableCreditsButton(false);
         if(this.§5<§.§+a§)
         {
            this.§5<§.§96§(_loc2_,_loc3_);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         this.§5<§.§?P§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §3U§.§'o§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.security)
         {
            §^!`§.§[K§ = new §7`§();
            §^!`§.§[K§.name = _loc2_.nickName;
            §^!`§.§[K§.§%X§ = _loc2_.id;
            §^!`§.§[K§.§=P§ = _loc2_.security;
            §^!`§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §^!`§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §;§.§>!G§(§^!`§.levelProfile);
            if(_loc3_ != §^!`§.levelProfileSecurity)
            {
               §^!`§.§[K§ = new §7`§();
               §62§.sHighscoreSidebar.enableCreditsButton(true);
               this.§6!L§("SECURITY_ERROR");
               return;
            }
            if(_loc2_.overallScore != undefined)
            {
               §,-§.§?+§.overallScore = _loc2_.overallScore;
            }
            if(_loc2_.powerUp != undefined)
            {
               §,-§.§?+§.§"0§ = _loc2_.powerUp;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc4_ in _loc2_.tutorials)
               {
                  §,-§.§?+§.§!!7§(_loc4_);
               }
            }
            §^!`§.§1n§();
            §62§.sHighscoreSidebar.§each §();
            §62§.sHighscoreSidebar.changeState(HighscoreSidebar.§#W§);
            this.§5<§.mNextState = §88§.§4l§;
            §!!Z§.§1!?§(§!!Z§.§%o§);
         }
         else if(_loc2_ && _loc2_.error)
         {
            §62§.sHighscoreSidebar.enableCreditsButton(true);
            this.§6!L§(_loc2_.error);
            §!!Z§.§1!?§(§!!Z§.§4!K§);
         }
      }
      
      public function §4@§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!3§(param1:IOErrorEvent) : void
      {
         this.§6!L§(§`r§.CONNECTION_ERROR_RETRY);
         this.§5<§.§?P§.getItemByName("WaitingPopup").setVisibility(false);
         §62§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §6!L§(param1:String) : void
      {
         this.§5<§.§?P§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case §`r§.INVALID_EMAIL:
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §`r§.PASSWORD_MISSING:
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §`r§.CONNECTION_ERROR_RETRY:
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§5<§.§?P§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         this.§5<§.§]w§.show(param1);
      }
   }
}
