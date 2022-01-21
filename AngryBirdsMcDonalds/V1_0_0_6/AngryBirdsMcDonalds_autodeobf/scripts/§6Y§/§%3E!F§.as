package §6Y§
{
   import § e§.§&!&§;
   import §"f§.§%1§;
   import §,§.§6!,§;
   import §0;§.§3=§;
   import §5!5§.§1!b§;
   import §6@§.§>n§;
   import §6@§.§[! §;
   import §6V§.§%F§;
   import §6V§.§'=§;
   import §7!Q§.§=!G§;
   import §8<§.§with§;
   import §[l§.§ A§;
   import §[l§.§,Q§;
   import §]q§.§6l§;
   import §]q§.Popup;
   import §]q§.StatePopupManager;
   
   public class §>!F§ extends Popup
   {
      
      public static const §-J§:String = "a-z A-Z 0-9 \\-";
      
      public static const §',§:String = "a-z A-Z 0-9";
      
      public static const §>!d§:String = "a-z     0-9  \'\\-_@.";
      
      public static const §]!M§:int = 60;
      
      private static var §?!A§:Class = §"v§;
      
      public static var §5i§:Boolean = false;
       
      
      private var §+V§:StatePopupManager;
      
      private var §!g§:Boolean;
      
      private var §8!%§:Boolean;
      
      private var §#m§:String;
      
      private var §>!c§:String;
      
      private var §1!W§:String;
      
      private var §!!K§:String;
      
      private var §#R§:§'=§;
      
      private var §4F§:§%F§;
      
      private var §43§:§1!b§;
      
      public function §>!F§(param1:§3=§, param2:StatePopupManager, param3:§1!b§)
      {
         super(§with§.§ !0§(§?!A§),param1);
         §"]§ = param1;
         this.§+V§ = param2;
         this.§43§ = param3;
         this.§#R§ = new §'=§(this);
         this.§4F§ = new §%F§(this);
         this.§+V§.addEventListener(§6!,§.§;I§,this.onUiInteraction);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§6!,§) : void
      {
         this.uiInteractionHandler(param1.§=v§,param1.§ !I§,param1.§+!P§);
         this.§43§.uiInteractionHandler(param1.§=v§,param1.§ !I§,param1.§+!P§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[! §) : void
      {
         var _loc4_:§>n§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§4F§.§#q§();
               break;
            case "CANCEL":
               this.preClose();
               break;
            case "SUBMIT_REGISTER":
               this.§#R§.§#q§();
               break;
            case "CANCEL_REGISTER":
               this.preClose();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §"]§.getItemByName("Checkbox_RememberMe") as §>n§;
               this.§!g§ = !this.§!g§;
               if(this.§!g§)
               {
                  _loc4_.setComponentState(§>n§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§>n§.§`w§);
               }
               _loc4_ = §"]§.getItemByName("Checkbox_RememberMe_Register") as §>n§;
               if(this.§!g§)
               {
                  _loc4_.setComponentState(§>n§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§>n§.§`w§);
               break;
            case "CHECKBOX_MARKETING_CHANGE":
               _loc4_ = §"]§.getItemByName("Checkbox_Marketing") as §>n§;
               this.§8!%§ = !this.§8!%§;
               if(this.§8!%§)
               {
                  _loc4_.setComponentState(§>n§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§>n§.§`w§);
               }
               break;
            case "FORGOT_PASSWORD":
               §6l§.§2?§(§"]§);
               break;
            case "TAB_LOGIN":
               this.§ !b§();
               this.§4F§.activate();
               this.§#R§.§"!+§(false);
               break;
            case "TAB_REGISTER":
               this.§ !b§();
               this.§#R§.activate();
               this.§#R§.§"!+§(true);
         }
      }
      
      private function § !b§() : void
      {
         §"]§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §"]§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §"]§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §"]§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §"]§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §"]§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         §"]§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §"]§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (this.§"w§ as § A§).§8O§.hide();
      }
      
      override public function updateTextFields() : void
      {
         §&!&§.§+j§.updateTextFields(§"]§,"Login_Popup");
         this.§ !b§();
         this.§#R§.updateTextFields();
         this.§4F§.§in §();
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      private function §+!4§() : void
      {
         if(§5i§)
         {
            this.§"!K§();
            this.§[s§();
            this.§!g§ = false;
            this.§8!%§ = false;
            this.§#m§ = "";
            this.§>!c§ = "";
            this.§1!W§ = "";
            this.§!!K§ = "";
         }
         §5i§ = false;
         this.§ r§();
         this.§4F§.§>Z§();
         this.§#R§.§^!l§();
         if(this.§>!c§ && this.§#m§)
         {
            §"]§.setText(this.§#m§,"TextField_UserNameField");
            §"]§.setText(this.§>!c§,"TextField_PasswordField");
         }
         if(§ 4§.§<!V§())
         {
            §"]§.getItemByName("Button_Mute").setVisibility(true);
            §"]§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            § 4§.§8!4§();
         }
         else
         {
            §"]§.getItemByName("Button_Mute").setVisibility(true);
            §"]§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         this.§+!4§();
         this.§4F§.activate();
         §,Q§.sHighscoreSidebar.enableLoginButton(false);
         §,Q§.sHighscoreSidebar.enableCreditsButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§<!J§ != null)
            {
               §<!J§.stop();
            }
            §<!J§ = §%1§.§+j§.§78§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§%1§.§=!1§);
            §<!J§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         (this.§43§ as § A§).§8O§.hide();
         if(param1)
         {
            if(§<!J§ != null)
            {
               §<!J§.stop();
            }
            §<!J§ = §%1§.§+j§.§78§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§%1§.§&!P§);
            §<!J§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§#R§.deActivate();
         this.§+V§.removeEventListener(§6!,§.§;I§,this.onUiInteraction);
         super.deActivate();
         §,Q§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function § r§() : void
      {
         if(§=!G§.§+j§.§[!d§())
         {
            §"]§.setText(§=!G§.§+j§.name,"TextField_UserNameField");
            §"]§.setText(§=!G§.§+j§.password,"TextField_PasswordField");
            this.§!g§ = §=!G§.§+j§.rememberMeToggled;
         }
      }
      
      public function §[s§() : void
      {
         §"]§.setText("","TextField_UserNameField");
         §"]§.setText("","TextField_PasswordField");
         §"]§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §"]§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §"!K§() : void
      {
         §"]§.setText("","TextField_EmailField_Register");
         §"]§.setText("","TextField_PasswordField_Register");
         §"]§.setText("","TextField_PasswordFieldRepeat_Register");
         §"]§.setText("","TextField_NickNameField_Register");
         §"]§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §"]§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §"]§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §"]§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function § !4§() : void
      {
         this.§#m§ = this.§1!W§;
         this.§>!c§ = this.§!!K§;
         §"]§.setText(this.§#m§,"TextField_UserNameField");
         §"]§.setText(this.§>!c§,"TextField_PasswordField");
         if(this.§!g§)
         {
            §=!G§.§+j§.§86§(this.§#m§,this.§>!c§,this.§!g§);
         }
      }
      
      public function get § E§() : StatePopupManager
      {
         return this.§+V§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§!g§;
      }
      
      public function get §#a§() : String
      {
         return this.§1!W§;
      }
      
      public function set §#a§(param1:String) : void
      {
         this.§1!W§ = param1;
      }
      
      public function get §,X§() : String
      {
         return this.§!!K§;
      }
      
      public function set §,X§(param1:String) : void
      {
         this.§!!K§ = param1;
      }
      
      public function get §"l§() : Boolean
      {
         return this.§8!%§;
      }
      
      public function get §"w§() : §1!b§
      {
         return this.§43§;
      }
   }
}
