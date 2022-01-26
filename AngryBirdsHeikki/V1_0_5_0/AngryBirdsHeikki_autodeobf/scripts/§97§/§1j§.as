package §97§
{
   import § !Y§.§7§;
   import § !Y§.§if§;
   import §"!G§.§#!'§;
   import §1!a§.§2!a§;
   import §1!a§.§`r§;
   import §2H§.§>!^§;
   import §3-§.§1L§;
   import §93§.§?t§;
   import §93§.§^!H§;
   import §;B§.§3!!§;
   import §;B§.§>X§;
   import §@!Y§.§-I§;
   import §[!C§.HighscoreSidebar;
   import §]c§.§6S§;
   import flash.events.AsyncErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SyncEvent;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §1j§ extends §62§
   {
      
      public static const §4l§:String = "LoginState";
      
      public static const §[!1§:String = "userLoggedIn";
      
      public static const §-s§:String = "a-z A-Z 0-9 \\-";
      
      public static const §#m§:String = "a-z A-Z 0-9";
      
      public static const §8!;§:String = "a-z     0-9  \'\\-_@.";
      
      public static const §#!,§:int = 60;
      
      private static var §`J§:SharedObject;
      
      public static var § !`§:Boolean = false;
       
      
      private var §'Z§:Boolean;
      
      private var §<C§:Boolean;
      
      private var §&0§:Boolean;
      
      private var §<!5§:String;
      
      private var §;`§:String;
      
      private var §6!+§:String;
      
      private var §%!%§:String;
      
      private var §<L§:§3!!§;
      
      private var §&$§:§>X§;
      
      private var §9u§:§#!'§ = null;
      
      private var §=!-§:§`r§;
      
      public function §1j§(param1:Boolean = false, param2:String = "LoginState")
      {
         var initObject:Boolean = param1;
         var name:String = param2;
         this.§'Z§ = !!§,-§.§6!<§ ? true : false;
         super(initObject,name);
         try
         {
            §`J§ = SharedObject.getLocal("loginData");
            §`J§.addEventListener(NetStatusEvent.NET_STATUS,this.§+E§);
            §`J§.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.§0k§);
            §`J§.addEventListener(SyncEvent.SYNC,this.§ 4§);
         }
         catch(e:*)
         {
         }
      }
      
      private function § 4§(param1:SyncEvent) : void
      {
      }
      
      private function §0k§(param1:AsyncErrorEvent) : void
      {
      }
      
      private function §+E§(param1:NetStatusEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §?P§ = new §if§(this);
         §?P§.init(§7§.§5!@§.Views.View_Login[0]);
         this.§<L§ = new §3!!§(this);
         this.§&$§ = new §>X§(this);
         if(!this.§'Z§)
         {
            this.§9u§ = new §-I§(§1L§.§"f§,"INGAME_THEME_" + int(Math.random() * 12 + 1),false,15);
         }
         else
         {
            §?P§.getItemByName("MovieClip_LoginBackGround").setVisibility(true);
         }
         this.§=!-§ = new §`r§(§?P§);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§'Z§)
         {
            §1L§.§"f§.§2!A§(true);
            §1L§.§"f§.§`f§(true);
            §1L§.§"f§.clearLevel();
            §1L§.§=c§(this.§9u§);
            this.§9u§.init();
            §1L§.§"f§.§2!A§(true);
         }
         else
         {
            §1L§.§"f§.§2!A§(false);
            §1L§.§"f§.§`f§(false);
            §1L§.§;!Q§();
         }
         this.§&$§.activate();
         this.§1+§();
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§&$§.dispose();
      }
      
      private function §1+§() : void
      {
         if(§ !`§)
         {
            this.§9!B§();
            this.§+e§();
            try
            {
               §`J§.clear();
            }
            catch(e:Error)
            {
            }
            this.§<C§ = false;
            this.§&0§ = false;
            this.§<!5§ = "";
            this.§;`§ = "";
            this.§6!+§ = "";
            this.§%!%§ = "";
         }
         § !`§ = false;
         var localInfoFound:Boolean = this.§[Z§();
         if(§`J§ && §`J§.data && §`J§.data.rememberMe)
         {
            this.§<C§ = true;
         }
         this.§&$§.§71§();
         this.§<L§.§%l§();
         if(this.§;`§ && this.§<!5§)
         {
            §?P§.setText(this.§<!5§,"TextField_UserNameField");
            §?P§.setText(this.§;`§,"TextField_PasswordField");
         }
         if(§,-§.§7G§())
         {
            §?P§.getItemByName("Button_Mute").setVisibility(true);
            §?P§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            §,-§.§"!,§();
         }
         else
         {
            §?P§.getItemByName("Button_Mute").setVisibility(true);
            §?P§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         if(!localInfoFound)
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§#W§);
         }
      }
      
      override protected function setInitialState() : void
      {
         §?P§.getItemByName("Button_Tutorial").setVisibility(false);
         sHighscoreSidebar.enableCreditsButton(true);
         sHighscoreSidebar.enableLogOutButton(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!^§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§'Z§)
         {
            §1L§.§[>§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §>!^§.STATE_STATUS_COMPLETED;
         }
         return §>!^§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!H§) : void
      {
         var _loc4_:§?t§ = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SUBMIT":
               this.§&$§.§8C§();
               break;
            case "SUBMIT_REGISTER":
               this.§<L§.§8C§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §?P§.getItemByName("Checkbox_RememberMe") as §?t§;
               this.§<C§ = !this.§<C§;
               if(this.§<C§)
               {
                  _loc4_.setComponentState(§?t§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§?t§.§5!0§);
               }
               _loc4_ = §?P§.getItemByName("Checkbox_RememberMe_Register") as §?t§;
               if(this.§<C§)
               {
                  _loc4_.setComponentState(§?t§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§?t§.§5!0§);
               break;
            case "CHECKBOX_MARKETING_CHANGE":
               _loc4_ = §?P§.getItemByName("Checkbox_Marketing") as §?t§;
               this.§&0§ = !this.§&0§;
               if(this.§&0§)
               {
                  _loc4_.setComponentState(§?t§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§?t§.§5!0§);
               }
               break;
            case "FORGOT_PASSWORD":
            case "LOGOUT":
               §6S§.§[@§(§?P§);
               break;
            case "TAB_LOGIN":
               §?P§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
               §?P§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
               §?P§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
               §?P§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
               §?P§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
               §?P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
               this.§]w§.hide();
               this.§&$§.activate();
               break;
            case "TAB_REGISTER":
               §?P§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
               §?P§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
               this.§]w§.hide();
               this.§<L§.activate();
               break;
            case "SUBMIT_PRIVACYPOLICY":
               navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
               break;
            case "SUBMIT_EULA":
               navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
         }
      }
      
      private function §[Z§() : Boolean
      {
         var name:String = null;
         var password:String = null;
         if(§`J§ && §`J§.data && §`J§.data.id && §`J§.data.password)
         {
            try
            {
               name = §2!a§.§&!4§(§`J§.data.id);
               password = §2!a§.§&!4§(§`J§.data.password);
            }
            catch(e:Error)
            {
            }
            §?P§.setText(name,"TextField_UserNameField");
            §?P§.setText(password,"TextField_PasswordField");
            this.§&$§.§8C§();
            return true;
         }
         return false;
      }
      
      public function §96§(param1:String, param2:String) : void
      {
         var id:String = param1;
         var password:String = param2;
         var idLocal:String = §?P§.getText("TextField_UserNameField");
         var passwordLocal:String = §?P§.getText("TextField_PasswordField");
         idLocal = §2!a§.§=o§(idLocal);
         passwordLocal = §2!a§.§=o§(passwordLocal);
         §`J§.data.id = idLocal;
         §`J§.data.password = passwordLocal;
         §`J§.data.rememberMe = this.§<C§;
         try
         {
            §`J§.flush();
         }
         catch(e:*)
         {
         }
      }
      
      public function §+e§() : void
      {
         §?P§.setText("","TextField_UserNameField");
         §?P§.setText("","TextField_PasswordField");
         §?P§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §?P§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §9!B§() : void
      {
         §?P§.setText("","TextField_EmailField_Register");
         §?P§.setText("","TextField_PasswordField_Register");
         §?P§.setText("","TextField_PasswordFieldRepeat_Register");
         §?P§.setText("","TextField_NickNameField_Register");
         §?P§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §?P§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §?P§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §?P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §!#§() : void
      {
         this.§<!5§ = this.§6!+§;
         this.§;`§ = this.§%!%§;
         §?P§.setText(this.§<!5§,"TextField_UserNameField");
         §?P§.setText(this.§;`§,"TextField_PasswordField");
         if(this.§<C§)
         {
            this.§96§(this.§<!5§,this.§;`§);
         }
      }
      
      public function get §+a§() : Boolean
      {
         return this.§<C§;
      }
      
      public function get §6N§() : String
      {
         return this.§6!+§;
      }
      
      public function set §6N§(param1:String) : void
      {
         this.§6!+§ = param1;
      }
      
      public function get §]!]§() : String
      {
         return this.§%!%§;
      }
      
      public function set §]!]§(param1:String) : void
      {
         this.§%!%§ = param1;
      }
      
      public function get §]w§() : §`r§
      {
         return this.§=!-§;
      }
      
      public function get §6!7§() : Boolean
      {
         return this.§&0§;
      }
   }
}
