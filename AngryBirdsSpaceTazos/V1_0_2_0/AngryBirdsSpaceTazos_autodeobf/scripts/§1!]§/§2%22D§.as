package §1!]§
{
   import §!i§.§3!A§;
   import §""<§.§=Q§;
   import §"_§.§&r§;
   import §"_§.§3o§;
   import §'#§.§^4§;
   import §4!t§.§95§;
   import §4!t§.§>r§;
   import §4!t§.§?i§;
   import §7!c§.§,l§;
   import §9!G§.§"!S§;
   
   public class §2"D§ extends §%"%§
   {
      
      private static var §1"6§:Class = §1&§;
       
      
      private var §[!S§:§,l§;
      
      protected var §+!O§:Array;
      
      private const §super§:int = 6;
      
      private const §!m§:int = 60;
      
      private var §-Y§:int = 1;
      
      private var §4!V§:int = 60;
      
      private var §?!8§:§?i§;
      
      private var §;q§:Boolean;
      
      public function §2"D§(param1:§,l§)
      {
         this.§+!O§ = [];
         §&"<§ = true;
         § !z§ = false;
         super(§&r§.§8">§,§3o§.§0!n§,§=Q§.§%!g§(§1"6§));
         this.§[!S§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         §&"<§ = true;
         this.updateTextFields();
         this.§0!'§();
         this.§4"§();
         this.§;q§ = true;
         this.§?!8§ = §&#§.getItemByName("MovieClip_LevelEndFailedPig");
      }
      
      protected function §0!'§() : void
      {
         this.§+!O§.push((§&#§.getItemByName("Button_Menu") as §3!A§).x);
         this.§+!O§.push((§&#§.getItemByName("Button_Replay") as §3!A§).x);
         this.§+!O§.push((§&#§.getItemByName("Button_NextLevel") as §3!A§).x);
      }
      
      protected function §4"§() : void
      {
         var _loc1_:String = this.§[!S§.§>F§.getNextLevelId();
         if(!_loc1_ || _loc1_ && !(§&!h§.§ u§ as §^"=§).§^!7§.§1">§(_loc1_))
         {
            (§&#§.getItemByName("Button_NextLevel") as §3!A§).setVisibility(false);
            (§&#§.getItemByName("Button_Menu") as §3!A§).x = this.§+!O§[0] + 40;
            (§&#§.getItemByName("Button_Replay") as §3!A§).x = this.§+!O§[2] - 40;
         }
         else
         {
            (§&#§.getItemByName("Button_NextLevel") as §3!A§).setVisibility(true);
            (§&#§.getItemByName("Button_Menu") as §3!A§).x = this.§+!O§[0];
            (§&#§.getItemByName("Button_Replay") as §3!A§).x = this.§+!O§[1];
            (§&#§.getItemByName("Button_NextLevel") as §3!A§).x = this.§+!O§[2];
         }
      }
      
      protected function §5"2§(param1:String) : void
      {
         (§&#§.getItemByName("Button_Menu") as §3!A§).setComponentVisualState(param1);
         (§&#§.getItemByName("Button_Replay") as §3!A§).setComponentVisualState(param1);
         (§&#§.getItemByName("Button_NextLevel") as §3!A§).setComponentVisualState(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §&"<§ = false;
               close();
               this.§[!S§.§=^§();
               break;
            case "REPLAY":
               §&"<§ = false;
               close();
               this.§[!S§.§ O§(this.§[!S§.§+"6§());
               break;
            case "MENU":
               §"!S§.§#9§();
               §&"<§ = false;
               close();
               this.§[!S§.§ O§(this.§[!S§.§["-§());
         }
      }
      
      override public function dispose() : void
      {
         this.§5"2§(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§;q§ = false;
         super.dispose();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §^4§.§<"B§.updateTextFields(§&#§,"StateEndFail");
      }
      
      private function §]7§(param1:Number) : void
      {
         if(!this.§?!8§)
         {
            return;
         }
         this.§4!V§ -= param1;
         if(this.§4!V§ <= 0)
         {
            this.§4!V§ = this.§!m§;
            ++this.§-Y§;
            if(this.§-Y§ > this.§super§)
            {
               this.§-Y§ = 1;
            }
            this.§?!8§.goToFrame(this.§-Y§,false);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§]7§(param1);
      }
   }
}
