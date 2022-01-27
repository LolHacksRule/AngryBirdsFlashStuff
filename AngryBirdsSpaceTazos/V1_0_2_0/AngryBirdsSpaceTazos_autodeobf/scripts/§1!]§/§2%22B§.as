package §1!]§
{
   import §!i§.§3!A§;
   import §!i§.§?"%§;
   import §""<§.§=Q§;
   import §"_§.§&r§;
   import §"_§.§3o§;
   import §4!t§.§95§;
   import §7!c§.§"!H§;
   import §7!c§.StateEpisodeSelection;
   import §9!G§.§"!S§;
   import §<§.§8"+§;
   import §<§.§<K§;
   
   public class §2"B§ extends §%"%§
   {
      
      private static var §0!J§:Class = §?Z§;
      
      private static const §!![§:Number = 250;
       
      
      private var §>!S§:§8"+§ = null;
      
      private var §>!F§:Number;
      
      private var §<!P§:String;
      
      public function §2"B§(param1:String)
      {
         §&"<§ = true;
         § !z§ = false;
         super(§&r§.§1Z§,§3o§.§0!n§,§=Q§.§%!g§(§0!J§));
         this.§<!P§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§>!F§ = §&#§.getItemByName("Container_PauseMenu").x;
         (§&!h§.§ u§ as §^"=§).§?P§.§@!k§(false);
         (§&#§.getItemByName("TextField_LevelName") as §?"%§).setText(this.§<!P§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         switch(param2)
         {
            case "RESTART_LEVEL":
               §&"<§ = false;
               close();
               §"!H§.§?"?§();
               §&!h§.§ u§.§2g§(§"!H§.STATE_NAME);
               break;
            case "RESUME_LEVEL":
               this.§[2§();
               break;
            case "MENU":
               §"!S§.§#9§();
               §&!h§.§ u§.§2g§(StateEpisodeSelection.STATE_NAME);
               §&"<§ = false;
               close();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         § !z§ = false;
         super.show(param1);
         this.§@C§();
      }
      
      private function §@C§() : void
      {
         §&#§.getItemByName("Container_PauseMenu").x = this.§>!F§ - §!![§;
         this.§>b§(false);
         if(this.§>!S§ != null)
         {
            this.§>!S§.stop();
         }
         this.§>!S§ = §<K§.§<"B§.§`!c§(§&#§.getItemByName("Container_PauseMenu"),{"x":this.§>!F§},null,0.25,§<K§.§6!r§);
         this.§>!S§.onComplete = this.§3"4§;
         this.§>!S§.play();
      }
      
      private function §3"4§() : void
      {
         this.§>b§(true);
      }
      
      private function §>b§(param1:Boolean) : void
      {
         (§&#§.getItemByName("Button_Resume") as §3!A§).setEnabled(param1);
         (§&#§.getItemByName("Button_Replay") as §3!A§).setEnabled(param1);
         (§&#§.getItemByName("Button_Menu") as §3!A§).setEnabled(param1);
      }
      
      private function §[2§() : void
      {
         if(this.§>!S§ != null)
         {
            this.§>!S§.stop();
         }
         this.§>!S§ = §<K§.§<"B§.§`!c§(§&#§.getItemByName("Container_PauseMenu"),{"x":this.§>!F§ - §!![§},null,0.25,§<K§.§6!K§);
         this.§>!S§.§5!Y§ = false;
         this.§>!S§.play();
         (§&!h§.§ u§ as §^"=§).§?P§.§@!k§(true);
         hide();
      }
   }
}
