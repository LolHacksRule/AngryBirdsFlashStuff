package §&!>§
{
   import §#!n§.§3!s§;
   import §2!"§.§8K§;
   import §?I§.§=!L§;
   import com.angrybirds.utils.§1k§;
   import com.angrybirds.utils.§[!T§;
   import flash.events.EventDispatcher;
   
   public class §'!x§ extends EventDispatcher
   {
       
      
      private var §2C§:§,!1§;
      
      private var §4!@§:§"!$§;
      
      private var §0E§:§1k§;
      
      private var mName:String;
      
      private var §+Z§:String;
      
      private var §^!W§:String;
      
      private var §8]§:String;
      
      private var §=d§:Boolean;
      
      private var §&F§:§=!L§;
      
      public function §'!x§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         try
         {
            this.§0E§ = §1k§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§2C§ = new §,!1§(this);
         this.§4!@§ = new §"!$§(this);
         this.§&F§ = new §=!L§();
      }
      
      public function §6!k§() : Boolean
      {
         if(this.§0E§ && this.§0E§.data && this.§0E§.data.id && this.§0E§.data.password && this.§0E§.data.language && this.§0E§.data.country)
         {
            if(this.§0E§.data.rememberMe)
            {
               try
               {
                  this.mName = §[!T§.§?!m§(this.§0E§.data.id);
                  this.§+Z§ = §[!T§.§?!m§(this.§0E§.data.password);
                  this.§^!W§ = §[!T§.§?!m§(this.§0E§.data.language);
                  this.§8]§ = §[!T§.§?!m§(this.§0E§.data.country);
               }
               catch(e:Error)
               {
               }
               if(this.§0E§ && this.§0E§.data && this.§0E§.data.rememberMe)
               {
                  this.§=d§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function get() : void
      {
         this.§,1§("","","","",false);
         try
         {
            this.§0E§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §^p§(param1:String, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§%!,§ = §8K§.NICKNAME_MISSING;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§%!,§ = §8K§.PASSWORD_MISSING;
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
         var _loc8_:§3!s§ = new §3!s§(_loc7_,AngryBirdsCustom.§1=§ + "login",this.§2C§,§3!s§.§5%§);
         (§-O§.§5!1§ as AngryBirdsCustom).§-6§.openPopup(this.§&F§);
         this.§,1§(param1,param2,param3,param4,param5);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§,x§));
      }
      
      public function §[!8§(param1:Object) : void
      {
         var _loc3_:§3!s§ = new §3!s§(param1,AngryBirdsCustom.§1=§ + "registerPlayer",this.§4!@§,§3!s§.§5%§);
         (§-O§.§5!1§ as AngryBirdsCustom).§-6§.openPopup(this.§&F§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§%!n§));
      }
      
      public function §,1§(param1:String, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var language:String = param3;
         var country:String = param4;
         var rememberMeToggled:Boolean = param5;
         newName = §[!T§.§"!-§(newName);
         newPassword = §[!T§.§"!-§(newPassword);
         language = §[!T§.§"!-§(language);
         country = §[!T§.§"!-§(country);
         this.§0E§.data.id = newName;
         this.§0E§.data.password = newPassword;
         this.§0E§.data.language = language;
         this.§0E§.data.country = country;
         this.§0E§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§0E§.flush();
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
         return this.§+Z§;
      }
      
      public function get language() : String
      {
         return this.§^!W§;
      }
      
      public function get country() : String
      {
         return this.§8]§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§=d§;
      }
      
      public function get §+0§() : §=!L§
      {
         return this.§&F§;
      }
   }
}
