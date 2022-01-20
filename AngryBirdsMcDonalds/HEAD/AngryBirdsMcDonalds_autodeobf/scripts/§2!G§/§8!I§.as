package §2!G§
{
   import § !J§.§5u§;
   import §'+§.§<@§;
   import §,!C§.§3!&§;
   import §,!C§.§?!C§;
   import §,!H§.§ for§;
   import §,4§.§;_§;
   import §4!A§.§#b§;
   import §4!A§.§7#§;
   import §5!W§.§[Z§;
   import §5!W§.§`X§;
   import §5!q§.HighscoreSidebar;
   import §7F§.§2M§;
   import §7p§.§%g§;
   import §9s§.§!!`§;
   import §@-§.§[y§;
   import §[!4§.§-#§;
   
   public class §8!I§ extends Popup
   {
      
      private static const § K§:Number = 250;
      
      private static var §=o§:Class = §]!@§;
       
      
      private var §;5§:StatePopupManager;
      
      private var §0D§:§#b§ = null;
      
      private var §0!n§:Boolean = false;
      
      private var §%<§:Boolean = false;
      
      private var §+z§:Number;
      
      private var §%!g§:§ for§;
      
      public function §8!I§(param1:§%g§, param2:StatePopupManager, param3:§ for§)
      {
         super(§<@§.§,'§(§=o§),param1);
         this.§+z§ = §7Y§.getItemByName("Container_PauseMenu").x;
         this.§;5§ = param2;
         this.§%!g§ = param3;
         this.§;5§.addEventListener(§!!`§.§5!R§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§!!`§) : void
      {
         this.uiInteractionHandler(param1.§[K§,param1.§3x§,param1.§,a§);
         this.§%!g§.uiInteractionHandler(param1.§[K§,param1.§3x§,param1.§,a§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[y§) : void
      {
         var _loc4_:§5u§ = null;
         switch(param2)
         {
            case "HELP":
               this.§2^§();
               for each(_loc4_ in §2M§.§1?§.slingshot.§<!f§)
               {
                  §3![§.§5!6§.§8!D§(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§0!n§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§2^§();
               break;
            case "MENU":
               §-#§.§4A§();
               this.§%<§ = true;
               this.close();
         }
      }
      
      private function §,!+§(param1:String) : void
      {
         var levelNum:String = null;
         var levelNameString:String = null;
         var levelName:String = param1;
         try
         {
            levelNum = levelName.substring(2);
            if(levelName == "2-3" || levelName == "2-4" || levelName == "2-5")
            {
               §7Y§.getItemByName("MovieClip_PauseMoon").setVisibility(false);
               §7Y§.getItemByName("MovieClip_PauseMc").setVisibility(true);
            }
            else if(levelName == "2-6" || levelName == "2-7" || levelName == "2-8")
            {
               §7Y§.getItemByName("MovieClip_PauseMoon").setVisibility(true);
               §7Y§.getItemByName("MovieClip_PauseMc").setVisibility(false);
            }
            if(levelName == "2-1" || levelName == "2-2")
            {
               (§7Y§.getItemByName("TextField_LevelName") as §3!&§).§>!3§.text = "";
               §7Y§.getItemByName("MovieClip_PauseMoon").setVisibility(false);
               §7Y§.getItemByName("MovieClip_PauseMc").setVisibility(false);
            }
            else
            {
               levelNameString = "-" + HighscoreSidebar.§]!-§[int(levelNum) - 1];
               (§7Y§.getItemByName("TextField_LevelName") as §3!&§).§>!3§.text = levelNameString;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §3M§() : void
      {
         §`X§.sHighscoreSidebar.enableHelpButton(false);
         this.§0!n§ = false;
         this.§0!8§(false);
         var _loc1_:String = §;_§.§2!Q§;
         this.§,!+§(_loc1_);
         §7Y§.getItemByName("Container_PauseMenu").x = this.§+z§ - § K§;
         this.§76§(false);
         if(this.§0D§ != null)
         {
            this.§0D§.stop();
         }
         this.§0D§ = §7#§.§5!!§.§30§(§7Y§.getItemByName("Container_PauseMenu"),{"x":this.§+z§},null,0.25,§7#§.§4@§);
         this.§0D§.onComplete = this.§#O§;
         this.§0D§.play();
      }
      
      private function §0!8§(param1:Boolean) : void
      {
         §7Y§.getItemByName("TextField_ChapterName").setVisibility(false);
      }
      
      private function §#O§() : void
      {
         this.§76§(true);
      }
      
      private function §76§(param1:Boolean) : void
      {
         (§7Y§.getItemByName("Button_Resume") as §?!C§).setEnabled(param1);
         (§7Y§.getItemByName("Button_Replay") as §?!C§).setEnabled(param1);
         (§7Y§.getItemByName("Button_Menu") as §?!C§).setEnabled(param1);
      }
      
      private function §2^§() : void
      {
         this.preClose(true);
         if(this.§0D§ != null)
         {
            this.§0D§.stop();
         }
         this.§0D§ = §7#§.§5!!§.§30§(§7Y§.getItemByName("Container_PauseMenu"),{"x":this.§+z§ - § K§},null,0.25,§7#§.§=Y§);
         this.§0D§.play();
      }
      
      override public function close() : void
      {
         if(this.§0D§)
         {
            this.§0D§.stop();
            this.§0D§ = null;
         }
         §`X§.sHighscoreSidebar.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§0!n§)
         {
            §3![§.§+w§.§^?§(§[Z§.§>d§);
            §[Z§.§>-§();
         }
         else if(this.§%<§)
         {
            §3![§.§+w§.§^?§(§3![§.§0#§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§3M§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§;5§.removeEventListener(§!!`§.§5!R§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
