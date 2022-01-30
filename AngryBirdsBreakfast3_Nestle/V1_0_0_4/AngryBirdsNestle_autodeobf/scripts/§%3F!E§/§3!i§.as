package §?!E§
{
   import §%9§.§3!p§;
   import §'<§.§=!o§;
   import §-!G§.§]!V§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §5!7§.§<"2§;
   import §;!b§.§%>§;
   import §?-§.§do §;
   import §`6§.§!!]§;
   import com.angrybirds.§6U§;
   
   public class §3!i§ extends §5"#§
   {
      
      public static const §+B§:String = "CountrySelectionState";
       
      
      private var §-K§:Boolean = true;
      
      public function §3!i§(param1:§=!o§, param2:§%>§, param3:§<"2§, param4:Boolean = true, param5:String = "CountrySelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function §^!!§() : XML
      {
         var _loc1_:XML = §+!b§.§#!P§.Views.ViewCountrySelection[0];
         return AngryBirdsCustom.§+Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         §#2§ = new §`%§(this);
         §#2§.init(this.§^!!§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6U§.§+_§.§ W§(false);
         (§-!l§.§"x§ as AngryBirdsCustom).§,;§(false);
         this.updateLocalization();
         §-!l§.§"x§.§,!W§.closeAllPopups();
         §-!l§.§"x§.§,!W§.openPopup(new §3!p§(§#2§.container),false,false,true,true);
         AngryBirdsCustom.§"H§();
         if(this.§-K§)
         {
            this.§!u§();
            this.§-K§ = false;
         }
      }
      
      override public function updateLocalization() : void
      {
         §!!]§.§?!+§.updateTextFields(§#2§.container,"CountrySelectionState");
      }
      
      private function §6"3§(param1:String) : void
      {
         §!!]§.§?!+§.setLanguage(param1);
         §"q§.setLanguage(param1);
         param1 = §!!]§.§?!+§.§[!;§();
         §do §.§>"-§("language",param1);
      }
      
      private function §!u§() : void
      {
         var _loc1_:§]!V§ = (§-!l§.§"x§ as AngryBirdsCustom).§4d§;
         if(_loc1_.§7!I§())
         {
            §!!]§.§?!+§.§9Q§(_loc1_.country);
            §!!]§.§?!+§.setLanguage(_loc1_.language);
            §0!w§(§^"!§.§+B§);
         }
      }
   }
}
