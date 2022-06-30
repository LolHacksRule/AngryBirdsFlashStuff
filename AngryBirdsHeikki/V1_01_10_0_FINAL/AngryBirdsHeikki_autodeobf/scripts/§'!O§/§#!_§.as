package §'!O§
{
   import §-!"§.§=p§;
   import §1m§.§0!%§;
   import §20§.§"!b§;
   import §2`§.HighscoreSidebar;
   import §3!b§.§;F§;
   import §8P§.§1A§;
   import §8P§.§4!Y§;
   import §9I§.§,i§;
   import §9I§.§1F§;
   import §9b§.§"!S§;
   import §<u§.§;A§;
   import §<u§.§]!Q§;
   import §?!a§.§"5§;
   import §?!a§.§`§;
   import flash.events.AsyncErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SyncEvent;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §#!_§ extends §=j§
   {
      
      public static const §@o§:String = "LoginState";
      
      public static const §7x§:String = "userLoggedIn";
      
      public static const §3t§:String = "a-z A-Z 0-9 \\-";
      
      public static const §64§:String = "a-z A-Z 0-9";
      
      public static const §37§:String = "a-z     0-9  \'\\-_@.";
      
      public static const §!j§:int = 60;
      
      private static var §!!B§:SharedObject;
      
      public static var §<!9§:Boolean = false;
       
      
      private var §5y§:Boolean;
      
      private var §>!O§:Boolean;
      
      private var §]'§:Boolean;
      
      private var §&!'§:String;
      
      private var §1!a§:String;
      
      private var §1Z§:String;
      
      private var §+H§:String;
      
      private var §6![§:§"5§;
      
      private var § @§:§`§;
      
      private var §%;§:§;F§ = null;
      
      private var §%S§:§1F§;
      
      public function §#!_§(param1:Boolean = false, param2:String = "LoginState")
      {
         var initObject:Boolean = param1;
         var name:String = param2;
         this.§5y§ = !!§,L§.§;]§ ? true : false;
         super(initObject,name);
         try
         {
            §!!B§ = SharedObject.getLocal("loginData");
            §!!B§.addEventListener(NetStatusEvent.NET_STATUS,this.§^!a§);
            §!!B§.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.§?!$§);
            §!!B§.addEventListener(SyncEvent.SYNC,this.§,!V§);
         }
         catch(e:*)
         {
         }
      }
      
      private function §,!V§(param1:SyncEvent) : void
      {
      }
      
      private function §?!$§(param1:AsyncErrorEvent) : void
      {
      }
      
      private function §^!a§(param1:NetStatusEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §]!9§ = new §]!Q§(this);
         §]!9§.init(§;A§.§=I§.Views.View_Login[0]);
         this.§6![§ = new §"5§(this);
         this.§ @§ = new §`§(this);
         if(!this.§5y§)
         {
            this.§%;§ = new §0!%§(§"!S§.§-!7§,"INGAME_THEME_" + int(Math.random() * 12 + 1),false,15);
         }
         else
         {
            §]!9§.getItemByName("MovieClip_LoginBackGround").setVisibility(true);
         }
         this.§%S§ = new §1F§(§]!9§);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§5y§)
         {
            §"!S§.§-!7§.§%2§(true);
            §"!S§.§-!7§.§3g§(true);
            §"!S§.§-!7§.clearLevel();
            §"!S§.§8m§(this.§%;§);
            this.§%;§.init();
            §"!S§.§-!7§.§%2§(true);
         }
         else
         {
            §"!S§.§-!7§.§%2§(false);
            §"!S§.§-!7§.§3g§(false);
            §"!S§.§99§();
         }
         this.§ @§.activate();
         this.§2!2§();
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§ @§.dispose();
      }
      
      private function §2!2§() : void
      {
         if(§<!9§)
         {
            this.§]9§();
            this.§&!+§();
            try
            {
               §!!B§.clear();
            }
            catch(e:Error)
            {
            }
            this.§>!O§ = false;
            this.§]'§ = false;
            this.§&!'§ = "";
            this.§1!a§ = "";
            this.§1Z§ = "";
            this.§+H§ = "";
         }
         §<!9§ = false;
         var localInfoFound:Boolean = this.§27§();
         if(§!!B§ && §!!B§.data && §!!B§.data.rememberMe)
         {
            this.§>!O§ = true;
         }
         this.§ @§.§+!O§();
         this.§6![§.§-!W§();
         if(this.§1!a§ && this.§&!'§)
         {
            §]!9§.setText(this.§&!'§,"TextField_UserNameField");
            §]!9§.setText(this.§1!a§,"TextField_PasswordField");
         }
         if(§,L§.§`!+§())
         {
            §]!9§.getItemByName("Button_Mute").setVisibility(true);
            §]!9§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            §,L§.§`!]§();
         }
         else
         {
            §]!9§.getItemByName("Button_Mute").setVisibility(true);
            §]!9§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         if(!localInfoFound)
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§4!@§);
         }
      }
      
      override protected function setInitialState() : void
      {
         §]!9§.getItemByName("Button_Tutorial").setVisibility(false);
         sHighscoreSidebar.enableCreditsButton(true);
         sHighscoreSidebar.enableLogOutButton(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=p§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§5y§)
         {
            §"!S§.§]O§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §=p§.STATE_STATUS_COMPLETED;
         }
         return §=p§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc4_:§4!Y§ = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SUBMIT":
               this.§ @§.§%!7§();
               break;
            case "SUBMIT_REGISTER":
               this.§6![§.§%!7§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §]!9§.getItemByName("Checkbox_RememberMe") as §4!Y§;
               this.§>!O§ = !this.§>!O§;
               if(this.§>!O§)
               {
                  _loc4_.setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§4!Y§.§=?§);
               }
               _loc4_ = §]!9§.getItemByName("Checkbox_RememberMe_Register") as §4!Y§;
               if(this.§>!O§)
               {
                  _loc4_.setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§4!Y§.§=?§);
               break;
            case "CHECKBOX_MARKETING_CHANGE":
               _loc4_ = §]!9§.getItemByName("Checkbox_Marketing") as §4!Y§;
               this.§]'§ = !this.§]'§;
               if(this.§]'§)
               {
                  _loc4_.setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§4!Y§.§=?§);
               }
               break;
            case "FORGOT_PASSWORD":
            case "LOGOUT":
               §"!b§.§1+§(§]!9§);
               break;
            case "TAB_LOGIN":
               §]!9§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
               §]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
               §]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
               §]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
               §]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
               §]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
               this.§1!D§.hide();
               this.§ @§.activate();
               break;
            case "TAB_REGISTER":
               §]!9§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
               §]!9§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
               this.§1!D§.hide();
               this.§6![§.activate();
               break;
            case "SUBMIT_PRIVACYPOLICY":
               navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
               break;
            case "SUBMIT_EULA":
               navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
         }
      }
      
      private function §27§() : Boolean
      {
         var name:String = null;
         var password:String = null;
         if(§!!B§ && §!!B§.data && §!!B§.data.id && §!!B§.data.password)
         {
            try
            {
               name = §,i§.§7!!§(§!!B§.data.id);
               password = §,i§.§7!!§(§!!B§.data.password);
            }
            catch(e:Error)
            {
            }
            §]!9§.setText(name,"TextField_UserNameField");
            §]!9§.setText(password,"TextField_PasswordField");
            this.§ @§.§%!7§();
            return true;
         }
         return false;
      }
      
      public function §=!8§(param1:String, param2:String) : void
      {
         var id:String = param1;
         var password:String = param2;
         var idLocal:String = §]!9§.getText("TextField_UserNameField");
         var passwordLocal:String = §]!9§.getText("TextField_PasswordField");
         idLocal = §,i§.§8![§(idLocal);
         passwordLocal = §,i§.§8![§(passwordLocal);
         §!!B§.data.id = idLocal;
         §!!B§.data.password = passwordLocal;
         §!!B§.data.rememberMe = this.§>!O§;
         try
         {
            §!!B§.flush();
         }
         catch(e:*)
         {
         }
      }
      
      public function §&!+§() : void
      {
         §]!9§.setText("","TextField_UserNameField");
         §]!9§.setText("","TextField_PasswordField");
         §]!9§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §]!9§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §]9§() : void
      {
         §]!9§.setText("","TextField_EmailField_Register");
         §]!9§.setText("","TextField_PasswordField_Register");
         §]!9§.setText("","TextField_PasswordFieldRepeat_Register");
         §]!9§.setText("","TextField_NickNameField_Register");
         §]!9§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §,!N§() : void
      {
         this.§&!'§ = this.§1Z§;
         this.§1!a§ = this.§+H§;
         §]!9§.setText(this.§&!'§,"TextField_UserNameField");
         §]!9§.setText(this.§1!a§,"TextField_PasswordField");
         if(this.§>!O§)
         {
            this.§=!8§(this.§&!'§,this.§1!a§);
         }
      }
      
      public function get §"!a§() : Boolean
      {
         return this.§>!O§;
      }
      
      public function get §1"§() : String
      {
         return this.§1Z§;
      }
      
      public function set §1"§(param1:String) : void
      {
         this.§1Z§ = param1;
      }
      
      public function get §4!e§() : String
      {
         return this.§+H§;
      }
      
      public function set §4!e§(param1:String) : void
      {
         this.§+H§ = param1;
      }
      
      public function get §1!D§() : §1F§
      {
         return this.§%S§;
      }
      
      public function get §[-§() : Boolean
      {
         return this.§]'§;
      }
   }
}
