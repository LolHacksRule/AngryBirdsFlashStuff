package §7!c§
{
   import §"!>§.§<!o§;
   import §'#§.§^4§;
   import §+!9§.§;0§;
   import §+w§.§,!@§;
   import §+w§.§?e§;
   import §1!]§.§+!K§;
   import §;!0§.;
   import §;"=§.§6!<§;
   
   public class §[!>§ extends §%<§
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
       
      
      private var §0!t§:§+!K§;
      
      public function §[!>§(param1:§#2§, param2:Boolean, param3:String, param4:§<!o§, param5:§6!<§)
      {
         super(param1,param2,param3,param4);
         this.§0!t§ = new §+!K§(this,param5);
      }
      
      protected function §,3§() : XML
      {
         return §?e§.§'"G§.Views.ViewLevelEndCustom[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §4§ = new §,!@§(this);
         §4§.init(this.§,3§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&!h§.§ u§.§-"F§.§=!B§();
         §&!h§.§ u§.§-"F§.openPopup(this.§0!t§);
         §^4§.§<"B§.updateTextFields(§4§.container,"StateEnd");
         (§&!h§.§ u§ as §^"=§).§?P§.§!!6§(true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§0!t§.isOpen)
         {
            this.§0!t§.update(param1);
         }
         if(nextState.length > 0)
         {
            §;0§.§@!^§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function §=!X§() : String
      {
         return §"!H§.STATE_NAME;
      }
      
      public function §-m§() : String
      {
         return StateEpisodeSelection.STATE_NAME;
      }
      
      public function § O§(param1:String) : void
      {
         §2g§(param1);
      }
      
      public function get §>F§() : §#2§
      {
         return §,W§;
      }
      
      public function §=^§() : void
      {
         §,W§.loadLevel(§,W§.getValidLevelId(this.§>F§.getNextLevelId()));
         §2g§(§"!H§.STATE_NAME);
      }
   }
}
