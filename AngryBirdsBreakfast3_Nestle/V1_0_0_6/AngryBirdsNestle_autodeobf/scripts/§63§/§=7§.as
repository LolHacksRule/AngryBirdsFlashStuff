package §63§
{
   import §&_§.§+?§;
   import §'-§.§9u§;
   import §?!v§.§2" §;
   import com.angrybirds.utils.§2!n§;
   import com.angrybirds.utils.§else §;
   import flash.events.EventDispatcher;
   
   public class §=7§ extends EventDispatcher
   {
       
      
      private var §!!#§:§#!t§;
      
      private var §[!'§:§5A§;
      
      private var §""0§:§else §;
      
      private var mName:String;
      
      private var §;!U§:String;
      
      private var §8!8§:String;
      
      private var §8"+§:String;
      
      private var §?!o§:Boolean;
      
      private var §?S§:§+?§;
      
      public function §=7§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         try
         {
            this.§""0§ = §else §.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§!!#§ = new §#!t§(this);
         this.§[!'§ = new §5A§(this);
         this.§?S§ = new §+?§();
      }
      
      public function §[<§() : Boolean
      {
         if(this.§""0§ && this.§""0§.data && this.§""0§.data.id && this.§""0§.data.password && this.§""0§.data.language && this.§""0§.data.country)
         {
            if(this.§""0§.data.rememberMe)
            {
               try
               {
                  this.mName = §2!n§.§[!T§(this.§""0§.data.id);
                  this.§;!U§ = §2!n§.§[!T§(this.§""0§.data.password);
                  this.§8!8§ = §2!n§.§[!T§(this.§""0§.data.language);
                  this.§8"+§ = §2!n§.§[!T§(this.§""0§.data.country);
               }
               catch(e:Error)
               {
               }
               if(this.§""0§ && this.§""0§.data && this.§""0§.data.rememberMe)
               {
                  this.§?!o§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §#"-§() : void
      {
         this.§@!,§("","","","",false);
         try
         {
            this.§""0§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §<!7§(param1:String, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§;>§ = §9u§.NICKNAME_MISSING;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§;>§ = §9u§.PASSWORD_MISSING;
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
         var _loc8_:§2" § = new §2" §(_loc7_,AngryBirdsCustom.§'P§ + "login",this.§!!#§,§2" §.§0!<§);
         (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.openPopup(this.§?S§);
         this.§@!,§(param1,param2,param3,param4,param5);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§%"-§));
      }
      
      public function §]o§(param1:Object) : void
      {
         var _loc3_:§2" § = new §2" §(param1,AngryBirdsCustom.§'P§ + "registerPlayer",this.§[!'§,§2" §.§0!<§);
         (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.openPopup(this.§?S§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§,!0§));
      }
      
      public function §@!,§(param1:String, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var language:String = param3;
         var country:String = param4;
         var rememberMeToggled:Boolean = param5;
         newName = §2!n§.§3!P§(newName);
         newPassword = §2!n§.§3!P§(newPassword);
         language = §2!n§.§3!P§(language);
         country = §2!n§.§3!P§(country);
         this.§""0§.data.id = newName;
         this.§""0§.data.password = newPassword;
         this.§""0§.data.language = language;
         this.§""0§.data.country = country;
         this.§""0§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§""0§.flush();
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
         return this.§;!U§;
      }
      
      public function get language() : String
      {
         return this.§8!8§;
      }
      
      public function get country() : String
      {
         return this.§8"+§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§?!o§;
      }
      
      public function get §["4§() : §+?§
      {
         return this.§?S§;
      }
   }
}
