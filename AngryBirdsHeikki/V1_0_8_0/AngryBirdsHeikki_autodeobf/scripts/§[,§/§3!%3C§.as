package §[,§
{
   import §!a§.§&6§;
   import §#!+§.§"$§;
   import §#!+§.§?V§;
   import §#!T§.§&2§;
   import §'z§.§3?§;
   import §1!J§.§>!U§;
   import §1!J§.§package§;
   import §3S§.§<p§;
   import §7b§.§"! §;
   import §7f§.§^^§;
   import §7f§.§`G§;
   import §;!0§.§"[§;
   import §;!0§.§4!I§;
   import §`V§.HighscoreSidebar;
   import flash.events.AsyncErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SyncEvent;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §3!<§ extends §<!Y§
   {
      
      public static const §+Z§:String = "LoginState";
      
      public static const §"!?§:String = "userLoggedIn";
      
      public static const §+!0§:String = "a-z A-Z 0-9 \\-";
      
      public static const §"!0§:String = "a-z A-Z 0-9";
      
      public static const §!!N§:String = "a-z     0-9  \'\\-_@.";
      
      public static const §0!<§:int = 60;
      
      private static var §#!$§:SharedObject;
      
      public static var §7!7§:Boolean = false;
       
      
      private var §,^§:Boolean;
      
      private var §^N§:Boolean;
      
      private var §@v§:Boolean;
      
      private var §,,§:String;
      
      private var §;Z§:String;
      
      private var §@#§:String;
      
      private var §9[§:String;
      
      private var §=K§:§`G§;
      
      private var §#l§:§^^§;
      
      private var §8d§:§"! § = null;
      
      private var §'!N§:§>!U§;
      
      public function §3!<§(param1:Boolean = false, param2:String = "LoginState")
      {
         var initObject:Boolean = param1;
         var name:String = param2;
         this.§,^§ = !!§2!S§.§ z§ ? true : false;
         super(initObject,name);
         try
         {
            §#!$§ = SharedObject.getLocal("loginData");
            §#!$§.addEventListener(NetStatusEvent.NET_STATUS,this.§9!<§);
            §#!$§.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.§&P§);
            §#!$§.addEventListener(SyncEvent.SYNC,this.§[!X§);
         }
         catch(e:*)
         {
         }
      }
      
      private function §[!X§(param1:SyncEvent) : void
      {
      }
      
      private function §&P§(param1:AsyncErrorEvent) : void
      {
      }
      
      private function §9!<§(param1:NetStatusEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §[L§ = new §"$§(this);
         §[L§.init(§?V§.§-2§.Views.View_Login[0]);
         this.§=K§ = new §`G§(this);
         this.§#l§ = new §^^§(this);
         if(!this.§,^§)
         {
            this.§8d§ = new §<p§(§&2§.§4!1§,"INGAME_THEME_" + int(Math.random() * 12 + 1),false,15);
         }
         else
         {
            §[L§.getItemByName("MovieClip_LoginBackGround").setVisibility(true);
         }
         this.§'!N§ = new §>!U§(§[L§);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§,^§)
         {
            §&2§.§4!1§.§5h§(true);
            §&2§.§4!1§.§-H§(true);
            §&2§.§4!1§.clearLevel();
            §&2§.§9![§(this.§8d§);
            this.§8d§.init();
            §&2§.§4!1§.§5h§(true);
         }
         else
         {
            §&2§.§4!1§.§5h§(false);
            §&2§.§4!1§.§-H§(false);
            §&2§.§"!J§();
         }
         this.§#l§.activate();
         this.§2!X§();
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§#l§.dispose();
      }
      
      private function §2!X§() : void
      {
         if(§7!7§)
         {
            this.§?@§();
            this.§&B§();
            try
            {
               §#!$§.clear();
            }
            catch(e:Error)
            {
            }
            this.§^N§ = false;
            this.§@v§ = false;
            this.§,,§ = "";
            this.§;Z§ = "";
            this.§@#§ = "";
            this.§9[§ = "";
         }
         §7!7§ = false;
         var localInfoFound:Boolean = this.§4j§();
         if(§#!$§ && §#!$§.data && §#!$§.data.rememberMe)
         {
            this.§^N§ = true;
         }
         this.§#l§.§5f§();
         this.§=K§.§+!+§();
         if(this.§;Z§ && this.§,,§)
         {
            §[L§.setText(this.§,,§,"TextField_UserNameField");
            §[L§.setText(this.§;Z§,"TextField_PasswordField");
         }
         if(§2!S§.§'o§())
         {
            §[L§.getItemByName("Button_Mute").setVisibility(true);
            §[L§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            §2!S§.§3!E§();
         }
         else
         {
            §[L§.getItemByName("Button_Mute").setVisibility(true);
            §[L§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         if(!localInfoFound)
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§&!4§);
         }
      }
      
      override protected function setInitialState() : void
      {
         §[L§.getItemByName("Button_Tutorial").setVisibility(false);
         sHighscoreSidebar.enableCreditsButton(true);
         sHighscoreSidebar.enableLogOutButton(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§,^§)
         {
            §&2§.§7=§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §&6§.STATE_STATUS_COMPLETED;
         }
         return §&6§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§4!I§) : void
      {
         var _loc4_:§"[§ = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SUBMIT":
               this.§#l§.§-!9§();
               break;
            case "SUBMIT_REGISTER":
               this.§=K§.§-!9§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §[L§.getItemByName("Checkbox_RememberMe") as §"[§;
               this.§^N§ = !this.§^N§;
               if(this.§^N§)
               {
                  _loc4_.setComponentState(§"[§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§"[§.§,E§);
               }
               _loc4_ = §[L§.getItemByName("Checkbox_RememberMe_Register") as §"[§;
               if(this.§^N§)
               {
                  _loc4_.setComponentState(§"[§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§"[§.§,E§);
               break;
            case "CHECKBOX_MARKETING_CHANGE":
               _loc4_ = §[L§.getItemByName("Checkbox_Marketing") as §"[§;
               this.§@v§ = !this.§@v§;
               if(this.§@v§)
               {
                  _loc4_.setComponentState(§"[§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§"[§.§,E§);
               }
               break;
            case "FORGOT_PASSWORD":
            case "LOGOUT":
               §3?§.§%0§(§[L§);
               break;
            case "TAB_LOGIN":
               §[L§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
               §[L§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
               §[L§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
               §[L§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
               §[L§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
               §[L§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
               this.§[!5§.hide();
               this.§#l§.activate();
               break;
            case "TAB_REGISTER":
               §[L§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
               §[L§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
               this.§[!5§.hide();
               this.§=K§.activate();
               break;
            case "SUBMIT_PRIVACYPOLICY":
               navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
               break;
            case "SUBMIT_EULA":
               navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
         }
      }
      
      private function §4j§() : Boolean
      {
         var name:String = null;
         var password:String = null;
         if(§#!$§ && §#!$§.data && §#!$§.data.id && §#!$§.data.password)
         {
            try
            {
               name = §package§.§9'§(§#!$§.data.id);
               password = §package§.§9'§(§#!$§.data.password);
            }
            catch(e:Error)
            {
            }
            §[L§.setText(name,"TextField_UserNameField");
            §[L§.setText(password,"TextField_PasswordField");
            this.§#l§.§-!9§();
            return true;
         }
         return false;
      }
      
      public function §3!H§(param1:String, param2:String) : void
      {
         var id:String = param1;
         var password:String = param2;
         var idLocal:String = §[L§.getText("TextField_UserNameField");
         var passwordLocal:String = §[L§.getText("TextField_PasswordField");
         idLocal = §package§.§0!e§(idLocal);
         passwordLocal = §package§.§0!e§(passwordLocal);
         §#!$§.data.id = idLocal;
         §#!$§.data.password = passwordLocal;
         §#!$§.data.rememberMe = this.§^N§;
         try
         {
            §#!$§.flush();
         }
         catch(e:*)
         {
         }
      }
      
      public function §&B§() : void
      {
         §[L§.setText("","TextField_UserNameField");
         §[L§.setText("","TextField_PasswordField");
         §[L§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §[L§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §?@§() : void
      {
         §[L§.setText("","TextField_EmailField_Register");
         §[L§.setText("","TextField_PasswordField_Register");
         §[L§.setText("","TextField_PasswordFieldRepeat_Register");
         §[L§.setText("","TextField_NickNameField_Register");
         §[L§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §[L§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §[L§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §[L§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §7!F§() : void
      {
         this.§,,§ = this.§@#§;
         this.§;Z§ = this.§9[§;
         §[L§.setText(this.§,,§,"TextField_UserNameField");
         §[L§.setText(this.§;Z§,"TextField_PasswordField");
         if(this.§^N§)
         {
            this.§3!H§(this.§,,§,this.§;Z§);
         }
      }
      
      public function get §14§() : Boolean
      {
         return this.§^N§;
      }
      
      public function get §^!X§() : String
      {
         return this.§@#§;
      }
      
      public function set §^!X§(param1:String) : void
      {
         this.§@#§ = param1;
      }
      
      public function get §&+§() : String
      {
         return this.§9[§;
      }
      
      public function set §&+§(param1:String) : void
      {
         this.§9[§ = param1;
      }
      
      public function get §[!5§() : §>!U§
      {
         return this.§'!N§;
      }
      
      public function get §#q§() : Boolean
      {
         return this.§@v§;
      }
   }
}
