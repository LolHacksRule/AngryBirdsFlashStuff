package §2!,§
{
   import §!R§.§#!L§;
   import §!R§.§-!T§;
   import §!R§.§9!8§;
   import §#!]§.§6!"§;
   import §1!s§.§8!f§;
   import §1!s§.§finally§;
   import §4Y§.§ `§;
   import §8!$§.§1b§;
   import §;X§.§4!@§;
   import §`!s§.§^2§;
   
   public class §=>§ extends §,!#§
   {
      
      private static var §5!F§:Class = §4! §;
       
      
      private var §3F§:§6!"§;
      
      protected var §=!x§:Array;
      
      private const §3c§:int = 6;
      
      private const §<[§:int = 60;
      
      private var §15§:int = 1;
      
      private var §,!I§:int = 60;
      
      private var §&w§:§9!8§;
      
      private var §&"1§:Boolean;
      
      public function §=>§(param1:§6!"§)
      {
         this.§=!x§ = [];
         §&5§ = true;
         §2L§ = false;
         §[!k§ = true;
         super(§8!f§.§+#§,§finally§.DEFAULT,this.§';§());
         this.§3F§ = param1;
      }
      
      protected function §';§() : XML
      {
         var _loc1_:XML = §1b§.§?!R§(§5!F§);
         return AngryBirdsCustom.§6-§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         §&5§ = true;
         this.updateTextFields();
         this.§!H§();
         this.§0"-§();
         this.§&"1§ = true;
         this.§&w§ = §;"#§.getItemByName("MovieClip_LevelEndFailedPig");
      }
      
      protected function §!H§() : void
      {
         this.§=!x§.push((§;"#§.getItemByName("Button_Menu") as § `§).x);
         this.§=!x§.push((§;"#§.getItemByName("Button_Replay") as § `§).x);
         this.§=!x§.push((§;"#§.getItemByName("Button_NextLevel") as § `§).x);
      }
      
      protected function §0"-§() : void
      {
         var _loc1_:String = this.§3F§.§8S§.getNextLevelId();
         if(!_loc1_ || _loc1_ && !(§-!2§.§7O§ as AngryBirdsCustom).§,"5§.§=!#§(_loc1_))
         {
            (§;"#§.getItemByName("Button_NextLevel") as § `§).setVisibility(false);
            (§;"#§.getItemByName("Button_Menu") as § `§).x = this.§=!x§[0] + 40;
            (§;"#§.getItemByName("Button_Replay") as § `§).x = this.§=!x§[2] - 40;
         }
         else
         {
            (§;"#§.getItemByName("Button_NextLevel") as § `§).setVisibility(true);
            (§;"#§.getItemByName("Button_Menu") as § `§).x = this.§=!x§[0];
            (§;"#§.getItemByName("Button_Replay") as § `§).x = this.§=!x§[1];
            (§;"#§.getItemByName("Button_NextLevel") as § `§).x = this.§=!x§[2];
         }
      }
      
      protected function §#B§(param1:String) : void
      {
         (§;"#§.getItemByName("Button_Menu") as § `§).setComponentVisualState(param1);
         (§;"#§.getItemByName("Button_Replay") as § `§).setComponentVisualState(param1);
         (§;"#§.getItemByName("Button_NextLevel") as § `§).setComponentVisualState(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §&5§ = false;
               close();
               this.§3F§.§9`§();
               break;
            case "REPLAY":
               §&5§ = false;
               close();
               this.§3F§.§]?§(this.§3F§.§9"&§());
               break;
            case "MENU":
               §4!@§.§ true§();
               §&5§ = false;
               close();
               this.§3F§.§]?§(this.§3F§.§'!'§());
         }
      }
      
      override public function dispose() : void
      {
         this.§#B§(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§&"1§ = false;
         super.dispose();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §^2§.§&!;§.updateTextFields(§;"#§,"StateEndFail");
      }
      
      private function §[!S§(param1:Number) : void
      {
         if(!this.§&w§)
         {
            return;
         }
         this.§,!I§ -= param1;
         if(this.§,!I§ <= 0)
         {
            this.§,!I§ = this.§<[§;
            ++this.§15§;
            if(this.§15§ > this.§3c§)
            {
               this.§15§ = 1;
            }
            this.§&w§.goToFrame(this.§15§,false);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§[!S§(param1);
      }
   }
}
