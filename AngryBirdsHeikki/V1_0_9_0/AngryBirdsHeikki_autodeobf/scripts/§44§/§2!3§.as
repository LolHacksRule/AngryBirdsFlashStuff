package §44§
{
   import § d§.§=!,§;
   import §#Q§.§8Y§;
   import §%i§.§#`§;
   import §&!6§.§5r§;
   import §'!C§.§-!S§;
   import §0i§.§[K§;
   import §1Q§.§'!`§;
   import §4M§.HighscoreSidebar;
   import §8! §.§#z§;
   import §8!-§.§1R§;
   import §8!-§.§2!B§;
   import §>!F§.§9!Z§;
   import §@!]§.§%!S§;
   import §@!]§.§&!!§;
   import §`E§.§8D§;
   import §function§.§1!@§;
   import §function§.§8E§;
   
   public class §2!3§ extends Popup
   {
      
      private static const §9M§:Number = 250;
      
      private static var §+!;§:Class = §,!T§;
       
      
      private var §>y§:StatePopupManager;
      
      private var §1E§:§1R§ = null;
      
      private var §=!C§:Boolean = false;
      
      private var §?L§:Boolean = false;
      
      private var §%x§:Number;
      
      private var §%!+§:§5r§;
      
      public function §2!3§(param1:§8Y§, param2:StatePopupManager, param3:§5r§)
      {
         §-!F§ = new §-!S§(0,0,0,0,false);
         super(§[K§.§0T§(§+!;§),param1);
         this.§%x§ = §7O§.getItemByName("Container_PauseMenu").x;
         this.§>y§ = param2;
         this.§%!+§ = param3;
         this.§>y§.addEventListener(§8D§.§=!5§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§8D§) : void
      {
         this.uiInteractionHandler(param1.§%B§,param1.§%'§,param1.§0!$§);
         this.§%!+§.uiInteractionHandler(param1.§%B§,param1.§%'§,param1.§0!$§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'!`§) : void
      {
         var _loc4_:§=!,§ = null;
         switch(param2)
         {
            case "HELP":
               this.§#!Q§();
               for each(_loc4_ in §9!Z§.§5!$§.slingshot.§3!R§)
               {
                  §"H§.§""§.§]!W§(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§=!C§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§#!Q§();
               break;
            case "MENU":
               §#`§.§2!5§();
               this.§?L§ = true;
               this.close();
         }
      }
      
      private function §-v§() : void
      {
         §1!@§.sHighscoreSidebar.enableHelpButton(false);
         this.§=!C§ = false;
         this.§'!c§(false);
         var levelName:String = §#z§.§@k§;
         try
         {
            levelName = levelName.substring(2);
            (§7O§.getItemByName("TextField_LevelName") as §%!S§).§9!"§.text = HighscoreSidebar.§+h§[int(levelName) - 1];
         }
         catch(e:Error)
         {
         }
         §7O§.getItemByName("Container_PauseMenu").x = this.§%x§ - §9M§;
         this.§&T§(false);
         if(this.§1E§ != null)
         {
            this.§1E§.stop();
         }
         this.§1E§ = §2!B§.§,!U§.§%!K§(§7O§.getItemByName("Container_PauseMenu"),{"x":this.§%x§},null,0.25,§2!B§.§8!@§);
         this.§1E§.onComplete = this.§'L§;
         this.§1E§.play();
      }
      
      private function §'!c§(param1:Boolean) : void
      {
         §7O§.getItemByName("TextField_ChapterName").setVisibility(false);
      }
      
      private function §'L§() : void
      {
         this.§&T§(true);
      }
      
      private function §&T§(param1:Boolean) : void
      {
         (§7O§.getItemByName("Button_Resume") as §&!!§).setEnabled(param1);
         (§7O§.getItemByName("Button_Replay") as §&!!§).setEnabled(param1);
         (§7O§.getItemByName("Button_Menu") as §&!!§).setEnabled(param1);
      }
      
      private function §#!Q§() : void
      {
         this.preClose(true);
         if(this.§1E§ != null)
         {
            this.§1E§.stop();
         }
         this.§1E§ = §2!B§.§,!U§.§%!K§(§7O§.getItemByName("Container_PauseMenu"),{"x":this.§%x§ - §9M§},null,0.25,§2!B§.§6p§);
         this.§1E§.play();
      }
      
      override public function close() : void
      {
         if(this.§1E§)
         {
            this.§1E§.stop();
            this.§1E§ = null;
         }
         §1!@§.sHighscoreSidebar.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§=!C§)
         {
            §"H§.§>R§.§<'§(§8E§.§94§);
            §8E§.§1$§();
         }
         else if(this.§?L§)
         {
            §"H§.§>R§.§<'§(§"H§.§]X§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§-v§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§>y§.removeEventListener(§8D§.§=!5§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
