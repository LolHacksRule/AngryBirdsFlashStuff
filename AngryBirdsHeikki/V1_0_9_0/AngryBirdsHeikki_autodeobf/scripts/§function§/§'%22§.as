package §function§
{
   import §#Q§.§8#§;
   import §#Q§.§8Y§;
   import §&!6§.§5r§;
   import §&o§.§7!C§;
   import §+P§.§0!I§;
   import §+P§.§>!O§;
   import §1Q§.§'!`§;
   import §1Q§.§4p§;
   import §44§.§,!M§;
   import §4M§.HighscoreSidebar;
   import §4V§.§0!W§;
   import §4V§.§>u§;
   import §<<§.§8!Y§;
   import §>!F§.§9!Z§;
   import flash.events.AsyncErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SyncEvent;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §'"§ extends §1!@§
   {
      
      public static const §94§:String = "LoginState";
      
      public static const §`T§:String = "userLoggedIn";
      
      public static const §,m§:String = "a-z A-Z 0-9 \\-";
      
      public static const § !0§:String = "a-z A-Z 0-9";
      
      public static const §-u§:String = "a-z     0-9  \'\\-_@.";
      
      public static const §>c§:int = 60;
      
      private static var §7!;§:SharedObject;
      
      public static var §+!a§:Boolean = false;
       
      
      private var §=Y§:Boolean;
      
      private var §%b§:Boolean;
      
      private var §<!-§:Boolean;
      
      private var §?t§:String;
      
      private var §"V§:String;
      
      private var §37§:String;
      
      private var §%m§:String;
      
      private var §8!D§:§>!O§;
      
      private var §]e§:§0!I§;
      
      private var §,!J§:§8!Y§ = null;
      
      private var §?!S§:§>u§;
      
      public function §'"§(param1:Boolean = false, param2:String = "LoginState")
      {
         var initObject:Boolean = param1;
         var name:String = param2;
         this.§=Y§ = !!§"H§.§9!C§ ? true : false;
         super(initObject,name);
         try
         {
            §7!;§ = SharedObject.getLocal("loginData");
            §7!;§.addEventListener(NetStatusEvent.NET_STATUS,this.§5!F§);
            §7!;§.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.§4Q§);
            §7!;§.addEventListener(SyncEvent.SYNC,this.§;@§);
         }
         catch(e:*)
         {
         }
      }
      
      private function §;@§(param1:SyncEvent) : void
      {
      }
      
      private function §4Q§(param1:AsyncErrorEvent) : void
      {
      }
      
      private function §5!F§(param1:NetStatusEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §@K§ = new §8Y§(this);
         §@K§.init(§8#§.§6K§.Views.View_Login[0]);
         this.§8!D§ = new §>!O§(this);
         this.§]e§ = new §0!I§(this);
         if(!this.§=Y§)
         {
            this.§,!J§ = new §7!C§(§9!Z§.§5!$§,"INGAME_THEME_" + int(Math.random() * 12 + 1),false,15);
         }
         else
         {
            §@K§.getItemByName("MovieClip_LoginBackGround").setVisibility(true);
         }
         this.§?!S§ = new §>u§(§@K§);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§=Y§)
         {
            §9!Z§.§5!$§.§8t§(true);
            §9!Z§.§5!$§.§5!=§(true);
            §9!Z§.§5!$§.clearLevel();
            §9!Z§.§5q§(this.§,!J§);
            this.§,!J§.init();
            §9!Z§.§5!$§.§8t§(true);
         }
         else
         {
            §9!Z§.§5!$§.§8t§(false);
            §9!Z§.§5!$§.§5!=§(false);
            §9!Z§.§0!G§();
         }
         this.§]e§.activate();
         this.§5G§();
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§]e§.dispose();
      }
      
      private function §5G§() : void
      {
         if(§+!a§)
         {
            this.§@!>§();
            this.§31§();
            try
            {
               §7!;§.clear();
            }
            catch(e:Error)
            {
            }
            this.§%b§ = false;
            this.§<!-§ = false;
            this.§?t§ = "";
            this.§"V§ = "";
            this.§37§ = "";
            this.§%m§ = "";
         }
         §+!a§ = false;
         var localInfoFound:Boolean = this.§+_§();
         if(§7!;§ && §7!;§.data && §7!;§.data.rememberMe)
         {
            this.§%b§ = true;
         }
         this.§]e§.§>!§();
         this.§8!D§.§'[§();
         if(this.§"V§ && this.§?t§)
         {
            §@K§.setText(this.§?t§,"TextField_UserNameField");
            §@K§.setText(this.§"V§,"TextField_PasswordField");
         }
         if(§"H§.§0<§())
         {
            §@K§.getItemByName("Button_Mute").setVisibility(true);
            §@K§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            §"H§.§4!Z§();
         }
         else
         {
            §@K§.getItemByName("Button_Mute").setVisibility(true);
            §@K§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         if(!localInfoFound)
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§"7§);
         }
      }
      
      override protected function setInitialState() : void
      {
         §@K§.getItemByName("Button_Tutorial").setVisibility(false);
         sHighscoreSidebar.enableCreditsButton(true);
         sHighscoreSidebar.enableLogOutButton(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5r§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§=Y§)
         {
            §9!Z§.§[-§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §5r§.STATE_STATUS_COMPLETED;
         }
         return §5r§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!`§) : void
      {
         var _loc4_:§4p§ = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SUBMIT":
               this.§]e§.§!?§();
               break;
            case "SUBMIT_REGISTER":
               this.§8!D§.§!?§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §@K§.getItemByName("Checkbox_RememberMe") as §4p§;
               this.§%b§ = !this.§%b§;
               if(this.§%b§)
               {
                  _loc4_.setComponentState(§4p§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§4p§.§#!%§);
               }
               _loc4_ = §@K§.getItemByName("Checkbox_RememberMe_Register") as §4p§;
               if(this.§%b§)
               {
                  _loc4_.setComponentState(§4p§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§4p§.§#!%§);
               break;
            case "CHECKBOX_MARKETING_CHANGE":
               _loc4_ = §@K§.getItemByName("Checkbox_Marketing") as §4p§;
               this.§<!-§ = !this.§<!-§;
               if(this.§<!-§)
               {
                  _loc4_.setComponentState(§4p§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§4p§.§#!%§);
               }
               break;
            case "FORGOT_PASSWORD":
            case "LOGOUT":
               §,!M§.§ !V§(§@K§);
               break;
            case "TAB_LOGIN":
               §@K§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
               §@K§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
               §@K§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
               §@K§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
               §@K§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
               §@K§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
               this.§`!V§.hide();
               this.§]e§.activate();
               break;
            case "TAB_REGISTER":
               §@K§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
               §@K§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
               this.§`!V§.hide();
               this.§8!D§.activate();
               break;
            case "SUBMIT_PRIVACYPOLICY":
               navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
               break;
            case "SUBMIT_EULA":
               navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
         }
      }
      
      private function §+_§() : Boolean
      {
         var name:String = null;
         var password:String = null;
         if(§7!;§ && §7!;§.data && §7!;§.data.id && §7!;§.data.password)
         {
            try
            {
               name = §0!W§.§'r§(§7!;§.data.id);
               password = §0!W§.§'r§(§7!;§.data.password);
            }
            catch(e:Error)
            {
            }
            §@K§.setText(name,"TextField_UserNameField");
            §@K§.setText(password,"TextField_PasswordField");
            this.§]e§.§!?§();
            return true;
         }
         return false;
      }
      
      public function §?!Q§(param1:String, param2:String) : void
      {
         var id:String = param1;
         var password:String = param2;
         var idLocal:String = §@K§.getText("TextField_UserNameField");
         var passwordLocal:String = §@K§.getText("TextField_PasswordField");
         idLocal = §0!W§.§^!V§(idLocal);
         passwordLocal = §0!W§.§^!V§(passwordLocal);
         §7!;§.data.id = idLocal;
         §7!;§.data.password = passwordLocal;
         §7!;§.data.rememberMe = this.§%b§;
         try
         {
            §7!;§.flush();
         }
         catch(e:*)
         {
         }
      }
      
      public function §31§() : void
      {
         §@K§.setText("","TextField_UserNameField");
         §@K§.setText("","TextField_PasswordField");
         §@K§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §@K§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §@!>§() : void
      {
         §@K§.setText("","TextField_EmailField_Register");
         §@K§.setText("","TextField_PasswordField_Register");
         §@K§.setText("","TextField_PasswordFieldRepeat_Register");
         §@K§.setText("","TextField_NickNameField_Register");
         §@K§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §@K§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §@K§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §@K§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §"v§() : void
      {
         this.§?t§ = this.§37§;
         this.§"V§ = this.§%m§;
         §@K§.setText(this.§?t§,"TextField_UserNameField");
         §@K§.setText(this.§"V§,"TextField_PasswordField");
         if(this.§%b§)
         {
            this.§?!Q§(this.§?t§,this.§"V§);
         }
      }
      
      public function get §=@§() : Boolean
      {
         return this.§%b§;
      }
      
      public function get §8!%§() : String
      {
         return this.§37§;
      }
      
      public function set §8!%§(param1:String) : void
      {
         this.§37§ = param1;
      }
      
      public function get §0W§() : String
      {
         return this.§%m§;
      }
      
      public function set §0W§(param1:String) : void
      {
         this.§%m§ = param1;
      }
      
      public function get §`!V§() : §>u§
      {
         return this.§?!S§;
      }
      
      public function get §"!F§() : Boolean
      {
         return this.§<!-§;
      }
   }
}
