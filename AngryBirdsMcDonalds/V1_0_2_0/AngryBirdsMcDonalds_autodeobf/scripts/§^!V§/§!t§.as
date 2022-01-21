package §^!V§
{
   import § !m§.§6h§;
   import §"%§.§,!n§;
   import §'a§.§use §;
   import §+-§.§3!5§;
   import §2!6§.§^"§;
   import §4%§.§%0§;
   import §4%§.§,b§;
   import §6!Q§.§ !"§;
   import §9!W§.§=!@§;
   import §=!F§.§"!2§;
   import §=!F§.§^!^§;
   import §=<§.§ !Y§;
   import §>G§.§0Q§;
   import §>G§.§]!W§;
   import §@`§.§>!S§;
   import §]! §.HighscoreSidebar;
   
   public class §!t§ extends Popup
   {
      
      private static const §4!T§:Number = 250;
      
      private static var §-k§:Class = §,Q§;
       
      
      private var §3`§:StatePopupManager;
      
      private var §"K§:§^!^§ = null;
      
      private var §?+§:Boolean = false;
      
      private var §^K§:Boolean = false;
      
      private var §;#§:Number;
      
      private var §-!6§:§ !"§;
      
      public function §!t§(param1:§>!S§, param2:StatePopupManager, param3:§ !"§)
      {
         super(§ !Y§.§^t§(§-k§),param1);
         this.§;#§ = §]E§.getItemByName("Container_PauseMenu").x;
         this.§3`§ = param2;
         this.§-!6§ = param3;
         this.§3`§.addEventListener(§^"§.§'!2§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§^"§) : void
      {
         this.uiInteractionHandler(param1.§,$§,param1.§[?§,param1.§41§);
         this.§-!6§.uiInteractionHandler(param1.§,$§,param1.§[?§,param1.§41§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!n§) : void
      {
         var _loc4_:§use § = null;
         switch(param2)
         {
            case "HELP":
               this.§`!#§();
               for each(_loc4_ in §=!@§.§>!T§.slingshot.§^!@§)
               {
                  §'j§.§%g§.§?g§(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§?+§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§`!#§();
               break;
            case "MENU":
               §6h§.§>!U§();
               this.§^K§ = true;
               this.close();
         }
      }
      
      private function §!l§(param1:String) : void
      {
         var levelNum:String = null;
         var levelNameString:String = null;
         var levelName:String = param1;
         try
         {
            levelNum = levelName.substring(2);
            if(levelName == "2-3" || levelName == "2-4" || levelName == "2-5")
            {
               §]E§.getItemByName("MovieClip_PauseMoon").setVisibility(false);
               §]E§.getItemByName("MovieClip_PauseMc").setVisibility(true);
            }
            else if(levelName == "2-6" || levelName == "2-7" || levelName == "2-8")
            {
               §]E§.getItemByName("MovieClip_PauseMoon").setVisibility(true);
               §]E§.getItemByName("MovieClip_PauseMc").setVisibility(false);
            }
            if(levelName == "2-1" || levelName == "2-2")
            {
               (§]E§.getItemByName("TextField_LevelName") as §]!W§).§^!m§.text = "";
               §]E§.getItemByName("MovieClip_PauseMoon").setVisibility(false);
               §]E§.getItemByName("MovieClip_PauseMc").setVisibility(false);
            }
            else
            {
               levelNameString = "-" + HighscoreSidebar.§9r§[int(levelNum) - 1];
               (§]E§.getItemByName("TextField_LevelName") as §]!W§).§^!m§.text = levelNameString;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §&!g§() : void
      {
         §%0§.sHighscoreSidebar.enableHelpButton(false);
         this.§?+§ = false;
         this.§!k§(false);
         var _loc1_:String = §3!5§.§-!2§;
         this.§!l§(_loc1_);
         §]E§.getItemByName("Container_PauseMenu").x = this.§;#§ - §4!T§;
         this.§8!S§(false);
         if(this.§"K§ != null)
         {
            this.§"K§.stop();
         }
         this.§"K§ = §"!2§.§'!S§.§-!S§(§]E§.getItemByName("Container_PauseMenu"),{"x":this.§;#§},null,0.25,§"!2§.§+!^§);
         this.§"K§.onComplete = this.§+J§;
         this.§"K§.play();
      }
      
      private function §!k§(param1:Boolean) : void
      {
         §]E§.getItemByName("TextField_ChapterName").setVisibility(false);
      }
      
      private function §+J§() : void
      {
         this.§8!S§(true);
      }
      
      private function §8!S§(param1:Boolean) : void
      {
         (§]E§.getItemByName("Button_Resume") as §0Q§).setEnabled(param1);
         (§]E§.getItemByName("Button_Replay") as §0Q§).setEnabled(param1);
         (§]E§.getItemByName("Button_Menu") as §0Q§).setEnabled(param1);
      }
      
      private function §`!#§() : void
      {
         this.preClose(true);
         if(this.§"K§ != null)
         {
            this.§"K§.stop();
         }
         this.§"K§ = §"!2§.§'!S§.§-!S§(§]E§.getItemByName("Container_PauseMenu"),{"x":this.§;#§ - §4!T§},null,0.25,§"!2§.§3d§);
         this.§"K§.play();
      }
      
      override public function close() : void
      {
         if(this.§"K§)
         {
            this.§"K§.stop();
            this.§"K§ = null;
         }
         §%0§.sHighscoreSidebar.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§?+§)
         {
            §'j§.§7!$§.§0! §(§,b§.§4D§);
            §,b§.§1i§();
         }
         else if(this.§^K§)
         {
            §'j§.§7!$§.§0! §(§'j§.§4h§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§&!g§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§3`§.removeEventListener(§^"§.§'!2§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
