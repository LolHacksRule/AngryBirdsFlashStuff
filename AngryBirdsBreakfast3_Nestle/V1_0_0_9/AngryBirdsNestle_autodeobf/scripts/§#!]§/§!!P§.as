package §#!]§
{
   import §!"§.§@]§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §2!,§.§%X§;
   import §2!s§.§0l§;
   import §3!0§.§`i§;
   import §6!!§.§4G§;
   import §7"6§.§^!_§;
   import §`!s§.§^2§;
   
   public class §!!P§ extends §3_§
   {
      
      public static const §]!y§:String = "CountrySelectionState";
       
      
      private var §]4§:Boolean = true;
      
      public function §!!P§(param1:§-g§, param2:§^!_§, param3:§0l§, param4:Boolean = true, param5:String = "CountrySelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function §';§() : XML
      {
         var _loc1_:XML = §%!-§.§#t§.Views.ViewCountrySelection[0];
         return AngryBirdsCustom.§6-§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         §4!q§ = new §0!%§(this);
         §4!q§.init(this.§';§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §`i§.§&!L§.§2!J§(false);
         (§-!2§.§7O§ as AngryBirdsCustom).§;!§(false);
         this.updateLocalization();
         §-!2§.§7O§.§0!l§.closeAllPopups();
         §-!2§.§7O§.§0!l§.openPopup(new §%X§(§4!q§.container),false,false,true,true);
         AngryBirdsCustom.§>q§();
         if(this.§]4§)
         {
            this.§8-§();
            this.§]4§ = false;
         }
      }
      
      override public function updateLocalization() : void
      {
         §^2§.§&!;§.updateTextFields(§4!q§.container,"CountrySelectionState");
      }
      
      private function §else§(param1:String) : void
      {
         §^2§.§&!;§.setLanguage(param1);
         §%E§.setLanguage(param1);
         param1 = §^2§.§&!;§.§1!a§();
         §4G§.§&!7§("language",param1);
      }
      
      private function §8-§() : void
      {
         var _loc1_:§@]§ = (§-!2§.§7O§ as AngryBirdsCustom).§'2§;
         if(_loc1_.§[!l§())
         {
            §^2§.§&!;§.§,[§(_loc1_.country);
            §^2§.§&!;§.setLanguage(_loc1_.language);
            §]a§(§+!a§.§]!y§);
         }
      }
   }
}
