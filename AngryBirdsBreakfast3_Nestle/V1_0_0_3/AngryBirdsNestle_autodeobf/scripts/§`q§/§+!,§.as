package §`q§
{
   import §3!!§.§?v§;
   import §3!!§.native;
   import §9![§.§1!i§;
   import §=!7§.§%!%§;
   import §=3§.§]!X§;
   import §=3§.§`!F§;
   import §@f§.§&!"§;
   import §[<§.§#!q§;
   import §[<§.§%!T§;
   import §`!6§.§,z§;
   import §`!6§.§-%§;
   
   public class §+!,§ extends §'!O§
   {
      
      private static var §0K§:Class = §"!o§;
      
      private static const §-2§:Number = 250;
       
      
      private var §[o§:§]!X§ = null;
      
      private var §^w§:Number;
      
      private var §1!,§:String;
      
      public function §+!,§(param1:String)
      {
         §=!c§ = true;
         §1!b§ = false;
         super(§%!T§.§3!n§,§#!q§.DEFAULT,this.§@A§());
         this.§1!,§ = param1;
      }
      
      protected function §@A§() : XML
      {
         var _loc1_:XML = §%!%§.§<!0§(§0K§);
         return AngryBirdsCustom.§5!g§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§^w§ = §#t§.getItemByName("Container_PauseMenu").x;
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§"B§(false);
         if(this.§1!,§)
         {
            (§#t§.getItemByName("TextField_LevelName") as native).setText(this.§1!,§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         switch(param2)
         {
            case "RESTART_LEVEL":
               §=!c§ = false;
               close();
               §-%§.§%!@§();
               §&N§.§#Y§.§8=§(§-%§.§]O§);
               break;
            case "RESUME_LEVEL":
               this.§=!e§();
               break;
            case "MENU":
               §1!i§.§ !S§();
               §&N§.§#Y§.§8=§(§,z§.§]O§);
               §=!c§ = false;
               close();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         §1!b§ = false;
         super.show(param1);
         this.§?&§();
      }
      
      private function §?&§() : void
      {
         §#t§.getItemByName("Container_PauseMenu").x = this.§^w§ - §-2§;
         this.§'!i§(false);
         if(this.§[o§ != null)
         {
            this.§[o§.stop();
         }
         this.§[o§ = §`!F§.§=J§.§-r§(§#t§.getItemByName("Container_PauseMenu"),{"x":this.§^w§},null,0.25,§`!F§.§@!%§);
         this.§[o§.onComplete = this.§"!y§;
         this.§[o§.play();
      }
      
      private function §"!y§() : void
      {
         this.§'!i§(true);
      }
      
      private function §'!i§(param1:Boolean) : void
      {
         (§#t§.getItemByName("Button_Resume") as §?v§).setEnabled(param1);
         (§#t§.getItemByName("Button_Replay") as §?v§).setEnabled(param1);
         (§#t§.getItemByName("Button_Menu") as §?v§).setEnabled(param1);
      }
      
      private function §=!e§() : void
      {
         if(this.§[o§ != null)
         {
            this.§[o§.stop();
         }
         this.§[o§ = §`!F§.§=J§.§-r§(§#t§.getItemByName("Container_PauseMenu"),{"x":this.§^w§ - §-2§},null,0.2,§`!F§.§"l§);
         this.§[o§.play();
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§"B§(true);
         hide();
      }
   }
}
