package §]c§
{
   import § !Y§.§if§;
   import §+D§.§">§;
   import §1!K§.§=t§;
   import §2!Q§.§'[§;
   import §2H§.§>!^§;
   import §3-§.§1L§;
   import §6p§.§,!K§;
   import §93§.§^!H§;
   import §97§.§62§;
   import §97§.§]!X§;
   import §=!c§.§#=§;
   import §=!c§.§-A§;
   import §=X§.§7!4§;
   import §>!_§.§2V§;
   import §>!_§.§9!+§;
   import §@=§.§'3§;
   import §[!C§.HighscoreSidebar;
   
   public class §<1§ extends Popup
   {
      
      private static const §-8§:Number = 250;
      
      private static var §9e§:Class = §?!7§;
       
      
      private var §]A§:StatePopupManager;
      
      private var §^U§:§2V§ = null;
      
      private var §1!G§:Boolean = false;
      
      private var §85§:Boolean = false;
      
      private var §<$§:Number;
      
      private var §-N§:§>!^§;
      
      public function §<1§(param1:§if§, param2:StatePopupManager, param3:§>!^§)
      {
         §4<§ = new §'3§(0,0,0,0,false);
         super(§=t§.§1X§(§9e§),param1);
         this.§<$§ = §%a§.getItemByName("Container_PauseMenu").x;
         this.§]A§ = param2;
         this.§-N§ = param3;
         this.§]A§.addEventListener(§,!K§.§+!,§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§,!K§) : void
      {
         this.uiInteractionHandler(param1.§,Z§,param1.§@!F§,param1.§+!=§);
         this.§-N§.uiInteractionHandler(param1.§,Z§,param1.§@!F§,param1.§+!=§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§^!H§) : void
      {
         var _loc4_:§">§ = null;
         switch(param2)
         {
            case "HELP":
               this.§'!;§();
               for each(_loc4_ in §1L§.§"f§.slingshot.§>_§)
               {
                  §,-§.§?+§.§!!7§(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§1!G§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§'!;§();
               break;
            case "MENU":
               §'[§.§9!;§();
               this.§85§ = true;
               this.close();
         }
      }
      
      private function §'e§() : void
      {
         §62§.sHighscoreSidebar.enableHelpButton(false);
         this.§1!G§ = false;
         this.§[!G§(false);
         var levelName:String = §7!4§.§"P§;
         try
         {
            levelName = levelName.substring(2);
            (§%a§.getItemByName("TextField_LevelName") as §#=§).§5!R§.text = HighscoreSidebar.§""§[int(levelName) - 1];
         }
         catch(e:Error)
         {
         }
         §%a§.getItemByName("Container_PauseMenu").x = this.§<$§ - §-8§;
         this.§1!%§(false);
         if(this.§^U§ != null)
         {
            this.§^U§.stop();
         }
         this.§^U§ = §9!+§.§;!F§.§`!'§(§%a§.getItemByName("Container_PauseMenu"),{"x":this.§<$§},null,0.25,§9!+§.§#! §);
         this.§^U§.onComplete = this.§,!W§;
         this.§^U§.play();
      }
      
      private function §[!G§(param1:Boolean) : void
      {
         §%a§.getItemByName("TextField_ChapterName").setVisibility(false);
      }
      
      private function §,!W§() : void
      {
         this.§1!%§(true);
      }
      
      private function §1!%§(param1:Boolean) : void
      {
         (§%a§.getItemByName("Button_Resume") as §-A§).setEnabled(param1);
         (§%a§.getItemByName("Button_Replay") as §-A§).setEnabled(param1);
         (§%a§.getItemByName("Button_Menu") as §-A§).setEnabled(param1);
      }
      
      private function §'!;§() : void
      {
         this.preClose(true);
         if(this.§^U§ != null)
         {
            this.§^U§.stop();
         }
         this.§^U§ = §9!+§.§;!F§.§`!'§(§%a§.getItemByName("Container_PauseMenu"),{"x":this.§<$§ - §-8§},null,0.25,§9!+§.§8!_§);
         this.§^U§.play();
      }
      
      override public function close() : void
      {
         if(this.§^U§)
         {
            this.§^U§.stop();
            this.§^U§ = null;
         }
         §62§.sHighscoreSidebar.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§1!G§)
         {
            §,-§.§4-§.§8!P§(§]!X§.§4l§);
            §]!X§.§6$§();
         }
         else if(this.§85§)
         {
            §,-§.§4-§.§8!P§(§,-§.§,O§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§'e§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§]A§.removeEventListener(§,!K§.§+!,§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
