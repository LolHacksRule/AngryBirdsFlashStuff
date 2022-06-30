package §[!^§
{
   import §#!&§.§#O§;
   import §#!&§.§1![§;
   import §%!$§.§2!I§;
   import §+!9§.§ 4§;
   import §+!9§.§3!!§;
   import §,J§.§7!A§;
   import §4;§.§,h§;
   import §6!"§.§<!+§;
   import §6-§.§"H§;
   import §6-§.§%1§;
   import §7!X§.§7g§;
   import §7h§.§7!"§;
   import §>R§.§4%§;
   import §?!P§.§@@§;
   import §^!7§.§]!N§;
   import §var§.§+!^§;
   
   public class §0!P§ extends Popup
   {
      
      private static const §[!B§:Number = 250;
      
      private static var §<@§:Class = §^d§;
       
      
      private var §!`§:StatePopupManager;
      
      private var §`H§:§%1§ = null;
      
      private var §5!V§:Boolean = false;
      
      private var §?!_§:Boolean = false;
      
      private var §"!L§:Number;
      
      private var §2f§:§,h§;
      
      public function §0!P§(param1:§7g§, param2:StatePopupManager, param3:§,h§)
      {
         §#Z§ = new §<!+§(0,0,0,0,false);
         super(§2!I§.§;n§(§<@§),param1);
         this.§"!L§ = § !D§.getItemByName("Container_PauseMenu").x;
         this.§!`§ = param2;
         this.§2f§ = param3;
         this.§!`§.addEventListener(§4%§.§"! §,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§4%§) : void
      {
         this.uiInteractionHandler(param1.§'P§,param1.§@O§,param1.§!J§);
         this.§2f§.uiInteractionHandler(param1.§'P§,param1.§@O§,param1.§!J§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§+!^§) : void
      {
         var _loc4_:§]!N§ = null;
         switch(param2)
         {
            case "HELP":
               this.§">§();
               for each(_loc4_ in §@@§.§ !8§.slingshot.§&!9§)
               {
                  §1F§.§=l§.§ !4§(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§5!V§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§">§();
               break;
            case "MENU":
               §7!"§.§9!0§();
               this.§?!_§ = true;
               this.close();
         }
      }
      
      private function §<H§() : void
      {
         §3!!§.sHighscoreSidebar.enableHelpButton(false);
         this.§5!V§ = false;
         this.§%!8§(false);
         var levelName:String = §7!A§.§ !A§;
         try
         {
            levelName = levelName.substring(2);
            (§ !D§.getItemByName("TextField_LevelName") as §1![§).§2q§.text = HighscoreSidebar.§5i§[int(levelName) - 1];
         }
         catch(e:Error)
         {
         }
         § !D§.getItemByName("Container_PauseMenu").x = this.§"!L§ - §[!B§;
         this.§=!A§(false);
         if(this.§`H§ != null)
         {
            this.§`H§.stop();
         }
         this.§`H§ = §"H§.§'![§.§8Y§(§ !D§.getItemByName("Container_PauseMenu"),{"x":this.§"!L§},null,0.25,§"H§.§!u§);
         this.§`H§.onComplete = this.§%X§;
         this.§`H§.play();
      }
      
      private function §%!8§(param1:Boolean) : void
      {
         § !D§.getItemByName("TextField_ChapterName").setVisibility(false);
      }
      
      private function §%X§() : void
      {
         this.§=!A§(true);
      }
      
      private function §=!A§(param1:Boolean) : void
      {
         (§ !D§.getItemByName("Button_Resume") as §#O§).setEnabled(param1);
         (§ !D§.getItemByName("Button_Replay") as §#O§).setEnabled(param1);
         (§ !D§.getItemByName("Button_Menu") as §#O§).setEnabled(param1);
      }
      
      private function §">§() : void
      {
         this.preClose(true);
         if(this.§`H§ != null)
         {
            this.§`H§.stop();
         }
         this.§`H§ = §"H§.§'![§.§8Y§(§ !D§.getItemByName("Container_PauseMenu"),{"x":this.§"!L§ - §[!B§},null,0.25,§"H§.§ Y§);
         this.§`H§.play();
      }
      
      override public function close() : void
      {
         if(this.§`H§)
         {
            this.§`H§.stop();
            this.§`H§ = null;
         }
         §3!!§.sHighscoreSidebar.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§5!V§)
         {
            §1F§.§8%§.§,!a§(§ 4§.§6! §);
            § 4§.§13§();
         }
         else if(this.§?!_§)
         {
            §1F§.§8%§.§,!a§(§1F§.§"T§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§<H§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§!`§.removeEventListener(§4%§.§"! §,this.onUiInteraction);
         super.deActivate();
      }
   }
}
