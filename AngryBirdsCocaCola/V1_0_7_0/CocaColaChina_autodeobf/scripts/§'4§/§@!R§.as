package §'4§
{
   import §!E§.§,!B§;
   import §!E§.§;!P§;
   import §%!G§.§ !G§;
   import §%n§.§4-§;
   import §%n§.§91§;
   import §,@§.§"!'§;
   import §-X§.§2&§;
   import §-v§.§,!1§;
   import §2!$§.§<!%§;
   import §4A§.§>!=§;
   import §6!@§.§ !!§;
   import §?@§.§^!M§;
   import §@O§.§7;§;
   import §[!=§.§!!K§;
   import §[!=§.§3!2§;
   
   public class §@!R§ extends Popup
   {
      
      private static const §0!"§:Number = 250;
      
      private static var §5!K§:Class = §,q§;
       
      
      private var §1%§:StatePopupManager;
      
      private var §7Z§:§3!2§ = null;
      
      private var §&!Q§:Boolean = false;
      
      private var §0+§:Boolean = false;
      
      private var §9!+§:Number;
      
      private var §9=§:§ !!§;
      
      public function §@!R§(param1:§ !G§, param2:StatePopupManager, param3:§ !!§)
      {
         §@!N§ = new §"!'§(0,0,0,0,false);
         super(§^!M§.§2!^§(§5!K§),param1);
         this.§9!+§ = §!!#§.getItemByName("Container_PauseMenu").x;
         this.§1%§ = param2;
         this.§9=§ = param3;
         this.§1%§.addEventListener(§7;§.§;D§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§7;§) : void
      {
         this.uiInteractionHandler(param1.§2!<§,param1.§<!R§,param1.§+!P§);
         this.§9=§.uiInteractionHandler(param1.§2!<§,param1.§<!R§,param1.§+!P§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§<!%§) : void
      {
         var _loc4_:§>!=§ = null;
         switch(param2)
         {
            case "HELP":
               this.§&s§();
               for each(_loc4_ in §,!1§.§2T§.slingshot.§6e§)
               {
                  §"!@§.§6!-§.§>!%§(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§&!Q§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§&s§();
               break;
            case "MENU":
               this.§0+§ = true;
               this.close();
         }
      }
      
      private function §#Z§() : void
      {
         §91§.§'! §.enableHelpButton(false);
         this.§&!Q§ = false;
         this.§^!I§(§2&§.§6q§ != 1);
         var _loc1_:String = §2&§.§86§;
         _loc1_ = _loc1_.substring(2);
         (§!!#§.getItemByName("TextField_LevelName") as §,!B§).§&J§.text = _loc1_;
         §!!#§.getItemByName("Container_PauseMenu").x = this.§9!+§ - §0!"§;
         this.§%f§(false);
         if(this.§7Z§ != null)
         {
            this.§7Z§.stop();
         }
         this.§7Z§ = §!!K§.§'!C§.§'!H§(§!!#§.getItemByName("Container_PauseMenu"),{"x":this.§9!+§},null,0.25,§!!K§.§<!G§);
         this.§7Z§.onComplete = this.§,N§;
         this.§7Z§.play();
      }
      
      private function §^!I§(param1:Boolean) : void
      {
         §!!#§.getItemByName("TextField_ChapterName").setVisibility(param1);
         §!!#§.getItemByName("MovieClip_CocaColaChapterText").setVisibility(!param1);
      }
      
      private function §,N§() : void
      {
         this.§%f§(true);
      }
      
      private function §%f§(param1:Boolean) : void
      {
         (§!!#§.getItemByName("Button_Resume") as §;!P§).setEnabled(param1);
         (§!!#§.getItemByName("Button_Replay") as §;!P§).setEnabled(param1);
         (§!!#§.getItemByName("Button_Menu") as §;!P§).setEnabled(param1);
      }
      
      private function §&s§() : void
      {
         this.preClose(true);
         if(this.§7Z§ != null)
         {
            this.§7Z§.stop();
         }
         this.§7Z§ = §!!K§.§'!C§.§'!H§(§!!#§.getItemByName("Container_PauseMenu"),{"x":this.§9!+§ - §0!"§},null,0.25,§!!K§.§#,§);
         this.§7Z§.play();
      }
      
      override public function close() : void
      {
         §91§.§'! §.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§&!Q§)
         {
            §"!@§.§5!8§.§3!9§(§4-§.§^6§);
            §4-§.§[^§();
         }
         else if(this.§0+§)
         {
            §"!@§.§5!8§.§3!9§(§"!@§.§9!L§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§#Z§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§1%§.removeEventListener(§7;§.§;D§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
