package §@!;§
{
   import §#%§.§,!E§;
   import §#%§.§70§;
   import §+!M§.§^<§;
   import §+B§.§#!b§;
   import §+B§.§-2§;
   import §+B§.§2!c§;
   import §-!9§.§9!!§;
   import §0!X§.§!!Z§;
   import §0!X§.§&!4§;
   import §0!X§.§8!F§;
   import §9!Q§.§&o§;
   import §9!Q§.§1T§;
   import §=!§.HighscoreSidebar;
   import §>!M§.§2?§;
   import §]!&§.§1E§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   
   public class §+c§ implements §!!Z§
   {
       
      
      private var §3k§:§#!b§;
      
      public function §+c§(param1:§#!b§)
      {
         super();
         this.§3k§ = param1;
      }
      
      public function §>3§() : void
      {
         var _loc1_:§^<§ = this.§3k§.§ ,§.getItemByName("Checkbox_RememberMe") as §^<§;
         if(this.§3k§.§8m§)
         {
            _loc1_.setComponentState(§^<§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§^<§.§0!b§);
         }
         (this.§3k§.§ ,§.getItemByName("TextField_UserNameField") as §1E§).§;+§.addEventListener(MouseEvent.MOUSE_DOWN,this.§ X§);
         (this.§3k§.§ ,§.getItemByName("TextField_PasswordField") as §1E§).§;+§.addEventListener(MouseEvent.MOUSE_DOWN,this.§ X§);
         (this.§3k§.§ ,§.getItemByName("TextField_UserNameField") as §1E§).§;+§.restrict = §#!b§.§;!0§;
         (this.§3k§.§ ,§.getItemByName("TextField_PasswordField") as §1E§).§;+§.restrict = §#!b§.§2!^§;
         (this.§3k§.§ ,§.getItemByName("TextField_UserNameField") as §1E§).§;+§.maxChars = §#!b§.§&"§;
         new §&o§((this.§3k§.§ ,§.getItemByName("TextField_UserNameField") as §1E§).§;+§,§"!R§.§4F§,§"!R§.§7![§,§"!R§.§ <§);
         new §&o§((this.§3k§.§ ,§.getItemByName("TextField_PasswordField") as §1E§).§;+§,§"!R§.§4F§,§"!R§.§7![§,§"!R§.§ <§);
      }
      
      public function dispose() : void
      {
         (this.§3k§.§ ,§.getItemByName("TextField_UserNameField") as §1E§).§;+§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ X§);
         (this.§3k§.§ ,§.getItemByName("TextField_PasswordField") as §1E§).§;+§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ X§);
      }
      
      public function activate() : void
      {
         this.§3k§.§ ,§.container.setObjectToFront(this.§3k§.§ ,§.getItemByName("Container_Login_Tab"));
         this.§3k§.§ ,§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§3k§.§ ,§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§3k§.§ ,§.getItemByName("Button_Submit").setVisibility(true);
         this.§3k§.§ ,§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§3k§.§ ,§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§3k§.§ ,§.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§3k§.§ ,§.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function § X§(param1:MouseEvent) : void
      {
         this.§3k§.§ ,§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§3k§.§ ,§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         this.§3k§.§1!!§.hide();
      }
      
      public function §;u§() : void
      {
         var _loc2_:String = this.§3k§.§ ,§.getText("TextField_UserNameField");
         var _loc3_:String = this.§3k§.§ ,§.getText("TextField_PasswordField");
         var _loc4_:RegExp = /^\S+@\S+\.\S+$/;
         var _loc5_:Boolean = false;
         if(_loc2_.length == 0)
         {
            this.§2!0§(§&!4§.INVALID_EMAIL);
            return;
         }
         if(!_loc4_.test(_loc2_))
         {
            this.§2!0§(§&!4§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.§2!0§(§&!4§.PASSWORD_MISSING);
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
         var _loc8_:§2?§ = new §2?§(_loc7_,§"!R§.§['§ + "login",this,§2?§.§&!g§);
         this.§3k§.§ ,§.getItemByName("WaitingPopup").setVisibility(true);
         §"!R§.§0!P§ = new §,!E§("");
         this.§3k§.§ ,§.container.setObjectToFront(this.§3k§.§ ,§.getItemByName("WaitingPopup"));
         §-2§.sHighscoreSidebar.enableCreditsButton(false);
         if(this.§3k§.§8m§)
         {
            this.§3k§.§5I§(_loc2_,_loc3_);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         this.§3k§.§ ,§.getItemByName("WaitingPopup").setVisibility(false);
         var _loc2_:Object = §8!F§.§[<§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.security)
         {
            §70§.§6d§ = new §9!!§();
            §70§.§6d§.name = _loc2_.nickName;
            §70§.§6d§.§6!X§ = _loc2_.id;
            §70§.§6d§.§[!J§ = _loc2_.security;
            §70§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §70§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §2?§.§`O§(§70§.levelProfile);
            if(_loc3_ != §70§.levelProfileSecurity)
            {
               §70§.§6d§ = new §9!!§();
               §-2§.sHighscoreSidebar.enableCreditsButton(true);
               this.§2!0§("SECURITY_ERROR");
               return;
            }
            if(_loc2_.overallScore != undefined)
            {
               §"!R§.§0!P§.overallScore = _loc2_.overallScore;
            }
            if(_loc2_.powerUp != undefined)
            {
               §"!R§.§0!P§.§4g§ = _loc2_.powerUp;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc4_ in _loc2_.tutorials)
               {
                  §"!R§.§0!P§.§&z§(_loc4_);
               }
            }
            §70§.§2!I§();
            §-2§.sHighscoreSidebar.§#v§();
            §-2§.sHighscoreSidebar.changeState(HighscoreSidebar.§^]§);
            this.§3k§.mNextState = §2!c§.§[!%§;
            §1T§.§-f§(§1T§.§<`§);
         }
         else if(_loc2_ && _loc2_.error)
         {
            §-2§.sHighscoreSidebar.enableCreditsButton(true);
            this.§2!0§(_loc2_.error);
            §1T§.§-f§(§1T§.§4!D§);
         }
      }
      
      public function §;!Q§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §>!6§(param1:IOErrorEvent) : void
      {
         this.§2!0§(§&!4§.CONNECTION_ERROR_RETRY);
         this.§3k§.§ ,§.getItemByName("WaitingPopup").setVisibility(false);
         §-2§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §2!0§(param1:String) : void
      {
         this.§3k§.§ ,§.getItemByName("WaitingPopup").setVisibility(false);
         switch(param1)
         {
            case §&!4§.INVALID_EMAIL:
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §&!4§.PASSWORD_MISSING:
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §&!4§.CONNECTION_ERROR_RETRY:
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§3k§.§ ,§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         this.§3k§.§1!!§.show(param1);
      }
   }
}
