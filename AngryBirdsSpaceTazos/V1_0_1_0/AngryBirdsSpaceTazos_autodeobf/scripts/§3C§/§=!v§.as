package §3C§
{
   import §0N§.§0!g§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §77§.§&!>§;
   import §77§.§@_§;
   import §8!_§.§?!#§;
   import §8!_§.StateEpisodeSelection;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   
   public class §=!v§ extends §9!;§
   {
      
      private static var §="3§:Class = §,!F§;
      
      private static const §&!Q§:Number = 250;
       
      
      private var §0"F§:§5!9§ = null;
      
      private var §"+§:Number;
      
      private var §'!D§:String;
      
      public function §=!v§(param1:String)
      {
         §>"2§ = true;
         §1"$§ = false;
         super(§1#§.§=g§,§8"6§.§ K§,§0!g§.§[!y§(§="3§));
         this.§'!D§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§"+§ = §[S§.getItemByName("Container_PauseMenu").x;
         (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(false);
         (§[S§.getItemByName("TextField_LevelName") as §&!>§).setText(this.§'!D§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         switch(param2)
         {
            case "RESTART_LEVEL":
               §>"2§ = false;
               close();
               §?!#§.§90§();
               § !g§.§;!'§.§8!^§(§?!#§.STATE_NAME);
               break;
            case "RESUME_LEVEL":
               this.§,D§();
               break;
            case "MENU":
               §<!O§.§'N§();
               § !g§.§;!'§.§8!^§(StateEpisodeSelection.STATE_NAME);
               §>"2§ = false;
               close();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         §1"$§ = false;
         super.show(param1);
         this.§>@§();
      }
      
      private function §>@§() : void
      {
         §[S§.getItemByName("Container_PauseMenu").x = this.§"+§ - §&!Q§;
         this.§!"%§(false);
         if(this.§0"F§ != null)
         {
            this.§0"F§.stop();
         }
         this.§0"F§ = §!D§.§[!1§.§1"<§(§[S§.getItemByName("Container_PauseMenu"),{"x":this.§"+§},null,0.25,§!D§.§<"G§);
         this.§0"F§.onComplete = this.§#!t§;
         this.§0"F§.play();
      }
      
      private function §#!t§() : void
      {
         this.§!"%§(true);
      }
      
      private function §!"%§(param1:Boolean) : void
      {
         (§[S§.getItemByName("Button_Resume") as §@_§).setEnabled(param1);
         (§[S§.getItemByName("Button_Replay") as §@_§).setEnabled(param1);
         (§[S§.getItemByName("Button_Menu") as §@_§).setEnabled(param1);
      }
      
      private function §,D§() : void
      {
         if(this.§0"F§ != null)
         {
            this.§0"F§.stop();
         }
         this.§0"F§ = §!D§.§[!1§.§1"<§(§[S§.getItemByName("Container_PauseMenu"),{"x":this.§"+§ - §&!Q§},null,0.25,§!D§.§ "#§);
         this.§0"F§.§%S§ = false;
         this.§0"F§.play();
         (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(true);
         hide();
      }
   }
}
