package §9%§
{
   import §%"%§.§2Z§;
   import §,!M§.§ !;§;
   import §,!M§.§@!T§;
   import §1z§.§^!@§;
   import §>"2§.§8k§;
   import §]!x§.§=!>§;
   
   public class §5"!§ extends §>!s§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
       
      
      private var §8c§:§=!>§;
      
      public function §5"!§(param1:§^!@§, param2:Boolean, param3:String, param4:§2Z§)
      {
         super(param1,param2,param3,param4);
         this.§8c§ = new §=!>§(this);
      }
      
      override protected function init() : void
      {
         §%!A§ = new § !;§(this);
         §%!A§.init(this.§8u§());
      }
      
      protected function §8u§() : XML
      {
         return §@!T§.§-!8§.Views.ViewLevelEndFailCustom[0];
      }
      
      public function § r§() : String
      {
         return StateEpisodeSelection.STATE_NAME;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §2&§.§6o§.§^7§.§;!7§();
         §2&§.§6o§.§^7§.openPopup(this.§8c§,false,false);
         (§2&§.§6o§ as §@T§).§56§.§&"C§(false);
         (§2&§.§6o§ as §@T§).§56§.§!!5§(false);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §8k§.§;!]§.clearLevel();
         }
         this.§8c§.update(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function §7T§() : String
      {
         return §^! §.STATE_NAME;
      }
      
      public function §#!K§() : String
      {
         return § §.STATE_NAME;
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
