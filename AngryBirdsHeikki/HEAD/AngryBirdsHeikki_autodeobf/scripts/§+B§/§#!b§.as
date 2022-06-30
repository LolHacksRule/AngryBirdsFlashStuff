package §+B§
{
   import §'!F§.§>1§;
   import §+!M§.§7!0§;
   import §+!M§.§^<§;
   import §,!V§.§5!-§;
   import §-!f§.§ else§;
   import §-!f§.§=T§;
   import §0!X§.§ !P§;
   import §0!X§.§&!4§;
   import §8O§.§&#§;
   import §9!E§.§'!U§;
   import §=!§.HighscoreSidebar;
   import §>!G§.§6!9§;
   import §@!;§.§+c§;
   import §@!;§.§4,§;
   import flash.events.AsyncErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SyncEvent;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §#!b§ extends §-2§
   {
      
      public static const §[!%§:String = "LoginState";
      
      public static const §<!Y§:String = "userLoggedIn";
      
      public static const §8W§:String = "a-z A-Z 0-9 \\-";
      
      public static const §2!^§:String = "a-z A-Z 0-9";
      
      public static const §;!0§:String = "a-z     0-9  \'\\-_@.";
      
      public static const §&"§:int = 60;
      
      private static var §4!N§:SharedObject;
      
      public static var §7b§:Boolean = false;
       
      
      private var § N§:Boolean;
      
      private var § !M§:Boolean;
      
      private var §]3§:Boolean;
      
      private var §4m§:String;
      
      private var §'!_§:String;
      
      private var §2!A§:String;
      
      private var §>g§:String;
      
      private var §+`§:§4,§;
      
      private var §`!1§:§+c§;
      
      private var §-&§:§5!-§ = null;
      
      private var §0J§:§&!4§;
      
      public function §#!b§(param1:Boolean = false, param2:String = "LoginState")
      {
         var initObject:Boolean = param1;
         var name:String = param2;
         this.§ N§ = !!§"!R§.§"!Z§ ? true : false;
         super(initObject,name);
         try
         {
            §4!N§ = SharedObject.getLocal("loginData");
            §4!N§.addEventListener(NetStatusEvent.NET_STATUS,this.§>H§);
            §4!N§.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.§7!B§);
            §4!N§.addEventListener(SyncEvent.SYNC,this.§%!B§);
         }
         catch(e:*)
         {
         }
      }
      
      private function §%!B§(param1:SyncEvent) : void
      {
      }
      
      private function §7!B§(param1:AsyncErrorEvent) : void
      {
      }
      
      private function §>H§(param1:NetStatusEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         § ,§ = new § else§(this);
         § ,§.init(§=T§.§2,§.Views.View_Login[0]);
         this.§+`§ = new §4,§(this);
         this.§`!1§ = new §+c§(this);
         if(!this.§ N§)
         {
            this.§-&§ = new §'!U§(§&#§.§3!D§,"INGAME_THEME_" + int(Math.random() * 12 + 1),false,15);
         }
         else
         {
            § ,§.getItemByName("MovieClip_LoginBackGround").setVisibility(true);
         }
         this.§0J§ = new §&!4§(§ ,§);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§ N§)
         {
            §&#§.§3!D§.§"!E§(true);
            §&#§.§3!D§.§>!?§(true);
            §&#§.§3!D§.clearLevel();
            §&#§.§>A§(this.§-&§);
            this.§-&§.init();
            §&#§.§3!D§.§"!E§(true);
         }
         else
         {
            §&#§.§3!D§.§"!E§(false);
            §&#§.§3!D§.§>!?§(false);
            §&#§.§?p§();
         }
         this.§`!1§.activate();
         this.§=+§();
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§`!1§.dispose();
      }
      
      private function §=+§() : void
      {
         if(§7b§)
         {
            this.§"&§();
            this.§%%§();
            try
            {
               §4!N§.clear();
            }
            catch(e:Error)
            {
            }
            this.§ !M§ = false;
            this.§]3§ = false;
            this.§4m§ = "";
            this.§'!_§ = "";
            this.§2!A§ = "";
            this.§>g§ = "";
         }
         §7b§ = false;
         var localInfoFound:Boolean = this.§@s§();
         if(§4!N§ && §4!N§.data && §4!N§.data.rememberMe)
         {
            this.§ !M§ = true;
         }
         this.§`!1§.§>3§();
         this.§+`§.§ !U§();
         if(this.§'!_§ && this.§4m§)
         {
            § ,§.setText(this.§4m§,"TextField_UserNameField");
            § ,§.setText(this.§'!_§,"TextField_PasswordField");
         }
         if(§"!R§.§@!<§())
         {
            § ,§.getItemByName("Button_Mute").setVisibility(true);
            § ,§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            §"!R§.§1P§();
         }
         else
         {
            § ,§.getItemByName("Button_Mute").setVisibility(true);
            § ,§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         if(!localInfoFound)
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§^]§);
         }
      }
      
      override protected function setInitialState() : void
      {
         § ,§.getItemByName("Button_Tutorial").setVisibility(false);
         sHighscoreSidebar.enableCreditsButton(true);
         sHighscoreSidebar.enableLogOutButton(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!9§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§ N§)
         {
            §&#§.§"1§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §6!9§.STATE_STATUS_COMPLETED;
         }
         return §6!9§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!0§) : void
      {
         var _loc4_:§^<§ = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SUBMIT":
               this.§`!1§.§;u§();
               break;
            case "SUBMIT_REGISTER":
               this.§+`§.§;u§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = § ,§.getItemByName("Checkbox_RememberMe") as §^<§;
               this.§ !M§ = !this.§ !M§;
               if(this.§ !M§)
               {
                  _loc4_.setComponentState(§^<§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§^<§.§0!b§);
               }
               _loc4_ = § ,§.getItemByName("Checkbox_RememberMe_Register") as §^<§;
               if(this.§ !M§)
               {
                  _loc4_.setComponentState(§^<§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§^<§.§0!b§);
               break;
            case "CHECKBOX_MARKETING_CHANGE":
               _loc4_ = § ,§.getItemByName("Checkbox_Marketing") as §^<§;
               this.§]3§ = !this.§]3§;
               if(this.§]3§)
               {
                  _loc4_.setComponentState(§^<§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§^<§.§0!b§);
               }
               break;
            case "FORGOT_PASSWORD":
            case "LOGOUT":
               §>1§.§%!=§(§ ,§);
               break;
            case "TAB_LOGIN":
               § ,§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
               § ,§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
               § ,§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
               § ,§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
               § ,§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
               § ,§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
               this.§1!!§.hide();
               this.§`!1§.activate();
               break;
            case "TAB_REGISTER":
               § ,§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
               § ,§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
               this.§1!!§.hide();
               this.§+`§.activate();
               break;
            case "SUBMIT_PRIVACYPOLICY":
               navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
               break;
            case "SUBMIT_EULA":
               navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
         }
      }
      
      private function §@s§() : Boolean
      {
         var name:String = null;
         var password:String = null;
         if(§4!N§ && §4!N§.data && §4!N§.data.id && §4!N§.data.password)
         {
            try
            {
               name = § !P§.§[o§(§4!N§.data.id);
               password = § !P§.§[o§(§4!N§.data.password);
            }
            catch(e:Error)
            {
            }
            § ,§.setText(name,"TextField_UserNameField");
            § ,§.setText(password,"TextField_PasswordField");
            this.§`!1§.§;u§();
            return true;
         }
         return false;
      }
      
      public function §5I§(param1:String, param2:String) : void
      {
         var id:String = param1;
         var password:String = param2;
         var idLocal:String = § ,§.getText("TextField_UserNameField");
         var passwordLocal:String = § ,§.getText("TextField_PasswordField");
         idLocal = § !P§.§,!=§(idLocal);
         passwordLocal = § !P§.§,!=§(passwordLocal);
         §4!N§.data.id = idLocal;
         §4!N§.data.password = passwordLocal;
         §4!N§.data.rememberMe = this.§ !M§;
         try
         {
            §4!N§.flush();
         }
         catch(e:*)
         {
         }
      }
      
      public function §%%§() : void
      {
         § ,§.setText("","TextField_UserNameField");
         § ,§.setText("","TextField_PasswordField");
         § ,§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         § ,§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §"&§() : void
      {
         § ,§.setText("","TextField_EmailField_Register");
         § ,§.setText("","TextField_PasswordField_Register");
         § ,§.setText("","TextField_PasswordFieldRepeat_Register");
         § ,§.setText("","TextField_NickNameField_Register");
         § ,§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         § ,§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         § ,§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         § ,§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §+a§() : void
      {
         this.§4m§ = this.§2!A§;
         this.§'!_§ = this.§>g§;
         § ,§.setText(this.§4m§,"TextField_UserNameField");
         § ,§.setText(this.§'!_§,"TextField_PasswordField");
         if(this.§ !M§)
         {
            this.§5I§(this.§4m§,this.§'!_§);
         }
      }
      
      public function get §8m§() : Boolean
      {
         return this.§ !M§;
      }
      
      public function get §7!7§() : String
      {
         return this.§2!A§;
      }
      
      public function set §7!7§(param1:String) : void
      {
         this.§2!A§ = param1;
      }
      
      public function get §8!L§() : String
      {
         return this.§>g§;
      }
      
      public function set §8!L§(param1:String) : void
      {
         this.§>g§ = param1;
      }
      
      public function get §1!!§() : §&!4§
      {
         return this.§0J§;
      }
      
      public function get §7h§() : Boolean
      {
         return this.§]3§;
      }
   }
}
