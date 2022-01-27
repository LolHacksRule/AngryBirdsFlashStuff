package §!"4§
{
   import §!!r§.§&""§;
   import §!!r§.§0k§;
   import §&e§.§<x§;
   import §+"C§.§25§;
   import §5R§.§=F§;
   import flash.events.EventDispatcher;
   
   public class §]<§ extends EventDispatcher
   {
       
      
      private var §5!§:§?!B§;
      
      private var §=`§:§0">§;
      
      private var §7!G§:§&""§;
      
      private var mName:String;
      
      private var §;!F§:String;
      
      private var § !u§:Boolean;
      
      private var §var §:§25§;
      
      public function §]<§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         try
         {
            this.§7!G§ = §&""§.getLocal(§["!§.§6!=§ + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§5!§ = new §?!B§(this);
         this.§=`§ = new §0">§(this);
         this.§var § = new §25§();
      }
      
      public function §@"@§() : Boolean
      {
         if(this.§7!G§ && this.§7!G§.data && this.§7!G§.data.id && this.§7!G§.data.password)
         {
            if(this.§7!G§.data.rememberMe)
            {
               try
               {
                  this.mName = §0k§.§?=§(this.§7!G§.data.id);
                  this.§;!F§ = §0k§.§?=§(this.§7!G§.data.password);
               }
               catch(e:Error)
               {
               }
               if(this.§7!G§ && this.§7!G§.data && this.§7!G§.data.rememberMe)
               {
                  this.§ !u§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §,#§() : void
      {
         this.§1"5§("","",false);
         try
         {
            this.§7!G§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §["§(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         var _loc5_:RegExp = /^\S+@\S+\.\S+$/;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§7!8§ = §<x§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(!_loc5_.test(param1))
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§7!8§ = §<x§.INVALID_EMAIL;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§7!8§ = §<x§.PASSWORD_MISSING;
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
         var _loc8_:§=F§ = new §=F§(_loc7_,§["!§.§7!h§ + "login",this.§5!§,§=F§.§8"H§);
         (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(this.§var §);
         this.§1"5§(param1,param2,param3);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§&!7§));
      }
      
      public function §-"D§(param1:Object) : void
      {
         var _loc3_:§=F§ = new §=F§(param1,§["!§.§7!h§ + "registerPlayer",this.§=`§,§=F§.§8"H§);
         (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(this.§var §);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§<"%§));
      }
      
      public function §1"5§(param1:String, param2:String, param3:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var rememberMeToggled:Boolean = param3;
         newName = §0k§.§8=§(newName);
         newPassword = §0k§.§8=§(newPassword);
         this.§7!G§.data.id = newName;
         this.§7!G§.data.password = newPassword;
         this.§7!G§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§7!G§.flush();
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
         return this.§;!F§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§ !u§;
      }
      
      public function get §0!B§() : §25§
      {
         return this.§var §;
      }
   }
}
