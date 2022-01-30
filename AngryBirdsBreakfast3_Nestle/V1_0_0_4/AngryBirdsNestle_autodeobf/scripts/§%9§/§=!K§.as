package §%9§
{
   import §"I§.§ !R§;
   import §&!>§.§3!k§;
   import §?!E§.§1N§;
   import §?N§.§9r§;
   import §?N§.§>!H§;
   import §@#§.§4!O§;
   import §[!b§.§'!R§;
   import §[!b§.§2!O§;
   import §[!b§.§]"-§;
   import §`6§.§!!]§;
   
   public class §=!K§ extends §<a§
   {
      
      private static var §81§:Class = §'!E§;
       
      
      private var §'!4§:§1N§;
      
      protected var §"!A§:Array;
      
      private const §-!6§:int = 6;
      
      private const §<!<§:int = 60;
      
      private var §,K§:int = 1;
      
      private var §?7§:int = 60;
      
      private var §-!B§:§2!O§;
      
      private var §?!G§:Boolean;
      
      public function §=!K§(param1:§1N§)
      {
         this.§"!A§ = [];
         §?!^§ = true;
         §+!X§ = false;
         §8!^§ = true;
         super(§9r§.§8F§,§>!H§.DEFAULT,this.§^!!§());
         this.§'!4§ = param1;
      }
      
      protected function §^!!§() : XML
      {
         var _loc1_:XML = § !R§.§`G§(§81§);
         return AngryBirdsCustom.§+Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         §?!^§ = true;
         this.updateTextFields();
         this.§2!f§();
         this.§,5§();
         this.§?!G§ = true;
         this.§-!B§ = §0+§.getItemByName("MovieClip_LevelEndFailedPig");
      }
      
      protected function §2!f§() : void
      {
         this.§"!A§.push((§0+§.getItemByName("Button_Menu") as §4!O§).x);
         this.§"!A§.push((§0+§.getItemByName("Button_Replay") as §4!O§).x);
         this.§"!A§.push((§0+§.getItemByName("Button_NextLevel") as §4!O§).x);
      }
      
      protected function §,5§() : void
      {
         var _loc1_:String = this.§'!4§.§6!N§.getNextLevelId();
         if(!_loc1_ || _loc1_ && !(§-!l§.§"x§ as AngryBirdsCustom).§7f§.§7"2§(_loc1_))
         {
            (§0+§.getItemByName("Button_NextLevel") as §4!O§).setVisibility(false);
            (§0+§.getItemByName("Button_Menu") as §4!O§).x = this.§"!A§[0] + 40;
            (§0+§.getItemByName("Button_Replay") as §4!O§).x = this.§"!A§[2] - 40;
         }
         else
         {
            (§0+§.getItemByName("Button_NextLevel") as §4!O§).setVisibility(true);
            (§0+§.getItemByName("Button_Menu") as §4!O§).x = this.§"!A§[0];
            (§0+§.getItemByName("Button_Replay") as §4!O§).x = this.§"!A§[1];
            (§0+§.getItemByName("Button_NextLevel") as §4!O§).x = this.§"!A§[2];
         }
      }
      
      protected function §"!]§(param1:String) : void
      {
         (§0+§.getItemByName("Button_Menu") as §4!O§).setComponentVisualState(param1);
         (§0+§.getItemByName("Button_Replay") as §4!O§).setComponentVisualState(param1);
         (§0+§.getItemByName("Button_NextLevel") as §4!O§).setComponentVisualState(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §?!^§ = false;
               close();
               this.§'!4§.§`H§();
               break;
            case "REPLAY":
               §?!^§ = false;
               close();
               this.§'!4§.§2w§(this.§'!4§.§<"#§());
               break;
            case "MENU":
               §3!k§.§#!3§();
               §?!^§ = false;
               close();
               this.§'!4§.§2w§(this.§'!4§.§2!q§());
         }
      }
      
      override public function dispose() : void
      {
         this.§"!]§(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§?!G§ = false;
         super.dispose();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §!!]§.§?!+§.updateTextFields(§0+§,"StateEndFail");
      }
      
      private function §3M§(param1:Number) : void
      {
         if(!this.§-!B§)
         {
            return;
         }
         this.§?7§ -= param1;
         if(this.§?7§ <= 0)
         {
            this.§?7§ = this.§<!<§;
            ++this.§,K§;
            if(this.§,K§ > this.§-!6§)
            {
               this.§,K§ = 1;
            }
            this.§-!B§.goToFrame(this.§,K§,false);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§3M§(param1);
      }
   }
}
