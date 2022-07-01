package §?I§
{
   import § S§.§ !+§;
   import § S§.§4&§;
   import §%f§.§[@§;
   import §,#§.§''§;
   import §8q§.§]d§;
   import §;"+§.§9!M§;
   import §;4§.§%@§;
   import §>P§.§,3§;
   import §>P§.§-U§;
   import §>P§.§3!Z§;
   
   public class §;!N§ extends §1>§
   {
      
      private static var §1!x§:Class = §0=§;
       
      
      private var §;r§:§''§;
      
      protected var §2I§:Array;
      
      private const §&!W§:int = 6;
      
      private const §6"-§:int = 60;
      
      private var §1Y§:int = 1;
      
      private var §;F§:int = 60;
      
      private var §^k§:§3!Z§;
      
      private var §const§:Boolean;
      
      public function §;!N§(param1:§''§)
      {
         this.§2I§ = [];
         §2!b§ = true;
         §@n§ = false;
         §!d§ = true;
         super(§4&§.§=x§,§ !+§.DEFAULT,this.§'!N§());
         this.§;r§ = param1;
      }
      
      protected function §'!N§() : XML
      {
         var _loc1_:XML = §%@§.set(§1!x§);
         return AngryBirdsCustom.§3!z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         §2!b§ = true;
         this.updateTextFields();
         this.§0!N§();
         this.§1"&§();
         this.§const§ = true;
         this.§^k§ = §@!U§.getItemByName("MovieClip_LevelEndFailedPig");
      }
      
      protected function §0!N§() : void
      {
         this.§2I§.push((§@!U§.getItemByName("Button_Menu") as §9!M§).x);
         this.§2I§.push((§@!U§.getItemByName("Button_Replay") as §9!M§).x);
         this.§2I§.push((§@!U§.getItemByName("Button_NextLevel") as §9!M§).x);
      }
      
      protected function §1"&§() : void
      {
         var _loc1_:String = this.§;r§.§4!d§.getNextLevelId();
         if(!_loc1_ || _loc1_ && !(§-O§.§5!1§ as AngryBirdsCustom).§;!1§.§4"%§(_loc1_))
         {
            (§@!U§.getItemByName("Button_NextLevel") as §9!M§).setVisibility(false);
            (§@!U§.getItemByName("Button_Menu") as §9!M§).x = this.§2I§[0] + 40;
            (§@!U§.getItemByName("Button_Replay") as §9!M§).x = this.§2I§[2] - 40;
         }
         else
         {
            (§@!U§.getItemByName("Button_NextLevel") as §9!M§).setVisibility(true);
            (§@!U§.getItemByName("Button_Menu") as §9!M§).x = this.§2I§[0];
            (§@!U§.getItemByName("Button_Replay") as §9!M§).x = this.§2I§[1];
            (§@!U§.getItemByName("Button_NextLevel") as §9!M§).x = this.§2I§[2];
         }
      }
      
      protected function §0!p§(param1:String) : void
      {
         (§@!U§.getItemByName("Button_Menu") as §9!M§).setComponentVisualState(param1);
         (§@!U§.getItemByName("Button_Replay") as §9!M§).setComponentVisualState(param1);
         (§@!U§.getItemByName("Button_NextLevel") as §9!M§).setComponentVisualState(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §2!b§ = false;
               close();
               this.§;r§.§ !_§();
               break;
            case "REPLAY":
               §2!b§ = false;
               close();
               this.§;r§.§7I§(this.§;r§.§9!&§());
               break;
            case "MENU":
               §]d§.§]!u§();
               §2!b§ = false;
               close();
               this.§;r§.§7I§(this.§;r§.§4;§());
         }
      }
      
      override public function dispose() : void
      {
         this.§0!p§(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§const§ = false;
         super.dispose();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §[@§.§"e§.updateTextFields(§@!U§,"StateEndFail");
      }
      
      private function §5G§(param1:Number) : void
      {
         if(!this.§^k§)
         {
            return;
         }
         this.§;F§ -= param1;
         if(this.§;F§ <= 0)
         {
            this.§;F§ = this.§6"-§;
            ++this.§1Y§;
            if(this.§1Y§ > this.§&!W§)
            {
               this.§1Y§ = 1;
            }
            this.§^k§.goToFrame(this.§1Y§,false);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§5G§(param1);
      }
   }
}
