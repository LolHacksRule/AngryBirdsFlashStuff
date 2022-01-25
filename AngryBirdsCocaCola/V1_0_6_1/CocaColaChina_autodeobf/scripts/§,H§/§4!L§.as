package §,H§
{
   import §!N§.§68§;
   import §%3§.§7b§;
   import §%3§.§>!A§;
   import §+!6§.HighscoreSidebar;
   import §+n§.§;!+§;
   import §+n§.§^"§;
   import §7!H§.§12§;
   import §7!H§.§`f§;
   import §8!E§.§8l§;
   import §8!E§.native;
   import §;A§.§7!K§;
   import §=!#§.§4i§;
   import §@W§.§2!_§;
   import §^!&§.§?!N§;
   import flash.events.AsyncErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SyncEvent;
   import flash.net.SharedObject;
   
   public class §4!L§ extends §1!a§
   {
      
      public static const §^!O§:String = "LoginState";
      
      public static const §42§:String = "userLoggedIn";
      
      public static const §%B§:String = "a-z A-Z 0-9 \\-_";
      
      public static const §=<§:String = "a-z A-Z 0-9";
      
      public static const §7!Q§:String = "a-z     0-9  \'\\-_@.";
      
      private static var §2!'§:SharedObject;
      
      public static var §"=§:Boolean = false;
       
      
      private var §3!<§:Boolean;
      
      private var §=!R§:Boolean;
      
      private var §-B§:String;
      
      private var §2!#§:String;
      
      private var §;l§:String;
      
      private var §8!O§:String;
      
      private var §9!F§:native;
      
      private var §`8§:§8l§;
      
      private var §0t§:§?!N§ = null;
      
      private var §`!8§:§;!+§;
      
      public function §4!L§(param1:Boolean = false, param2:String = "LoginState")
      {
         var initObject:Boolean = param1;
         var name:String = param2;
         super(initObject,name);
         try
         {
            §2!'§ = SharedObject.getLocal("loginData");
            §2!'§.addEventListener(NetStatusEvent.NET_STATUS,this.§"f§);
            §2!'§.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.§,g§);
            §2!'§.addEventListener(SyncEvent.SYNC,this.§!!"§);
         }
         catch(e:*)
         {
         }
      }
      
      private function §!!"§(param1:SyncEvent) : void
      {
      }
      
      private function §,g§(param1:AsyncErrorEvent) : void
      {
      }
      
      private function §"f§(param1:NetStatusEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §=!I§ = new §7b§(this);
         §=!I§.init(§>!A§.§;&§.Views.View_Login[0]);
         this.§9!F§ = new native(this);
         this.§`8§ = new §8l§(this);
         if(!§6T§.§'w§)
         {
            this.§0t§ = new §68§(§7!K§.§=j§,"INGAME_THEME_3",false,3);
         }
         else
         {
            §=!I§.getItemByName("MovieClip_LoginBackGround").setVisibility(true);
         }
         this.§`!8§ = new §;!+§(§=!I§);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!§6T§.§'w§)
         {
            §7!K§.§=j§.§ i§(true);
            §7!K§.§=j§.§6z§(true);
            §7!K§.§=j§.clearLevel();
            §7!K§.§,'§(this.§0t§);
            this.§0t§.init();
         }
         else
         {
            §7!K§.§=j§.§ i§(false);
            §7!K§.§=j§.§6z§(false);
            §7!K§.§]T§();
         }
         this.§`8§.activate();
         §=!I§.container.setObjectToFront(§=!I§.getItemByName("MovieClip_LegalText"));
         this.§-!L§();
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§`8§.dispose();
      }
      
      private function §-!L§() : void
      {
         if(§"=§)
         {
            this.§[i§();
            this.§1w§();
            try
            {
               §2!'§.clear();
            }
            catch(e:Error)
            {
            }
            this.§3!<§ = false;
            this.§-B§ = "";
            this.§2!#§ = "";
            this.§;l§ = "";
            this.§8!O§ = "";
         }
         §"=§ = false;
         var localInfoFound:Boolean = this.§,!^§();
         if(§2!'§ && §2!'§.data && §2!'§.data.rememberMe)
         {
            this.§3!<§ = true;
         }
         this.§`8§.§#!N§();
         this.§9!F§.§%!N§();
         if(this.§2!#§ && this.§-B§)
         {
            §=!I§.setText(this.§-B§,"TextField_UserNameField");
            §=!I§.setText(this.§2!#§,"TextField_PasswordField");
         }
         if(§6T§.§=_§())
         {
            §=!I§.getItemByName("Button_Mute").setVisibility(true);
            §=!I§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            §6T§.§"t§();
         }
         else
         {
            §=!I§.getItemByName("Button_Mute").setVisibility(true);
            §=!I§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         if(!localInfoFound)
         {
            §+D§.changeState(HighscoreSidebar.§#P§);
         }
      }
      
      override protected function setInitialState() : void
      {
         §+D§.enableLogOutButton(false);
         §=!I§.getItemByName("Button_Credits").setVisibility(true);
         §=!I§.getItemByName("Button_Tutorial").setVisibility(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2!_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§6T§.§'w§)
         {
            §7!K§.§0!9§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §2!_§.STATE_STATUS_COMPLETED;
         }
         return §2!_§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
      {
         var _loc4_:§`f§ = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SUBMIT":
               this.§`8§.§-O§();
               break;
            case "SUBMIT_REGISTER":
               this.§9!F§.§-O§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §=!I§.getItemByName("Checkbox_RememberMe") as §`f§;
               this.§3!<§ = !this.§3!<§;
               if(this.§3!<§)
               {
                  _loc4_.setComponentState(§`f§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§`f§.§'2§);
               }
               _loc4_ = §=!I§.getItemByName("Checkbox_RememberMe_Register") as §`f§;
               if(this.§3!<§)
               {
                  _loc4_.setComponentState(§`f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§`f§.§'2§);
               break;
            case "CHECKBOX_CHANGE_EMAIL":
               _loc4_ = §=!I§.getItemByName("Checkbox_CollectEmail_Register") as §`f§;
               this.§=!R§ = !this.§=!R§;
               if(this.§=!R§)
               {
                  _loc4_.setComponentState(§`f§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§`f§.§'2§);
               }
               _loc4_ = §=!I§.getItemByName("Checkbox_CollectEmail_Register") as §`f§;
               if(this.§=!R§)
               {
                  _loc4_.setComponentState(§`f§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§`f§.§'2§);
               }
               break;
            case "FORGOT_PASSWORD":
               §4i§.§#T§(§=!I§);
               break;
            case "TAB_LOGIN":
               this.§`8§.activate();
               §=!I§.container.setObjectToFront(§=!I§.getItemByName("MovieClip_LegalText"));
               break;
            case "TAB_REGISTER":
               this.§9!F§.activate();
               §=!I§.container.setObjectToFront(§=!I§.getItemByName("MovieClip_LegalText"));
         }
      }
      
      private function §,!^§() : Boolean
      {
         var name:String = null;
         var password:String = null;
         if(§2!'§ && §2!'§.data && §2!'§.data.id && §2!'§.data.password)
         {
            try
            {
               name = §^"§.§=!N§(§2!'§.data.id);
               password = §^"§.§=!N§(§2!'§.data.password);
            }
            catch(e:Error)
            {
            }
            §=!I§.setText(name,"TextField_UserNameField");
            §=!I§.setText(password,"TextField_PasswordField");
            this.§`8§.§-O§();
            return true;
         }
         return false;
      }
      
      public function §@!R§(param1:String, param2:String) : void
      {
         var id:String = param1;
         var password:String = param2;
         var idLocal:String = §=!I§.getText("TextField_UserNameField");
         var passwordLocal:String = §=!I§.getText("TextField_PasswordField");
         idLocal = §^"§.§"!=§(idLocal);
         passwordLocal = §^"§.§"!=§(passwordLocal);
         §2!'§.data.id = idLocal;
         §2!'§.data.password = passwordLocal;
         §2!'§.data.rememberMe = this.§3!<§;
         try
         {
            §2!'§.flush();
         }
         catch(e:*)
         {
         }
      }
      
      public function §1w§() : void
      {
         §=!I§.setText("","TextField_UserNameField");
         §=!I§.setText("","TextField_PasswordField");
         §=!I§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §=!I§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §[i§() : void
      {
         §=!I§.setText("","TextField_EmailField_Register");
         §=!I§.setText("","TextField_PasswordField_Register");
         §=!I§.setText("","TextField_PasswordFieldRepeat_Register");
         §=!I§.setText("","TextField_NickNameField_Register");
         §=!I§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §=!I§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §=!I§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §=!I§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §-1§() : void
      {
         this.§-B§ = this.§;l§;
         this.§2!#§ = this.§8!O§;
         §=!I§.setText(this.§-B§,"TextField_UserNameField");
         §=!I§.setText(this.§2!#§,"TextField_PasswordField");
         if(this.§3!<§)
         {
            this.§@!R§(this.§-B§,this.§2!#§);
         }
      }
      
      private function §,!9§(param1:String) : void
      {
      }
      
      public function get §1!]§() : Boolean
      {
         return this.§3!<§;
      }
      
      public function get §-!"§() : String
      {
         return this.§;l§;
      }
      
      public function set §-!"§(param1:String) : void
      {
         this.§;l§ = param1;
      }
      
      public function get §5!"§() : String
      {
         return this.§8!O§;
      }
      
      public function set §5!"§(param1:String) : void
      {
         this.§8!O§ = param1;
      }
      
      public function get § C§() : §;!+§
      {
         return this.§`!8§;
      }
      
      public function get §!!J§() : Boolean
      {
         return this.§=!R§;
      }
   }
}
