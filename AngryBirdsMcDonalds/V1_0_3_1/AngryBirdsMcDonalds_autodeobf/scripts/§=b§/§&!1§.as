package §=b§
{
   import §,i§.§7;§;
   import §<Z§.§,!f§;
   import §<Z§.§1!X§;
   import §<Z§.§^8§;
   import flash.events.EventDispatcher;
   
   public class §&!1§ extends EventDispatcher
   {
      
      private static var §7r§:§&!1§;
       
      
      private var §=!I§:§?q§;
      
      private var §&s§:§with§;
      
      private var §5@§:§,!f§;
      
      private var mName:String;
      
      private var §]!8§:String;
      
      private var §8!Q§:Boolean;
      
      public function §&!1§()
      {
         super();
      }
      
      public static function get §@!7§() : §&!1§
      {
         if(§7r§ == null)
         {
            §7r§ = new §&!1§();
            §7r§.init();
         }
         return §7r§;
      }
      
      private function init() : void
      {
         try
         {
            this.§5@§ = §,!f§.getLocal(§2!M§.§>z§ + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§=!I§ = new §?q§();
         this.§&s§ = new §with§();
      }
      
      public function §[!U§() : Boolean
      {
         if(this.§5@§ && this.§5@§.data && this.§5@§.data.id && this.§5@§.data.password)
         {
            if(this.§5@§.data.rememberMe)
            {
               try
               {
                  this.mName = §^8§.§^!&§(this.§5@§.data.id);
                  this.§]!8§ = §^8§.§^!&§(this.§5@§.data.password);
               }
               catch(e:Error)
               {
               }
               if(this.§5@§ && this.§5@§.data && this.§5@§.data.rememberMe)
               {
                  this.§8!Q§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §7!d§() : void
      {
         this.§&!P§("","",false);
         try
         {
            this.§5@§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §&!l§(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         var _loc5_:RegExp = /^\S+@\S+\.\S+$/;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§`!L§ = §1!X§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(!_loc5_.test(param1))
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§`!L§ = §1!X§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§`!L§ = §1!X§.PASSWORD_MISSING;
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
         var _loc8_:§7;§ = new §7;§(_loc7_,§2!M§.§`8§ + "login",this.§=!I§,§7;§.§[%§);
         §2!M§.§&!#§ = new §!!Z§("");
         this.§&!P§(param1,param2,param3);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§`y§));
      }
      
      public function §@!V§(param1:Object) : void
      {
         var _loc3_:§7;§ = new §7;§(param1,§2!M§.§`8§ + "registerPlayer",this.§&s§,§7;§.§[%§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§if§));
      }
      
      public function §&!P§(param1:String, param2:String, param3:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var rememberMeToggled:Boolean = param3;
         newName = §^8§.§^!K§(newName);
         newPassword = §^8§.§^!K§(newPassword);
         this.§5@§.data.id = newName;
         this.§5@§.data.password = newPassword;
         this.§5@§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§5@§.flush();
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
         return this.§]!8§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§8!Q§;
      }
   }
}
