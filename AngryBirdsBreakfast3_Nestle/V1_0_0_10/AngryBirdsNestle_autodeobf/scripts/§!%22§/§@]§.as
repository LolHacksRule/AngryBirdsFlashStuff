package §!"§
{
   import §2!,§.§5f§;
   import §?u§.§48§;
   import §^>§.§2"&§;
   import com.angrybirds.utils.§]!+§;
   import com.angrybirds.utils.§^§;
   import flash.events.EventDispatcher;
   
   public class §@]§ extends EventDispatcher
   {
       
      
      private var §%B§:§]!z§;
      
      private var §9N§:§>!Q§;
      
      private var §9'§:§]!+§;
      
      private var mName:String;
      
      private var §9" §:String;
      
      private var §^!p§:String;
      
      private var §7Q§:String;
      
      private var §0t§:Boolean;
      
      private var §7!,§:§5f§;
      
      public function §@]§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         try
         {
            this.§9'§ = §]!+§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§%B§ = new §]!z§(this);
         this.§9N§ = new §>!Q§(this);
         this.§7!,§ = new §5f§();
      }
      
      public function §[!l§() : Boolean
      {
         if(this.§9'§ && this.§9'§.data && this.§9'§.data.id && this.§9'§.data.password && this.§9'§.data.language && this.§9'§.data.country)
         {
            if(this.§9'§.data.rememberMe)
            {
               try
               {
                  this.mName = §^§.§-!B§(this.§9'§.data.id);
                  this.§9" § = §^§.§-!B§(this.§9'§.data.password);
                  this.§^!p§ = §^§.§-!B§(this.§9'§.data.language);
                  this.§7Q§ = §^§.§-!B§(this.§9'§.data.country);
               }
               catch(e:Error)
               {
               }
               if(this.§9'§ && this.§9'§.data && this.§9'§.data.rememberMe)
               {
                  this.§0t§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §!!<§() : void
      {
         this.§!!q§("","","","",false);
         try
         {
            this.§9'§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §>"6§(param1:String, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§@I§ = §2"&§.NICKNAME_MISSING;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§@I§ = §2"&§.PASSWORD_MISSING;
            dispatchEvent(_loc9_);
            return;
         }
         var _loc7_:Object = {
            "type":"login",
            "nickName":param1,
            "password":param2,
            "locale":param4,
            "language":param3
         };
         var _loc8_:§48§ = new §48§(_loc7_,AngryBirdsCustom.§8!O§ + "login",this.§%B§,§48§.§6!^§);
         (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.openPopup(this.§7!,§);
         this.§!!q§(param1,param2,param3,param4,param5);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§,_§));
      }
      
      public function §1a§(param1:Object) : void
      {
         var _loc3_:§48§ = new §48§(param1,AngryBirdsCustom.§8!O§ + "registerPlayer",this.§9N§,§48§.§6!^§);
         (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.openPopup(this.§7!,§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§7&§));
      }
      
      public function §!!q§(param1:String, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var language:String = param3;
         var country:String = param4;
         var rememberMeToggled:Boolean = param5;
         newName = §^§.§?n§(newName);
         newPassword = §^§.§?n§(newPassword);
         language = §^§.§?n§(language);
         country = §^§.§?n§(country);
         this.§9'§.data.id = newName;
         this.§9'§.data.password = newPassword;
         this.§9'§.data.language = language;
         this.§9'§.data.country = country;
         this.§9'§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§9'§.flush();
         }
         catch(e:*)
         {
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get password() : String
      {
         return this.§9" §;
      }
      
      public function get language() : String
      {
         return this.§^!p§;
      }
      
      public function get country() : String
      {
         return this.§7Q§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§0t§;
      }
      
      public function get §?Q§() : §5f§
      {
         return this.§7!,§;
      }
   }
}
