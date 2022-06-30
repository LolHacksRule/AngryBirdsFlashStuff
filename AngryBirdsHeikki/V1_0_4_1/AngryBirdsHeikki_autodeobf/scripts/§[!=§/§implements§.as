package §[!=§
{
   import §#!&§.§1![§;
   import §+!9§.§%!+§;
   import §+!9§.§0!M§;
   import §+!9§.§3!!§;
   import §1!6§.§ !3§;
   import §1!6§.§-%§;
   import §4!9§.§;!9§;
   import §4!9§.§>6§;
   import §9i§.§+A§;
   import §;<§.§%!I§;
   import §;<§.§%K§;
   import §;<§.§7!K§;
   import §;D§.§]T§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import §var§.§8!_§;
   
   public class §implements§ implements §%!I§
   {
       
      
      private var §8g§:§0!M§;
      
      public function §implements§(param1:§0!M§)
      {
         super();
         this.§8g§ = param1;
      }
      
      public function §<I§() : void
      {
         var _loc1_:§8!_§ = this.§8g§.§2!M§.getItemByName("Checkbox_RememberMe") as §8!_§;
         if(this.§8g§.§ !M§)
         {
            _loc1_.setComponentState(§8!_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§8!_§.§^#§);
         }
         (this.§8g§.§2!M§.getItemByName("TextField_UserNameField") as §1![§).§2q§.addEventListener(MouseEvent.MOUSE_DOWN,this.§try§);
         (this.§8g§.§2!M§.getItemByName("TextField_PasswordField") as §1![§).§2q§.addEventListener(MouseEvent.MOUSE_DOWN,this.§try§);
         (this.§8g§.§2!M§.getItemByName("TextField_UserNameField") as §1![§).§2q§.restrict = §0!M§.§=d§;
         (this.§8g§.§2!M§.getItemByName("TextField_PasswordField") as §1![§).§2q§.restrict = §0!M§.§=!U§;
         (this.§8g§.§2!M§.getItemByName("TextField_UserNameField") as §1![§).§2q§.maxChars = §0!M§.§[!_§;
         new §;!9§((this.§8g§.§2!M§.getItemByName("TextField_UserNameField") as §1![§).§2q§,§1F§.§9!J§,§1F§.§&!§,§1F§.§'I§);
         new §;!9§((this.§8g§.§2!M§.getItemByName("TextField_PasswordField") as §1![§).§2q§,§1F§.§9!J§,§1F§.§&!§,§1F§.§'I§);
      }
      
      public function dispose() : void
      {
         (this.§8g§.§2!M§.getItemByName("TextField_UserNameField") as §1![§).§2q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§try§);
         (this.§8g§.§2!M§.getItemByName("TextField_PasswordField") as §1![§).§2q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§try§);
      }
      
      public function activate() : void
      {
         this.§8g§.§2!M§.container.setObjectToFront(this.§8g§.§2!M§.getItemByName("Container_Login_Tab"));
         this.§8g§.§2!M§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§8g§.§2!M§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§8g§.§2!M§.getItemByName("Button_Submit").setVisibility(true);
         this.§8g§.§2!M§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§8g§.§2!M§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§8g§.§2!M§.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§8g§.§2!M§.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function §try§(param1:MouseEvent) : void
      {
         this.§8g§.§2!M§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§8g§.§2!M§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         this.§8g§.§83§.hide();
      }
      
      public function §%U§() : void
      {
         var _loc2_:String = this.§8g§.§2!M§.getText("TextField_UserNameField");
         var _loc3_:String = this.§8g§.§2!M§.getText("TextField_PasswordField");
         var _loc4_:RegExp = /^\S+@\S+\.\S+$/;
         var _loc5_:Boolean = false;
         if(_loc2_.length == 0)
         {
            this.§]!B§(§%K§.INVALID_EMAIL);
            return;
         }
         if(!_loc4_.test(_loc2_))
         {
            this.§]!B§(§%K§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§]!B§(§%K§.PASSWORD_MISSING);
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
         var _loc8_:§+A§ = new §+A§(_loc7_,§1F§.§&1§ + "login",this,§+A§.§<!&§);
         this.§8g§.§2!M§.getItemByName("WaitingPopup").setVisibility(true);
         §1F§.§=l§ = new §-%§("");
         this.§8g§.§2!M§.container.setObjectToFront(this.§8g§.§2!M§.getItemByName("WaitingPopup"));
         §3!!§.sHighscoreSidebar.enableCreditsButton(false);
         if(this.§8g§.§ !M§)
         {
            this.§8g§.§8!R§(_loc2_,_loc3_);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         this.§8g§.§2!M§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §7!K§.§>e§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.security)
         {
            § !3§.§@!`§ = new §]T§();
            § !3§.§@!`§.name = _loc2_.nickName;
            § !3§.§@!`§.§#!3§ = _loc2_.id;
            § !3§.§@!`§.§@]§ = _loc2_.security;
            § !3§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               § !3§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §+A§.§&n§(§ !3§.levelProfile);
            if(_loc3_ != § !3§.levelProfileSecurity)
            {
               § !3§.§@!`§ = new §]T§();
               §3!!§.sHighscoreSidebar.enableCreditsButton(true);
               this.§]!B§("SECURITY_ERROR");
               return;
            }
            if(_loc2_.overallScore != undefined)
            {
               §1F§.§=l§.overallScore = _loc2_.overallScore;
            }
            if(_loc2_.powerUp != undefined)
            {
               §1F§.§=l§.§1n§ = _loc2_.powerUp;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc4_ in _loc2_.tutorials)
               {
                  §1F§.§=l§.§ !4§(_loc4_);
               }
            }
            § !3§.§44§();
            §3!!§.sHighscoreSidebar.§@!2§();
            §3!!§.sHighscoreSidebar.changeState(HighscoreSidebar.§20§);
            this.§8g§.mNextState = §%!+§.§6! §;
            §>6§.§%;§(§>6§.§63§);
         }
         else if(_loc2_ && _loc2_.error)
         {
            §3!!§.sHighscoreSidebar.enableCreditsButton(true);
            this.§]!B§(_loc2_.error);
            §>6§.§%;§(§>6§.§-1§);
         }
      }
      
      public function §1x§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!L§(param1:IOErrorEvent) : void
      {
         this.§]!B§(§%K§.CONNECTION_ERROR_RETRY);
         this.§8g§.§2!M§.getItemByName("WaitingPopup").setVisibility(false);
         §3!!§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §]!B§(param1:String) : void
      {
         this.§8g§.§2!M§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case §%K§.INVALID_EMAIL:
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §%K§.PASSWORD_MISSING:
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §%K§.CONNECTION_ERROR_RETRY:
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§8g§.§2!M§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         this.§8g§.§83§.show(param1);
      }
   }
}
