package §%9§
{
   import §"I§.§ !R§;
   import §&!>§.§3!k§;
   import §><§.§0!M§;
   import §><§.§4!N§;
   import §?!E§.§62§;
   import §?!E§.§;!k§;
   import §?N§.§9r§;
   import §?N§.§>!H§;
   import §@#§.§4!O§;
   import §@#§.§>L§;
   import §[!b§.§'!R§;
   
   public class §-!o§ extends §<a§
   {
      
      private static var §&c§:Class = §[x§;
      
      private static const §]A§:Number = 250;
       
      
      private var §+x§:§4!N§ = null;
      
      private var §0!u§:Number;
      
      private var §5!w§:String;
      
      public function §-!o§(param1:String)
      {
         §?!^§ = true;
         §+!X§ = false;
         super(§9r§.§9"#§,§>!H§.DEFAULT,this.§^!!§());
         this.§5!w§ = param1;
      }
      
      protected function §^!!§() : XML
      {
         var _loc1_:XML = § !R§.§`G§(§&c§);
         return AngryBirdsCustom.§+Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§0!u§ = §0+§.getItemByName("Container_PauseMenu").x;
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§<<§(false);
         if(this.§5!w§)
         {
            (§0+§.getItemByName("TextField_LevelName") as §>L§).setText(this.§5!w§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         switch(param2)
         {
            case "RESTART_LEVEL":
               §?!^§ = false;
               close();
               §62§.§ case§();
               §-!l§.§"x§.§0!w§(§62§.§+B§);
               break;
            case "RESUME_LEVEL":
               this.§3!t§();
               break;
            case "MENU":
               §3!k§.§#!3§();
               §-!l§.§"x§.§0!w§(§;!k§.§+B§);
               §?!^§ = false;
               close();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         §+!X§ = false;
         super.show(param1);
         this.§,"2§();
      }
      
      private function §,"2§() : void
      {
         §0+§.getItemByName("Container_PauseMenu").x = this.§0!u§ - §]A§;
         this.§,!@§(false);
         if(this.§+x§ != null)
         {
            this.§+x§.stop();
         }
         this.§+x§ = §0!M§.§?!+§.§3d§(§0+§.getItemByName("Container_PauseMenu"),{"x":this.§0!u§},null,0.25,§0!M§.§;!i§);
         this.§+x§.onComplete = this.§"!U§;
         this.§+x§.play();
      }
      
      private function §"!U§() : void
      {
         this.§,!@§(true);
      }
      
      private function §,!@§(param1:Boolean) : void
      {
         (§0+§.getItemByName("Button_Resume") as §4!O§).setEnabled(param1);
         (§0+§.getItemByName("Button_Replay") as §4!O§).setEnabled(param1);
         (§0+§.getItemByName("Button_Menu") as §4!O§).setEnabled(param1);
      }
      
      private function §3!t§() : void
      {
         if(this.§+x§ != null)
         {
            this.§+x§.stop();
         }
         this.§+x§ = §0!M§.§?!+§.§3d§(§0+§.getItemByName("Container_PauseMenu"),{"x":this.§0!u§ - §]A§},null,0.2,§0!M§.§=!a§);
         this.§+x§.play();
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§<<§(true);
         hide();
      }
   }
}
