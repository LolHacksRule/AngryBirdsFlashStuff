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
   
   public class §^^§ implements §>!Q§
   {
       
      
      private var §<s§:§3!<§;
      
      public function §^^§(param1:§3!<§)
      {
         super();
         this.§<s§ = param1;
      }
      
      public function §5f§() : void
      {
         var _loc1_:§"[§ = this.§<s§.§[L§.getItemByName("Checkbox_RememberMe") as §"[§;
         if(this.§<s§.§14§)
         {
            _loc1_.setComponentState(§"[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§"[§.§,E§);
         }
         (this.§<s§.§[L§.getItemByName("TextField_UserNameField") as §+V§).§3x§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!!§);
         (this.§<s§.§[L§.getItemByName("TextField_PasswordField") as §+V§).§3x§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!!§);
         (this.§<s§.§[L§.getItemByName("TextField_UserNameField") as §+V§).§3x§.restrict = §3!<§.§!!N§;
         (this.§<s§.§[L§.getItemByName("TextField_PasswordField") as §+V§).§3x§.restrict = §3!<§.§"!0§;
         (this.§<s§.§[L§.getItemByName("TextField_UserNameField") as §+V§).§3x§.maxChars = §3!<§.§0!<§;
         new §!2§((this.§<s§.§[L§.getItemByName("TextField_UserNameField") as §+V§).§3x§,§2!S§.§ c§,§2!S§.§=c§,§2!S§.§0]§);
         new §!2§((this.§<s§.§[L§.getItemByName("TextField_PasswordField") as §+V§).§3x§,§2!S§.§ c§,§2!S§.§=c§,§2!S§.§0]§);
      }
      
      public function dispose() : void
      {
         (this.§<s§.§[L§.getItemByName("TextField_UserNameField") as §+V§).§3x§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!!§);
         (this.§<s§.§[L§.getItemByName("TextField_PasswordField") as §+V§).§3x§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!!§);
      }
      
      public function activate() : void
      {
         this.§<s§.§[L§.container.setObjectToFront(this.§<s§.§[L§.getItemByName("Container_Login_Tab"));
         this.§<s§.§[L§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§<s§.§[L§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§<s§.§[L§.getItemByName("Button_Submit").setVisibility(true);
         this.§<s§.§[L§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§<s§.§[L§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§<s§.§[L§.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§<s§.§[L§.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§<s§.§[L§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§<s§.§[L§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§<s§.§[L§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§<s§.§[L§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§<s§.§[L§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§<s§.§[L§.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function §<!!§(param1:MouseEvent) : void
      {
         this.§<s§.§[L§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§<s§.§[L§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         this.§<s§.§[!5§.hide();
      }
      
      public function §-!9§() : void
      {
         var _loc2_:String = this.§<s§.§[L§.getText("TextField_UserNameField");
         var _loc3_:String = this.§<s§.§[L§.getText("TextField_PasswordField");
         var _loc4_:RegExp = /^\S+@\S+\.\S+$/;
         var _loc5_:Boolean = false;
         if(_loc2_.length == 0)
         {
            this.§3Q§(§>!U§.INVALID_EMAIL);
            return;
         }
         if(!_loc4_.test(_loc2_))
         {
            this.§3Q§(§>!U§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§3Q§(§>!U§.PASSWORD_MISSING);
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
         var _loc8_:§<!O§ = new §<!O§(_loc7_,§2!S§.§1,§ + "login",this,§<!O§.§#e§);
         this.§<s§.§[L§.getItemByName("WaitingPopup").setVisibility(true);
         §2!S§.§<P§ = new §%"§("");
         this.§<s§.§[L§.container.setObjectToFront(this.§<s§.§[L§.getItemByName("WaitingPopup"));
         §<!Y§.sHighscoreSidebar.enableCreditsButton(false);
         if(this.§<s§.§14§)
         {
            this.§<s§.§3!H§(_loc2_,_loc3_);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         this.§<s§.§[L§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §6Y§.static((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.security)
         {
            §]U§.§-v§ = new §'!O§();
            §]U§.§-v§.name = _loc2_.nickName;
            §]U§.§-v§.§"!S§ = _loc2_.id;
            §]U§.§-v§.§]t§ = _loc2_.security;
            §]U§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §]U§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §<!O§.§#!5§(§]U§.levelProfile);
            if(_loc3_ != §]U§.levelProfileSecurity)
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
            if(_loc2_.tutorials is Array)
            {
               for each(_loc4_ in _loc2_.tutorials)
               {
                  §2!S§.§<P§.§<!e§(_loc4_);
               }
            }
            §]U§.§@M§();
            §<!Y§.sHighscoreSidebar.§!t§();
            §<!Y§.sHighscoreSidebar.changeState(HighscoreSidebar.§&!4§);
            this.§<s§.mNextState = §%m§.§+Z§;
            §#!=§.§^!4§(§#!=§.§]R§);
         }
         else if(_loc2_ && _loc2_.error)
         {
            §<!Y§.sHighscoreSidebar.enableCreditsButton(true);
            this.§3Q§(_loc2_.error);
            §#!=§.§^!4§(§#!=§.§8!I§);
         }
      }
      
      public function §1`§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §"W§(param1:IOErrorEvent) : void
      {
         this.§3Q§(§>!U§.CONNECTION_ERROR_RETRY);
         this.§<s§.§[L§.getItemByName("WaitingPopup").setVisibility(false);
         §<!Y§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §3Q§(param1:String) : void
      {
         this.§<s§.§[L§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case §>!U§.INVALID_EMAIL:
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §>!U§.PASSWORD_MISSING:
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §>!U§.CONNECTION_ERROR_RETRY:
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§<s§.§[L§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         this.§<s§.§[!5§.show(param1);
      }
   }
}
