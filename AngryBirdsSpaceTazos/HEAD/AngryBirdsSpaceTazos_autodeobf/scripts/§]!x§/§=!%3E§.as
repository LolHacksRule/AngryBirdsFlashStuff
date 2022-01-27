package §]!x§
{
   import §-!r§.§'!h§;
   import §-!r§.§>§;
   import §3!S§.§<5§;
   import §4u§.§!H§;
   import §7!6§.§"!O§;
   import §7!6§.§@Y§;
   import §7!6§.§^l§;
   import §9%§.§5"!§;
   import §="<§.§87§;
   import §`!w§.§?!U§;
   
   public class §=!>§ extends §5!O§
   {
      
      private static var §'!o§:Class = §4!'§;
       
      
      private var §#"$§:§5"!§;
      
      protected var §5$§:Array;
      
      private const §6V§:int = 6;
      
      private const §]!n§:int = 60;
      
      private var §5"&§:int = 1;
      
      private var §8"H§:int = 60;
      
      private var §7Y§:§"!O§;
      
      private var §,8§:Boolean;
      
      public function §=!>§(param1:§5"!§)
      {
         this.§5$§ = [];
         §<"5§ = true;
         §8!X§ = false;
         super(§>§.§@t§,§'!h§.§3"4§,§?!U§.§3!c§(§'!o§));
         this.§#"$§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         §<"5§ = true;
         this.updateTextFields();
         this.§#6§();
         this.§`!E§();
         this.§,8§ = true;
         this.§7Y§ = §3!a§.getItemByName("MovieClip_LevelEndFailedPig");
      }
      
      protected function §#6§() : void
      {
         this.§5$§.push((§3!a§.getItemByName("Button_Menu") as §87§).x);
         this.§5$§.push((§3!a§.getItemByName("Button_Replay") as §87§).x);
         this.§5$§.push((§3!a§.getItemByName("Button_NextLevel") as §87§).x);
      }
      
      protected function §`!E§() : void
      {
         var _loc1_:String = this.§#"$§.§,"=§.getNextLevelId();
         if(!_loc1_ || _loc1_ && !(§2&§.§6o§ as §@T§).§'"5§.§7>§(_loc1_))
         {
            (§3!a§.getItemByName("Button_NextLevel") as §87§).setVisibility(false);
            (§3!a§.getItemByName("Button_Menu") as §87§).x = this.§5$§[0] + 40;
            (§3!a§.getItemByName("Button_Replay") as §87§).x = this.§5$§[2] - 40;
         }
         else
         {
            (§3!a§.getItemByName("Button_NextLevel") as §87§).setVisibility(true);
            (§3!a§.getItemByName("Button_Menu") as §87§).x = this.§5$§[0];
            (§3!a§.getItemByName("Button_Replay") as §87§).x = this.§5$§[1];
            (§3!a§.getItemByName("Button_NextLevel") as §87§).x = this.§5$§[2];
         }
      }
      
      protected function §+!q§(param1:String) : void
      {
         (§3!a§.getItemByName("Button_Menu") as §87§).setComponentVisualState(param1);
         (§3!a§.getItemByName("Button_Replay") as §87§).setComponentVisualState(param1);
         (§3!a§.getItemByName("Button_NextLevel") as §87§).setComponentVisualState(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §<"5§ = false;
               close();
               this.§#"$§.§%!o§();
               break;
            case "REPLAY":
               §<"5§ = false;
               close();
               this.§#"$§.§]!R§(this.§#"$§.§7T§());
               break;
            case "MENU":
               §<5§.§>!R§();
               §<"5§ = false;
               close();
               this.§#"$§.§]!R§(this.§#"$§.§ r§());
         }
      }
      
      override public function dispose() : void
      {
         this.§+!q§(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§,8§ = false;
         super.dispose();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §!H§.§3R§.updateTextFields(§3!a§,"StateEndFail");
      }
      
      private function §"!A§(param1:Number) : void
      {
         if(!this.§7Y§)
         {
            return;
         }
         this.§8"H§ -= param1;
         if(this.§8"H§ <= 0)
         {
            this.§8"H§ = this.§]!n§;
            ++this.§5"&§;
            if(this.§5"&§ > this.§6V§)
            {
               this.§5"&§ = 1;
            }
            this.§7Y§.goToFrame(this.§5"&§,false);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§"!A§(param1);
      }
   }
}
