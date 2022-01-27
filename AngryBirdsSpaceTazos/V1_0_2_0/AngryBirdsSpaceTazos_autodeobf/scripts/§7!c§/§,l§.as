package §7!c§
{
   import §"!>§.§<!o§;
   import §+!9§.§;0§;
   import §+w§.§,!@§;
   import §+w§.§?e§;
   import §1!]§.§2"D§;
   import §;!0§.;
   
   public class §,l§ extends §%<§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
       
      
      private var §0!t§:§2"D§;
      
      public function §,l§(param1:§#2§, param2:Boolean, param3:String, param4:§<!o§)
      {
         super(param1,param2,param3,param4);
         this.§0!t§ = new §2"D§(this);
      }
      
      override protected function init() : void
      {
         §4§ = new §,!@§(this);
         §4§.init(this.§,3§());
      }
      
      protected function §,3§() : XML
      {
         return §?e§.§'"G§.Views.ViewLevelEndFailCustom[0];
      }
      
      public function §["-§() : String
      {
         return StateEpisodeSelection.STATE_NAME;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&!h§.§ u§.§-"F§.§=!B§();
         §&!h§.§ u§.§-"F§.openPopup(this.§0!t§,false,false);
         (§&!h§.§ u§ as §^"=§).§?P§.§@!k§(false);
         (§&!h§.§ u§ as §^"=§).§?P§.§%!P§(false);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §;0§.§@!^§.clearLevel();
         }
         this.§0!t§.update(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function §+"6§() : String
      {
         return §"!H§.STATE_NAME;
      }
      
      public function §<!r§() : String
      {
         return §!!Q§.STATE_NAME;
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
