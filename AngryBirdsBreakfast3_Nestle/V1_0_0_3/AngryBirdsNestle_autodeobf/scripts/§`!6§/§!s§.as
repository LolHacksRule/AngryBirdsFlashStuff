package §`!6§
{
   import § !H§.§0!m§;
   import §!!<§.§-"4§;
   import §-!F§.§[!Q§;
   import §=X§.§`!3§;
   import §>!a§.§5l§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import §`q§.§21§;
   import com.angrybirds.§4!l§;
   
   public class §!s§ extends §-!c§
   {
      
      public static const §]O§:String = "CountrySelectionState";
       
      
      private var §6H§:Boolean = true;
      
      public function §!s§(param1:§5l§, param2:§-!<§, param3:§-"4§, param4:Boolean = true, param5:String = "CountrySelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function §@A§() : XML
      {
         var _loc1_:XML = §"!j§.§3=§.Views.ViewCountrySelection[0];
         return AngryBirdsCustom.§5!g§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         §!^§ = new §1"1§(this);
         §!^§.init(this.§@A§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4!l§.§,!8§.§&!L§(false);
         (§&N§.§#Y§ as AngryBirdsCustom).§1"%§(false);
         this.updateLocalization();
         §&N§.§#Y§.§@!H§.closeAllPopups();
         §&N§.§#Y§.§@!H§.openPopup(new §21§(§!^§.container),false,false,true,true);
         AngryBirdsCustom.§''§();
         if(this.§6H§)
         {
            this.§4!X§();
            this.§6H§ = false;
         }
      }
      
      override public function updateLocalization() : void
      {
         §[!Q§.§=J§.updateTextFields(§!^§.container,"CountrySelectionState");
      }
      
      private function §%j§(param1:String) : void
      {
         §[!Q§.§=J§.setLanguage(param1);
         §@d§.setLanguage(param1);
         param1 = §[!Q§.§=J§.§"" §();
         §0!m§.§<Q§("language",param1);
      }
      
      private function §4!X§() : void
      {
         var _loc1_:§`!3§ = (§&N§.§#Y§ as AngryBirdsCustom).§"§;
         if(_loc1_.§>"%§())
         {
            §[!Q§.§=J§.§#!5§(_loc1_.country);
            §[!Q§.§=J§.setLanguage(_loc1_.language);
            §8=§(§'3§.§]O§);
         }
      }
   }
}
