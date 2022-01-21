package §7!Q§
{
   import §>!<§.§-E§;
   import §`!@§.§#!W§;
   import §`!@§.§#e§;
   import §`!@§.§'x§;
   import flash.events.EventDispatcher;
   
   public class §=!G§ extends EventDispatcher
   {
      
      private static var §`%§:§=!G§;
       
      
      private var §#!H§:§2!O§;
      
      private var §^§:§ !1§;
      
      private var §<v§:§#!W§;
      
      private var mName:String;
      
      private var §`!I§:String;
      
      private var §!g§:Boolean;
      
      public function §=!G§()
      {
         super();
      }
      
      public static function get §+j§() : §=!G§
      {
         if(§`%§ == null)
         {
            §`%§ = new §=!G§();
            §`%§.init();
         }
         return §`%§;
      }
      
      private function init() : void
      {
         try
         {
            this.§<v§ = §#!W§.getLocal(§ 4§.§#!6§ + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§#!H§ = new §2!O§();
         this.§^§ = new § !1§();
      }
      
      public function §[!d§() : Boolean
      {
         if(this.§<v§ && this.§<v§.data && this.§<v§.data.id && this.§<v§.data.password)
         {
            if(this.§<v§.data.rememberMe)
            {
               try
               {
                  this.mName = §'x§.§&!]§(this.§<v§.data.id);
                  this.§`!I§ = §'x§.§&!]§(this.§<v§.data.password);
               }
               catch(e:Error)
               {
               }
               if(this.§<v§ && this.§<v§.data && this.§<v§.data.rememberMe)
               {
                  this.§!g§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §0!D§() : void
      {
         this.§86§("","",false);
         try
         {
            this.§<v§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §4!L§(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         var _loc5_:RegExp = /^\S+@\S+\.\S+$/;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§]!a§ = §#e§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(!_loc5_.test(param1))
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§]!a§ = §#e§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§]!a§ = §#e§.PASSWORD_MISSING;
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
         var _loc8_:§-E§ = new §-E§(_loc7_,§ 4§.§=R§ + "login",this.§#!H§,§-E§.§]!,§);
         § 4§.§?H§ = new §;_§("");
         this.§86§(param1,param2,param3);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§'!O§));
      }
      
      public function §'v§(param1:Object) : void
      {
         var _loc3_:§-E§ = new §-E§(param1,§ 4§.§=R§ + "registerPlayer",this.§^§,§-E§.§]!,§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§<R§));
      }
      
      public function §86§(param1:String, param2:String, param3:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var rememberMeToggled:Boolean = param3;
         newName = §'x§.§4-§(newName);
         newPassword = §'x§.§4-§(newPassword);
         this.§<v§.data.id = newName;
         this.§<v§.data.password = newPassword;
         this.§<v§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§<v§.flush();
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
         return this.§`!I§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§!g§;
      }
   }
}
