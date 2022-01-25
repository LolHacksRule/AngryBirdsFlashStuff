package §7!N§
{
   import §1!^§.§,!n§;
   import §<! §.§#!b§;
   import §<! §.§1!h§;
   import §<! §.§?!P§;
   import flash.events.EventDispatcher;
   
   public class §3!0§ extends EventDispatcher
   {
      
      private static var §,!§:§3!0§;
       
      
      private var §]!h§:§"x§;
      
      private var §%!'§:§,I§;
      
      private var §;!U§:§?!P§;
      
      private var mName:String;
      
      private var §"!B§:String;
      
      private var §&o§:Boolean;
      
      public function §3!0§()
      {
         super();
      }
      
      public static function get §9$§() : §3!0§
      {
         if(§,!§ == null)
         {
            §,!§ = new §3!0§();
            §,!§.init();
         }
         return §,!§;
      }
      
      private function init() : void
      {
         try
         {
            this.§;!U§ = §?!P§.getLocal(§9!_§.§1D§ + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§]!h§ = new §"x§();
         this.§%!'§ = new §,I§();
      }
      
      public function §break§() : Boolean
      {
         if(this.§;!U§ && this.§;!U§.data && this.§;!U§.data.id && this.§;!U§.data.password)
         {
            if(this.§;!U§.data.rememberMe)
            {
               try
               {
                  this.mName = §1!h§.§7!"§(this.§;!U§.data.id);
                  this.§"!B§ = §1!h§.§7!"§(this.§;!U§.data.password);
               }
               catch(e:Error)
               {
               }
               if(this.§;!U§ && this.§;!U§.data && this.§;!U§.data.rememberMe)
               {
                  this.§&o§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §=0§() : void
      {
         this.§1!'§("","",false);
         try
         {
            this.§;!U§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §`n§(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         var _loc5_:RegExp = /^\S+@\S+\.\S+$/;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§+!K§ = §#!b§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(!_loc5_.test(param1))
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§+!K§ = §#!b§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§+!K§ = §#!b§.PASSWORD_MISSING;
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
         var _loc8_:§,!n§ = new §,!n§(_loc7_,§9!_§.§?!k§ + "login",this.§]!h§,§,!n§.§-I§);
         §9!_§.§1!?§ = new §9!o§("");
         this.§1!'§(param1,param2,param3);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§!F§));
      }
      
      public function §2!1§(param1:Object) : void
      {
         var _loc3_:§,!n§ = new §,!n§(param1,§9!_§.§?!k§ + "registerPlayer",this.§%!'§,§,!n§.§-I§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§!!!§));
      }
      
      public function §1!'§(param1:String, param2:String, param3:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var rememberMeToggled:Boolean = param3;
         newName = §1!h§.§5!W§(newName);
         newPassword = §1!h§.§5!W§(newPassword);
         this.§;!U§.data.id = newName;
         this.§;!U§.data.password = newPassword;
         this.§;!U§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§;!U§.flush();
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
         return this.§"!B§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§&o§;
      }
   }
}
