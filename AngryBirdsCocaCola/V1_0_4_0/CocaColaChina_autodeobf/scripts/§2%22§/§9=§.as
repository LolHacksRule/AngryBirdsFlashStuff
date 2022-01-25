package §2"§
{
   import §%n§.§4-§;
   import §%n§.§91§;
   import §'!G§.§4!§;
   import §'P§.§,!"§;
   import §'P§.§5!_§;
   import §,@§.§"!'§;
   import §-v§.§,!1§;
   import §2!<§.§<!R§;
   import §4A§.§>!=§;
   import §6!@§.§ !!§;
   import §7]§.§;T§;
   import §86§.§!!d§;
   import §[!=§.§!!K§;
   import §[!=§.§3!2§;
   
   public class §9=§ extends Popup
   {
      
      private static const §0!O§:Number = 250;
      
      private static var §[B§:Class = §3l§;
       
      
      private var §#Z§:StatePopupManager;
      
      private var §^!I§:§3!2§ = null;
      
      private var §,N§:Boolean = false;
      
      private var §%f§:Boolean = false;
      
      private var §&s§:Number;
      
      private var §0!"§:§ !!§;
      
      public function §9=§(param1:§^R§, param2:StatePopupManager, param3:§ !!§)
      {
         §@!N§ = new §"!'§(0,0,0,0,false);
         super(§4!§.§[!a§(§[B§),param1);
         this.§&s§ = §&!Q§.getItemByName("Container_PauseMenu").x;
         this.§#Z§ = param2;
         this.§0!"§ = param3;
         this.§#Z§.addEventListener(§<!R§.§]!K§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§<!R§) : void
      {
         this.uiInteractionHandler(param1.§+!P§,param1.§;D§,param1.§in§);
         this.§0!"§.uiInteractionHandler(param1.§+!P§,param1.§;D§,param1.§in§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§;T§) : void
      {
         var _loc4_:§>!=§ = null;
         switch(param2)
         {
            case "HELP":
               this.§24§();
               for each(_loc4_ in §,!1§.§2T§.slingshot.§^!P§)
               {
                  §"!@§.§-5§.§>!%§(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§,N§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§24§();
               break;
            case "MENU":
               this.§%f§ = true;
               this.close();
         }
      }
      
      private function §5!K§() : void
      {
         §91§.§'! §.enableHelpButton(false);
         this.§,N§ = false;
         this.§&!&§(§!!d§.§&1§ != 1);
         var _loc1_:String = §!!d§.§%1§;
         _loc1_ = _loc1_.substring(2);
         (§&!Q§.getItemByName("TextField_LevelName") as §5!_§).§5r§.text = _loc1_;
         §&!Q§.getItemByName("Container_PauseMenu").x = this.§&s§ - §0!O§;
         this.§=%§(false);
         if(this.§^!I§ != null)
         {
            this.§^!I§.stop();
         }
         this.§^!I§ = §!!K§.§@!c§.§'!H§(§&!Q§.getItemByName("Container_PauseMenu"),{"x":this.§&s§},null,0.25,§!!K§.§<!G§);
         this.§^!I§.onComplete = this.§'!0§;
         this.§^!I§.play();
      }
      
      private function §&!&§(param1:Boolean) : void
      {
         §&!Q§.getItemByName("TextField_ChapterName").setVisibility(param1);
         §&!Q§.getItemByName("MovieClip_CocaColaChapterText").setVisibility(!param1);
      }
      
      private function §'!0§() : void
      {
         this.§=%§(true);
      }
      
      private function §=%§(param1:Boolean) : void
      {
         (§&!Q§.getItemByName("Button_Resume") as §,!"§).setEnabled(param1);
         (§&!Q§.getItemByName("Button_Replay") as §,!"§).setEnabled(param1);
         (§&!Q§.getItemByName("Button_Menu") as §,!"§).setEnabled(param1);
      }
      
      private function §24§() : void
      {
         this.preClose(true);
         if(this.§^!I§ != null)
         {
            this.§^!I§.stop();
         }
         this.§^!I§ = §!!K§.§@!c§.§'!H§(§&!Q§.getItemByName("Container_PauseMenu"),{"x":this.§&s§ - §0!O§},null,0.25,§!!K§.§#,§);
         this.§^!I§.play();
      }
      
      override public function close() : void
      {
         §91§.§'! §.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§,N§)
         {
            §"!@§.§!!_§.§3!9§(§4-§.§^6§);
            §4-§.§[^§();
         }
         else if(this.§%f§)
         {
            §"!@§.§!!_§.§3!9§(§"!@§.§2_§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§5!K§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§#Z§.removeEventListener(§<!R§.§]!K§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
