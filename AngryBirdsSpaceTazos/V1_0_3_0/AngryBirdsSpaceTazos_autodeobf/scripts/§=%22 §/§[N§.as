package §=" §
{
   import §'!n§.§[!I§;
   import §+"C§.§!!`§;
   import §+k§.§0"4§;
   import §+k§.§7x§;
   import §4",§.§,!j§;
   import §6!M§.§3Y§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   
   public class §[N§ extends §[!B§
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
       
      
      private var §1!h§:§!!`§;
      
      public function §[N§(param1:§,!j§, param2:Boolean, param3:String, param4:§;l§, param5:§3Y§)
      {
         super(param1,param2,param3,param4);
         this.§1!h§ = new §!!`§(this,param5);
      }
      
      protected function §98§() : XML
      {
         return §7x§.§+2§.Views.ViewLevelEndCustom[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §6!J§ = new §0"4§(this);
         §6!J§.init(this.§98§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&"<§.§<!7§.§1"0§.§`x§();
         §&"<§.§<!7§.§1"0§.openPopup(this.§1!h§);
         §[!I§.§8!J§.updateTextFields(§6!J§.container,"StateEnd");
         (§&"<§.§<!7§ as §["!§).§^"<§.§^"A§(true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§1!h§.isOpen)
         {
            this.§1!h§.update(param1);
         }
         if(nextState.length > 0)
         {
            §8!w§.§5!V§.clearLevel();
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
      
      public function §@!j§() : String
      {
         return § Q§.STATE_NAME;
      }
      
      public function §=N§() : String
      {
         return StateEpisodeSelection.STATE_NAME;
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
