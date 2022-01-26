package §'!3§
{
   import §'"!§.§+§;
   import §1!c§.§'8§;
   import §1!c§.§;D§;
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   import §2u§.§7!&§;
   import §2u§.§]"%§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §[!Z§.§>D§;
   
   public class §8f§ extends §;!o§
   {
      
      private static var §%"-§:Class = §+a§;
      
      private static const §%n§:Number = 250;
       
      
      private var §5"3§:§]W§ = null;
      
      private var §-P§:Number;
      
      private var §?!!§:String;
      
      public function §8f§(param1:String)
      {
         §9p§ = true;
         §]G§ = false;
         super(§`!t§.§!!2§,§4z§.DEFAULT,this.§'!,§());
         this.§?!!§ = param1;
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §4!H§.§7o§(§%"-§);
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§-P§ = §29§.getItemByName("Container_PauseMenu").x;
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(false);
         if(this.§?!!§)
         {
            (§29§.getItemByName("TextField_LevelName") as §7!&§).setText(this.§?!!§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         switch(param2)
         {
            case "RESTART_LEVEL":
               §9p§ = false;
               close();
               §'8§.§@!!§();
               § !4§.§%"7§.§7"6§(§'8§.§8"%§);
               break;
            case "RESUME_LEVEL":
               this.§7!u§();
               break;
            case "MENU":
               §>D§.§>!%§();
               § !4§.§%"7§.§7"6§(§;D§.§8"%§);
               §9p§ = false;
               close();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         §]G§ = false;
         super.show(param1);
         this.§function§();
      }
      
      private function §function§() : void
      {
         §29§.getItemByName("Container_PauseMenu").x = this.§-P§ - §%n§;
         this.§7!]§(false);
         if(this.§5"3§ != null)
         {
            this.§5"3§.stop();
         }
         this.§5"3§ = §0!o§.§,2§.§4!t§(§29§.getItemByName("Container_PauseMenu"),{"x":this.§-P§},null,0.25,§0!o§.§ !E§);
         this.§5"3§.onComplete = this.§>!r§;
         this.§5"3§.play();
      }
      
      private function §>!r§() : void
      {
         this.§7!]§(true);
      }
      
      private function §7!]§(param1:Boolean) : void
      {
         (§29§.getItemByName("Button_Resume") as §]"%§).setEnabled(param1);
         (§29§.getItemByName("Button_Replay") as §]"%§).setEnabled(param1);
         (§29§.getItemByName("Button_Menu") as §]"%§).setEnabled(param1);
      }
      
      private function §7!u§() : void
      {
         if(this.§5"3§ != null)
         {
            this.§5"3§.stop();
         }
         this.§5"3§ = §0!o§.§,2§.§4!t§(§29§.getItemByName("Container_PauseMenu"),{"x":this.§-P§ - §%n§},null,0.2,§0!o§.§1[§);
         this.§5"3§.play();
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(true);
         hide();
      }
   }
}
