package §]q§
{
   import §"f§.§%1§;
   import §"f§.§@4§;
   import §#M§.§+!Z§;
   import §,§.§6!,§;
   import §0;§.§3=§;
   import §31§.§#!d§;
   import §31§.§?![§;
   import §5!5§.§1!b§;
   import §6@§.§[! §;
   import §7_§.§^d§;
   import §8<§.§with§;
   import §<!R§.HighscoreSidebar;
   import §<L§.§&E§;
   import §[l§.§,Q§;
   import §[l§.§26§;
   import §^!K§.§ !$§;
   
   public class §8]§ extends Popup
   {
      
      private static const §>!0§:Number = 250;
      
      private static var §0!H§:Class = §=H§;
       
      
      private var §=!P§:StatePopupManager;
      
      private var §#L§:§@4§ = null;
      
      private var §>-§:Boolean = false;
      
      private var §&7§:Boolean = false;
      
      private var § z§:Number;
      
      private var §43§:§1!b§;
      
      public function §8]§(param1:§3=§, param2:StatePopupManager, param3:§1!b§)
      {
         super(§with§.§ !0§(§0!H§),param1);
         this.§ z§ = §"]§.getItemByName("Container_PauseMenu").x;
         this.§=!P§ = param2;
         this.§43§ = param3;
         this.§=!P§.addEventListener(§6!,§.§;I§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§6!,§) : void
      {
         this.uiInteractionHandler(param1.§=v§,param1.§ !I§,param1.§+!P§);
         this.§43§.uiInteractionHandler(param1.§=v§,param1.§ !I§,param1.§+!P§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[! §) : void
      {
         var _loc4_:§&E§ = null;
         switch(param2)
         {
            case "HELP":
               this.§5!=§();
               for each(_loc4_ in §+!Z§.§?!<§.slingshot.§ &§)
               {
                  § 4§.§?H§.§-! §(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§>-§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§5!=§();
               break;
            case "MENU":
               § !$§.§?j§();
               this.§&7§ = true;
               this.close();
         }
      }
      
      private function §%!n§(param1:String) : void
      {
         var levelNum:String = null;
         var levelNameString:String = null;
         var levelName:String = param1;
         try
         {
            levelNum = levelName.substring(2);
            if(levelName == "2-3" || levelName == "2-4" || levelName == "2-5")
            {
               §"]§.getItemByName("MovieClip_PauseMoon").setVisibility(false);
               §"]§.getItemByName("MovieClip_PauseMc").setVisibility(true);
            }
            else if(levelName == "2-6" || levelName == "2-7" || levelName == "2-8")
            {
               §"]§.getItemByName("MovieClip_PauseMoon").setVisibility(true);
               §"]§.getItemByName("MovieClip_PauseMc").setVisibility(false);
            }
            if(levelName == "2-1" || levelName == "2-2")
            {
               (§"]§.getItemByName("TextField_LevelName") as §?![§).§&t§.text = "";
               §"]§.getItemByName("MovieClip_PauseMoon").setVisibility(false);
               §"]§.getItemByName("MovieClip_PauseMc").setVisibility(false);
            }
            else
            {
               levelNameString = "-" + HighscoreSidebar.§;n§[int(levelNum) - 1];
               (§"]§.getItemByName("TextField_LevelName") as §?![§).§&t§.text = levelNameString;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §^Z§() : void
      {
         §,Q§.sHighscoreSidebar.enableHelpButton(false);
         this.§>-§ = false;
         this.§0!5§(false);
         var _loc1_:String = §^d§.§@P§;
         this.§%!n§(_loc1_);
         §"]§.getItemByName("Container_PauseMenu").x = this.§ z§ - §>!0§;
         this.§&!d§(false);
         if(this.§#L§ != null)
         {
            this.§#L§.stop();
         }
         this.§#L§ = §%1§.§+j§.§78§(§"]§.getItemByName("Container_PauseMenu"),{"x":this.§ z§},null,0.25,§%1§.§&!P§);
         this.§#L§.onComplete = this.§4!n§;
         this.§#L§.play();
      }
      
      private function §0!5§(param1:Boolean) : void
      {
         §"]§.getItemByName("TextField_ChapterName").setVisibility(false);
      }
      
      private function §4!n§() : void
      {
         this.§&!d§(true);
      }
      
      private function §&!d§(param1:Boolean) : void
      {
         (§"]§.getItemByName("Button_Resume") as §#!d§).setEnabled(param1);
         (§"]§.getItemByName("Button_Replay") as §#!d§).setEnabled(param1);
         (§"]§.getItemByName("Button_Menu") as §#!d§).setEnabled(param1);
      }
      
      private function §5!=§() : void
      {
         this.preClose(true);
         if(this.§#L§ != null)
         {
            this.§#L§.stop();
         }
         this.§#L§ = §%1§.§+j§.§78§(§"]§.getItemByName("Container_PauseMenu"),{"x":this.§ z§ - §>!0§},null,0.25,§%1§.§=!1§);
         this.§#L§.play();
      }
      
      override public function close() : void
      {
         if(this.§#L§)
         {
            this.§#L§.stop();
            this.§#L§ = null;
         }
         §,Q§.sHighscoreSidebar.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§>-§)
         {
            § 4§.§6q§.§]!D§(§26§.§!_§);
            §26§.§4;§();
         }
         else if(this.§&7§)
         {
            § 4§.§6q§.§]!D§(§ 4§.§#!m§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§^Z§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§=!P§.removeEventListener(§6!,§.§;I§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
