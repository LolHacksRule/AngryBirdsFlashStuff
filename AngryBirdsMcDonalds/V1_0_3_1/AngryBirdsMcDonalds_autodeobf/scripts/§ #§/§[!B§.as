package § #§
{
   import §&!V§.§=O§;
   import §+F§.§ !J§;
   import §+F§.Popup;
   import §+F§.StatePopupManager;
   import §3!R§.§,=§;
   import §3!R§.§81§;
   import §3g§.§"!n§;
   import §5K§.§1[§;
   import §5T§.§5!m§;
   import §5T§.§?a§;
   import §7-§.§-e§;
   import §7-§.§[!$§;
   import §8T§.§[!R§;
   import §=b§.§&!1§;
   import §?I§.§`E§;
   import §`!"§.§;i§;
   
   public class §[!B§ extends Popup
   {
      
      public static const §+!K§:String = "a-z A-Z 0-9 \\-";
      
      public static const §33§:String = "a-z A-Z 0-9";
      
      public static const §3b§:String = "a-z     0-9  \'\\-_@.";
      
      public static const §>=§:int = 60;
      
      private static var §[!J§:Class = §'!&§;
      
      public static var §3?§:Boolean = false;
       
      
      private var §0F§:StatePopupManager;
      
      private var §8!Q§:Boolean;
      
      private var §=!$§:Boolean;
      
      private var §]!!§:String;
      
      private var §'!"§:String;
      
      private var §6!9§:String;
      
      private var §@j§:String;
      
      private var §]p§:§5!m§;
      
      private var §#![§:§?a§;
      
      private var §'A§:§=O§;
      
      public function §[!B§(param1:§"!n§, param2:StatePopupManager, param3:§=O§)
      {
         super(§1[§.§4L§(§[!J§),param1);
         §<D§ = param1;
         this.§0F§ = param2;
         this.§'A§ = param3;
         this.§]p§ = new §5!m§(this);
         this.§#![§ = new §?a§(this);
         this.§0F§.addEventListener(§[!R§.§11§,this.onUiInteraction);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§[!R§) : void
      {
         this.uiInteractionHandler(param1.§2!n§,param1.§+!b§,param1.§?3§);
         this.§'A§.uiInteractionHandler(param1.§2!n§,param1.§+!b§,param1.§?3§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§81§) : void
      {
         var _loc4_:§,=§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§#![§.§=!T§();
               break;
            case "CANCEL":
               this.preClose();
               break;
            case "SUBMIT_REGISTER":
               this.§]p§.§=!T§();
               break;
            case "CANCEL_REGISTER":
               this.preClose();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §<D§.getItemByName("Checkbox_RememberMe") as §,=§;
               this.§8!Q§ = !this.§8!Q§;
               if(this.§8!Q§)
               {
                  _loc4_.setComponentState(§,=§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§,=§.§!g§);
               }
               _loc4_ = §<D§.getItemByName("Checkbox_RememberMe_Register") as §,=§;
               if(this.§8!Q§)
               {
                  _loc4_.setComponentState(§,=§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§,=§.§!g§);
               break;
            case "CHECKBOX_MARKETING_CHANGE":
               _loc4_ = §<D§.getItemByName("Checkbox_Marketing") as §,=§;
               this.§=!$§ = !this.§=!$§;
               if(this.§=!$§)
               {
                  _loc4_.setComponentState(§,=§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§,=§.§!g§);
               }
               break;
            case "FORGOT_PASSWORD":
               § !J§.§'!?§(§<D§);
               break;
            case "TAB_LOGIN":
               this.§5b§();
               this.§#![§.activate();
               this.§]p§.§6!o§(false);
               break;
            case "TAB_REGISTER":
               this.§5b§();
               this.§]p§.activate();
               this.§]p§.§6!o§(true);
         }
      }
      
      private function §5b§() : void
      {
         §<D§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §<D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §<D§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §<D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §<D§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §<D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         §<D§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §<D§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (this.§>!d§ as §-e§).§5!0§.hide();
      }
      
      override public function updateTextFields() : void
      {
         §`E§.§@!7§.updateTextFields(§<D§,"Login_Popup");
         this.§5b§();
         this.§]p§.updateTextFields();
         this.§#![§.§;!6§();
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      private function §[j§() : void
      {
         if(§3?§)
         {
            this.§6t§();
            this.§'c§();
            this.§8!Q§ = false;
            this.§=!$§ = false;
            this.§]!!§ = "";
            this.§'!"§ = "";
            this.§6!9§ = "";
            this.§@j§ = "";
         }
         §3?§ = false;
         this.§+!`§();
         this.§#![§.§%!j§();
         this.§]p§.§5N§();
         if(this.§'!"§ && this.§]!!§)
         {
            §<D§.setText(this.§]!!§,"TextField_UserNameField");
            §<D§.setText(this.§'!"§,"TextField_PasswordField");
         }
         if(§2!M§.§&y§())
         {
            §<D§.getItemByName("Button_Mute").setVisibility(true);
            §<D§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            §2!M§.§2!-§();
         }
         else
         {
            §<D§.getItemByName("Button_Mute").setVisibility(true);
            §<D§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         this.§[j§();
         this.§#![§.activate();
         §[!$§.sHighscoreSidebar.enableLoginButton(false);
         §[!$§.sHighscoreSidebar.enableCreditsButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§"! § != null)
            {
               §"! §.stop();
            }
            §"! § = §;i§.§@!7§.§@!6§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§;i§.§<l§);
            §"! §.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         (this.§'A§ as §-e§).§5!0§.hide();
         if(param1)
         {
            if(§"! § != null)
            {
               §"! §.stop();
            }
            §"! § = §;i§.§@!7§.§@!6§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§;i§.§3C§);
            §"! §.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§]p§.deActivate();
         this.§0F§.removeEventListener(§[!R§.§11§,this.onUiInteraction);
         super.deActivate();
         §[!$§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §+!`§() : void
      {
         if(§&!1§.§@!7§.§[!U§())
         {
            §<D§.setText(§&!1§.§@!7§.name,"TextField_UserNameField");
            §<D§.setText(§&!1§.§@!7§.password,"TextField_PasswordField");
            this.§8!Q§ = §&!1§.§@!7§.rememberMeToggled;
         }
      }
      
      public function §'c§() : void
      {
         §<D§.setText("","TextField_UserNameField");
         §<D§.setText("","TextField_PasswordField");
         §<D§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §<D§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §6t§() : void
      {
         §<D§.setText("","TextField_EmailField_Register");
         §<D§.setText("","TextField_PasswordField_Register");
         §<D§.setText("","TextField_PasswordFieldRepeat_Register");
         §<D§.setText("","TextField_NickNameField_Register");
         §<D§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §<D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §<D§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §<D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §-+§() : void
      {
         this.§]!!§ = this.§6!9§;
         this.§'!"§ = this.§@j§;
         §<D§.setText(this.§]!!§,"TextField_UserNameField");
         §<D§.setText(this.§'!"§,"TextField_PasswordField");
         if(this.§8!Q§)
         {
            §&!1§.§@!7§.§&!P§(this.§]!!§,this.§'!"§,this.§8!Q§);
         }
      }
      
      public function get §+!+§() : StatePopupManager
      {
         return this.§0F§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§8!Q§;
      }
      
      public function get §]y§() : String
      {
         return this.§6!9§;
      }
      
      public function set §]y§(param1:String) : void
      {
         this.§6!9§ = param1;
      }
      
      public function get §9?§() : String
      {
         return this.§@j§;
      }
      
      public function set §9?§(param1:String) : void
      {
         this.§@j§ = param1;
      }
      
      public function get §0[§() : Boolean
      {
         return this.§=!$§;
      }
      
      public function get §>!d§() : §=O§
      {
         return this.§'A§;
      }
   }
}
