package §@!l§
{
   import § !Q§.§=!3§;
   import §!!&§.§`!$§;
   import §!!`§.§4!f§;
   import §!!`§.§>!&§;
   import §;s§.§%!c§;
   import §<!0§.§ !B§;
   import §<!0§.§'!%§;
   import §<!0§.§3!W§;
   import §>P§.§73§;
   import §]!V§.§<K§;
   
   public class §<8§ extends §-"+§
   {
      
      private static var §3"-§:Class = §1!O§;
       
      
      private var §1!X§:§<K§;
      
      protected var §<Z§:Array;
      
      private const §7!2§:int = 6;
      
      private const § "0§:int = 60;
      
      private var §!s§:int = 1;
      
      private var §,v§:int = 60;
      
      private var §48§:§ !B§;
      
      private var §#N§:Boolean;
      
      public function §<8§(param1:§<K§)
      {
         this.§<Z§ = [];
         §@_§ = true;
         §!"6§ = false;
         §>,§ = true;
         super(§>!&§.§?!B§,§4!f§.DEFAULT,this.§[x§());
         this.§1!X§ = param1;
      }
      
      protected function §[x§() : XML
      {
         var _loc1_:XML = §=!3§.§0I§(§3"-§);
         return AngryBirdsCustom.§^Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         §@_§ = true;
         this.updateTextFields();
         this.§5"&§();
         this.§]f§();
         this.§#N§ = true;
         this.§48§ = §-"1§.getItemByName("MovieClip_LevelEndFailedPig");
      }
      
      protected function §5"&§() : void
      {
         this.§<Z§.push((§-"1§.getItemByName("Button_Menu") as §73§).x);
         this.§<Z§.push((§-"1§.getItemByName("Button_Replay") as §73§).x);
         this.§<Z§.push((§-"1§.getItemByName("Button_NextLevel") as §73§).x);
      }
      
      protected function §]f§() : void
      {
         var _loc1_:String = this.§1!X§.§5!c§.getNextLevelId();
         if(!_loc1_ || _loc1_ && !(§,!X§.§>!G§ as AngryBirdsCustom).§<0§.§"!`§(_loc1_))
         {
            (§-"1§.getItemByName("Button_NextLevel") as §73§).setVisibility(false);
            (§-"1§.getItemByName("Button_Menu") as §73§).x = this.§<Z§[0] + 40;
            (§-"1§.getItemByName("Button_Replay") as §73§).x = this.§<Z§[2] - 40;
         }
         else
         {
            (§-"1§.getItemByName("Button_NextLevel") as §73§).setVisibility(true);
            (§-"1§.getItemByName("Button_Menu") as §73§).x = this.§<Z§[0];
            (§-"1§.getItemByName("Button_Replay") as §73§).x = this.§<Z§[1];
            (§-"1§.getItemByName("Button_NextLevel") as §73§).x = this.§<Z§[2];
         }
      }
      
      protected function §2V§(param1:String) : void
      {
         (§-"1§.getItemByName("Button_Menu") as §73§).setComponentVisualState(param1);
         (§-"1§.getItemByName("Button_Replay") as §73§).setComponentVisualState(param1);
         (§-"1§.getItemByName("Button_NextLevel") as §73§).setComponentVisualState(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §@_§ = false;
               close();
               this.§1!X§.§5!4§();
               break;
            case "REPLAY":
               §@_§ = false;
               close();
               this.§1!X§.§;v§(this.§1!X§.§2!1§());
               break;
            case "MENU":
               §%!c§.§0O§();
               §@_§ = false;
               close();
               this.§1!X§.§;v§(this.§1!X§.§6h§());
         }
      }
      
      override public function dispose() : void
      {
         this.§2V§(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§#N§ = false;
         super.dispose();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §`!$§.§>!P§.updateTextFields(§-"1§,"StateEndFail");
      }
      
      private function §[@§(param1:Number) : void
      {
         if(!this.§48§)
         {
            return;
         }
         this.§,v§ -= param1;
         if(this.§,v§ <= 0)
         {
            this.§,v§ = this.§ "0§;
            ++this.§!s§;
            if(this.§!s§ > this.§7!2§)
            {
               this.§!s§ = 1;
            }
            this.§48§.goToFrame(this.§!s§,false);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§[@§(param1);
      }
   }
}
