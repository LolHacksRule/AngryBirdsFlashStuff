package §&_§
{
   import §&<§.§2!q§;
   import §&<§.§@j§;
   import §&<§.§^!#§;
   import §0!$§.§2!K§;
   import §2W§.§+!d§;
   import §5u§.§+!]§;
   import §5u§.§^!=§;
   import §6!5§.§6!2§;
   import §@!6§.§3!5§;
   import §[!F§.§^!g§;
   
   public class §@Y§ extends §-"!§
   {
      
      private static var §`V§:Class = §^"-§;
       
      
      private var §@"'§:§6!2§;
      
      protected var §&"$§:Array;
      
      private const §;!&§:int = 6;
      
      private const §8!s§:int = 60;
      
      private var §>M§:int = 1;
      
      private var §`a§:int = 60;
      
      private var §1!m§:§2!q§;
      
      private var §<[§:Boolean;
      
      public function §@Y§(param1:§6!2§)
      {
         this.§&"$§ = [];
         §^c§ = true;
         §'[§ = false;
         §null§ = true;
         super(§^!=§.§&i§,§+!]§.DEFAULT,this.§;!<§());
         this.§@"'§ = param1;
      }
      
      protected function §;!<§() : XML
      {
         var _loc1_:XML = §2!K§.§5i§(§`V§);
         return AngryBirdsCustom.§>@§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         §^c§ = true;
         this.updateTextFields();
         this.§>!u§();
         this.§<f§();
         this.§<[§ = true;
         this.§1!m§ = §[!<§.getItemByName("MovieClip_LevelEndFailedPig");
      }
      
      protected function §>!u§() : void
      {
         this.§&"$§.push((§[!<§.getItemByName("Button_Menu") as §^!g§).x);
         this.§&"$§.push((§[!<§.getItemByName("Button_Replay") as §^!g§).x);
         this.§&"$§.push((§[!<§.getItemByName("Button_NextLevel") as §^!g§).x);
      }
      
      protected function §<f§() : void
      {
         var _loc1_:String = this.§@"'§.§+!t§.getNextLevelId();
         if(!_loc1_ || _loc1_ && !(§-!I§.§[f§ as AngryBirdsCustom).§=! §.§^!P§(_loc1_))
         {
            (§[!<§.getItemByName("Button_NextLevel") as §^!g§).setVisibility(false);
            (§[!<§.getItemByName("Button_Menu") as §^!g§).x = this.§&"$§[0] + 40;
            (§[!<§.getItemByName("Button_Replay") as §^!g§).x = this.§&"$§[2] - 40;
         }
         else
         {
            (§[!<§.getItemByName("Button_NextLevel") as §^!g§).setVisibility(true);
            (§[!<§.getItemByName("Button_Menu") as §^!g§).x = this.§&"$§[0];
            (§[!<§.getItemByName("Button_Replay") as §^!g§).x = this.§&"$§[1];
            (§[!<§.getItemByName("Button_NextLevel") as §^!g§).x = this.§&"$§[2];
         }
      }
      
      protected function §45§(param1:String) : void
      {
         (§[!<§.getItemByName("Button_Menu") as §^!g§).setComponentVisualState(param1);
         (§[!<§.getItemByName("Button_Replay") as §^!g§).setComponentVisualState(param1);
         (§[!<§.getItemByName("Button_NextLevel") as §^!g§).setComponentVisualState(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §^c§ = false;
               close();
               this.§@"'§.§8!w§();
               break;
            case "REPLAY":
               §^c§ = false;
               close();
               this.§@"'§.§2J§(this.§@"'§.§8"0§());
               break;
            case "MENU":
               §3!5§.§,!8§();
               §^c§ = false;
               close();
               this.§@"'§.§2J§(this.§@"'§.§9"1§());
         }
      }
      
      override public function dispose() : void
      {
         this.§45§(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§<[§ = false;
         super.dispose();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §+!d§.§<"5§.updateTextFields(§[!<§,"StateEndFail");
      }
      
      private function §0B§(param1:Number) : void
      {
         if(!this.§1!m§)
         {
            return;
         }
         this.§`a§ -= param1;
         if(this.§`a§ <= 0)
         {
            this.§`a§ = this.§8!s§;
            ++this.§>M§;
            if(this.§>M§ > this.§;!&§)
            {
               this.§>M§ = 1;
            }
            this.§1!m§.goToFrame(this.§>M§,false);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§0B§(param1);
      }
   }
}
