package §0$§
{
   import §&6§.§ !4§;
   import §&6§.§,!Y§;
   import §&6§.§[!d§;
   import §,E§.§"!K§;
   import flash.events.EventDispatcher;
   
   public class §8!K§ extends EventDispatcher
   {
      
      private static var §[![§:§8!K§;
       
      
      private var §#!c§:§&!L§;
      
      private var § t§:§>r§;
      
      private var §-!N§:§ !4§;
      
      private var mName:String;
      
      private var §^M§:String;
      
      private var §9C§:Boolean;
      
      public function §8!K§()
      {
         super();
      }
      
      public static function get §5!!§() : §8!K§
      {
         if(§[![§ == null)
         {
            §[![§ = new §8!K§();
            §[![§.init();
         }
         return §[![§;
      }
      
      private function init() : void
      {
         try
         {
            this.§-!N§ = § !4§.getLocal(§3![§.§#!E§ + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§#!c§ = new §&!L§();
         this.§ t§ = new §>r§();
      }
      
      public function §[!j§() : Boolean
      {
         if(this.§-!N§ && this.§-!N§.data && this.§-!N§.data.id && this.§-!N§.data.password)
         {
            if(this.§-!N§.data.rememberMe)
            {
               try
               {
                  this.mName = §[!d§.§^E§(this.§-!N§.data.id);
                  this.§^M§ = §[!d§.§^E§(this.§-!N§.data.password);
               }
               catch(e:Error)
               {
               }
               if(this.§-!N§ && this.§-!N§.data && this.§-!N§.data.rememberMe)
               {
                  this.§9C§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §9!I§() : void
      {
         this.§[!S§("","",false);
         try
         {
            this.§-!N§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §5M§(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         var _loc5_:RegExp = /^\S+@\S+\.\S+$/;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§15§ = §,!Y§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(!_loc5_.test(param1))
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§15§ = §,!Y§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§15§ = §,!Y§.PASSWORD_MISSING;
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
         var _loc8_:§"!K§ = new §"!K§(_loc7_,§3![§.§=![§ + "login",this.§#!c§,§"!K§.§<!4§);
         §3![§.§5!6§ = new §;L§("");
         this.§[!S§(param1,param2,param3);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§9!G§));
      }
      
      public function §&!+§(param1:Object) : void
      {
         var _loc3_:§"!K§ = new §"!K§(param1,§3![§.§=![§ + "registerPlayer",this.§ t§,§"!K§.§<!4§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§;!`§));
      }
      
      public function §[!S§(param1:String, param2:String, param3:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var rememberMeToggled:Boolean = param3;
         newName = §[!d§.§=!F§(newName);
         newPassword = §[!d§.§=!F§(newPassword);
         this.§-!N§.data.id = newName;
         this.§-!N§.data.password = newPassword;
         this.§-!N§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§-!N§.flush();
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
         return this.§^M§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§9C§;
      }
   }
}
