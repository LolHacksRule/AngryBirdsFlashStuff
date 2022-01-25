package §]n§
{
   import § !C§.§6!W§;
   import §%!^§.§"=§;
   import §&F§.§8W§;
   import §&V§.§9t§;
   import §0!_§.§>!'§;
   import §0!b§.§#!=§;
   import §68§.§0_§;
   import §68§.§9v§;
   import §7H§.§'!Y§;
   import §7H§.§8Q§;
   import §>I§.§]#§;
   import §>I§.§for §;
   import §?8§.§%!]§;
   import §^6§.§;l§;
   import §^=§.§4S§;
   
   public class §[S§ extends Popup
   {
      
      private static const §6!M§:Number = 250;
      
      private static var §[=§:Class = §61§;
       
      
      private var §4!]§:StatePopupManager;
      
      private var §!!L§:§'!Y§ = null;
      
      private var §0v§:Boolean = false;
      
      private var §%`§:Boolean = false;
      
      private var §;^§:Number;
      
      private var §6,§:§6!W§;
      
      public function §[S§(param1:§;l§, param2:StatePopupManager, param3:§6!W§)
      {
         §,]§ = new §>!'§(0,0,0,0,false);
         super(§4S§.§+X§(§[=§),param1);
         this.§;^§ = §'B§.getItemByName("Container_PauseMenu").x;
         this.§4!]§ = param2;
         this.§6,§ = param3;
         this.§4!]§.addEventListener(§%!]§.§]V§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§%!]§) : void
      {
         this.uiInteractionHandler(param1.§>N§,param1.§ !=§,param1.§?E§);
         this.§6,§.uiInteractionHandler(param1.§>N§,param1.§ !=§,param1.§?E§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
      {
         var _loc4_:§8W§ = null;
         switch(param2)
         {
            case "HELP":
               this.§#!M§();
               for each(_loc4_ in §#!=§.§&![§.slingshot.§=!`§)
               {
                  §-!#§.§4,§.§+k§(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§0v§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§#!M§();
               break;
            case "MENU":
               this.§%`§ = true;
               this.close();
         }
      }
      
      private function §!!]§() : void
      {
         §for §.§^c§.enableHelpButton(false);
         this.§0v§ = false;
         this.§#=§(§"=§.§<q§ != 1);
         var _loc1_:String = §"=§.§?x§;
         _loc1_ = _loc1_.substring(2);
         (§'B§.getItemByName("TextField_LevelName") as §9v§).§@!G§.text = _loc1_;
         §'B§.getItemByName("Container_PauseMenu").x = this.§;^§ - §6!M§;
         this.§9!O§(false);
         if(this.§!!L§ != null)
         {
            this.§!!L§.stop();
         }
         this.§!!L§ = §8Q§.§]!D§.§^w§(§'B§.getItemByName("Container_PauseMenu"),{"x":this.§;^§},null,0.25,§8Q§.§;!'§);
         this.§!!L§.onComplete = this.§9§;
         this.§!!L§.play();
      }
      
      private function §#=§(param1:Boolean) : void
      {
         §'B§.getItemByName("TextField_ChapterName").setVisibility(param1);
         §'B§.getItemByName("MovieClip_CocaColaChapterText").setVisibility(!param1);
      }
      
      private function §9§() : void
      {
         this.§9!O§(true);
      }
      
      private function §9!O§(param1:Boolean) : void
      {
         (§'B§.getItemByName("Button_Resume") as §0_§).setEnabled(param1);
         (§'B§.getItemByName("Button_Replay") as §0_§).setEnabled(param1);
         (§'B§.getItemByName("Button_Menu") as §0_§).setEnabled(param1);
      }
      
      private function §#!M§() : void
      {
         this.preClose(true);
         if(this.§!!L§ != null)
         {
            this.§!!L§.stop();
         }
         this.§!!L§ = §8Q§.§]!D§.§^w§(§'B§.getItemByName("Container_PauseMenu"),{"x":this.§;^§ - §6!M§},null,0.25,§8Q§.§,j§);
         this.§!!L§.play();
      }
      
      override public function close() : void
      {
         §for §.§^c§.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§0v§)
         {
            §-!#§.§!!8§.§"G§(§]#§.§ !P§);
            §]#§.§[4§();
         }
         else if(this.§%`§)
         {
            §-!#§.§!!8§.§"G§(§-!#§.§2t§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§!!]§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§4!]§.removeEventListener(§%!]§.§]V§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
