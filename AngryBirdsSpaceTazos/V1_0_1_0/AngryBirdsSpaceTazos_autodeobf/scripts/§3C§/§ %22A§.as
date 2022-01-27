package §3C§
{
   import § !Y§.§&$§;
   import §0N§.§0!g§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§8n§;
   import §5X§.§@!!§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §77§.§@_§;
   import §8!_§.§'u§;
   
   public class § "A§ extends §9!;§
   {
      
      private static var §^!t§:Class = §["G§;
       
      
      private var §;!V§:§'u§;
      
      protected var §6!;§:Array;
      
      private const §#!%§:int = 6;
      
      private const §&!E§:int = 60;
      
      private var §#!M§:int = 1;
      
      private var §0c§:int = 60;
      
      private var §,!=§:§8n§;
      
      private var §4!K§:Boolean;
      
      public function § "A§(param1:§'u§)
      {
         this.§6!;§ = [];
         §>"2§ = true;
         §1"$§ = false;
         super(§1#§.§&R§,§8"6§.§ K§,§0!g§.§[!y§(§^!t§));
         this.§;!V§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         §>"2§ = true;
         this.updateTextFields();
         this.§,!,§();
         this.§1![§();
         this.§4!K§ = true;
         this.§,!=§ = §[S§.getItemByName("MovieClip_LevelEndFailedPig");
      }
      
      protected function §,!,§() : void
      {
         this.§6!;§.push((§[S§.getItemByName("Button_Menu") as §@_§).x);
         this.§6!;§.push((§[S§.getItemByName("Button_Replay") as §@_§).x);
         this.§6!;§.push((§[S§.getItemByName("Button_NextLevel") as §@_§).x);
      }
      
      protected function §1![§() : void
      {
         var _loc1_:String = this.§;!V§.§=!+§.getNextLevelId();
         if(!_loc1_ || _loc1_ && !(§ !g§.§;!'§ as §`Y§).§]]§.§]!B§(_loc1_))
         {
            (§[S§.getItemByName("Button_NextLevel") as §@_§).setVisibility(false);
            (§[S§.getItemByName("Button_Menu") as §@_§).x = this.§6!;§[0] + 40;
            (§[S§.getItemByName("Button_Replay") as §@_§).x = this.§6!;§[2] - 40;
         }
         else
         {
            (§[S§.getItemByName("Button_NextLevel") as §@_§).setVisibility(true);
            (§[S§.getItemByName("Button_Menu") as §@_§).x = this.§6!;§[0];
            (§[S§.getItemByName("Button_Replay") as §@_§).x = this.§6!;§[1];
            (§[S§.getItemByName("Button_NextLevel") as §@_§).x = this.§6!;§[2];
         }
      }
      
      protected function §2"6§(param1:String) : void
      {
         (§[S§.getItemByName("Button_Menu") as §@_§).setComponentVisualState(param1);
         (§[S§.getItemByName("Button_Replay") as §@_§).setComponentVisualState(param1);
         (§[S§.getItemByName("Button_NextLevel") as §@_§).setComponentVisualState(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §>"2§ = false;
               close();
               this.§;!V§.§@!§();
               break;
            case "REPLAY":
               §>"2§ = false;
               close();
               this.§;!V§.§+"$§(this.§;!V§.§^!m§());
               break;
            case "MENU":
               §<!O§.§'N§();
               §>"2§ = false;
               close();
               this.§;!V§.§+"$§(this.§;!V§.§76§());
         }
      }
      
      override public function dispose() : void
      {
         this.§2"6§(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§4!K§ = false;
         super.dispose();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §&$§.§[!1§.updateTextFields(§[S§,"StateEndFail");
      }
      
      private function §9!a§(param1:Number) : void
      {
         if(!this.§,!=§)
         {
            return;
         }
         this.§0c§ -= param1;
         if(this.§0c§ <= 0)
         {
            this.§0c§ = this.§&!E§;
            ++this.§#!M§;
            if(this.§#!M§ > this.§#!%§)
            {
               this.§#!M§ = 1;
            }
            this.§,!=§.goToFrame(this.§#!M§,false);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§9!a§(param1);
      }
   }
}
