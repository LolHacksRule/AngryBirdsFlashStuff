package §;C§
{
   import §!!L§.§&!R§;
   import §!!a§.§9G§;
   import §'b§.§0!D§;
   import §'b§.§6!-§;
   import §2!a§.§?O§;
   import §3!`§.§8h§;
   import §3!`§.§]&§;
   import §5!?§.§;!Y§;
   import §6!§.§%H§;
   import §6!Q§.§,![§;
   import §6l§.§#!Z§;
   import §=F§.§"n§;
   import §>!8§.§4!0§;
   import §@!P§.§'!-§;
   import §@!P§.§3!%§;
   
   public class §8!-§ extends Popup
   {
      
      private static const §2!'§:Number = 250;
      
      private static var §`v§:Class = §4!U§;
       
      
      private var §;!B§:StatePopupManager;
      
      private var §&! §:§]&§ = null;
      
      private var §3<§:Boolean = false;
      
      private var §@_§:Boolean = false;
      
      private var §<!I§:Number;
      
      private var §2$§:§&!R§;
      
      public function §8!-§(param1:§4!0§, param2:StatePopupManager, param3:§&!R§)
      {
         §&!B§ = new §?O§(0,0,0,0,false);
         super(§,![§.§6b§(§`v§),param1);
         this.§<!I§ = §0D§.getItemByName("Container_PauseMenu").x;
         this.§;!B§ = param2;
         this.§2$§ = param3;
         this.§;!B§.addEventListener(§%H§.§&!6§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§%H§) : void
      {
         this.uiInteractionHandler(param1.§%+§,param1.§=a§,param1.§&2§);
         this.§2$§.uiInteractionHandler(param1.§%+§,param1.§=a§,param1.§&2§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
      {
         var _loc4_:§;!Y§ = null;
         switch(param2)
         {
            case "HELP":
               this.§&-§();
               for each(_loc4_ in §"n§.§[b§.slingshot.§%X§)
               {
                  §=i§.§2S§.§??§(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§3<§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§&-§();
               break;
            case "MENU":
               this.§@_§ = true;
               this.close();
         }
      }
      
      private function §4@§() : void
      {
         §3!%§.§@<§.enableHelpButton(false);
         this.§3<§ = false;
         this.§66§(§9G§.§=!1§ != 1);
         var _loc1_:String = §9G§.§>>§;
         _loc1_ = _loc1_.substring(2);
         (§0D§.getItemByName("TextField_LevelName") as §6!-§).§`!C§.text = _loc1_;
         §0D§.getItemByName("Container_PauseMenu").x = this.§<!I§ - §2!'§;
         this.§!,§(false);
         if(this.§&! § != null)
         {
            this.§&! §.stop();
         }
         this.§&! § = §8h§.§`G§.§[O§(§0D§.getItemByName("Container_PauseMenu"),{"x":this.§<!I§},null,0.25,§8h§.§3!E§);
         this.§&! §.onComplete = this.§[J§;
         this.§&! §.play();
      }
      
      private function §66§(param1:Boolean) : void
      {
         §0D§.getItemByName("TextField_ChapterName").setVisibility(param1);
         §0D§.getItemByName("MovieClip_CocaColaChapterText").setVisibility(!param1);
      }
      
      private function §[J§() : void
      {
         this.§!,§(true);
      }
      
      private function §!,§(param1:Boolean) : void
      {
         (§0D§.getItemByName("Button_Resume") as §0!D§).setEnabled(param1);
         (§0D§.getItemByName("Button_Replay") as §0!D§).setEnabled(param1);
         (§0D§.getItemByName("Button_Menu") as §0!D§).setEnabled(param1);
      }
      
      private function §&-§() : void
      {
         this.preClose(true);
         if(this.§&! § != null)
         {
            this.§&! §.stop();
         }
         this.§&! § = §8h§.§`G§.§[O§(§0D§.getItemByName("Container_PauseMenu"),{"x":this.§<!I§ - §2!'§},null,0.25,§8h§.§#H§);
         this.§&! §.play();
      }
      
      override public function close() : void
      {
         §3!%§.§@<§.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§3<§)
         {
            §=i§.§5!D§.§!d§(§'!-§.§'2§);
            §'!-§.§^4§();
         }
         else if(this.§@_§)
         {
            §=i§.§5!D§.§!d§(§=i§.§0!U§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§4@§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§;!B§.removeEventListener(§%H§.§&!6§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
