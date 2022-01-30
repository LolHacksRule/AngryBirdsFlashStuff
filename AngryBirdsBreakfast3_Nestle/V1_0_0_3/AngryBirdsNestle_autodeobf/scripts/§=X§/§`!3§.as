package §=X§
{
   import §#!`§.§4!#§;
   import §]K§.§>!I§;
   import §`q§.§9Q§;
   import com.angrybirds.utils.§"L§;
   import com.angrybirds.utils.§?!&§;
   import flash.events.EventDispatcher;
   
   public class §`!3§ extends EventDispatcher
   {
       
      
      private var §7!_§:§=!4§;
      
      private var §-3§:§'!,§;
      
      private var §^N§:§"L§;
      
      private var mName:String;
      
      private var §;c§:String;
      
      private var §8T§:String;
      
      private var §0]§:String;
      
      private var §[7§:Boolean;
      
      private var §]!n§:§9Q§;
      
      public function §`!3§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         try
         {
            this.§^N§ = §"L§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§7!_§ = new §=!4§(this);
         this.§-3§ = new §'!,§(this);
         this.§]!n§ = new §9Q§();
      }
      
      public function §>"%§() : Boolean
      {
         if(this.§^N§ && this.§^N§.data && this.§^N§.data.id && this.§^N§.data.password && this.§^N§.data.language && this.§^N§.data.country)
         {
            if(this.§^N§.data.rememberMe)
            {
               try
               {
                  this.mName = §?!&§.§0"4§(this.§^N§.data.id);
                  this.§;c§ = §?!&§.§0"4§(this.§^N§.data.password);
                  this.§8T§ = §?!&§.§0"4§(this.§^N§.data.language);
                  this.§0]§ = §?!&§.§0"4§(this.§^N§.data.country);
               }
               catch(e:Error)
               {
               }
               if(this.§^N§ && this.§^N§.data && this.§^N§.data.rememberMe)
               {
                  this.§[7§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §%!6§() : void
      {
         this.§0!M§("","","","",false);
         try
         {
            this.§^N§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §switch§(param1:String, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§?R§ = §>!I§.NICKNAME_MISSING;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§?R§ = §>!I§.PASSWORD_MISSING;
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
         var _loc8_:§4!#§ = new §4!#§(_loc7_,AngryBirdsCustom.§91§ + "login",this.§7!_§,§4!#§.§;0§);
         (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.openPopup(this.§]!n§);
         this.§0!M§(param1,param2,param3,param4,param5);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§?!`§));
      }
      
      public function §!z§(param1:Object) : void
      {
         var _loc3_:§4!#§ = new §4!#§(param1,AngryBirdsCustom.§91§ + "registerPlayer",this.§-3§,§4!#§.§;0§);
         (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.openPopup(this.§]!n§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§ !v§));
      }
      
      public function §0!M§(param1:String, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var language:String = param3;
         var country:String = param4;
         var rememberMeToggled:Boolean = param5;
         newName = §?!&§.§?K§(newName);
         newPassword = §?!&§.§?K§(newPassword);
         language = §?!&§.§?K§(language);
         country = §?!&§.§?K§(country);
         this.§^N§.data.id = newName;
         this.§^N§.data.password = newPassword;
         this.§^N§.data.language = language;
         this.§^N§.data.country = country;
         this.§^N§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§^N§.flush();
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
         return this.§;c§;
      }
      
      public function get language() : String
      {
         return this.§8T§;
      }
      
      public function get country() : String
      {
         return this.§0]§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§[7§;
      }
      
      public function get §[u§() : §9Q§
      {
         return this.§]!n§;
      }
   }
}
