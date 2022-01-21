package §?H§
{
   import § !1§.§,u§;
   import § !1§.§>!g§;
   import § !1§.§@!g§;
   import §'Y§.§6Q§;
   import flash.events.EventDispatcher;
   
   public class §>!X§ extends EventDispatcher
   {
      
      private static var §=!J§:§>!X§;
       
      
      private var §0u§:§2l§;
      
      private var §=B§:§4T§;
      
      private var §-!!§:§>!g§;
      
      private var mName:String;
      
      private var §,5§:String;
      
      private var §1I§:Boolean;
      
      public function §>!X§()
      {
         super();
      }
      
      public static function get §>E§() : §>!X§
      {
         if(§=!J§ == null)
         {
            §=!J§ = new §>!X§();
            §=!J§.init();
         }
         return §=!J§;
      }
      
      private function init() : void
      {
         try
         {
            this.§-!!§ = §>!g§.getLocal(§;!4§.§!!P§ + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§0u§ = new §2l§();
         this.§=B§ = new §4T§();
      }
      
      public function §%U§() : Boolean
      {
         if(this.§-!!§ && this.§-!!§.data && this.§-!!§.data.id && this.§-!!§.data.password)
         {
            if(this.§-!!§.data.rememberMe)
            {
               try
               {
                  this.mName = §,u§.§[!=§(this.§-!!§.data.id);
                  this.§,5§ = §,u§.§[!=§(this.§-!!§.data.password);
               }
               catch(e:Error)
               {
               }
               if(this.§-!!§ && this.§-!!§.data && this.§-!!§.data.rememberMe)
               {
                  this.§1I§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §2!,§() : void
      {
         this.§?!_§("","",false);
         try
         {
            this.§-!!§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §[!X§(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         var _loc5_:RegExp = /^\S+@\S+\.\S+$/;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§5z§ = §@!g§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(!_loc5_.test(param1))
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§5z§ = §@!g§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§5z§ = §@!g§.PASSWORD_MISSING;
            dispatchEvent(_loc9_);
            return;
         }
         var _loc6_:Object;
         (_loc6_ = {}).email = param1;
         _loc6_.password = param2;
         var _loc7_:Object = {
            "type":"login",
            "player":_loc6_
         };
         var _loc8_:§6Q§ = new §6Q§(_loc7_,§;!4§.§'!O§ + "login",this.§0u§,§6Q§.§&!0§);
         §;!4§.§8'§ = new §3!X§("");
         this.§?!_§(param1,param2,param3);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§#[§));
      }
      
      public function §0!5§(param1:Object) : void
      {
         var _loc3_:§6Q§ = new §6Q§(param1,§;!4§.§'!O§ + "registerPlayer",this.§=B§,§6Q§.§&!0§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§>!9§));
      }
      
      public function §?!_§(param1:String, param2:String, param3:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var rememberMeToggled:Boolean = param3;
         newName = §,u§.§8!k§(newName);
         newPassword = §,u§.§8!k§(newPassword);
         this.§-!!§.data.id = newName;
         this.§-!!§.data.password = newPassword;
         this.§-!!§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§-!!§.flush();
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
         return this.§,5§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§1I§;
      }
   }
}
