package §4[§
{
   import §'!3§.§,!S§;
   import §1![§.§#E§;
   import §[!5§.§2p§;
   import com.angrybirds.utils.§'[§;
   import com.angrybirds.utils.§0O§;
   import flash.events.EventDispatcher;
   
   public class §4Z§ extends EventDispatcher
   {
       
      
      private var §`W§:§`A§;
      
      private var §4w§:§<"6§;
      
      private var §?!b§:§'[§;
      
      private var mName:String;
      
      private var §-!X§:String;
      
      private var §3!`§:String;
      
      private var §,!l§:String;
      
      private var §^T§:Boolean;
      
      private var §"!j§:§,!S§;
      
      public function §4Z§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         try
         {
            this.§?!b§ = §'[§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.§`W§ = new §`A§(this);
         this.§4w§ = new §<"6§(this);
         this.§"!j§ = new §,!S§();
      }
      
      public function §8"§() : Boolean
      {
         if(this.§?!b§ && this.§?!b§.data && this.§?!b§.data.id && this.§?!b§.data.password && this.§?!b§.data.language && this.§?!b§.data.country)
         {
            if(this.§?!b§.data.rememberMe)
            {
               try
               {
                  this.mName = §0O§.§3m§(this.§?!b§.data.id);
                  this.§-!X§ = §0O§.§3m§(this.§?!b§.data.password);
                  this.§3!`§ = §0O§.§3m§(this.§?!b§.data.language);
                  this.§,!l§ = §0O§.§3m§(this.§?!b§.data.country);
               }
               catch(e:Error)
               {
               }
               if(this.§?!b§ && this.§?!b§.data && this.§?!b§.data.rememberMe)
               {
                  this.§^T§ = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §4!s§() : void
      {
         this.§!!z§("","","","",false);
         try
         {
            this.§?!b§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §]"#§(param1:String, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§1X§ = §2p§.NICKNAME_MISSING;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§1X§ = §2p§.PASSWORD_MISSING;
            dispatchEvent(_loc9_);
            return;
         }
         var _loc7_:Object = {
            "type":"login",
            "nickName":param1,
            "password":param2,
            "locale":param4,
            "language":param3
         };
         var _loc8_:§#E§ = new §#E§(_loc7_,AngryBirdsCustom.§;"1§ + "login",this.§`W§,§#E§.§3b§);
         (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(this.§"!j§);
         this.§!!z§(param1,param2,param3,param4,param5);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§ ! §));
      }
      
      public function §^!h§(param1:Object) : void
      {
         var _loc3_:§#E§ = new §#E§(param1,AngryBirdsCustom.§;"1§ + "registerPlayer",this.§4w§,§#E§.§3b§);
         (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(this.§"!j§);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§ =§));
      }
      
      public function §!!z§(param1:String, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var language:String = param3;
         var country:String = param4;
         var rememberMeToggled:Boolean = param5;
         newName = §0O§.§]U§(newName);
         newPassword = §0O§.§]U§(newPassword);
         language = §0O§.§]U§(language);
         country = §0O§.§]U§(country);
         this.§?!b§.data.id = newName;
         this.§?!b§.data.password = newPassword;
         this.§?!b§.data.language = language;
         this.§?!b§.data.country = country;
         this.§?!b§.data.rememberMe = rememberMeToggled;
         try
         {
            this.§?!b§.flush();
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
         return this.§-!X§;
      }
      
      public function get language() : String
      {
         return this.§3!`§;
      }
      
      public function get country() : String
      {
         return this.§,!l§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§^T§;
      }
      
      public function get §3!p§() : §,!S§
      {
         return this.§"!j§;
      }
   }
}
