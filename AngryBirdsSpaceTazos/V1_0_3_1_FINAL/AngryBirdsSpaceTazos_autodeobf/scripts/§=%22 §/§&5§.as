package §=" §
{
   import §+"C§.§'`§;
   import §+k§.§0"4§;
   import §+k§.§7x§;
   import §4",§.§,!j§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   
   public class §&5§ extends §[!B§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
       
      
      private var §1!h§:§'`§;
      
      public function §&5§(param1:§,!j§, param2:Boolean, param3:String, param4:§;l§)
      {
         super(param1,param2,param3,param4);
         this.§1!h§ = new §'`§(this);
      }
      
      override protected function init() : void
      {
         §6!J§ = new §0"4§(this);
         §6!J§.init(this.§98§());
      }
      
      protected function §98§() : XML
      {
         return §7x§.§+2§.Views.ViewLevelEndFailCustom[0];
      }
      
      public function §@b§() : String
      {
         return StateEpisodeSelection.STATE_NAME;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&"<§.§<!7§.§1"0§.§`x§();
         §&"<§.§<!7§.§1"0§.openPopup(this.§1!h§,false,false);
         (§&"<§.§<!7§ as §["!§).§^"<§.§@R§(false);
         (§&"<§.§<!7§ as §["!§).§^"<§.§`!4§(false);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §8!w§.§5!V§.clearLevel();
         }
         this.§1!h§.update(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function §""5§() : String
      {
         return § Q§.STATE_NAME;
      }
      
      public function §&P§() : String
      {
         return §]!"§.STATE_NAME;
      }
      
      public function §[!y§(param1:String) : void
      {
         §'Q§(param1);
      }
      
      public function get §;!u§() : §,!j§
      {
         return §]m§;
      }
      
      public function §-";§() : void
      {
         §]m§.loadLevel(§]m§.getValidLevelId(this.§;!u§.getNextLevelId()));
         §'Q§(§ Q§.STATE_NAME);
      }
   }
}
