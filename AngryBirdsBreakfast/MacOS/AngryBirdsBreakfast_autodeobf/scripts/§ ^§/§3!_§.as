package § ^§
{
   import §"n§.§!!G§;
   import §#"&§.§#!4§;
   import §%_§.§"!!§;
   import §[!i§.§;Q§;
   import §]0§.§!!K§;
   import §]0§.§0b§;
   import flash.events.EventDispatcher;
   
   public class §3!_§ extends EventDispatcher
   {
       
      
      private var §"7§:§5!C§;
      
      private var §&`§:§1p§;
      
      private var §&!v§:§0b§;
      
      private var mName:String;
      
      private var §`&§:String;
      
      private var §4_§:Boolean;
      
      private var §1!t§:§;Q§;
      
      public function §3!_§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         try
         {
            this.§&!v§ = §0b§.getLocal(§4!=§.§"l§ + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§"7§ = new §5!C§(this);
         this.§&`§ = new §1p§(this);
         this.§1!t§ = new §;Q§();
      }
      
      public function §[!N§() : Boolean
      {
         if(this.§&!v§ && this.§&!v§.data && this.§&!v§.data.id && this.§&!v§.data.password)
         {
            if(this.§&!v§.data.rememberMe)
            {
               try
               {
                  this.mName = §!!K§.§#8§(this.§&!v§.data.id);
                  this.§`&§ = §!!K§.§#8§(this.§&!v§.data.password);
               }
               catch(e:Error)
               {
               }
               if(this.§&!v§ && this.§&!v§.data && this.§&!v§.data.rememberMe)
               {
                  this.§4_§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §"5§() : void
      {
         this.§?B§("","",false);
         try
         {
            this.§&!v§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §+!B§(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§3!N§ = §"!!§.NICKNAME_MISSING;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§3!N§ = §"!!§.PASSWORD_MISSING;
            dispatchEvent(_loc9_);
            return;
         }
         var _loc5_:String = §!!G§.§2Z§.§-`§();
         var _loc6_:String = §!!G§.§2Z§.§%"!§();
         var _loc7_:Object = {
            "type":"login",
            "nickName":param1,
            "password":param2,
            "locale":_loc6_,
            "language":_loc5_
         };
         var _loc8_:§#!4§ = new §#!4§(_loc7_,§4!=§.§69§ + "login",this.§"7§,§#!4§.§ !z§);
         (§6!!§.singleton as §4!=§).§%![§.openPopup(this.§1!t§);
         this.§?B§(param1,param2,param3);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§"!`§));
      }
      
      public function §'!;§(param1:Object) : void
      {
         var _loc3_:§#!4§ = new §#!4§(param1,§4!=§.§69§ + "registerPlayer",this.§&`§,§#!4§.§ !z§);
         (§6!!§.singleton as §4!=§).§%![§.openPopup(this.§1!t§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§#!n§));
      }
      
      public function §?B§(param1:String, param2:String, param3:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var rememberMeToggled:Boolean = param3;
         newName = §!!K§.§0E§(newName);
         newPassword = §!!K§.§0E§(newPassword);
         this.§&!v§.data.id = newName;
         this.§&!v§.data.password = newPassword;
         this.§&!v§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§&!v§.flush();
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
         return this.§`&§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§4_§;
      }
      
      public function get §&!1§() : §;Q§
      {
         return this.§1!t§;
      }
   }
}
