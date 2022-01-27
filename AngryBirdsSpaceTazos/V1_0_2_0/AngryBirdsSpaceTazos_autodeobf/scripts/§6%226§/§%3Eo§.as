package §6"6§
{
   import §""%§.§#`§;
   import §1!]§.§"!C§;
   import §4!x§.§=!r§;
   import §4!x§.§?";§;
   import §5s§.§ !_§;
   import flash.events.EventDispatcher;
   
   public class §>o§ extends EventDispatcher
   {
       
      
      private var §9j§:§<Z§;
      
      private var §0x§:§=h§;
      
      private var §?!6§:§?";§;
      
      private var mName:String;
      
      private var §?[§:String;
      
      private var §case§:Boolean;
      
      private var §%!G§:§"!C§;
      
      public function §>o§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         try
         {
            this.§?!6§ = §?";§.getLocal(§^"=§.§1!h§ + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§9j§ = new §<Z§(this);
         this.§0x§ = new §=h§(this);
         this.§%!G§ = new §"!C§();
      }
      
      public function §<"'§() : Boolean
      {
         if(this.§?!6§ && this.§?!6§.data && this.§?!6§.data.id && this.§?!6§.data.password)
         {
            if(this.§?!6§.data.rememberMe)
            {
               try
               {
                  this.mName = §=!r§.§0!H§(this.§?!6§.data.id);
                  this.§?[§ = §=!r§.§0!H§(this.§?!6§.data.password);
               }
               catch(e:Error)
               {
               }
               if(this.§?!6§ && this.§?!6§.data && this.§?!6§.data.rememberMe)
               {
                  this.§case§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §0m§() : void
      {
         this.§4a§("","",false);
         try
         {
            this.§?!6§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function § s§(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         var _loc5_:RegExp = /^\S+@\S+\.\S+$/;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§5"F§ = § !_§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(!_loc5_.test(param1))
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§5"F§ = § !_§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§5"F§ = § !_§.PASSWORD_MISSING;
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
         var _loc8_:§#`§ = new §#`§(_loc7_,§^"=§.§^"3§ + "login",this.§9j§,§#`§.§-n§);
         (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(this.§%!G§);
         this.§4a§(param1,param2,param3);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§9!U§));
      }
      
      public function § !T§(param1:Object) : void
      {
         var _loc3_:§#`§ = new §#`§(param1,§^"=§.§^"3§ + "registerPlayer",this.§0x§,§#`§.§-n§);
         (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(this.§%!G§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§8,§));
      }
      
      public function §4a§(param1:String, param2:String, param3:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var rememberMeToggled:Boolean = param3;
         newName = §=!r§.§0R§(newName);
         newPassword = §=!r§.§0R§(newPassword);
         this.§?!6§.data.id = newName;
         this.§?!6§.data.password = newPassword;
         this.§?!6§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§?!6§.flush();
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
         return this.§?[§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§case§;
      }
      
      public function get §1!D§() : §"!C§
      {
         return this.§%!G§;
      }
   }
}
