package §>I§
{
   import § !C§.§6!W§;
   import § ]§.HighscoreSidebar;
   import §"m§.§#e§;
   import §&"§.§!!_§;
   import §&V§.§4o§;
   import §&V§.§9t§;
   import §0!b§.§#!=§;
   import §9L§.§'!=§;
   import §9L§.§7!M§;
   import §?!T§.§-!7§;
   import §?!T§.§>!6§;
   import §]n§.§=!O§;
   import §^6§.§5@§;
   import §^6§.§;l§;
   import flash.events.AsyncErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SyncEvent;
   import flash.net.SharedObject;
   
   public class §1!Q§ extends §for §
   {
      
      public static const § !P§:String = "LoginState";
      
      public static const §7!]§:String = "userLoggedIn";
      
      public static const §6P§:String = "a-z A-Z 0-9 \\-_";
      
      public static const §>G§:String = "a-z A-Z 0-9";
      
      public static const §]o§:String = "a-z     0-9  \'\\-_@.";
      
      private static var §"!-§:SharedObject;
      
      public static var §6!§:Boolean = false;
       
      
      private var §?n§:Boolean;
      
      private var §-=§:Boolean;
      
      private var §%;§:String;
      
      private var §!,§:String;
      
      private var §2!!§:String;
      
      private var §'q§:String;
      
      private var §0!S§:§>!6§;
      
      private var §7!P§:§-!7§;
      
      private var §5t§:§#e§ = null;
      
      private var §<&§:§7!M§;
      
      public function §1!Q§(param1:Boolean = false, param2:String = "LoginState")
      {
         var initObject:Boolean = param1;
         var name:String = param2;
         super(initObject,name);
         try
         {
            §"!-§ = SharedObject.getLocal("loginData");
            §"!-§.addEventListener(NetStatusEvent.NET_STATUS,this.§"o§);
            §"!-§.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.§1!3§);
            §"!-§.addEventListener(SyncEvent.SYNC,this.§-![§);
         }
         catch(e:*)
         {
         }
      }
      
      private function §-![§(param1:SyncEvent) : void
      {
      }
      
      private function §1!3§(param1:AsyncErrorEvent) : void
      {
      }
      
      private function §"o§(param1:NetStatusEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §^!;§ = new §;l§(this);
         §^!;§.init(§5@§.§^!1§.Views.View_Login[0]);
         this.§0!S§ = new §>!6§(this);
         this.§7!P§ = new §-!7§(this);
         if(!§-!#§.§'!K§)
         {
            this.§5t§ = new §!!_§(§#!=§.§&![§,"INGAME_THEME_3",false,3);
         }
         else
         {
            §^!;§.getItemByName("MovieClip_LoginBackGround").setVisibility(true);
         }
         this.§<&§ = new §7!M§(§^!;§);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!§-!#§.§'!K§)
         {
            §#!=§.§&![§.§[!&§(true);
            §#!=§.§&![§.§0!D§(true);
            §#!=§.§&![§.clearLevel();
            §#!=§.§5!7§(this.§5t§);
            this.§5t§.init();
         }
         else
         {
            §#!=§.§&![§.§[!&§(false);
            §#!=§.§&![§.§0!D§(false);
            §#!=§.§8!§();
         }
         this.§7!P§.activate();
         §^!;§.container.setObjectToFront(§^!;§.getItemByName("MovieClip_LegalText"));
         this.§5!G§();
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§7!P§.dispose();
      }
      
      private function §5!G§() : void
      {
         if(§6!§)
         {
            this.§!!A§();
            this.§>!Z§();
            try
            {
               §"!-§.clear();
            }
            catch(e:Error)
            {
            }
            this.§?n§ = false;
            this.§%;§ = "";
            this.§!,§ = "";
            this.§2!!§ = "";
            this.§'q§ = "";
         }
         §6!§ = false;
         var localInfoFound:Boolean = this.§7U§();
         if(§"!-§ && §"!-§.data && §"!-§.data.rememberMe)
         {
            this.§?n§ = true;
         }
         this.§7!P§.§<1§();
         this.§0!S§.§@!T§();
         if(this.§!,§ && this.§%;§)
         {
            §^!;§.setText(this.§%;§,"TextField_UserNameField");
            §^!;§.setText(this.§!,§,"TextField_PasswordField");
         }
         if(§-!#§.§'M§())
         {
            §^!;§.getItemByName("Button_Mute").setVisibility(true);
            §^!;§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            §-!#§.§each §();
         }
         else
         {
            §^!;§.getItemByName("Button_Mute").setVisibility(true);
            §^!;§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         if(!localInfoFound)
         {
            §^c§.changeState(HighscoreSidebar.§7!3§);
         }
      }
      
      override protected function setInitialState() : void
      {
         §^c§.enableLogOutButton(false);
         §^!;§.getItemByName("Button_Credits").setVisibility(true);
         §^!;§.getItemByName("Button_Tutorial").setVisibility(false);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!W§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§-!#§.§'!K§)
         {
            §#!=§.§3!W§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §6!W§.STATE_STATUS_COMPLETED;
         }
         return §6!W§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
      {
         var _loc4_:§4o§ = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SUBMIT":
               this.§7!P§.§9_§();
               break;
            case "SUBMIT_REGISTER":
               this.§0!S§.§9_§();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §^!;§.getItemByName("Checkbox_RememberMe") as §4o§;
               this.§?n§ = !this.§?n§;
               if(this.§?n§)
               {
                  _loc4_.setComponentState(§4o§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§4o§.§3m§);
               }
               _loc4_ = §^!;§.getItemByName("Checkbox_RememberMe_Register") as §4o§;
               if(this.§?n§)
               {
                  _loc4_.setComponentState(§4o§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§4o§.§3m§);
               break;
            case "CHECKBOX_CHANGE_EMAIL":
               _loc4_ = §^!;§.getItemByName("Checkbox_CollectEmail_Register") as §4o§;
               this.§-=§ = !this.§-=§;
               if(this.§-=§)
               {
                  _loc4_.setComponentState(§4o§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§4o§.§3m§);
               }
               _loc4_ = §^!;§.getItemByName("Checkbox_CollectEmail_Register") as §4o§;
               if(this.§-=§)
               {
                  _loc4_.setComponentState(§4o§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§4o§.§3m§);
               }
               break;
            case "FORGOT_PASSWORD":
               §=!O§.§+!3§(§^!;§);
               break;
            case "TAB_LOGIN":
               this.§7!P§.activate();
               §^!;§.container.setObjectToFront(§^!;§.getItemByName("MovieClip_LegalText"));
               break;
            case "TAB_REGISTER":
               this.§0!S§.activate();
               §^!;§.container.setObjectToFront(§^!;§.getItemByName("MovieClip_LegalText"));
         }
      }
      
      private function §7U§() : Boolean
      {
         var name:String = null;
         var password:String = null;
         if(§"!-§ && §"!-§.data && §"!-§.data.id && §"!-§.data.password)
         {
            try
            {
               name = §'!=§.§4g§(§"!-§.data.id);
               password = §'!=§.§4g§(§"!-§.data.password);
            }
            catch(e:Error)
            {
            }
            §^!;§.setText(name,"TextField_UserNameField");
            §^!;§.setText(password,"TextField_PasswordField");
            this.§7!P§.§9_§();
            return true;
         }
         return false;
      }
      
      public function §`!&§(param1:String, param2:String) : void
      {
         var id:String = param1;
         var password:String = param2;
         var idLocal:String = §^!;§.getText("TextField_UserNameField");
         var passwordLocal:String = §^!;§.getText("TextField_PasswordField");
         idLocal = §'!=§.§#H§(idLocal);
         passwordLocal = §'!=§.§#H§(passwordLocal);
         §"!-§.data.id = idLocal;
         §"!-§.data.password = passwordLocal;
         §"!-§.data.rememberMe = this.§?n§;
         try
         {
            §"!-§.flush();
         }
         catch(e:*)
         {
         }
      }
      
      public function §>!Z§() : void
      {
         §^!;§.setText("","TextField_UserNameField");
         §^!;§.setText("","TextField_PasswordField");
         §^!;§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §^!;§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §!!A§() : void
      {
         §^!;§.setText("","TextField_EmailField_Register");
         §^!;§.setText("","TextField_PasswordField_Register");
         §^!;§.setText("","TextField_PasswordFieldRepeat_Register");
         §^!;§.setText("","TextField_NickNameField_Register");
         §^!;§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §^!;§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §^!;§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §^!;§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §`-§() : void
      {
         this.§%;§ = this.§2!!§;
         this.§!,§ = this.§'q§;
         §^!;§.setText(this.§%;§,"TextField_UserNameField");
         §^!;§.setText(this.§!,§,"TextField_PasswordField");
         if(this.§?n§)
         {
            this.§`!&§(this.§%;§,this.§!,§);
         }
      }
      
      private function §!&§(param1:String) : void
      {
      }
      
      public function get §5A§() : Boolean
      {
         return this.§?n§;
      }
      
      public function get §@!5§() : String
      {
         return this.§2!!§;
      }
      
      public function set §@!5§(param1:String) : void
      {
         this.§2!!§ = param1;
      }
      
      public function get §;!?§() : String
      {
         return this.§'q§;
      }
      
      public function set §;!?§(param1:String) : void
      {
         this.§'q§ = param1;
      }
      
      public function get §;!8§() : §7!M§
      {
         return this.§<&§;
      }
      
      public function get §8r§() : Boolean
      {
         return this.§-=§;
      }
   }
}
