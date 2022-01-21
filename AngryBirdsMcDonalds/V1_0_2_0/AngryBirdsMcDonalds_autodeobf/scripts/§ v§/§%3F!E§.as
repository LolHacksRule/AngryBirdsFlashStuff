package § v§
{
   import §!!h§.§1H§;
   import §7"§.§2k§;
   import §7"§.§8!#§;
   import §7"§.§`!W§;
   import flash.events.EventDispatcher;
   
   public class §?!E§ extends EventDispatcher
   {
      
      private static var § D§:§?!E§;
       
      
      private var § g§:§3!o§;
      
      private var §@!f§:§?!$§;
      
      private var get:§2k§;
      
      private var mName:String;
      
      private var §?G§:String;
      
      private var §6!d§:Boolean;
      
      public function §?!E§()
      {
         super();
      }
      
      public static function get §'!S§() : §?!E§
      {
         if(§ D§ == null)
         {
            § D§ = new §?!E§();
            § D§.init();
         }
         return § D§;
      }
      
      private function init() : void
      {
         try
         {
            this.get = §2k§.getLocal(§'j§.§]!2§ + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§ g§ = new §3!o§();
         this.§@!f§ = new §?!$§();
      }
      
      public function §6<§() : Boolean
      {
         if(this.get && this.get.data && this.get.data.id && this.get.data.password)
         {
            if(this.get.data.rememberMe)
            {
               try
               {
                  this.mName = §`!W§.§'M§(this.get.data.id);
                  this.§?G§ = §`!W§.§'M§(this.get.data.password);
               }
               catch(e:Error)
               {
               }
               if(this.get && this.get.data && this.get.data.rememberMe)
               {
                  this.§6!d§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §4Q§() : void
      {
         this.§&p§("","",false);
         try
         {
            this.get.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §7!6§(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         var _loc5_:RegExp = /^\S+@\S+\.\S+$/;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§7!F§ = §8!#§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(!_loc5_.test(param1))
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§7!F§ = §8!#§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§7!F§ = §8!#§.PASSWORD_MISSING;
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
         var _loc8_:§1H§ = new §1H§(_loc7_,§'j§.§2H§ + "login",this.§ g§,§1H§.§`P§);
         §'j§.§%g§ = new §%!^§("");
         this.§&p§(param1,param2,param3);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§4!>§));
      }
      
      public function § H§(param1:Object) : void
      {
         var _loc3_:§1H§ = new §1H§(param1,§'j§.§2H§ + "registerPlayer",this.§@!f§,§1H§.§`P§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§;!1§));
      }
      
      public function §&p§(param1:String, param2:String, param3:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var rememberMeToggled:Boolean = param3;
         newName = §`!W§.§`!B§(newName);
         newPassword = §`!W§.§`!B§(newPassword);
         this.get.data.id = newName;
         this.get.data.password = newPassword;
         this.get.data.rememberMe = rememberMeToggled;
         try
         {
            this.get.flush();
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
         return this.§?G§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§6!d§;
      }
   }
}
