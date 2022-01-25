package §37§
{
   import §%!5§.§7;§;
   import §+$§.§[!a§;
   import §-!F§.§2[§;
   import §0i§.§@^§;
   import §3!S§.§-!^§;
   import §3<§.§-2§;
   import §55§.§7!B§;
   import §7E§.§ =§;
   import §9!$§.HighscoreSidebar;
   import §[h§.§ set§;
   import §[h§.§49§;
   import §]^§.§7G§;
   import §^m§.§0!-§;
   import §^m§.§=!a§;
   
   public class §3f§ extends Popup
   {
      
      private static const §;!M§:Number = 250;
      
      private static var §;<§:Class = §[K§;
       
      
      private var §-W§:StatePopupManager;
      
      private var § each§:§0!-§ = null;
      
      private var §8C§:Boolean = false;
      
      private var §`y§:Boolean = false;
      
      private var §&T§:Number;
      
      private var §8p§:§ =§;
      
      public function §3f§(param1:§-2§, param2:StatePopupManager, param3:§ =§)
      {
         super(§@^§.§'K§(§;<§),param1);
         this.§&T§ = §9K§.getItemByName("Container_PauseMenu").x;
         this.§-W§ = param2;
         this.§8p§ = param3;
         this.§-W§.addEventListener(§-!^§.§?!G§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§-!^§) : void
      {
         this.uiInteractionHandler(param1.§`[§,param1.§&!F§,param1.§?B§);
         this.§8p§.uiInteractionHandler(param1.§`[§,param1.§&!F§,param1.§?B§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[!a§) : void
      {
         var _loc4_:§7!B§ = null;
         switch(param2)
         {
            case "HELP":
               this.§67§();
               for each(_loc4_ in §7;§.§1h§.slingshot.§!!e§)
               {
                  §9!_§.§1!?§.§!x§(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§8C§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§67§();
               break;
            case "MENU":
               §7G§.§]!Z§();
               this.§`y§ = true;
               this.close();
         }
      }
      
      private function §"!4§(param1:String) : void
      {
         var levelNum:String = null;
         var levelNameString:String = null;
         var levelName:String = param1;
         try
         {
            levelNum = levelName.substring(2);
            if(levelName == "2-3" || levelName == "2-4" || levelName == "2-5")
            {
               §9K§.getItemByName("MovieClip_PauseMoon").setVisibility(false);
               §9K§.getItemByName("MovieClip_PauseMc").setVisibility(true);
            }
            else if(levelName == "2-6" || levelName == "2-7" || levelName == "2-8")
            {
               §9K§.getItemByName("MovieClip_PauseMoon").setVisibility(true);
               §9K§.getItemByName("MovieClip_PauseMc").setVisibility(false);
            }
            if(levelName == "2-1" || levelName == "2-2")
            {
               (§9K§.getItemByName("TextField_LevelName") as § set§).§ !K§.text = "";
               §9K§.getItemByName("MovieClip_PauseMoon").setVisibility(false);
               §9K§.getItemByName("MovieClip_PauseMc").setVisibility(false);
            }
            else
            {
               levelNameString = "-" + HighscoreSidebar.§+!m§[int(levelNum) - 1];
               (§9K§.getItemByName("TextField_LevelName") as § set§).§ !K§.text = levelNameString;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §&!h§() : void
      {
         §2'§.sHighscoreSidebar.enableHelpButton(false);
         this.§8C§ = false;
         this.§!!m§(false);
         var _loc1_:String = §2[§.§^N§;
         this.§"!4§(_loc1_);
         §9K§.getItemByName("Container_PauseMenu").x = this.§&T§ - §;!M§;
         this.§<S§(false);
         if(this.§ each§ != null)
         {
            this.§ each§.stop();
         }
         this.§ each§ = §=!a§.§9$§.§9!H§(§9K§.getItemByName("Container_PauseMenu"),{"x":this.§&T§},null,0.25,§=!a§.§%!R§);
         this.§ each§.onComplete = this.§`X§;
         this.§ each§.play();
      }
      
      private function §!!m§(param1:Boolean) : void
      {
         §9K§.getItemByName("TextField_ChapterName").setVisibility(false);
      }
      
      private function §`X§() : void
      {
         this.§<S§(true);
      }
      
      private function §<S§(param1:Boolean) : void
      {
         (§9K§.getItemByName("Button_Resume") as §49§).setEnabled(param1);
         (§9K§.getItemByName("Button_Replay") as §49§).setEnabled(param1);
         (§9K§.getItemByName("Button_Menu") as §49§).setEnabled(param1);
      }
      
      private function §67§() : void
      {
         this.preClose(true);
         if(this.§ each§ != null)
         {
            this.§ each§.stop();
         }
         this.§ each§ = §=!a§.§9$§.§9!H§(§9K§.getItemByName("Container_PauseMenu"),{"x":this.§&T§ - §;!M§},null,0.25,§=!a§.§@!m§);
         this.§ each§.play();
      }
      
      override public function close() : void
      {
         if(this.§ each§)
         {
            this.§ each§.stop();
            this.§ each§ = null;
         }
         §2'§.sHighscoreSidebar.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§8C§)
         {
            §9!_§.§@r§.§3N§(§"e§.§[!1§);
            §"e§.§`!"§();
         }
         else if(this.§`y§)
         {
            §9!_§.§@r§.§3N§(§9!_§.§9§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§&!h§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§-W§.removeEventListener(§-!^§.§?!G§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
