package §20§
{
   import §"!I§.§94§;
   import §'!N§.§<i§;
   import §'!N§.§[!%§;
   import §'!O§.§<r§;
   import §'!O§.§=j§;
   import §-!"§.§=p§;
   import §2`§.HighscoreSidebar;
   import §3Q§.§+!]§;
   import §5!1§.§"!X§;
   import §5!1§.§&[§;
   import §8P§.§1A§;
   import §9!@§.§-k§;
   import §9b§.§"!S§;
   import §<u§.§]!Q§;
   import §@R§.set;
   import §^!0§.§&M§;
   import §^!5§.§,4§;
   
   public class §7Q§ extends Popup
   {
      
      private static const §1!]§:Number = 250;
      
      private static var §#!!§:Class = §'!§;
       
      
      private var §!!f§:StatePopupManager;
      
      private var §6N§:§&[§ = null;
      
      private var §5v§:Boolean = false;
      
      private var §2m§:Boolean = false;
      
      private var §98§:Number;
      
      private var §#R§:§=p§;
      
      public function §7Q§(param1:§]!Q§, param2:StatePopupManager, param3:§=p§)
      {
         §+!_§ = new §-k§(0,0,0,0,false);
         super(set.§=!^§(§#!!§),param1);
         this.§98§ = §>K§.getItemByName("Container_PauseMenu").x;
         this.§!!f§ = param2;
         this.§#R§ = param3;
         this.§!!f§.addEventListener(§+!]§.§0!S§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§+!]§) : void
      {
         this.uiInteractionHandler(param1.§78§,param1.§<Y§,param1.§4H§);
         this.§#R§.uiInteractionHandler(param1.§78§,param1.§<Y§,param1.§4H§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc4_:§94§ = null;
         switch(param2)
         {
            case "HELP":
               this.§=!-§();
               for each(_loc4_ in §"!S§.§-!7§.slingshot.§2!A§)
               {
                  §,L§.§8!F§.§&0§(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§5v§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§=!-§();
               break;
            case "MENU":
               §&M§.§=!7§();
               this.§2m§ = true;
               this.close();
         }
      }
      
      private function §!!L§() : void
      {
         §=j§.sHighscoreSidebar.enableHelpButton(false);
         this.§5v§ = false;
         this.§0@§(false);
         var levelName:String = §,4§.§0!$§;
         try
         {
            levelName = levelName.substring(2);
            (§>K§.getItemByName("TextField_LevelName") as §[!%§).§^!1§.text = HighscoreSidebar.§&!`§[int(levelName) - 1];
         }
         catch(e:Error)
         {
         }
         §>K§.getItemByName("Container_PauseMenu").x = this.§98§ - §1!]§;
         this.§`!<§(false);
         if(this.§6N§ != null)
         {
            this.§6N§.stop();
         }
         this.§6N§ = §"!X§.§ s§.§%!;§(§>K§.getItemByName("Container_PauseMenu"),{"x":this.§98§},null,0.25,§"!X§.§@4§);
         this.§6N§.onComplete = this.§3!G§;
         this.§6N§.play();
      }
      
      private function §0@§(param1:Boolean) : void
      {
         §>K§.getItemByName("TextField_ChapterName").setVisibility(false);
      }
      
      private function §3!G§() : void
      {
         this.§`!<§(true);
      }
      
      private function §`!<§(param1:Boolean) : void
      {
         (§>K§.getItemByName("Button_Resume") as §<i§).setEnabled(param1);
         (§>K§.getItemByName("Button_Replay") as §<i§).setEnabled(param1);
         (§>K§.getItemByName("Button_Menu") as §<i§).setEnabled(param1);
      }
      
      private function §=!-§() : void
      {
         this.preClose(true);
         if(this.§6N§ != null)
         {
            this.§6N§.stop();
         }
         this.§6N§ = §"!X§.§ s§.§%!;§(§>K§.getItemByName("Container_PauseMenu"),{"x":this.§98§ - §1!]§},null,0.25,§"!X§.§<!e§);
         this.§6N§.play();
      }
      
      override public function close() : void
      {
         if(this.§6N§)
         {
            this.§6N§.stop();
            this.§6N§ = null;
         }
         §=j§.sHighscoreSidebar.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§5v§)
         {
            §,L§.§+w§.§9^§(§<r§.§@o§);
            §<r§.§0^§();
         }
         else if(this.§2m§)
         {
            §,L§.§+w§.§9^§(§,L§.§[!;§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§!!L§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§!!f§.removeEventListener(§+!]§.§0!S§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
