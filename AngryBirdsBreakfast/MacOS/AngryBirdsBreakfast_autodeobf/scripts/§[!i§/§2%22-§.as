package §[!i§
{
   import §"n§.§!!G§;
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §,L§.§;[§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §48§.§1!<§;
   import §48§.§]l§;
   import §;!§.§@!C§;
   import each.§8!N§;
   
   public class §2"-§ extends §@"§
   {
      
      private static var §5!M§:Class = §5"!§;
       
      
      private var §3"$§:§@!C§;
      
      protected var §'2§:Array;
      
      private const §0D§:int = 6;
      
      private const § 0§:int = 60;
      
      private var §<1§:int = 1;
      
      private var §[M§:int = 60;
      
      private var §;e§:§;[§;
      
      private var §%!k§:Boolean;
      
      public function §2"-§(param1:§@!C§)
      {
         this.§'2§ = [];
         §-!w§ = true;
         §@!X§ = false;
         §0!T§ = true;
         super(§1!<§.§0!D§,§]l§.DEFAULT,this.§`!K§());
         this.§3"$§ = param1;
      }
      
      protected function §`!K§() : XML
      {
         var _loc1_:XML = §8!N§.§?!c§(§5!M§);
         return §4!=§.§'!u§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         §-!w§ = true;
         this.updateTextFields();
         this.§+!q§();
         this.§?_§();
         this.§%!k§ = true;
         this.§;e§ = §@'§.getItemByName("MovieClip_LevelEndFailedPig");
         §#u§.cacheAsBitmap = true;
      }
      
      protected function §+!q§() : void
      {
         this.§'2§.push((§@'§.getItemByName("Button_Menu") as §;§).x);
         this.§'2§.push((§@'§.getItemByName("Button_Replay") as §;§).x);
         this.§'2§.push((§@'§.getItemByName("Button_NextLevel") as §;§).x);
      }
      
      protected function §?_§() : void
      {
         var _loc1_:String = this.§3"$§.§@!R§.getNextLevelId();
         if(!_loc1_ || _loc1_ && !(§6!!§.singleton as §4!=§).§?!b§.§]!g§(_loc1_))
         {
            (§@'§.getItemByName("Button_NextLevel") as §;§).setVisibility(false);
            (§@'§.getItemByName("Button_Menu") as §;§).x = this.§'2§[0] + 40;
            (§@'§.getItemByName("Button_Replay") as §;§).x = this.§'2§[2] - 40;
         }
         else
         {
            (§@'§.getItemByName("Button_NextLevel") as §;§).setVisibility(true);
            (§@'§.getItemByName("Button_Menu") as §;§).x = this.§'2§[0];
            (§@'§.getItemByName("Button_Replay") as §;§).x = this.§'2§[1];
            (§@'§.getItemByName("Button_NextLevel") as §;§).x = this.§'2§[2];
         }
      }
      
      protected function §2!§(param1:String) : void
      {
         (§@'§.getItemByName("Button_Menu") as §;§).setComponentVisualState(param1);
         (§@'§.getItemByName("Button_Replay") as §;§).setComponentVisualState(param1);
         (§@'§.getItemByName("Button_NextLevel") as §;§).setComponentVisualState(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §-!w§ = false;
               close();
               this.§3"$§.§[H§();
               break;
            case "REPLAY":
               §-!w§ = false;
               close();
               this.§3"$§.§=!V§(this.§3"$§.§8!w§());
               break;
            case "MENU":
               §'!c§.§&j§();
               §-!w§ = false;
               close();
               this.§3"$§.§=!V§(this.§3"$§.§0!Z§());
         }
      }
      
      override public function dispose() : void
      {
         this.§2!§(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§%!k§ = false;
         super.dispose();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §!!G§.§2Z§.updateTextFields(§@'§,"StateEndFail");
      }
      
      private function §^![§(param1:Number) : void
      {
         if(!this.§;e§)
         {
            return;
         }
         this.§[M§ -= param1;
         if(this.§[M§ <= 0)
         {
            this.§[M§ = this.§ 0§;
            ++this.§<1§;
            if(this.§<1§ > this.§0D§)
            {
               this.§<1§ = 1;
            }
            this.§;e§.goToFrame(this.§<1§,false);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§^![§(param1);
      }
   }
}
