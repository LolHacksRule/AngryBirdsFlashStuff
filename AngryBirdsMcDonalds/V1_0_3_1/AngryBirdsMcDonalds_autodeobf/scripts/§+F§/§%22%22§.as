package §+F§
{
   import § !Y§.§2#§;
   import §&!V§.§=O§;
   import §2y§.§?`§;
   import §2y§.§@!a§;
   import §3!@§.§^!c§;
   import §3!R§.§81§;
   import §3g§.§"!n§;
   import §5K§.§1[§;
   import §7-§.§"_§;
   import §7-§.§[!$§;
   import §8T§.§[!R§;
   import §>!%§.HighscoreSidebar;
   import §?!g§.§ !d§;
   import §`!"§.§2,§;
   import §`!"§.§;i§;
   import §finally§.§8k§;
   
   public class §""§ extends Popup
   {
      
      private static const §6a§:Number = 250;
      
      private static var §^!m§:Class = §]W§;
       
      
      private var §?E§:StatePopupManager;
      
      private var §#n§:§2,§ = null;
      
      private var §4V§:Boolean = false;
      
      private var §]M§:Boolean = false;
      
      private var §7!E§:Number;
      
      private var §'A§:§=O§;
      
      public function §""§(param1:§"!n§, param2:StatePopupManager, param3:§=O§)
      {
         super(§1[§.§4L§(§^!m§),param1);
         this.§7!E§ = §<D§.getItemByName("Container_PauseMenu").x;
         this.§?E§ = param2;
         this.§'A§ = param3;
         this.§?E§.addEventListener(§[!R§.§11§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§[!R§) : void
      {
         this.uiInteractionHandler(param1.§2!n§,param1.§+!b§,param1.§?3§);
         this.§'A§.uiInteractionHandler(param1.§2!n§,param1.§+!b§,param1.§?3§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§81§) : void
      {
         var _loc4_:§^!c§ = null;
         switch(param2)
         {
            case "HELP":
               this.§&!^§();
               for each(_loc4_ in §2#§.§"@§.slingshot.§0n§)
               {
                  §2!M§.§&!#§.§"c§(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§4V§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§&!^§();
               break;
            case "MENU":
               § !d§.§;O§();
               this.§]M§ = true;
               this.close();
         }
      }
      
      private function §^!A§(param1:String) : void
      {
         var levelNum:String = null;
         var levelNameString:String = null;
         var levelName:String = param1;
         try
         {
            levelNum = levelName.substring(2);
            if(levelName == "2-3" || levelName == "2-4" || levelName == "2-5")
            {
               §<D§.getItemByName("MovieClip_PauseMoon").setVisibility(false);
               §<D§.getItemByName("MovieClip_PauseMc").setVisibility(true);
            }
            else if(levelName == "2-6" || levelName == "2-7" || levelName == "2-8")
            {
               §<D§.getItemByName("MovieClip_PauseMoon").setVisibility(true);
               §<D§.getItemByName("MovieClip_PauseMc").setVisibility(false);
            }
            if(levelName == "2-1" || levelName == "2-2")
            {
               (§<D§.getItemByName("TextField_LevelName") as §?`§).§0!j§.text = "";
               §<D§.getItemByName("MovieClip_PauseMoon").setVisibility(false);
               §<D§.getItemByName("MovieClip_PauseMc").setVisibility(false);
            }
            else
            {
               levelNameString = "-" + HighscoreSidebar.§#!H§[int(levelNum) - 1];
               (§<D§.getItemByName("TextField_LevelName") as §?`§).§0!j§.text = levelNameString;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §8_§() : void
      {
         §[!$§.sHighscoreSidebar.enableHelpButton(false);
         this.§4V§ = false;
         this.§6,§(false);
         var _loc1_:String = §8k§.§8h§;
         this.§^!A§(_loc1_);
         §<D§.getItemByName("Container_PauseMenu").x = this.§7!E§ - §6a§;
         this.§ !H§(false);
         if(this.§#n§ != null)
         {
            this.§#n§.stop();
         }
         this.§#n§ = §;i§.§@!7§.§@!6§(§<D§.getItemByName("Container_PauseMenu"),{"x":this.§7!E§},null,0.25,§;i§.§3C§);
         this.§#n§.onComplete = this.§%!=§;
         this.§#n§.play();
      }
      
      private function §6,§(param1:Boolean) : void
      {
         §<D§.getItemByName("TextField_ChapterName").setVisibility(false);
      }
      
      private function §%!=§() : void
      {
         this.§ !H§(true);
      }
      
      private function § !H§(param1:Boolean) : void
      {
         (§<D§.getItemByName("Button_Resume") as §@!a§).setEnabled(param1);
         (§<D§.getItemByName("Button_Replay") as §@!a§).setEnabled(param1);
         (§<D§.getItemByName("Button_Menu") as §@!a§).setEnabled(param1);
      }
      
      private function §&!^§() : void
      {
         this.preClose(true);
         if(this.§#n§ != null)
         {
            this.§#n§.stop();
         }
         this.§#n§ = §;i§.§@!7§.§@!6§(§<D§.getItemByName("Container_PauseMenu"),{"x":this.§7!E§ - §6a§},null,0.25,§;i§.§<l§);
         this.§#n§.play();
      }
      
      override public function close() : void
      {
         if(this.§#n§)
         {
            this.§#n§.stop();
            this.§#n§ = null;
         }
         §[!$§.sHighscoreSidebar.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§4V§)
         {
            §2!M§.§7!F§.§>R§(§"_§.§<@§);
            §"_§.§ !D§();
         }
         else if(this.§]M§)
         {
            §2!M§.§7!F§.§>R§(§2!M§.§4@§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§8_§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§?E§.removeEventListener(§[!R§.§11§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
