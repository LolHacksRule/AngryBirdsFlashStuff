package §+!9§
{
   import §4;§.§,h§;
   import §4t§.§1j§;
   import §7!X§.§%!=§;
   import §7!X§.§7g§;
   import §8w§.§-x§;
   import §;<§.§%K§;
   import §;<§.§2!V§;
   import §?!P§.§@@§;
   import §[!=§.§>!]§;
   import §[!=§.§implements§;
   import §[!^§.§^2§;
   import flash.events.AsyncErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SyncEvent;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §var§.§+!^§;
   import §var§.§8!_§;
   
   public class §0!M§ extends §3!!§
   {
      
      public static const §6! §:String = "LoginState";
      
      public static const §?!?§:String = "userLoggedIn";
      
      public static const §[@§:String = "a-z A-Z 0-9 \\-";
      
      public static const §=!U§:String = "a-z A-Z 0-9";
      
      public static const §=d§:String = "a-z     0-9  \'\\-_@.";
      
      public static const §[!_§:int = 60;
      
      private static var §-b§:SharedObject;
      
      public static var §'!]§:Boolean = false;
       
      
      private var §[!&§:Boolean;
      
      private var §;%§:Boolean;
      
      private var § 2§:Boolean;
      
      private var §3d§:String;
      
      private var §1P§:String;
      
      private var §'!I§:String;
      
      private var §]!"§:String;
      
      private var §@!R§:§>!]§;
      
      private var §7!2§:§implements§;
      
      private var §<! §:§1j§ = null;
      
      private var §,7§:§%K§;
      
      public function §0!M§(param1:Boolean = false, param2:String = "LoginState")
      {
         var initObject:Boolean = param1;
         var name:String = param2;
         this.§[!&§ = !!§1F§.§03§ ? true : false;
         super(initObject,name);
         try
         {
            §-b§ = SharedObject.getLocal("loginData");
            §-b§.addEventListener(NetStatusEvent.NET_STATUS,this.§@!?§);
            §-b§.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.§^!b§);
            §-b§.addEventListener(SyncEvent.SYNC,this.§8!'§);
         }
         catch(e:*)
         {
         }
      }
      
      private function §8!'§(param1:SyncEvent) : void
      {
      }
      
      private function §^!b§(param1:AsyncErrorEvent) : void
      {
      }
      
      private function §@!?§(param1:NetStatusEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §2!M§ = new §7g§(this);
         §2!M§.init(§%!=§.§ #§.Views.View_Login[0]);
         this.§@!R§ = new §>!]§(this);
         this.§7!2§ = new §implements§(this);
         if(!this.§[!&§)
         {
            this.§<! § = new §-x§(§@@§.§ !8§,"INGAME_THEME_" + int(Math.random() * 12 + 1),false,15);
         }
         else
         {
            §2!M§.getItemByName("MovieClip_LoginBackGround").setVisibility(true);
         }
         this.§,7§ = new §%K§(§2!M§);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§[!&§)
         {
            §@@§.§ !8§.§5!?§(true);
            §@@§.§ !8§.§,!Y§(true);
            §@@§.§ !8§.clearLevel();
            §@@§.§1!V§(this.§<! §);
            this.§<! §.init();
            §@@§.§ !8§.§5!?§(true);
         }
         else
         {
            §@@§.§ !8§.§5!?§(false);
            §@@§.§ !8§.§,!Y§(false);
            §@@§.§9@§();
         }
         this.§7!2§.activate();
         this.§'!L§();
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§7!2§.dispose();
      }
      
      private function §'!L§() : void
      {
         if(§'!]§)
         {
            this.§+8§();
            this.§91§();
            try
            {
               §-b§.clear();
            }
            catch(e:Error)
            {
            }
            this.§;%§ = false;
            this.§ 2§ = false;
            this.§3d§ = "";
            this.§1P§ = "";
            this.§'!I§ = "";
            this.§]!"§ = "";
         }
         §'!]§ = false;
         var localInfoFound:Boolean = this.§5;§();
         if(§-b§ && §-b§.data && §-b§.data.rememberMe)
         {
            this.§;%§ = true;
         }
         this.§7!2§.§<I§();
         this.§@!R§.§@!"§();
         if(this.§1P§ && this.§3d§)
         {
            §2!M§.setText(this.§3d§,"TextField_UserNameField");
            §2!M§.setText(this.§1P§,"TextField_PasswordField");
         }
         if(§1F§.§2!1§())
         {
            §2!M§.getItemByName("Button_Mute").setVisibility(true);
            §2!M§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            §1F§.§ 9§();
         }
         else
         {
            §2!M§.getItemByName("Button_Mute").setVisibility(true);
            §2!M§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         if(!localInfoFound)
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§20§);
         }
      }
      
      override protected function setInitialState() : void
      {
         §2!M§.getItemByName("Button_Tutorial").setVisibility(false);
         sHighscoreSidebar.enableCreditsButton(true);
         sHighscoreSidebar.enableLogOutButton(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,h§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§[!&§)
         {
            §@@§.§6!L§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §,h§.STATE_STATUS_COMPLETED;
         }
         return §,h§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!^§) : void
      {
         var _loc4_:§8!_§ = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SUBMIT":
               this.§7!2§.§%U§();
               break;
            case "SUBMIT_REGISTER":
               this.§@!R§.§%U§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §2!M§.getItemByName("Checkbox_RememberMe") as §8!_§;
               this.§;%§ = !this.§;%§;
               if(this.§;%§)
               {
                  _loc4_.setComponentState(§8!_§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§8!_§.§^#§);
               }
               _loc4_ = §2!M§.getItemByName("Checkbox_RememberMe_Register") as §8!_§;
               if(this.§;%§)
               {
                  _loc4_.setComponentState(§8!_§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§8!_§.§^#§);
               break;
            case "CHECKBOX_MARKETING_CHANGE":
               _loc4_ = §2!M§.getItemByName("Checkbox_Marketing") as §8!_§;
               this.§ 2§ = !this.§ 2§;
               if(this.§ 2§)
               {
                  _loc4_.setComponentState(§8!_§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§8!_§.§^#§);
               }
               break;
            case "FORGOT_PASSWORD":
            case "LOGOUT":
               §^2§.§#J§(§2!M§);
               break;
            case "TAB_LOGIN":
               §2!M§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
               §2!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
               §2!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
               §2!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
               §2!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
               §2!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
               this.§83§.hide();
               this.§7!2§.activate();
               break;
            case "TAB_REGISTER":
               §2!M§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
               §2!M§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
               this.§83§.hide();
               this.§@!R§.activate();
               break;
            case "SUBMIT_PRIVACYPOLICY":
               navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
               break;
            case "SUBMIT_EULA":
               navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
         }
      }
      
      private function §5;§() : Boolean
      {
         var name:String = null;
         var password:String = null;
         if(§-b§ && §-b§.data && §-b§.data.id && §-b§.data.password)
         {
            try
            {
               name = §2!V§.§-!?§(§-b§.data.id);
               password = §2!V§.§-!?§(§-b§.data.password);
            }
            catch(e:Error)
            {
            }
            §2!M§.setText(name,"TextField_UserNameField");
            §2!M§.setText(password,"TextField_PasswordField");
            this.§7!2§.§%U§();
            return true;
         }
         return false;
      }
      
      public function §8!R§(param1:String, param2:String) : void
      {
         var id:String = param1;
         var password:String = param2;
         var idLocal:String = §2!M§.getText("TextField_UserNameField");
         var passwordLocal:String = §2!M§.getText("TextField_PasswordField");
         idLocal = §2!V§.§&e§(idLocal);
         passwordLocal = §2!V§.§&e§(passwordLocal);
         §-b§.data.id = idLocal;
         §-b§.data.password = passwordLocal;
         §-b§.data.rememberMe = this.§;%§;
         try
         {
            §-b§.flush();
         }
         catch(e:*)
         {
         }
      }
      
      public function §91§() : void
      {
         §2!M§.setText("","TextField_UserNameField");
         §2!M§.setText("","TextField_PasswordField");
         §2!M§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §2!M§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §+8§() : void
      {
         §2!M§.setText("","TextField_EmailField_Register");
         §2!M§.setText("","TextField_PasswordField_Register");
         §2!M§.setText("","TextField_PasswordFieldRepeat_Register");
         §2!M§.setText("","TextField_NickNameField_Register");
         §2!M§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §2!M§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §2!M§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §2!M§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §3!+§() : void
      {
         this.§3d§ = this.§'!I§;
         this.§1P§ = this.§]!"§;
         §2!M§.setText(this.§3d§,"TextField_UserNameField");
         §2!M§.setText(this.§1P§,"TextField_PasswordField");
         if(this.§;%§)
         {
            this.§8!R§(this.§3d§,this.§1P§);
         }
      }
      
      public function get § !M§() : Boolean
      {
         return this.§;%§;
      }
      
      public function get §;l§() : String
      {
         return this.§'!I§;
      }
      
      public function set §;l§(param1:String) : void
      {
         this.§'!I§ = param1;
      }
      
      public function get §94§() : String
      {
         return this.§]!"§;
      }
      
      public function set §94§(param1:String) : void
      {
         this.§]!"§ = param1;
      }
      
      public function get §83§() : §%K§
      {
         return this.§,7§;
      }
      
      public function get §-!`§() : Boolean
      {
         return this.§ 2§;
      }
   }
}
