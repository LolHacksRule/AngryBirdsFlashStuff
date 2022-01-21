package §=T§
{
   import §%<§.§%!$§;
   import §%<§.§+V§;
   import §,![§.§'!S§;
   import §,![§.§2!"§;
   import §-!#§.§5!6§;
   import §-1§.§%#§;
   import §2o§.§<H§;
   import §3#§.HighscoreSidebar;
   import §3l§.§&W§;
   import §3l§.§9m§;
   import §8!X§.§'f§;
   import §9!8§.§0!7§;
   import §@!b§.§^j§;
   import §^5§.§]!,§;
   import §`!W§.§^!e§;
   import §`!d§.§7!§;
   
   public class §@N§ extends Popup
   {
      
      private static const §0!F§:Number = 250;
      
      private static var §^!m§:Class = §>X§;
       
      
      private var §>V§:StatePopupManager;
      
      private var §48§:§&W§ = null;
      
      private var §<!?§:Boolean = false;
      
      private var §&c§:Boolean = false;
      
      private var §@J§:Number;
      
      private var §%O§:§]!,§;
      
      public function §@N§(param1:§0!7§, param2:StatePopupManager, param3:§]!,§)
      {
         super(§^!e§.§=j§(§^!m§),param1);
         this.§@J§ = §+!H§.getItemByName("Container_PauseMenu").x;
         this.§>V§ = param2;
         this.§%O§ = param3;
         this.§>V§.addEventListener(§'f§.§5a§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§'f§) : void
      {
         this.uiInteractionHandler(param1.§7v§,param1.§;!'§,param1.§>!2§);
         this.§%O§.uiInteractionHandler(param1.§7v§,param1.§;!'§,param1.§>!2§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§%#§) : void
      {
         var _loc4_:§^j§ = null;
         switch(param2)
         {
            case "HELP":
               this.§[]§();
               for each(_loc4_ in §<H§.§=3§.slingshot.§ N§)
               {
                  §;!4§.§8'§.§#!8§(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§<!?§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§[]§();
               break;
            case "MENU":
               §5!6§.§#!a§();
               this.§&c§ = true;
               this.close();
         }
      }
      
      private function §,<§(param1:String) : void
      {
         var levelNum:String = null;
         var levelNameString:String = null;
         var levelName:String = param1;
         try
         {
            levelNum = levelName.substring(2);
            if(levelName == "2-3" || levelName == "2-4" || levelName == "2-5")
            {
               §+!H§.getItemByName("MovieClip_PauseMoon").setVisibility(false);
               §+!H§.getItemByName("MovieClip_PauseMc").setVisibility(true);
            }
            else if(levelName == "2-6" || levelName == "2-7" || levelName == "2-8")
            {
               §+!H§.getItemByName("MovieClip_PauseMoon").setVisibility(true);
               §+!H§.getItemByName("MovieClip_PauseMc").setVisibility(false);
            }
            if(levelName == "2-1" || levelName == "2-2")
            {
               (§+!H§.getItemByName("TextField_LevelName") as §'!S§).§'!Z§.text = "";
               §+!H§.getItemByName("MovieClip_PauseMoon").setVisibility(false);
               §+!H§.getItemByName("MovieClip_PauseMc").setVisibility(false);
            }
            else
            {
               levelNameString = "-" + HighscoreSidebar.§2E§[int(levelNum) - 1];
               (§+!H§.getItemByName("TextField_LevelName") as §'!S§).§'!Z§.text = levelNameString;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §8V§() : void
      {
         §+V§.sHighscoreSidebar.enableHelpButton(false);
         this.§<!?§ = false;
         this.§>!K§(false);
         var _loc1_:String = §7!§.§+e§;
         this.§,<§(_loc1_);
         §+!H§.getItemByName("Container_PauseMenu").x = this.§@J§ - §0!F§;
         this.§6`§(false);
         if(this.§48§ != null)
         {
            this.§48§.stop();
         }
         this.§48§ = §9m§.§>E§.§"0§(§+!H§.getItemByName("Container_PauseMenu"),{"x":this.§@J§},null,0.25,§9m§.§+y§);
         this.§48§.onComplete = this.§4!!§;
         this.§48§.play();
      }
      
      private function §>!K§(param1:Boolean) : void
      {
         §+!H§.getItemByName("TextField_ChapterName").setVisibility(false);
      }
      
      private function §4!!§() : void
      {
         this.§6`§(true);
      }
      
      private function §6`§(param1:Boolean) : void
      {
         (§+!H§.getItemByName("Button_Resume") as §2!"§).setEnabled(param1);
         (§+!H§.getItemByName("Button_Replay") as §2!"§).setEnabled(param1);
         (§+!H§.getItemByName("Button_Menu") as §2!"§).setEnabled(param1);
      }
      
      private function §[]§() : void
      {
         this.preClose(true);
         if(this.§48§ != null)
         {
            this.§48§.stop();
         }
         this.§48§ = §9m§.§>E§.§"0§(§+!H§.getItemByName("Container_PauseMenu"),{"x":this.§@J§ - §0!F§},null,0.25,§9m§.§'e§);
         this.§48§.play();
      }
      
      override public function close() : void
      {
         if(this.§48§)
         {
            this.§48§.stop();
            this.§48§ = null;
         }
         §+V§.sHighscoreSidebar.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§<!?§)
         {
            §;!4§.§?-§.§^!Z§(§%!$§.§<P§);
            §%!$§.§^!?§();
         }
         else if(this.§&c§)
         {
            §;!4§.§?-§.§^!Z§(§;!4§.§9!1§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§8V§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§>V§.removeEventListener(§'f§.§5a§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
