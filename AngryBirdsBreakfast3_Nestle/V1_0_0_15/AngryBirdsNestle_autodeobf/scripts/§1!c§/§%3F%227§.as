package §1!c§
{
   import §%!B§.§0![§;
   import §%8§.§4O§;
   import §'!3§.§]A§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §4!i§.§@"#§;
   import §4[§.§4Z§;
   import §;V§.§%c§;
   
   public class §?"7§ extends §7X§
   {
      
      public static const §8"%§:String = "CountrySelectionState";
       
      
      private var §#!T§:Boolean = true;
      
      public function §?"7§(param1:§0![§, param2:§+f§, param3:§4O§, param4:Boolean = true, param5:String = "CountrySelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §7I§.§7!%§.Views.ViewCountrySelection[0];
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!T§ = new §9%§(this);
         §^!T§.init(this.§'!,§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §@!S§.§2A§.§`!V§(false);
         (§ !4§.§%"7§ as AngryBirdsCustom).§+!a§(false);
         this.updateLocalization();
         § !4§.§%"7§.§+!J§.closeAllPopups();
         § !4§.§%"7§.§+!J§.openPopup(new §]A§(§^!T§.container),false,false,true,true);
         AngryBirdsCustom.§get §();
         if(this.§#!T§)
         {
            this.§@v§();
            this.§#!T§ = false;
         }
      }
      
      override public function updateLocalization() : void
      {
         §@"#§.§,2§.updateTextFields(§^!T§.container,"CountrySelectionState");
      }
      
      private function §>0§(param1:String) : void
      {
         §@"#§.§,2§.setLanguage(param1);
         §8&§.setLanguage(param1);
         param1 = §@"#§.§,2§.§2"2§();
         §%c§.§6"§("language",param1);
      }
      
      private function §@v§() : void
      {
         var _loc1_:§4Z§ = (§ !4§.§%"7§ as AngryBirdsCustom).§6!"§;
         if(_loc1_.§8"§())
         {
            §@"#§.§,2§.§7!3§(_loc1_.country);
            §@"#§.§,2§.setLanguage(_loc1_.language);
            §7"6§(§%!<§.§8"%§);
         }
      }
   }
}
