package §-!G§
{
   import §%9§.§33§;
   import §,!9§.§>"$§;
   import §[j§.§%p§;
   import com.angrybirds.utils.§@!7§;
   import com.angrybirds.utils.§]!5§;
   import flash.events.EventDispatcher;
   
   public class §]!V§ extends EventDispatcher
   {
       
      
      private var §4!0§:§-!§;
      
      private var §8!,§:§3!L§;
      
      private var §!!N§:§@!7§;
      
      private var mName:String;
      
      private var §5"0§:String;
      
      private var §,!,§:String;
      
      private var §+!i§:String;
      
      private var §95§:Boolean;
      
      private var §&!j§:§33§;
      
      public function §]!V§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         try
         {
            this.§!!N§ = §@!7§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§4!0§ = new §-!§(this);
         this.§8!,§ = new §3!L§(this);
         this.§&!j§ = new §33§();
      }
      
      public function §7!I§() : Boolean
      {
         if(this.§!!N§ && this.§!!N§.data && this.§!!N§.data.id && this.§!!N§.data.password && this.§!!N§.data.language && this.§!!N§.data.country)
         {
            if(this.§!!N§.data.rememberMe)
            {
               try
               {
                  this.mName = §]!5§.§0!3§(this.§!!N§.data.id);
                  this.§5"0§ = §]!5§.§0!3§(this.§!!N§.data.password);
                  this.§,!,§ = §]!5§.§0!3§(this.§!!N§.data.language);
                  this.§+!i§ = §]!5§.§0!3§(this.§!!N§.data.country);
               }
               catch(e:Error)
               {
               }
               if(this.§!!N§ && this.§!!N§.data && this.§!!N§.data.rememberMe)
               {
                  this.§95§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §2!w§() : void
      {
         this.§>"4§("","","","",false);
         try
         {
            this.§!!N§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §2!j§(param1:String, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§@!;§ = §>"$§.NICKNAME_MISSING;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§@!;§ = §>"$§.PASSWORD_MISSING;
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
         var _loc8_:§%p§ = new §%p§(_loc7_,AngryBirdsCustom.§5"+§ + "login",this.§4!0§,§%p§.§#0§);
         (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.openPopup(this.§&!j§);
         this.§>"4§(param1,param2,param3,param4,param5);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§"C§));
      }
      
      public function §"N§(param1:Object) : void
      {
         var _loc3_:§%p§ = new §%p§(param1,AngryBirdsCustom.§5"+§ + "registerPlayer",this.§8!,§,§%p§.§#0§);
         (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.openPopup(this.§&!j§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§7!c§));
      }
      
      public function §>"4§(param1:String, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var language:String = param3;
         var country:String = param4;
         var rememberMeToggled:Boolean = param5;
         newName = §]!5§.§ true§(newName);
         newPassword = §]!5§.§ true§(newPassword);
         language = §]!5§.§ true§(language);
         country = §]!5§.§ true§(country);
         this.§!!N§.data.id = newName;
         this.§!!N§.data.password = newPassword;
         this.§!!N§.data.language = language;
         this.§!!N§.data.country = country;
         this.§!!N§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§!!N§.flush();
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
         return this.§5"0§;
      }
      
      public function get language() : String
      {
         return this.§,!,§;
      }
      
      public function get country() : String
      {
         return this.§+!i§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§95§;
      }
      
      public function get §9L§() : §33§
      {
         return this.§&!j§;
      }
   }
}
