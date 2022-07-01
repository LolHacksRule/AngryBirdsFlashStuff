package §`q§
{
   import §-!F§.§[!Q§;
   import §;U§.§`"2§;
   import §<[§.HighscoreSidebar;
   import §=!7§.§%!%§;
   import §=X§.§3j§;
   import §=X§.§?!n§;
   import §=X§.LoginHandlerEvent;
   import §=X§.§`!3§;
   import §@f§.§&!"§;
   import §[<§.§#!q§;
   import §[<§.§%!T§;
   import §`!6§.§!s§;
   
   public class §%i§ extends §'!O§
   {
      
      private static var §=" §:Class = §]<§;
       
      
      private var §&!3§:Boolean;
      
      private var §"!T§:§`!3§;
      
      public function §%i§(param1:§`!3§)
      {
         §=!c§ = true;
         §1!b§ = true;
         §0!2§ = true;
         super(§%!T§.§8§,§#!q§.DEFAULT,this.§@A§());
         this.§"!T§ = param1;
      }
      
      protected function §@A§() : XML
      {
         var _loc1_:XML = §%!%§.§<!0§(§=" §);
         return AngryBirdsCustom.§5!g§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§&!3§ = false;
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.§&!3§ = true;
               close();
               break;
            case "LOGOUT_NO":
               (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§.§67§(true);
               close();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:HighscoreSidebar = null;
         if(this.§&!3§)
         {
            this.§&!3§ = false;
            §`"2§.§#!w§ = true;
            (§&N§.§#Y§ as AngryBirdsCustom).§%!l§();
            §3j§.levelProfile = [];
            §3j§.§0!i§ = new §?!n§();
            (§&N§.§#Y§ as AngryBirdsCustom).§2Z§.§2!7§ = false;
            this.§"!T§.§%!6§();
            §&N§.§#Y§.§8=§(§!s§.§]O§);
            (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§0"%§();
            ((§&N§.§#Y§ as AngryBirdsCustom).§@!H§ as §]!,§).§#!r§(false,false,true);
            _loc3_ = (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§;
            _loc3_.reset();
            _loc3_.§9!q§();
            this.§"!T§.dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§[!?§));
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §[!Q§.§=J§.updateTextFields(§#t§,"Logout_Popup");
      }
   }
}
