package §7!B§
{
   import §!?§.§'k§;
   import §3C§.§["1§;
   import §7!0§.§";§;
   import §7!0§.§'q§;
   import §9y§.§8"3§;
   import flash.events.EventDispatcher;
   
   public class §@"@§ extends EventDispatcher
   {
       
      
      private var §true §:§=!Q§;
      
      private var §]h§:§@R§;
      
      private var §?!S§:§";§;
      
      private var mName:String;
      
      private var §5!u§:String;
      
      private var §^,§:Boolean;
      
      private var §'F§:§["1§;
      
      public function §@"@§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         try
         {
            this.§?!S§ = §";§.getLocal(§`Y§.§^"'§ + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§true § = new §=!Q§(this);
         this.§]h§ = new §@R§(this);
         this.§'F§ = new §["1§();
      }
      
      public function §+!T§() : Boolean
      {
         if(this.§?!S§ && this.§?!S§.data && this.§?!S§.data.id && this.§?!S§.data.password)
         {
            if(this.§?!S§.data.rememberMe)
            {
               try
               {
                  this.mName = §'q§.§<"&§(this.§?!S§.data.id);
                  this.§5!u§ = §'q§.§<"&§(this.§?!S§.data.password);
               }
               catch(e:Error)
               {
               }
               if(this.§?!S§ && this.§?!S§.data && this.§?!S§.data.rememberMe)
               {
                  this.§^,§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §1!m§() : void
      {
         this.§#Q§("","",false);
         try
         {
            this.§?!S§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §7j§(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         var _loc5_:RegExp = /^\S+@\S+\.\S+$/;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§#5§ = §8"3§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(!_loc5_.test(param1))
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§#5§ = §8"3§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§#5§ = §8"3§.PASSWORD_MISSING;
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
         var _loc8_:§'k§ = new §'k§(_loc7_,§`Y§.§6T§ + "login",this.§true §,§'k§.§;!^§);
         (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(this.§'F§);
         this.§#Q§(param1,param2,param3);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§?q§));
      }
      
      public function §+1§(param1:Object) : void
      {
         var _loc3_:§'k§ = new §'k§(param1,§`Y§.§6T§ + "registerPlayer",this.§]h§,§'k§.§;!^§);
         (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(this.§'F§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§5!l§));
      }
      
      public function §#Q§(param1:String, param2:String, param3:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var rememberMeToggled:Boolean = param3;
         newName = §'q§.§2!#§(newName);
         newPassword = §'q§.§2!#§(newPassword);
         this.§?!S§.data.id = newName;
         this.§?!S§.data.password = newPassword;
         this.§?!S§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§?!S§.flush();
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
         return this.§5!u§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§^,§;
      }
      
      public function get §4>§() : §["1§
      {
         return this.§'F§;
      }
   }
}
