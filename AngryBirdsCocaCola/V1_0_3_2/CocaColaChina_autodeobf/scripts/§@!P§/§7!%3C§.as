package §@!P§
{
   import §!!L§.§&!R§;
   import §,f§.§=!0§;
   import §1!'§.HighscoreSidebar;
   import §1d§.§#E§;
   import §1d§.§?q§;
   import §6l§.§ l§;
   import §6l§.§#!Z§;
   import §8S§.§%!>§;
   import §;C§.§+!M§;
   import §=F§.§"n§;
   import §>!8§.§4!0§;
   import §>!8§.§71§;
   import §^>§.§1i§;
   import §^>§.§9i§;
   import flash.events.AsyncErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SyncEvent;
   import flash.net.SharedObject;
   
   public class §7!<§ extends §3!%§
   {
      
      public static const §'2§:String = "LoginState";
      
      public static const §6>§:String = "userLoggedIn";
      
      public static const §!!K§:String = "a-z A-Z 0-9 \\-_";
      
      public static const §;!%§:String = "a-z A-Z 0-9";
      
      public static const §^!`§:String = "a-z     0-9  \'\\-_@.";
      
      private static var §=r§:SharedObject;
      
      public static var §&>§:Boolean = false;
       
      
      private var §-!U§:Boolean;
      
      private var §'Q§:Boolean;
      
      private var §9A§:String;
      
      private var §+!]§:String;
      
      private var §->§:String;
      
      private var §[]§:String;
      
      private var §0A§:§?q§;
      
      private var §6#§:§#E§;
      
      private var §5!7§:§%!>§ = null;
      
      private var §;@§:§9i§;
      
      public function §7!<§(param1:Boolean = false, param2:String = "LoginState")
      {
         var initObject:Boolean = param1;
         var name:String = param2;
         super(initObject,name);
         try
         {
            §=r§ = SharedObject.getLocal("loginData");
            §=r§.addEventListener(NetStatusEvent.NET_STATUS,this.§<z§);
            §=r§.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.§2V§);
            §=r§.addEventListener(SyncEvent.SYNC,this.§'A§);
         }
         catch(e:*)
         {
         }
      }
      
      private function §'A§(param1:SyncEvent) : void
      {
      }
      
      private function §2V§(param1:AsyncErrorEvent) : void
      {
      }
      
      private function §<z§(param1:NetStatusEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §+!`§ = new §4!0§(this);
         §+!`§.init(§71§.§#X§.Views.View_Login[0]);
         this.§0A§ = new §?q§(this);
         this.§6#§ = new §#E§(this);
         if(!§=i§.§1w§)
         {
            this.§5!7§ = new §=!0§(§"n§.§[b§,"INGAME_THEME_3",false,3);
         }
         else
         {
            §+!`§.getItemByName("MovieClip_LoginBackGround").setVisibility(true);
         }
         this.§;@§ = new §9i§(§+!`§);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!§=i§.§1w§)
         {
            §"n§.§[b§.§+!U§(true);
            §"n§.§[b§.§9'§(true);
            §"n§.§[b§.clearLevel();
            §"n§.§51§(this.§5!7§);
            this.§5!7§.init();
         }
         else
         {
            §"n§.§[b§.§+!U§(false);
            §"n§.§[b§.§9'§(false);
            §"n§.§0@§();
         }
         this.§6#§.activate();
         §+!`§.container.setObjectToFront(§+!`§.getItemByName("MovieClip_LegalText"));
         this.§<!X§();
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§6#§.dispose();
      }
      
      private function §<!X§() : void
      {
         if(§&>§)
         {
            this.§2!I§();
            this.§+![§();
            try
            {
               §=r§.clear();
            }
            catch(e:Error)
            {
            }
            this.§-!U§ = false;
            this.§9A§ = "";
            this.§+!]§ = "";
            this.§->§ = "";
            this.§[]§ = "";
         }
         §&>§ = false;
         var localInfoFound:Boolean = this.§1g§();
         if(§=r§ && §=r§.data && §=r§.data.rememberMe)
         {
            this.§-!U§ = true;
         }
         this.§6#§.§"#§();
         this.§0A§.§finally§();
         if(this.§+!]§ && this.§9A§)
         {
            §+!`§.setText(this.§9A§,"TextField_UserNameField");
            §+!`§.setText(this.§+!]§,"TextField_PasswordField");
         }
         if(§=i§.§&!c§())
         {
            §+!`§.getItemByName("Button_Mute").setVisibility(true);
            §+!`§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            §=i§.§ !A§();
         }
         else
         {
            §+!`§.getItemByName("Button_Mute").setVisibility(true);
            §+!`§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         if(!localInfoFound)
         {
            §@<§.changeState(HighscoreSidebar.§-!G§);
         }
      }
      
      override protected function setInitialState() : void
      {
         §@<§.enableLogOutButton(false);
         §+!`§.getItemByName("Button_Credits").setVisibility(true);
         §+!`§.getItemByName("Button_Tutorial").setVisibility(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&!R§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§=i§.§1w§)
         {
            §"n§.§5]§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §&!R§.STATE_STATUS_COMPLETED;
         }
         return §&!R§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
      {
         var _loc4_:§ l§ = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SUBMIT":
               this.§6#§.§^n§();
               break;
            case "SUBMIT_REGISTER":
               this.§0A§.§^n§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §+!`§.getItemByName("Checkbox_RememberMe") as § l§;
               this.§-!U§ = !this.§-!U§;
               if(this.§-!U§)
               {
                  _loc4_.setComponentState(§ l§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§ l§.§6!b§);
               }
               _loc4_ = §+!`§.getItemByName("Checkbox_RememberMe_Register") as § l§;
               if(this.§-!U§)
               {
                  _loc4_.setComponentState(§ l§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§ l§.§6!b§);
               break;
            case "CHECKBOX_CHANGE_EMAIL":
               _loc4_ = §+!`§.getItemByName("Checkbox_CollectEmail_Register") as § l§;
               this.§'Q§ = !this.§'Q§;
               if(this.§'Q§)
               {
                  _loc4_.setComponentState(§ l§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§ l§.§6!b§);
               }
               _loc4_ = §+!`§.getItemByName("Checkbox_CollectEmail_Register") as § l§;
               if(this.§'Q§)
               {
                  _loc4_.setComponentState(§ l§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§ l§.§6!b§);
               }
               break;
            case "FORGOT_PASSWORD":
               §+!M§.§=2§(§+!`§);
               break;
            case "TAB_LOGIN":
               this.§6#§.activate();
               §+!`§.container.setObjectToFront(§+!`§.getItemByName("MovieClip_LegalText"));
               break;
            case "TAB_REGISTER":
               this.§0A§.activate();
               §+!`§.container.setObjectToFront(§+!`§.getItemByName("MovieClip_LegalText"));
         }
      }
      
      private function §1g§() : Boolean
      {
         var name:String = null;
         var password:String = null;
         if(§=r§ && §=r§.data && §=r§.data.id && §=r§.data.password)
         {
            try
            {
               name = §1i§.§<!<§(§=r§.data.id);
               password = §1i§.§<!<§(§=r§.data.password);
            }
            catch(e:Error)
            {
            }
            §+!`§.setText(name,"TextField_UserNameField");
            §+!`§.setText(password,"TextField_PasswordField");
            this.§6#§.§^n§();
            return true;
         }
         return false;
      }
      
      public function §^!A§(param1:String, param2:String) : void
      {
         var id:String = param1;
         var password:String = param2;
         var idLocal:String = §+!`§.getText("TextField_UserNameField");
         var passwordLocal:String = §+!`§.getText("TextField_PasswordField");
         idLocal = §1i§.§;m§(idLocal);
         passwordLocal = §1i§.§;m§(passwordLocal);
         §=r§.data.id = idLocal;
         §=r§.data.password = passwordLocal;
         §=r§.data.rememberMe = this.§-!U§;
         try
         {
            §=r§.flush();
         }
         catch(e:*)
         {
         }
      }
      
      public function §+![§() : void
      {
         §+!`§.setText("","TextField_UserNameField");
         §+!`§.setText("","TextField_PasswordField");
         §+!`§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §+!`§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §2!I§() : void
      {
         §+!`§.setText("","TextField_EmailField_Register");
         §+!`§.setText("","TextField_PasswordField_Register");
         §+!`§.setText("","TextField_PasswordFieldRepeat_Register");
         §+!`§.setText("","TextField_NickNameField_Register");
         §+!`§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §+!`§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §+!`§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §+!`§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §7Z§() : void
      {
         this.§9A§ = this.§->§;
         this.§+!]§ = this.§[]§;
         §+!`§.setText(this.§9A§,"TextField_UserNameField");
         §+!`§.setText(this.§+!]§,"TextField_PasswordField");
         if(this.§-!U§)
         {
            this.§^!A§(this.§9A§,this.§+!]§);
         }
      }
      
      private function §"Y§(param1:String) : void
      {
      }
      
      public function get §>a§() : Boolean
      {
         return this.§-!U§;
      }
      
      public function get §<!$§() : String
      {
         return this.§->§;
      }
      
      public function set §<!$§(param1:String) : void
      {
         this.§->§ = param1;
      }
      
      public function get §>!2§() : String
      {
         return this.§[]§;
      }
      
      public function set §>!2§(param1:String) : void
      {
         this.§[]§ = param1;
      }
      
      public function get §3h§() : §9i§
      {
         return this.§;@§;
      }
      
      public function get §4!H§() : Boolean
      {
         return this.§'Q§;
      }
   }
}
