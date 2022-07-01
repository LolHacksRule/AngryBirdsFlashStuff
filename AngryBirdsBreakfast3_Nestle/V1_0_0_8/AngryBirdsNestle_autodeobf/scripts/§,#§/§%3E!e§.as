package §,#§
{
   import §!"+§.§2!H§;
   import §"!G§.§3!f§;
   import §%f§.§[@§;
   import §&!>§.§'!x§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§3"&§;
   import §?I§.§8!W§;
   import §^t§.§4!C§;
   import com.angrybirds.§4"6§;
   
   public class §>!e§ extends §@!4§
   {
      
      public static const §'u§:String = "CountrySelectionState";
       
      
      private var §+!_§:Boolean = true;
      
      public function §>!e§(param1:§3"&§, param2:§3!f§, param3:§2!H§, param4:Boolean = true, param5:String = "CountrySelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function §'!N§() : XML
      {
         var _loc1_:XML = §8!1§.§31§.Views.ViewCountrySelection[0];
         return AngryBirdsCustom.§3!z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!6§ = new §58§(this);
         §^!6§.init(this.§'!N§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4"6§.§;!k§.§7!X§(false);
         (§-O§.§5!1§ as AngryBirdsCustom).§+!S§(false);
         this.updateLocalization();
         §-O§.§5!1§.§-6§.closeAllPopups();
         §-O§.§5!1§.§-6§.openPopup(new §8!W§(§^!6§.container),false,false,true,true);
         AngryBirdsCustom.§"-§();
         if(this.§+!_§)
         {
            this.§%M§();
            this.§+!_§ = false;
         }
      }
      
      override public function updateLocalization() : void
      {
         §[@§.§"e§.updateTextFields(§^!6§.container,"CountrySelectionState");
      }
      
      private function §6$§(param1:String) : void
      {
         §[@§.§"e§.setLanguage(param1);
         §>!L§.setLanguage(param1);
         param1 = §[@§.§"e§.§1-§();
         §4!C§.§6'§("language",param1);
      }
      
      private function §%M§() : void
      {
         var _loc1_:§'!x§ = (§-O§.§5!1§ as AngryBirdsCustom).§-""§;
         if(_loc1_.§6!k§())
         {
            §[@§.§"e§.§,!"§(_loc1_.country);
            §[@§.§"e§.setLanguage(_loc1_.language);
            §'"6§(§=!8§.§'u§);
         }
      }
   }
}
