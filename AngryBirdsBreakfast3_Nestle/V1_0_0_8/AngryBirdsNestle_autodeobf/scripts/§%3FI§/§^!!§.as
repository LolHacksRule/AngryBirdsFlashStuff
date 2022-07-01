package §?I§
{
   import § S§.§ !+§;
   import § S§.§4&§;
   import §,#§.§ K§;
   import §,#§.§'!&§;
   import §53§.§6!u§;
   import §53§.§["$§;
   import §8q§.§]d§;
   import §;"+§.§"!I§;
   import §;"+§.§9!M§;
   import §;4§.§%@§;
   import §>P§.§,3§;
   
   public class §^!!§ extends §1>§
   {
      
      private static var §5q§:Class = §#Z§;
      
      private static const §+!n§:Number = 250;
       
      
      private var §!!I§:§["$§ = null;
      
      private var §4!5§:Number;
      
      private var §!u§:String;
      
      public function §^!!§(param1:String)
      {
         §2!b§ = true;
         §@n§ = false;
         super(§4&§.§[!w§,§ !+§.DEFAULT,this.§'!N§());
         this.§!u§ = param1;
      }
      
      protected function §'!N§() : XML
      {
         var _loc1_:XML = §%@§.set(§5q§);
         return AngryBirdsCustom.§3!z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§4!5§ = §@!U§.getItemByName("Container_PauseMenu").x;
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+$§(false);
         if(this.§!u§)
         {
            (§@!U§.getItemByName("TextField_LevelName") as §"!I§).setText(this.§!u§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         switch(param2)
         {
            case "RESTART_LEVEL":
               §2!b§ = false;
               close();
               § K§.§>E§();
               §-O§.§5!1§.§'"6§(§ K§.§'u§);
               break;
            case "RESUME_LEVEL":
               this.§0#§();
               break;
            case "MENU":
               §]d§.§]!u§();
               §-O§.§5!1§.§'"6§(§'!&§.§'u§);
               §2!b§ = false;
               close();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         §@n§ = false;
         super.show(param1);
         this.§;!r§();
      }
      
      private function §;!r§() : void
      {
         §@!U§.getItemByName("Container_PauseMenu").x = this.§4!5§ - §+!n§;
         this.§;!i§(false);
         if(this.§!!I§ != null)
         {
            this.§!!I§.stop();
         }
         this.§!!I§ = §6!u§.§"e§.§0!O§(§@!U§.getItemByName("Container_PauseMenu"),{"x":this.§4!5§},null,0.25,§6!u§.§1!j§);
         this.§!!I§.onComplete = this.§#§;
         this.§!!I§.play();
      }
      
      private function §#§() : void
      {
         this.§;!i§(true);
      }
      
      private function §;!i§(param1:Boolean) : void
      {
         (§@!U§.getItemByName("Button_Resume") as §9!M§).setEnabled(param1);
         (§@!U§.getItemByName("Button_Replay") as §9!M§).setEnabled(param1);
         (§@!U§.getItemByName("Button_Menu") as §9!M§).setEnabled(param1);
      }
      
      private function §0#§() : void
      {
         if(this.§!!I§ != null)
         {
            this.§!!I§.stop();
         }
         this.§!!I§ = §6!u§.§"e§.§0!O§(§@!U§.getItemByName("Container_PauseMenu"),{"x":this.§4!5§ - §+!n§},null,0.2,§6!u§.§0C§);
         this.§!!I§.play();
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+$§(true);
         hide();
      }
   }
}
