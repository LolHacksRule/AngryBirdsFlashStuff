package §%n§
{
   import § C§.§ !X§;
   import § C§.§?!8§;
   import §&a§.§1!Y§;
   import §-v§.§,!1§;
   import §2"§.§#!P§;
   import §32§.HighscoreSidebar;
   import §6!@§.§ !!§;
   import §7]§.§8N§;
   import §7]§.§;T§;
   import §]b§.§>!L§;
   import §]b§.§^!!§;
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
      
      private var §"+§:§>!L§;
      
      private var §-!M§:§^!!§;
      
      private var §!2§:§,'§ = null;
      
      private var §;F§:§ !X§;
      
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
         §5!R§ = new §^R§(this);
         §5!R§.init(§7!^§.§`!E§.Views.View_Login[0]);
         this.§"+§ = new §>!L§(this);
         this.§-!M§ = new §^!!§(this);
         if(!§"!@§.§];§)
         {
            this.§!2§ = new §1!Y§(§,!1§.§2T§,"INGAME_THEME_3",false,3);
         }
         else
         {
            §5!R§.getItemByName("MovieClip_LoginBackGround").setVisibility(true);
         }
         this.§;F§ = new § !X§(§5!R§);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!§"!@§.§];§)
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
         this.§-!M§.§%P§();
         this.§"+§.§,k§();
         if(this.§#!V§ && this.§!?§)
         {
            §5!R§.setText(this.§!?§,"TextField_UserNameField");
            §5!R§.setText(this.§#!V§,"TextField_PasswordField");
         }
         if(§"!@§.§6t§())
         {
            §5!R§.getItemByName("Button_Mute").setVisibility(true);
            §5!R§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            §"!@§.§>!$§();
         }
         else
         {
            §5!R§.getItemByName("Button_Mute").setVisibility(true);
            §5!R§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         if(!localInfoFound)
         {
            §'! §.changeState(HighscoreSidebar.§!!;§);
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
         if(!§"!@§.§];§)
         {
            §,!1§.§>o§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return § !!§.STATE_STATUS_COMPLETED;
         }
         return § !!§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;T§) : void
      {
         var _loc4_:§8N§ = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SUBMIT":
               this.§-!M§.§%!X§();
               break;
            case "SUBMIT_REGISTER":
               this.§"+§.§%!X§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §5!R§.getItemByName("Checkbox_RememberMe") as §8N§;
               this.§ y§ = !this.§ y§;
               if(this.§ y§)
               {
                  _loc4_.setComponentState(§8N§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§8N§.§9L§);
               }
               _loc4_ = §5!R§.getItemByName("Checkbox_RememberMe_Register") as §8N§;
               if(this.§ y§)
               {
                  _loc4_.setComponentState(§8N§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§8N§.§9L§);
               break;
            case "CHECKBOX_CHANGE_EMAIL":
               _loc4_ = §5!R§.getItemByName("Checkbox_CollectEmail_Register") as §8N§;
               this.§>y§ = !this.§>y§;
               if(this.§>y§)
               {
                  _loc4_.setComponentState(§8N§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§8N§.§9L§);
               }
               _loc4_ = §5!R§.getItemByName("Checkbox_CollectEmail_Register") as §8N§;
               if(this.§>y§)
               {
                  _loc4_.setComponentState(§8N§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§8N§.§9L§);
               }
               break;
            case "FORGOT_PASSWORD":
               §#!P§.§@;§(§5!R§);
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
               name = §?!8§.§31§(§1+§.data.id);
               password = §?!8§.§31§(§1+§.data.password);
            }
            catch(e:Error)
            {
            }
            §5!R§.setText(name,"TextField_UserNameField");
            §5!R§.setText(password,"TextField_PasswordField");
            this.§-!M§.§%!X§();
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
         idLocal = §?!8§.§<V§(idLocal);
         passwordLocal = §?!8§.§<V§(passwordLocal);
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
      
      public function get § A§() : § !X§
      {
         return this.§;F§;
      }
      
      public function get §7u§() : Boolean
      {
         return this.§>y§;
      }
   }
}
