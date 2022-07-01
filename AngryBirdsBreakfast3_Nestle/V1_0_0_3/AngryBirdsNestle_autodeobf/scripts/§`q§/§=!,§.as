package §`q§
{
   import §-!F§.§[!Q§;
   import §3!!§.§?v§;
   import §9![§.§1!i§;
   import §=!7§.§%!%§;
   import §@f§.§&!"§;
   import §@f§.§4d§;
   import §@f§.§7h§;
   import §[<§.§#!q§;
   import §[<§.§%!T§;
   import §`!6§.§#!Z§;
   
   public class §=!,§ extends §'!O§
   {
      
      private static var §4"3§:Class = §17§;
       
      
      private var §<!2§:§#!Z§;
      
      protected var §!7§:Array;
      
      private const §;t§:int = 6;
      
      private const §=!m§:int = 60;
      
      private var §1!_§:int = 1;
      
      private var §]!F§:int = 60;
      
      private var §@?§:§7h§;
      
      private var §0I§:Boolean;
      
      public function §=!,§(param1:§#!Z§)
      {
         this.§!7§ = [];
         §=!c§ = true;
         §1!b§ = false;
         §0!2§ = true;
         super(§%!T§.§`!$§,§#!q§.DEFAULT,this.§@A§());
         this.§<!2§ = param1;
      }
      
      protected function §@A§() : XML
      {
         var _loc1_:XML = §%!%§.§<!0§(§4"3§);
         return AngryBirdsCustom.§5!g§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         §=!c§ = true;
         this.updateTextFields();
         this.§-!^§();
         this.§%Q§();
         this.§0I§ = true;
         this.§@?§ = §#t§.getItemByName("MovieClip_LevelEndFailedPig");
      }
      
      protected function §-!^§() : void
      {
         this.§!7§.push((§#t§.getItemByName("Button_Menu") as §?v§).x);
         this.§!7§.push((§#t§.getItemByName("Button_Replay") as §?v§).x);
         this.§!7§.push((§#t§.getItemByName("Button_NextLevel") as §?v§).x);
      }
      
      protected function §%Q§() : void
      {
         var _loc1_:String = this.§<!2§.§2!V§.getNextLevelId();
         if(!_loc1_ || _loc1_ && !(§&N§.§#Y§ as AngryBirdsCustom).§2Z§.§[!8§(_loc1_))
         {
            (§#t§.getItemByName("Button_NextLevel") as §?v§).setVisibility(false);
            (§#t§.getItemByName("Button_Menu") as §?v§).x = this.§!7§[0] + 40;
            (§#t§.getItemByName("Button_Replay") as §?v§).x = this.§!7§[2] - 40;
         }
         else
         {
            (§#t§.getItemByName("Button_NextLevel") as §?v§).setVisibility(true);
            (§#t§.getItemByName("Button_Menu") as §?v§).x = this.§!7§[0];
            (§#t§.getItemByName("Button_Replay") as §?v§).x = this.§!7§[1];
            (§#t§.getItemByName("Button_NextLevel") as §?v§).x = this.§!7§[2];
         }
      }
      
      protected function §'!`§(param1:String) : void
      {
         (§#t§.getItemByName("Button_Menu") as §?v§).setComponentVisualState(param1);
         (§#t§.getItemByName("Button_Replay") as §?v§).setComponentVisualState(param1);
         (§#t§.getItemByName("Button_NextLevel") as §?v§).setComponentVisualState(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §=!c§ = false;
               close();
               this.§<!2§.§6t§();
               break;
            case "REPLAY":
               §=!c§ = false;
               close();
               this.§<!2§.§-"'§(this.§<!2§.§=!Y§());
               break;
            case "MENU":
               §1!i§.§ !S§();
               §=!c§ = false;
               close();
               this.§<!2§.§-"'§(this.§<!2§.§8!+§());
         }
      }
      
      override public function dispose() : void
      {
         this.§'!`§(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§0I§ = false;
         super.dispose();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §[!Q§.§=J§.updateTextFields(§#t§,"StateEndFail");
      }
      
      private function §,J§(param1:Number) : void
      {
         if(!this.§@?§)
         {
            return;
         }
         this.§]!F§ -= param1;
         if(this.§]!F§ <= 0)
         {
            this.§]!F§ = this.§=!m§;
            ++this.§1!_§;
            if(this.§1!_§ > this.§;t§)
            {
               this.§1!_§ = 1;
            }
            this.§@?§.goToFrame(this.§1!_§,false);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§,J§(param1);
      }
   }
}
