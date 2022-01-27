package §'z§
{
   import § !3§.§[a§;
   import §!a§.§&6§;
   import §#!+§.§"$§;
   import §#!T§.§&2§;
   import §#;§.§42§;
   import §-!V§.§'J§;
   import §-!V§.§+V§;
   import §0!&§.§@=§;
   import §2!D§.§&9§;
   import §2!D§.§'!7§;
   import §2z§.§]'§;
   import §5!5§.§1!4§;
   import §;!0§.§4!I§;
   import §[,§.§4!M§;
   import §[,§.§<!Y§;
   import §]e§.§&!U§;
   import §`V§.HighscoreSidebar;
   
   public class §@!6§ extends Popup
   {
      
      private static const §`S§:Number = 250;
      
      private static var §-!1§:Class = §&`§;
       
      
      private var §`9§:StatePopupManager;
      
      private var §2s§:§&9§ = null;
      
      private var §+!!§:Boolean = false;
      
      private var §7!?§:Boolean = false;
      
      private var §2!P§:Number;
      
      private var §;!Y§:§&6§;
      
      public function §@!6§(param1:§"$§, param2:StatePopupManager, param3:§&6§)
      {
         § !D§ = new §1!4§(0,0,0,0,false);
         super(§[a§.§`l§(§-!1§),param1);
         this.§2!P§ = §8T§.getItemByName("Container_PauseMenu").x;
         this.§`9§ = param2;
         this.§;!Y§ = param3;
         this.§`9§.addEventListener(§&!U§.§^!b§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§&!U§) : void
      {
         this.uiInteractionHandler(param1.§5!f§,param1.§]!@§,param1.§6!7§);
         this.§;!Y§.uiInteractionHandler(param1.§5!f§,param1.§]!@§,param1.§6!7§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§4!I§) : void
      {
         var _loc4_:§]'§ = null;
         switch(param2)
         {
            case "HELP":
               this.§#$§();
               for each(_loc4_ in §&2§.§4!1§.slingshot.§6E§)
               {
                  §2!S§.§<P§.§<!e§(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§+!!§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§#$§();
               break;
            case "MENU":
               §42§.§<!_§();
               this.§7!?§ = true;
               this.close();
         }
      }
      
      private function §-y§() : void
      {
         §<!Y§.sHighscoreSidebar.enableHelpButton(false);
         this.§+!!§ = false;
         this.§>Q§(false);
         var levelName:String = §@=§.§!!S§;
         try
         {
            levelName = levelName.substring(2);
            (§8T§.getItemByName("TextField_LevelName") as §+V§).§3x§.text = HighscoreSidebar.§1r§[int(levelName) - 1];
         }
         catch(e:Error)
         {
         }
         §8T§.getItemByName("Container_PauseMenu").x = this.§2!P§ - §`S§;
         this.§#=§(false);
         if(this.§2s§ != null)
         {
            this.§2s§.stop();
         }
         this.§2s§ = §'!7§.§=,§.§5Z§(§8T§.getItemByName("Container_PauseMenu"),{"x":this.§2!P§},null,0.25,§'!7§.§+d§);
         this.§2s§.onComplete = this.§[h§;
         this.§2s§.play();
      }
      
      private function §>Q§(param1:Boolean) : void
      {
         §8T§.getItemByName("TextField_ChapterName").setVisibility(false);
      }
      
      private function §[h§() : void
      {
         this.§#=§(true);
      }
      
      private function §#=§(param1:Boolean) : void
      {
         (§8T§.getItemByName("Button_Resume") as §'J§).setEnabled(param1);
         (§8T§.getItemByName("Button_Replay") as §'J§).setEnabled(param1);
         (§8T§.getItemByName("Button_Menu") as §'J§).setEnabled(param1);
      }
      
      private function §#$§() : void
      {
         this.preClose(true);
         if(this.§2s§ != null)
         {
            this.§2s§.stop();
         }
         this.§2s§ = §'!7§.§=,§.§5Z§(§8T§.getItemByName("Container_PauseMenu"),{"x":this.§2!P§ - §`S§},null,0.25,§'!7§.§4z§);
         this.§2s§.play();
      }
      
      override public function close() : void
      {
         if(this.§2s§)
         {
            this.§2s§.stop();
            this.§2s§ = null;
         }
         §<!Y§.sHighscoreSidebar.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§+!!§)
         {
            §2!S§.§'!5§.§@z§(§4!M§.§+Z§);
            §4!M§.§>5§();
         }
         else if(this.§7!?§)
         {
            §2!S§.§'!5§.§@z§(§2!S§.§1!b§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§-y§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§`9§.removeEventListener(§&!U§.§^!b§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
