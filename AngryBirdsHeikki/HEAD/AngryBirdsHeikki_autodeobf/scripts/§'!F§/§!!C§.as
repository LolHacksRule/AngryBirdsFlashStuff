package §'!F§
{
   import §&!b§.§2!L§;
   import §+!M§.§7!0§;
   import §+B§.§-2§;
   import §+B§.§1!g§;
   import §-!f§.§ else§;
   import §1!d§.§!![§;
   import §1!d§.§9m§;
   import §7e§.§#w§;
   import §8O§.§&#§;
   import §9!'§.§91§;
   import §9!f§.§3!N§;
   import §=!§.HighscoreSidebar;
   import §>!G§.§6!9§;
   import §]!&§.§1E§;
   import §]!&§.§^!g§;
   import §^f§.§<q§;
   import §use §.§;0§;
   
   public class §!!C§ extends Popup
   {
      
      private static const § +§:Number = 250;
      
      private static var §-L§:Class = §6!-§;
       
      
      private var §+M§:StatePopupManager;
      
      private var §[!6§:§!![§ = null;
      
      private var §1`§:Boolean = false;
      
      private var §+!L§:Boolean = false;
      
      private var §>T§:Number;
      
      private var §!b§:§6!9§;
      
      public function §!!C§(param1:§ else§, param2:StatePopupManager, param3:§6!9§)
      {
         §[!V§ = new §;0§(0,0,0,0,false);
         super(§2!L§.§-!7§(§-L§),param1);
         this.§>T§ = §<8§.getItemByName("Container_PauseMenu").x;
         this.§+M§ = param2;
         this.§!b§ = param3;
         this.§+M§.addEventListener(§3!N§.§+<§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§3!N§) : void
      {
         this.uiInteractionHandler(param1.§`!g§,param1.§[t§,param1.§^r§);
         this.§!b§.uiInteractionHandler(param1.§`!g§,param1.§[t§,param1.§^r§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§7!0§) : void
      {
         var _loc4_:§91§ = null;
         switch(param2)
         {
            case "HELP":
               this.§@!2§();
               for each(_loc4_ in §&#§.§3!D§.slingshot.§5&§)
               {
                  §"!R§.§0!P§.§&z§(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§1`§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§@!2§();
               break;
            case "MENU":
               §<q§.§2M§();
               this.§+!L§ = true;
               this.close();
         }
      }
      
      private function §3!2§() : void
      {
         §-2§.sHighscoreSidebar.enableHelpButton(false);
         this.§1`§ = false;
         this.§&w§(false);
         var levelName:String = §#w§.§ !'§;
         try
         {
            levelName = levelName.substring(2);
            (§<8§.getItemByName("TextField_LevelName") as §1E§).§;+§.text = HighscoreSidebar.§[[§[int(levelName) - 1];
         }
         catch(e:Error)
         {
         }
         §<8§.getItemByName("Container_PauseMenu").x = this.§>T§ - § +§;
         this.§-!N§(false);
         if(this.§[!6§ != null)
         {
            this.§[!6§.stop();
         }
         this.§[!6§ = §9m§.§?! §.§]C§(§<8§.getItemByName("Container_PauseMenu"),{"x":this.§>T§},null,0.25,§9m§.§4`§);
         this.§[!6§.onComplete = this.§@6§;
         this.§[!6§.play();
      }
      
      private function §&w§(param1:Boolean) : void
      {
         §<8§.getItemByName("TextField_ChapterName").setVisibility(false);
      }
      
      private function §@6§() : void
      {
         this.§-!N§(true);
      }
      
      private function §-!N§(param1:Boolean) : void
      {
         (§<8§.getItemByName("Button_Resume") as §^!g§).setEnabled(param1);
         (§<8§.getItemByName("Button_Replay") as §^!g§).setEnabled(param1);
         (§<8§.getItemByName("Button_Menu") as §^!g§).setEnabled(param1);
      }
      
      private function §@!2§() : void
      {
         this.preClose(true);
         if(this.§[!6§ != null)
         {
            this.§[!6§.stop();
         }
         this.§[!6§ = §9m§.§?! §.§]C§(§<8§.getItemByName("Container_PauseMenu"),{"x":this.§>T§ - § +§},null,0.25,§9m§.§7l§);
         this.§[!6§.play();
      }
      
      override public function close() : void
      {
         if(this.§[!6§)
         {
            this.§[!6§.stop();
            this.§[!6§ = null;
         }
         §-2§.sHighscoreSidebar.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§1`§)
         {
            §"!R§.§=>§.§0!9§(§1!g§.§[!%§);
            §1!g§.§3!4§();
         }
         else if(this.§+!L§)
         {
            §"!R§.§=>§.§0!9§(§"!R§.§54§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§3!2§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§+M§.removeEventListener(§3!N§.§+<§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
