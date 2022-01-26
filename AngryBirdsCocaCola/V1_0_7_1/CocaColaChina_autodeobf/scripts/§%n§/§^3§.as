package §%n§
{
   import §%!C§.§+!,§;
   import §%!G§.§ !G§;
   import §%!G§.§-h§;
   import §'4§.§0!D§;
   import §-v§.§,!1§;
   import §1"§.HighscoreSidebar;
   import §1J§.§ if§;
   import §1J§.§3!H§;
   import §2!$§.§#!K§;
   import §2!$§.§<!%§;
   import §6!@§.§ !!§;
   import §87§.§2'§;
   import §87§.§31§;
   import §`!+§.§,'§;
   import flash.events.AsyncErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SyncEvent;
   import flash.net.SharedObject;
   
   public class §^3§ extends §91§
   {
      
      public static const §^6§:String = "LoginState";
      
      public static const §4q§:String = "userLoggedIn";
      
      public static const §,E§:String = "a-z A-Z 0-9 \\-_";
      
      public static const §&6§:String = "a-z A-Z 0-9";
      
      public static const §0z§:String = "a-z     0-9  \'\\-_@.";
      
      private static var §1+§:SharedObject;
      
      public static var §'!V§:Boolean = false;
       
      
      private var § y§:Boolean;
      
      private var §>y§:Boolean;
      
      private var §!?§:String;
      
      private var §#!V§:String;
      
      private var §,,§:String;
      
      private var §%T§:String;
      
      private var §"+§:§ if§;
      
      private var §-!M§:§3!H§;
      
      private var §!2§:§,'§ = null;
      
      private var §;F§:§31§;
      
      public function §^3§(param1:Boolean = false, param2:String = "LoginState")
      {
         var initObject:Boolean = param1;
         var name:String = param2;
         super(initObject,name);
         try
         {
            §1+§ = SharedObject.getLocal("loginData");
            §1+§.addEventListener(NetStatusEvent.NET_STATUS,this.§5!U§);
            §1+§.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.§+-§);
            §1+§.addEventListener(SyncEvent.SYNC,this.§'5§);
         }
         catch(e:*)
         {
         }
      }
      
      private function §'5§(param1:SyncEvent) : void
      {
      }
      
      private function §+-§(param1:AsyncErrorEvent) : void
      {
      }
      
      private function §5!U§(param1:NetStatusEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §5!R§ = new § !G§(this);
         §5!R§.init(§-h§.§#z§.Views.View_Login[0]);
         this.§"+§ = new § if§(this);
         this.§-!M§ = new §3!H§(this);
         if(!§"!@§.§2_§)
         {
            this.§!2§ = new §+!,§(§,!1§.§2T§,"INGAME_THEME_3",false,3);
         }
         else
         {
            §5!R§.getItemByName("MovieClip_LoginBackGround").setVisibility(true);
         }
         this.§;F§ = new §31§(§5!R§);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!§"!@§.§2_§)
         {
            §,!1§.§2T§.§=!H§(true);
            §,!1§.§2T§.§&c§(true);
            §,!1§.§2T§.clearLevel();
            §,!1§.§2!L§(this.§!2§);
            this.§!2§.init();
         }
         else
         {
            §,!1§.§2T§.§=!H§(false);
            §,!1§.§2T§.§&c§(false);
            §,!1§.§]w§();
         }
         this.§-!M§.activate();
         §5!R§.container.setObjectToFront(§5!R§.getItemByName("MovieClip_LegalText"));
         this.§@!,§();
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§-!M§.dispose();
      }
      
      private function §@!,§() : void
      {
         if(§'!V§)
         {
            this.§5!Y§();
            this.§;E§();
            try
            {
               §1+§.clear();
            }
            catch(e:Error)
            {
            }
            this.§ y§ = false;
            this.§!?§ = "";
            this.§#!V§ = "";
            this.§,,§ = "";
            this.§%T§ = "";
         }
         §'!V§ = false;
         var localInfoFound:Boolean = this.§&K§();
         if(§1+§ && §1+§.data && §1+§.data.rememberMe)
         {
            this.§ y§ = true;
         }
         this.§-!M§.§@!<§();
         this.§"+§.§9-§();
         if(this.§#!V§ && this.§!?§)
         {
            §5!R§.setText(this.§!?§,"TextField_UserNameField");
            §5!R§.setText(this.§#!V§,"TextField_PasswordField");
         }
         if(§"!@§.§8!I§())
         {
            §5!R§.getItemByName("Button_Mute").setVisibility(true);
            §5!R§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            §"!@§.§6t§();
         }
         else
         {
            §5!R§.getItemByName("Button_Mute").setVisibility(true);
            §5!R§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         if(!localInfoFound)
         {
            §'! §.changeState(HighscoreSidebar.§^@§);
         }
      }
      
      override protected function setInitialState() : void
      {
         §'! §.enableLogOutButton(false);
         §5!R§.getItemByName("Button_Credits").setVisibility(true);
         §5!R§.getItemByName("Button_Tutorial").setVisibility(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§"!@§.§2_§)
         {
            §,!1§.§>o§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return § !!§.STATE_STATUS_COMPLETED;
         }
         return § !!§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!%§) : void
      {
         var _loc4_:§#!K§ = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SUBMIT":
               this.§-!M§.§]b§();
               break;
            case "SUBMIT_REGISTER":
               this.§"+§.§]b§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §5!R§.getItemByName("Checkbox_RememberMe") as §#!K§;
               this.§ y§ = !this.§ y§;
               if(this.§ y§)
               {
                  _loc4_.setComponentState(§#!K§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§#!K§.§8!O§);
               }
               _loc4_ = §5!R§.getItemByName("Checkbox_RememberMe_Register") as §#!K§;
               if(this.§ y§)
               {
                  _loc4_.setComponentState(§#!K§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§#!K§.§8!O§);
               break;
            case "CHECKBOX_CHANGE_EMAIL":
               _loc4_ = §5!R§.getItemByName("Checkbox_CollectEmail_Register") as §#!K§;
               this.§>y§ = !this.§>y§;
               if(this.§>y§)
               {
                  _loc4_.setComponentState(§#!K§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§#!K§.§8!O§);
               }
               _loc4_ = §5!R§.getItemByName("Checkbox_CollectEmail_Register") as §#!K§;
               if(this.§>y§)
               {
                  _loc4_.setComponentState(§#!K§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§#!K§.§8!O§);
               }
               break;
            case "FORGOT_PASSWORD":
               §0!D§.§>r§(§5!R§);
               break;
            case "TAB_LOGIN":
               this.§-!M§.activate();
               §5!R§.container.setObjectToFront(§5!R§.getItemByName("MovieClip_LegalText"));
               break;
            case "TAB_REGISTER":
               this.§"+§.activate();
               §5!R§.container.setObjectToFront(§5!R§.getItemByName("MovieClip_LegalText"));
         }
      }
      
      private function §&K§() : Boolean
      {
         var name:String = null;
         var password:String = null;
         if(§1+§ && §1+§.data && §1+§.data.id && §1+§.data.password)
         {
            try
            {
               name = §2'§.§<V§(§1+§.data.id);
               password = §2'§.§<V§(§1+§.data.password);
            }
            catch(e:Error)
            {
            }
            §5!R§.setText(name,"TextField_UserNameField");
            §5!R§.setText(password,"TextField_PasswordField");
            this.§-!M§.§]b§();
            return true;
         }
         return false;
      }
      
      public function §>!U§(param1:String, param2:String) : void
      {
         var id:String = param1;
         var password:String = param2;
         var idLocal:String = §5!R§.getText("TextField_UserNameField");
         var passwordLocal:String = §5!R§.getText("TextField_PasswordField");
         idLocal = §2'§.§?!8§(idLocal);
         passwordLocal = §2'§.§?!8§(passwordLocal);
         §1+§.data.id = idLocal;
         §1+§.data.password = passwordLocal;
         §1+§.data.rememberMe = this.§ y§;
         try
         {
            §1+§.flush();
         }
         catch(e:*)
         {
         }
      }
      
      public function §;E§() : void
      {
         §5!R§.setText("","TextField_UserNameField");
         §5!R§.setText("","TextField_PasswordField");
         §5!R§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §5!R§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §5!Y§() : void
      {
         §5!R§.setText("","TextField_EmailField_Register");
         §5!R§.setText("","TextField_PasswordField_Register");
         §5!R§.setText("","TextField_PasswordFieldRepeat_Register");
         §5!R§.setText("","TextField_NickNameField_Register");
         §5!R§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §5!R§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §5!R§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §5!R§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §3;§() : void
      {
         this.§!?§ = this.§,,§;
         this.§#!V§ = this.§%T§;
         §5!R§.setText(this.§!?§,"TextField_UserNameField");
         §5!R§.setText(this.§#!V§,"TextField_PasswordField");
         if(this.§ y§)
         {
            this.§>!U§(this.§!?§,this.§#!V§);
         }
      }
      
      private function §4=§(param1:String) : void
      {
      }
      
      public function get §#p§() : Boolean
      {
         return this.§ y§;
      }
      
      public function get §!y§() : String
      {
         return this.§,,§;
      }
      
      public function set §!y§(param1:String) : void
      {
         this.§,,§ = param1;
      }
      
      public function get §]6§() : String
      {
         return this.§%T§;
      }
      
      public function set §]6§(param1:String) : void
      {
         this.§%T§ = param1;
      }
      
      public function get § A§() : §31§
      {
         return this.§;F§;
      }
      
      public function get §7u§() : Boolean
      {
         return this.§>y§;
      }
   }
}
