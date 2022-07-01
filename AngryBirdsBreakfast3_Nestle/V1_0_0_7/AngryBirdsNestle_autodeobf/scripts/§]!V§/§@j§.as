package §]!V§
{
   import §!!&§.§`!$§;
   import §!P§.§5!1§;
   import §"q§.§8[§;
   import §'!'§.§0!p§;
   import §'!u§.§&S§;
   import §@!l§.§0§;
   import §[^§.§'g§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import com.angrybirds.§#Z§;
   
   public class §@j§ extends §>!9§
   {
      
      public static const §+a§:String = "CountrySelectionState";
       
      
      private var §?!Z§:Boolean = true;
      
      public function §@j§(param1:§5!1§, param2:§&S§, param3:§'g§, param4:Boolean = true, param5:String = "CountrySelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function §[x§() : XML
      {
         var _loc1_:XML = §=!A§.§`O§.Views.ViewCountrySelection[0];
         return AngryBirdsCustom.§^Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         §5+§ = new §;!j§(this);
         §5+§.init(this.§[x§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §#Z§.§'0§.§#o§(false);
         (§,!X§.§>!G§ as AngryBirdsCustom).§%>§(false);
         this.updateLocalization();
         §,!X§.§>!G§.§5!K§.closeAllPopups();
         §,!X§.§>!G§.§5!K§.openPopup(new §0§(§5+§.container),false,false,true,true);
         AngryBirdsCustom.§ " §();
         if(this.§?!Z§)
         {
            this.§>!Y§();
            this.§?!Z§ = false;
         }
      }
      
      override public function updateLocalization() : void
      {
         §`!$§.§>!P§.updateTextFields(§5+§.container,"CountrySelectionState");
      }
      
      private function §0!@§(param1:String) : void
      {
         §`!$§.§>!P§.setLanguage(param1);
         §-F§.setLanguage(param1);
         param1 = §`!$§.§>!P§.§?!2§();
         §0!p§.§`_§("language",param1);
      }
      
      private function §>!Y§() : void
      {
         var _loc1_:§8[§ = (§,!X§.§>!G§ as AngryBirdsCustom).§@!&§;
         if(_loc1_.§^l§())
         {
            §`!$§.§>!P§.§<$§(_loc1_.country);
            §`!$§.§>!P§.setLanguage(_loc1_.language);
            §8!`§(§`'§.§+a§);
         }
      }
   }
}
