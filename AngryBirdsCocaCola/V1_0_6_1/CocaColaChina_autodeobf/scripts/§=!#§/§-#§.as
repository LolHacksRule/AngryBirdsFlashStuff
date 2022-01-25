package §=!#§
{
   import §%3§.§7b§;
   import §,H§.§1!a§;
   import §,H§.§5d§;
   import §2!G§.§,!8§;
   import §3U§.§2!%§;
   import §4!W§.§@R§;
   import §6a§.§'!9§;
   import §6a§.§;!a§;
   import §7!H§.§12§;
   import §8!<§.§#u§;
   import §8!<§.§29§;
   import §;A§.§7!K§;
   import §<!!§.§=§;
   import §<"§.§7!'§;
   import §@W§.§2!_§;
   
   public class §-#§ extends Popup
   {
      
      private static const §'<§:Number = 250;
      
      private static var §>!M§:Class = §!!&§;
       
      
      private var §]a§:StatePopupManager;
      
      private var §=m§:§'!9§ = null;
      
      private var §@!3§:Boolean = false;
      
      private var §>t§:Boolean = false;
      
      private var §"!M§:Number;
      
      private var § <§:§2!_§;
      
      public function §-#§(param1:§7b§, param2:StatePopupManager, param3:§2!_§)
      {
         §]!]§ = new §@R§(0,0,0,0,false);
         super(§=§.§!B§(§>!M§),param1);
         this.§"!M§ = §]o§.getItemByName("Container_PauseMenu").x;
         this.§]a§ = param2;
         this.§ <§ = param3;
         this.§]a§.addEventListener(§7!'§.§=&§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§7!'§) : void
      {
         this.uiInteractionHandler(param1.§,!<§,param1.§`+§,param1.§<?§);
         this.§ <§.uiInteractionHandler(param1.§,!<§,param1.§`+§,param1.§<?§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
      {
         var _loc4_:§,!8§ = null;
         switch(param2)
         {
            case "HELP":
               this.§@!!§();
               for each(_loc4_ in §7!K§.§=j§.slingshot.§<K§)
               {
                  §6T§.§>c§.§<<§(_loc4_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               this.§@!3§ = true;
               this.close();
               break;
            case "RESUME_LEVEL":
               this.§@!!§();
               break;
            case "MENU":
               this.§>t§ = true;
               this.close();
         }
      }
      
      private function §02§() : void
      {
         §1!a§.§+D§.enableHelpButton(false);
         this.§@!3§ = false;
         this.§^r§(§2!%§.§[!=§ != 1);
         var _loc1_:String = §2!%§.§<G§;
         _loc1_ = _loc1_.substring(2);
         (§]o§.getItemByName("TextField_LevelName") as §#u§).§=J§.text = _loc1_;
         §]o§.getItemByName("Container_PauseMenu").x = this.§"!M§ - §'<§;
         this.§`R§(false);
         if(this.§=m§ != null)
         {
            this.§=m§.stop();
         }
         this.§=m§ = §;!a§.§0%§.§,w§(§]o§.getItemByName("Container_PauseMenu"),{"x":this.§"!M§},null,0.25,§;!a§.§5!L§);
         this.§=m§.onComplete = this.§#!X§;
         this.§=m§.play();
      }
      
      private function §^r§(param1:Boolean) : void
      {
         §]o§.getItemByName("TextField_ChapterName").setVisibility(param1);
         §]o§.getItemByName("MovieClip_CocaColaChapterText").setVisibility(!param1);
      }
      
      private function §#!X§() : void
      {
         this.§`R§(true);
      }
      
      private function §`R§(param1:Boolean) : void
      {
         (§]o§.getItemByName("Button_Resume") as §29§).setEnabled(param1);
         (§]o§.getItemByName("Button_Replay") as §29§).setEnabled(param1);
         (§]o§.getItemByName("Button_Menu") as §29§).setEnabled(param1);
      }
      
      private function §@!!§() : void
      {
         this.preClose(true);
         if(this.§=m§ != null)
         {
            this.§=m§.stop();
         }
         this.§=m§ = §;!a§.§0%§.§,w§(§]o§.getItemByName("Container_PauseMenu"),{"x":this.§"!M§ - §'<§},null,0.25,§;!a§.§!!D§);
         this.§=m§.play();
      }
      
      override public function close() : void
      {
         §1!a§.§+D§.enableHelpButton(true);
         super.close();
         this.deActivate();
         if(this.§@!3§)
         {
            §6T§.§!Z§.§ 7§(§5d§.§^!O§);
            §5d§.§=O§();
         }
         else if(this.§>t§)
         {
            §6T§.§!Z§.§ 7§(§6T§.§-5§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§02§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
      }
      
      override public function deActivate() : void
      {
         this.§]a§.removeEventListener(§7!'§.§=&§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
