package §9%§
{
   import §%"%§.§2Z§;
   import §,!M§.§ !;§;
   import §,!M§.§@!T§;
   import §1z§.§^!@§;
   import §3>§.§[8§;
   import §4u§.§!H§;
   import §>"2§.§8k§;
   import §]!x§.§9"0§;
   
   public class §2!z§ extends §>!s§
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
       
      
      private var §8c§:§9"0§;
      
      public function §2!z§(param1:§^!@§, param2:Boolean, param3:String, param4:§2Z§, param5:§[8§)
      {
         super(param1,param2,param3,param4);
         this.§8c§ = new §9"0§(this,param5);
      }
      
      protected function §8u§() : XML
      {
         return §@!T§.§-!8§.Views.ViewLevelEndCustom[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §%!A§ = new § !;§(this);
         §%!A§.init(this.§8u§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §2&§.§6o§.§^7§.§;!7§();
         §2&§.§6o§.§^7§.openPopup(this.§8c§);
         §!H§.§3R§.updateTextFields(§%!A§.container,"StateEnd");
         (§2&§.§6o§ as §@T§).§56§.§-_§(true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§8c§.isOpen)
         {
            this.§8c§.update(param1);
         }
         if(nextState.length > 0)
         {
            §8k§.§;!]§.clearLevel();
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
      
      public function §!!d§() : String
      {
         return §^! §.STATE_NAME;
      }
      
      public function §&!f§() : String
      {
         return StateEpisodeSelection.STATE_NAME;
      }
      
      public function §]!R§(param1:String) : void
      {
         § !I§(param1);
      }
      
      public function get §,"=§() : §^!@§
      {
         return §#"=§;
      }
      
      public function §%!o§() : void
      {
         §#"=§.loadLevel(§#"=§.getValidLevelId(this.§,"=§.getNextLevelId()));
         § !I§(§^! §.STATE_NAME);
      }
   }
}
