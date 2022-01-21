package §5<§
{
   import § v§.§?!E§;
   import §"%§.§,!n§;
   import §"%§.§9j§;
   import §2!6§.§^"§;
   import §4%§.§%0§;
   import §4%§.§9!Z§;
   import §6!Q§.§ !"§;
   import §;!^§.§ !-§;
   import §;!^§.§'L§;
   import §;!j§.§[!<§;
   import §=!F§.§"!2§;
   import §=<§.§ !Y§;
   import §@`§.§>!S§;
   import §^!V§.Popup;
   import §^!V§.StatePopupManager;
   import §^!V§.§^!j§;
   
   public class §-!a§ extends Popup
   {
      
      public static const §@W§:String = "a-z A-Z 0-9 \\-";
      
      public static const §[!I§:String = "a-z A-Z 0-9";
      
      public static const §0!<§:String = "a-z     0-9  \'\\-_@.";
      
      public static const §<L§:int = 60;
      
      private static var §3q§:Class = §`q§;
      
      public static var §2!7§:Boolean = false;
       
      
      private var §=!M§:StatePopupManager;
      
      private var §6!d§:Boolean;
      
      private var §3!2§:Boolean;
      
      private var §%!M§:String;
      
      private var §!Q§:String;
      
      private var §?x§:String;
      
      private var §&!P§:String;
      
      private var §?!L§:§'L§;
      
      private var § ![§:§ !-§;
      
      private var §-!6§:§ !"§;
      
      public function §-!a§(param1:§>!S§, param2:StatePopupManager, param3:§ !"§)
      {
         super(§ !Y§.§^t§(§3q§),param1);
         §]E§ = param1;
         this.§=!M§ = param2;
         this.§-!6§ = param3;
         this.§?!L§ = new §'L§(this);
         this.§ ![§ = new § !-§(this);
         this.§=!M§.addEventListener(§^"§.§'!2§,this.onUiInteraction);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§^"§) : void
      {
         this.uiInteractionHandler(param1.§,$§,param1.§[?§,param1.§41§);
         this.§-!6§.uiInteractionHandler(param1.§,$§,param1.§[?§,param1.§41§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!n§) : void
      {
         var _loc4_:§9j§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§ ![§.§0!e§();
               break;
            case "CANCEL":
               this.preClose();
               break;
            case "SUBMIT_REGISTER":
               this.§?!L§.§0!e§();
               break;
            case "CANCEL_REGISTER":
               this.preClose();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §]E§.getItemByName("Checkbox_RememberMe") as §9j§;
               this.§6!d§ = !this.§6!d§;
               if(this.§6!d§)
               {
                  _loc4_.setComponentState(§9j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§9j§.§'&§);
               }
               _loc4_ = §]E§.getItemByName("Checkbox_RememberMe_Register") as §9j§;
               if(this.§6!d§)
               {
                  _loc4_.setComponentState(§9j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§9j§.§'&§);
               break;
            case "CHECKBOX_MARKETING_CHANGE":
               _loc4_ = §]E§.getItemByName("Checkbox_Marketing") as §9j§;
               this.§3!2§ = !this.§3!2§;
               if(this.§3!2§)
               {
                  _loc4_.setComponentState(§9j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§9j§.§'&§);
               }
               break;
            case "FORGOT_PASSWORD":
               §^!j§.§0?§(§]E§);
               break;
            case "TAB_LOGIN":
               this.§ !^§();
               this.§ ![§.activate();
               this.§?!L§.§#m§(false);
               break;
            case "TAB_REGISTER":
               this.§ !^§();
               this.§?!L§.activate();
               this.§?!L§.§#m§(true);
         }
      }
      
      private function § !^§() : void
      {
         §]E§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §]E§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §]E§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §]E§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §]E§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §]E§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         §]E§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §]E§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (this.§<!S§ as §9!Z§).§]§.hide();
      }
      
      override public function updateTextFields() : void
      {
         §[!<§.§'!S§.updateTextFields(§]E§,"Login_Popup");
         this.§ !^§();
         this.§?!L§.updateTextFields();
         this.§ ![§.§-W§();
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      private function §package§() : void
      {
         if(§2!7§)
         {
            this.§ C§();
            this.§9n§();
            this.§6!d§ = false;
            this.§3!2§ = false;
            this.§%!M§ = "";
            this.§!Q§ = "";
            this.§?x§ = "";
            this.§&!P§ = "";
         }
         §2!7§ = false;
         this.§;!i§();
         this.§ ![§.§ d§();
         this.§?!L§.§!!3§();
         if(this.§!Q§ && this.§%!M§)
         {
            §]E§.setText(this.§%!M§,"TextField_UserNameField");
            §]E§.setText(this.§!Q§,"TextField_PasswordField");
         }
         if(§'j§.§62§())
         {
            §]E§.getItemByName("Button_Mute").setVisibility(true);
            §]E§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            §'j§.§^!>§();
         }
         else
         {
            §]E§.getItemByName("Button_Mute").setVisibility(true);
            §]E§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         this.§package§();
         this.§ ![§.activate();
         §%0§.sHighscoreSidebar.enableLoginButton(false);
         §%0§.sHighscoreSidebar.enableCreditsButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§?!A§ != null)
            {
               §?!A§.stop();
            }
            §?!A§ = §"!2§.§'!S§.§-!S§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§"!2§.§3d§);
            §?!A§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         (this.§-!6§ as §9!Z§).§]§.hide();
         if(param1)
         {
            if(§?!A§ != null)
            {
               §?!A§.stop();
            }
            §?!A§ = §"!2§.§'!S§.§-!S§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§"!2§.§+!^§);
            §?!A§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§?!L§.deActivate();
         this.§=!M§.removeEventListener(§^"§.§'!2§,this.onUiInteraction);
         super.deActivate();
         §%0§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §;!i§() : void
      {
         if(§?!E§.§'!S§.§6<§())
         {
            §]E§.setText(§?!E§.§'!S§.name,"TextField_UserNameField");
            §]E§.setText(§?!E§.§'!S§.password,"TextField_PasswordField");
            this.§6!d§ = §?!E§.§'!S§.rememberMeToggled;
         }
      }
      
      public function §9n§() : void
      {
         §]E§.setText("","TextField_UserNameField");
         §]E§.setText("","TextField_PasswordField");
         §]E§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §]E§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function § C§() : void
      {
         §]E§.setText("","TextField_EmailField_Register");
         §]E§.setText("","TextField_PasswordField_Register");
         §]E§.setText("","TextField_PasswordFieldRepeat_Register");
         §]E§.setText("","TextField_NickNameField_Register");
         §]E§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §]E§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §]E§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §]E§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §#K§() : void
      {
         this.§%!M§ = this.§?x§;
         this.§!Q§ = this.§&!P§;
         §]E§.setText(this.§%!M§,"TextField_UserNameField");
         §]E§.setText(this.§!Q§,"TextField_PasswordField");
         if(this.§6!d§)
         {
            §?!E§.§'!S§.§&p§(this.§%!M§,this.§!Q§,this.§6!d§);
         }
      }
      
      public function get § !;§() : StatePopupManager
      {
         return this.§=!M§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§6!d§;
      }
      
      public function get §2!2§() : String
      {
         return this.§?x§;
      }
      
      public function set §2!2§(param1:String) : void
      {
         this.§?x§ = param1;
      }
      
      public function get §8!d§() : String
      {
         return this.§&!P§;
      }
      
      public function set §8!d§(param1:String) : void
      {
         this.§&!P§ = param1;
      }
      
      public function get §%z§() : Boolean
      {
         return this.§3!2§;
      }
      
      public function get §<!S§() : § !"§
      {
         return this.§-!6§;
      }
   }
}
