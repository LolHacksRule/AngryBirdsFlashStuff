package §]!x§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §-!r§.§'!h§;
   import §-!r§.§>§;
   import §3!S§.§<5§;
   import §7!6§.§@Y§;
   import §9%§.StateEpisodeSelection;
   import §9%§.§^! §;
   import §="<§.§#`§;
   import §="<§.§87§;
   import §`!w§.§?!U§;
   
   public class §1!p§ extends §5!O§
   {
      
      private static var §6J§:Class = §%"=§;
      
      private static const §3!P§:Number = 250;
       
      
      private var §5!'§:§,4§ = null;
      
      private var §%4§:Number;
      
      private var §"-§:String;
      
      public function §1!p§(param1:String)
      {
         §<"5§ = true;
         §8!X§ = false;
         super(§>§.§%!§,§'!h§.§3"4§,§?!U§.§3!c§(§6J§));
         this.§"-§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§%4§ = §3!a§.getItemByName("Container_PauseMenu").x;
         (§2&§.§6o§ as §@T§).§56§.§&"C§(false);
         (§3!a§.getItemByName("TextField_LevelName") as §#`§).setText(this.§"-§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         switch(param2)
         {
            case "RESTART_LEVEL":
               §<"5§ = false;
               close();
               §^! §.§15§();
               §2&§.§6o§.§ !I§(§^! §.STATE_NAME);
               break;
            case "RESUME_LEVEL":
               this.§@K§();
               break;
            case "MENU":
               §<5§.§>!R§();
               §2&§.§6o§.§ !I§(StateEpisodeSelection.STATE_NAME);
               §<"5§ = false;
               close();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         §8!X§ = false;
         super.show(param1);
         this.§?8§();
      }
      
      private function §?8§() : void
      {
         §3!a§.getItemByName("Container_PauseMenu").x = this.§%4§ - §3!P§;
         this.§["F§(false);
         if(this.§5!'§ != null)
         {
            this.§5!'§.stop();
         }
         this.§5!'§ = §"!t§.§3R§.§2m§(§3!a§.getItemByName("Container_PauseMenu"),{"x":this.§%4§},null,0.25,§"!t§.§=!c§);
         this.§5!'§.onComplete = this.§`!7§;
         this.§5!'§.play();
      }
      
      private function §`!7§() : void
      {
         this.§["F§(true);
      }
      
      private function §["F§(param1:Boolean) : void
      {
         (§3!a§.getItemByName("Button_Resume") as §87§).setEnabled(param1);
         (§3!a§.getItemByName("Button_Replay") as §87§).setEnabled(param1);
         (§3!a§.getItemByName("Button_Menu") as §87§).setEnabled(param1);
      }
      
      private function §@K§() : void
      {
         if(this.§5!'§ != null)
         {
            this.§5!'§.stop();
         }
         this.§5!'§ = §"!t§.§3R§.§2m§(§3!a§.getItemByName("Container_PauseMenu"),{"x":this.§%4§ - §3!P§},null,0.25,§"!t§.§;!B§);
         this.§5!'§.§3"&§ = false;
         this.§5!'§.play();
         (§2&§.§6o§ as §@T§).§56§.§&"C§(true);
         hide();
      }
   }
}
