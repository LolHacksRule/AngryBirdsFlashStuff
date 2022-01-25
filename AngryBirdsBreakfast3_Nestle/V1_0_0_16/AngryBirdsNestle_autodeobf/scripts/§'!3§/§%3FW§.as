package §'!3§
{
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §'"!§.§<!7§;
   import §1!c§.§;"2§;
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   import §2u§.§]"%§;
   import §4!i§.§@"#§;
   import §[!Z§.§>D§;
   
   public class §?W§ extends §;!o§
   {
      
      private static var §#!B§:Class = §=!w§;
       
      
      private var §-!j§:§;"2§;
      
      protected var §0t§:Array;
      
      private const §6!v§:int = 6;
      
      private const §;0§:int = 60;
      
      private var §%!z§:int = 1;
      
      private var §]!+§:int = 60;
      
      private var §8!a§:§<!7§;
      
      private var §]"+§:Boolean;
      
      public function §?W§(param1:§;"2§)
      {
         this.§0t§ = [];
         §9p§ = true;
         §]G§ = false;
         §^J§ = true;
         super(§`!t§.§[F§,§4z§.DEFAULT,this.§'!,§());
         this.§-!j§ = param1;
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §4!H§.§7o§(§#!B§);
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         §9p§ = true;
         this.updateTextFields();
         this.§'!N§();
         this.§;!!§();
         this.§]"+§ = true;
         this.§8!a§ = §29§.getItemByName("MovieClip_LevelEndFailedPig");
      }
      
      protected function §'!N§() : void
      {
         this.§0t§.push((§29§.getItemByName("Button_Menu") as §]"%§).x);
         this.§0t§.push((§29§.getItemByName("Button_Replay") as §]"%§).x);
         this.§0t§.push((§29§.getItemByName("Button_NextLevel") as §]"%§).x);
      }
      
      protected function §;!!§() : void
      {
         var _loc1_:String = this.§-!j§.§[!,§.getNextLevelId();
         if(!_loc1_ || _loc1_ && !(§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§2"+§(_loc1_))
         {
            (§29§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(false);
            (§29§.getItemByName("Button_Menu") as §]"%§).x = this.§0t§[0] + 40;
            (§29§.getItemByName("Button_Replay") as §]"%§).x = this.§0t§[2] - 40;
         }
         else
         {
            (§29§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(true);
            (§29§.getItemByName("Button_Menu") as §]"%§).x = this.§0t§[0];
            (§29§.getItemByName("Button_Replay") as §]"%§).x = this.§0t§[1];
            (§29§.getItemByName("Button_NextLevel") as §]"%§).x = this.§0t§[2];
         }
      }
      
      protected function § !y§(param1:String) : void
      {
         (§29§.getItemByName("Button_Menu") as §]"%§).setComponentVisualState(param1);
         (§29§.getItemByName("Button_Replay") as §]"%§).setComponentVisualState(param1);
         (§29§.getItemByName("Button_NextLevel") as §]"%§).setComponentVisualState(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §9p§ = false;
               close();
               this.§-!j§.§,"#§();
               break;
            case "REPLAY":
               §9p§ = false;
               close();
               this.§-!j§.§'l§(this.§-!j§.§9!"§());
               break;
            case "MENU":
               §>D§.§>!%§();
               §9p§ = false;
               close();
               this.§-!j§.§'l§(this.§-!j§.§'!#§());
         }
      }
      
      override public function dispose() : void
      {
         this.§ !y§(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§]"+§ = false;
         super.dispose();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §@"#§.§,2§.updateTextFields(§29§,"StateEndFail");
      }
      
      private function §!"!§(param1:Number) : void
      {
         if(!this.§8!a§)
         {
            return;
         }
         this.§]!+§ -= param1;
         if(this.§]!+§ <= 0)
         {
            this.§]!+§ = this.§;0§;
            ++this.§%!z§;
            if(this.§%!z§ > this.§6!v§)
            {
               this.§%!z§ = 1;
            }
            this.§8!a§.goToFrame(this.§%!z§,false);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§!"!§(param1);
      }
   }
}
