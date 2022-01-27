package §5"@§
{
   import §%!P§.§7""§;
   import §[z§.§>_§;
   import §[z§.§]j§;
   import §]!x§.§#!x§;
   import §`>§.§>7§;
   import flash.events.EventDispatcher;
   
   public class §0x§ extends EventDispatcher
   {
       
      
      private var §;$§:§+o§;
      
      private var §[!`§:§<!c§;
      
      private var §&!k§:§]j§;
      
      private var mName:String;
      
      private var §[!Y§:String;
      
      private var §[^§:Boolean;
      
      private var §]"C§:§#!x§;
      
      public function §0x§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         try
         {
            this.§&!k§ = §]j§.getLocal(§@T§.§24§ + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§;$§ = new §+o§(this);
         this.§[!`§ = new §<!c§(this);
         this.§]"C§ = new §#!x§();
      }
      
      public function §=!A§() : Boolean
      {
         if(this.§&!k§ && this.§&!k§.data && this.§&!k§.data.id && this.§&!k§.data.password)
         {
            if(this.§&!k§.data.rememberMe)
            {
               try
               {
                  this.mName = §>_§.§6"H§(this.§&!k§.data.id);
                  this.§[!Y§ = §>_§.§6"H§(this.§&!k§.data.password);
               }
               catch(e:Error)
               {
               }
               if(this.§&!k§ && this.§&!k§.data && this.§&!k§.data.rememberMe)
               {
                  this.§[^§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function § !k§() : void
      {
         this.§+t§("","",false);
         try
         {
            this.§&!k§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §3!Y§(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         var _loc5_:RegExp = /^\S+@\S+\.\S+$/;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§+%§ = §>7§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(!_loc5_.test(param1))
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§+%§ = §>7§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§+%§ = §>7§.PASSWORD_MISSING;
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
         var _loc8_:§7""§ = new §7""§(_loc7_,§@T§.§&Z§ + "login",this.§;$§,§7""§.§4!8§);
         (§2&§.§6o§ as §@T§).§^7§.openPopup(this.§]"C§);
         this.§+t§(param1,param2,param3);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§5!I§));
      }
      
      public function §74§(param1:Object) : void
      {
         var _loc3_:§7""§ = new §7""§(param1,§@T§.§&Z§ + "registerPlayer",this.§[!`§,§7""§.§4!8§);
         (§2&§.§6o§ as §@T§).§^7§.openPopup(this.§]"C§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§3!K§));
      }
      
      public function §+t§(param1:String, param2:String, param3:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var rememberMeToggled:Boolean = param3;
         newName = §>_§.§=!z§(newName);
         newPassword = §>_§.§=!z§(newPassword);
         this.§&!k§.data.id = newName;
         this.§&!k§.data.password = newPassword;
         this.§&!k§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§&!k§.flush();
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
         return this.§[!Y§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§[^§;
      }
      
      public function get §8v§() : §#!x§
      {
         return this.§]"C§;
      }
   }
}
