package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §%z§.§?8§;
   import §&_§.§`z§;
   import §2W§.§+!d§;
   import §63§.§=7§;
   import §8x§.§]"-§;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   
   public class §2!E§ extends §3!3§
   {
      
      public static const §7w§:String = "CountrySelectionState";
       
      
      private var §'!V§:Boolean = true;
      
      public function §2!E§(param1:§ q§, param2:§>u§, param3:§?8§, param4:Boolean = true, param5:String = "CountrySelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function §;!<§() : XML
      {
         var _loc1_:XML = §#p§.§'"0§.Views.ViewCountrySelection[0];
         return AngryBirdsCustom.§>@§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         § !z§ = new §-"5§(this);
         § !z§.init(this.§;!<§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6!E§.§7I§.§'F§(false);
         (§-!I§.§[f§ as AngryBirdsCustom).§%l§(false);
         this.updateLocalization();
         §-!I§.§[f§.§@!C§.closeAllPopups();
         §-!I§.§[f§.§@!C§.openPopup(new §`z§(§ !z§.container),false,false,true,true);
         AngryBirdsCustom.§[g§();
         if(this.§'!V§)
         {
            this.§9"4§();
            this.§'!V§ = false;
         }
      }
      
      override public function updateLocalization() : void
      {
         §+!d§.§<"5§.updateTextFields(§ !z§.container,"CountrySelectionState");
      }
      
      private function §]D§(param1:String) : void
      {
         §+!d§.§<"5§.setLanguage(param1);
         §2e§.setLanguage(param1);
         param1 = §+!d§.§<"5§.§,!;§();
         §]"-§.§6V§("language",param1);
      }
      
      private function §9"4§() : void
      {
         var _loc1_:§=7§ = (§-!I§.§[f§ as AngryBirdsCustom).§;"-§;
         if(_loc1_.§[<§())
         {
            §+!d§.§<"5§.§+B§(_loc1_.country);
            §+!d§.§<"5§.setLanguage(_loc1_.language);
            §?n§(§,!`§.§7w§);
         }
      }
   }
}
