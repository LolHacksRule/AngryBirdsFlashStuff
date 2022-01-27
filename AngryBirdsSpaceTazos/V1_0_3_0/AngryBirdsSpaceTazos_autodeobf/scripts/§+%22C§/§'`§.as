package §+"C§
{
   import §'!n§.§[!I§;
   import §+"2§.§?d§;
   import §+"2§.§`B§;
   import §,!7§.§%!J§;
   import §6!C§.§7[§;
   import §6B§.§&9§;
   import §6B§.§5![§;
   import §6B§.§?"2§;
   import §=" §.§&5§;
   import §>"!§.§@!9§;
   
   public class §'`§ extends §^"4§
   {
      
      private static var §9&§:Class = §82§;
       
      
      private var §`Y§:§&5§;
      
      protected var §3&§:Array;
      
      private const §8%§:int = 6;
      
      private const §,"F§:int = 60;
      
      private var §='§:int = 1;
      
      private var §]2§:int = 60;
      
      private var §]8§:§&9§;
      
      private var §^!+§:Boolean;
      
      public function §'`§(param1:§&5§)
      {
         this.§3&§ = [];
         §^">§ = true;
         §6"B§ = false;
         super(§?d§.§1!Q§,§`B§.§-! §,§7[§.§[!n§(§9&§));
         this.§`Y§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         §^">§ = true;
         this.updateTextFields();
         this.§[W§();
         this.§!#§();
         this.§^!+§ = true;
         this.§]8§ = § 1§.getItemByName("MovieClip_LevelEndFailedPig");
      }
      
      protected function §[W§() : void
      {
         this.§3&§.push((§ 1§.getItemByName("Button_Menu") as §%!J§).x);
         this.§3&§.push((§ 1§.getItemByName("Button_Replay") as §%!J§).x);
         this.§3&§.push((§ 1§.getItemByName("Button_NextLevel") as §%!J§).x);
      }
      
      protected function §!#§() : void
      {
         var _loc1_:String = this.§`Y§.§;!u§.getNextLevelId();
         if(!_loc1_ || _loc1_ && !(§&"<§.§<!7§ as §["!§).§<!%§.§!">§(_loc1_))
         {
            (§ 1§.getItemByName("Button_NextLevel") as §%!J§).setVisibility(false);
            (§ 1§.getItemByName("Button_Menu") as §%!J§).x = this.§3&§[0] + 40;
            (§ 1§.getItemByName("Button_Replay") as §%!J§).x = this.§3&§[2] - 40;
         }
         else
         {
            (§ 1§.getItemByName("Button_NextLevel") as §%!J§).setVisibility(true);
            (§ 1§.getItemByName("Button_Menu") as §%!J§).x = this.§3&§[0];
            (§ 1§.getItemByName("Button_Replay") as §%!J§).x = this.§3&§[1];
            (§ 1§.getItemByName("Button_NextLevel") as §%!J§).x = this.§3&§[2];
         }
      }
      
      protected function § !L§(param1:String) : void
      {
         (§ 1§.getItemByName("Button_Menu") as §%!J§).setComponentVisualState(param1);
         (§ 1§.getItemByName("Button_Replay") as §%!J§).setComponentVisualState(param1);
         (§ 1§.getItemByName("Button_NextLevel") as §%!J§).setComponentVisualState(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §^">§ = false;
               close();
               this.§`Y§.§-";§();
               break;
            case "REPLAY":
               §^">§ = false;
               close();
               this.§`Y§.§[!y§(this.§`Y§.§""5§());
               break;
            case "MENU":
               §@!9§.§["6§();
               §^">§ = false;
               close();
               this.§`Y§.§[!y§(this.§`Y§.§@b§());
         }
      }
      
      override public function dispose() : void
      {
         this.§ !L§(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§^!+§ = false;
         super.dispose();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §[!I§.§8!J§.updateTextFields(§ 1§,"StateEndFail");
      }
      
      private function §0"E§(param1:Number) : void
      {
         if(!this.§]8§)
         {
            return;
         }
         this.§]2§ -= param1;
         if(this.§]2§ <= 0)
         {
            this.§]2§ = this.§,"F§;
            ++this.§='§;
            if(this.§='§ > this.§8%§)
            {
               this.§='§ = 1;
            }
            this.§]8§.goToFrame(this.§='§,false);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§0"E§(param1);
      }
   }
}
