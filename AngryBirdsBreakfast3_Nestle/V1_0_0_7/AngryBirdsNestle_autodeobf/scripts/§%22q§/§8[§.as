package §"q§
{
   import §3@§.§=W§;
   import §;!y§.§4![§;
   import §@!l§.§0d§;
   import com.angrybirds.utils.§#!y§;
   import com.angrybirds.utils.§-h§;
   import flash.events.EventDispatcher;
   
   public class §8[§ extends EventDispatcher
   {
       
      
      private var §!!B§:§3!e§;
      
      private var §&>§:§@" §;
      
      private var §7!-§:§#!y§;
      
      private var mName:String;
      
      private var §-!P§:String;
      
      private var §7>§:String;
      
      private var §"!v§:String;
      
      private var §;"5§:Boolean;
      
      private var §]!I§:§0d§;
      
      public function §8[§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         try
         {
            this.§7!-§ = §#!y§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§!!B§ = new §3!e§(this);
         this.§&>§ = new §@" §(this);
         this.§]!I§ = new §0d§();
      }
      
      public function §^l§() : Boolean
      {
         if(this.§7!-§ && this.§7!-§.data && this.§7!-§.data.id && this.§7!-§.data.password && this.§7!-§.data.language && this.§7!-§.data.country)
         {
            if(this.§7!-§.data.rememberMe)
            {
               try
               {
                  this.mName = §-h§.§^T§(this.§7!-§.data.id);
                  this.§-!P§ = §-h§.§^T§(this.§7!-§.data.password);
                  this.§7>§ = §-h§.§^T§(this.§7!-§.data.language);
                  this.§"!v§ = §-h§.§^T§(this.§7!-§.data.country);
               }
               catch(e:Error)
               {
               }
               if(this.§7!-§ && this.§7!-§.data && this.§7!-§.data.rememberMe)
               {
                  this.§;"5§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §;8§() : void
      {
         this.§]!c§("","","","",false);
         try
         {
            this.§7!-§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §^"§(param1:String, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§;P§ = §4![§.NICKNAME_MISSING;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§;P§ = §4![§.PASSWORD_MISSING;
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
         var _loc8_:§=W§ = new §=W§(_loc7_,AngryBirdsCustom.§9"+§ + "login",this.§!!B§,§=W§.§"!x§);
         (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.openPopup(this.§]!I§);
         this.§]!c§(param1,param2,param3,param4,param5);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§@A§));
      }
      
      public function §`!Z§(param1:Object) : void
      {
         var _loc3_:§=W§ = new §=W§(param1,AngryBirdsCustom.§9"+§ + "registerPlayer",this.§&>§,§=W§.§"!x§);
         (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.openPopup(this.§]!I§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§7!A§));
      }
      
      public function §]!c§(param1:String, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var language:String = param3;
         var country:String = param4;
         var rememberMeToggled:Boolean = param5;
         newName = §-h§.§>s§(newName);
         newPassword = §-h§.§>s§(newPassword);
         language = §-h§.§>s§(language);
         country = §-h§.§>s§(country);
         this.§7!-§.data.id = newName;
         this.§7!-§.data.password = newPassword;
         this.§7!-§.data.language = language;
         this.§7!-§.data.country = country;
         this.§7!-§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§7!-§.flush();
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
         return this.§-!P§;
      }
      
      public function get language() : String
      {
         return this.§7>§;
      }
      
      public function get country() : String
      {
         return this.§"!v§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§;"5§;
      }
      
      public function get §&!c§() : §0d§
      {
         return this.§]!I§;
      }
   }
}
